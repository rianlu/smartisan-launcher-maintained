#!/bin/sh
set -eu

script_dir=$(CDPATH= cd -- "$(dirname "$0")" && pwd)
repo_root=$(CDPATH= cd -- "$script_dir/.." && pwd)
local_signing_dir="$repo_root/.local/signing"
signing_env="$local_signing_dir/release.env"
input_path="${1:-$repo_root/themes/source-apks}"
output_dir="${2:-$repo_root/themes/maintained}"
work_root="${THEME_WORK_DIR:-$repo_root/build/theme-work}"
theme_filter="${THEME_FILTER:-}"
theme_limit="${THEME_LIMIT:-}"
theme_target_sdk="${THEME_TARGET_SDK:-36}"
keep_theme_work="${KEEP_THEME_WORK:-0}"

fail() {
  printf '%s\n' "FAIL: $1" >&2
  exit 1
}

need_cmd() {
  command -v "$1" >/dev/null 2>&1 || fail "missing required command: $1"
}

require_file() {
  [ -f "$1" ] || fail "missing required file: $1"
}

clean_macos_metadata() {
  target_dir="$1"
  [ -d "$target_dir" ] || return 0
  find "$target_dir" \
    \( -path "$target_dir/.git" -o -path "$target_dir/.git/*" \) -prune -o \
    -type f -name .DS_Store -exec rm -f {} +
}

assert_clean_macos_metadata() {
  target_dir="$1"
  [ -d "$target_dir" ] || return 0
  leftovers=$(
    find "$target_dir" \
      \( -path "$target_dir/.git" -o -path "$target_dir/.git/*" \) -prune -o \
      -type f -name .DS_Store -print
  )
  [ -z "$leftovers" ] || fail "workspace still contains .DS_Store files:\n$leftovers"
}

cleanup_macos_metadata_on_exit() {
  clean_macos_metadata "$input_path" >/dev/null 2>&1 || true
  clean_macos_metadata "$output_dir" >/dev/null 2>&1 || true
  clean_macos_metadata "$work_root" >/dev/null 2>&1 || true
}

find_sdk_tool() {
  tool_name="$1"

  if command -v "$tool_name" >/dev/null 2>&1; then
    command -v "$tool_name"
    return 0
  fi

  for sdk_root in \
    "$repo_root/.local/android-sdk" \
    "${ANDROID_HOME:-}" \
    "${ANDROID_SDK_ROOT:-}" \
    "$HOME/Library/Android/sdk" \
    "$HOME/Android/Sdk"
  do
    [ -d "$sdk_root/build-tools" ] || continue
    found_tool=
    for candidate in "$sdk_root"/build-tools/*/"$tool_name"; do
      if [ -x "$candidate" ]; then
        found_tool="$candidate"
      fi
    done
    if [ -n "${found_tool:-}" ]; then
      printf '%s\n' "$found_tool"
      return 0
    fi
  done

  return 1
}

load_signing() {
  require_file "$signing_env"

  # shellcheck disable=SC1090
  . "$signing_env"

  : "${RELEASE_KEYSTORE_FILE:?missing RELEASE_KEYSTORE_FILE in $signing_env}"
  : "${RELEASE_KEY_ALIAS:?missing RELEASE_KEY_ALIAS in $signing_env}"
  : "${RELEASE_STORE_PASSWORD:?missing RELEASE_STORE_PASSWORD in $signing_env}"
  : "${RELEASE_KEY_PASSWORD:?missing RELEASE_KEY_PASSWORD in $signing_env}"

  case "$RELEASE_KEYSTORE_FILE" in
    /*) keystore_path="$RELEASE_KEYSTORE_FILE" ;;
    *) keystore_path="$local_signing_dir/$RELEASE_KEYSTORE_FILE" ;;
  esac

  require_file "$keystore_path"
}

collect_apks() {
  if [ -f "$input_path" ]; then
    printf '%s\n' "$input_path"
    return 0
  fi

  [ -d "$input_path" ] || fail "input path does not exist: $input_path"

  find "$input_path" -maxdepth 1 -type f -name '*.apk' | sort
}

patch_apktool_yml() {
  apktool_yml="$1"
  require_file "$apktool_yml"
  grep -q 'targetSdkVersion:' "$apktool_yml" || fail "targetSdkVersion not found in $apktool_yml"

  THEME_TARGET_SDK_VALUE="$theme_target_sdk" \
  perl -0pi -e 's/(targetSdkVersion:\s*)\d+/${1}.$ENV{"THEME_TARGET_SDK_VALUE"}/ge' "$apktool_yml"
}

sign_with_apksigner() {
  unsigned_apk="$1"
  aligned_apk="$2"
  signed_apk="$3"

  "$zipalign_bin" -f 4 "$unsigned_apk" "$aligned_apk"
  if ! "$apksigner_bin" sign \
    --ks "$keystore_path" \
    --ks-key-alias "$RELEASE_KEY_ALIAS" \
    --ks-pass "pass:$RELEASE_STORE_PASSWORD" \
    --key-pass "pass:$RELEASE_KEY_PASSWORD" \
    --v4-signing-enabled false \
    --out "$signed_apk" \
    "$aligned_apk"; then
    rm -f "$signed_apk"
    fail "apksigner failed for $unsigned_apk"
  fi
  "$apksigner_bin" verify "$signed_apk" >/dev/null
  rm -f "$signed_apk.idsig"
  signer_tool="$apksigner_bin"
}

sign_with_jarsigner() {
  unsigned_apk="$1"
  aligned_apk="$2"
  signed_apk="$3"

  cp "$unsigned_apk" "$signed_apk"
  if ! jarsigner \
    -sigalg SHA256withRSA \
    -digestalg SHA-256 \
    -keystore "$keystore_path" \
    -storepass "$RELEASE_STORE_PASSWORD" \
    -keypass "$RELEASE_KEY_PASSWORD" \
    "$signed_apk" \
    "$RELEASE_KEY_ALIAS"; then
    rm -f "$signed_apk"
    fail "jarsigner failed for $unsigned_apk"
  fi
  jarsigner -verify "$signed_apk" >/dev/null
  signer_tool="jarsigner"
  rm -f "$aligned_apk"
}

sign_apk() {
  unsigned_apk="$1"
  aligned_apk="$2"
  signed_apk="$3"

  if apksigner_bin=$(find_sdk_tool apksigner) && zipalign_bin=$(find_sdk_tool zipalign); then
    sign_with_apksigner "$unsigned_apk" "$aligned_apk" "$signed_apk"
  else
    sign_with_jarsigner "$unsigned_apk" "$aligned_apk" "$signed_apk"
  fi
}

build_theme() {
  source_apk="$1"
  theme_name=$(basename "$source_apk" .apk)
  theme_work_dir="$work_root/$theme_name"
  theme_artifact_dir="$work_root/.artifacts/$theme_name"
  unsigned_apk="$theme_artifact_dir/$theme_name-unsigned.apk"
  aligned_apk="$theme_artifact_dir/$theme_name-aligned.apk"
  signed_apk="$output_dir/$theme_name.apk"

  printf '%s\n' "processing: $theme_name"
  rm -rf "$theme_work_dir"
  rm -rf "$theme_artifact_dir"
  mkdir -p "$theme_work_dir"
  mkdir -p "$theme_artifact_dir"
  rm -f "$signed_apk"

  apktool d -f "$source_apk" -o "$theme_work_dir" >/dev/null
  clean_macos_metadata "$theme_work_dir"
  assert_clean_macos_metadata "$theme_work_dir"
  patch_apktool_yml "$theme_work_dir/apktool.yml"
  apktool b "$theme_work_dir" -o "$unsigned_apk" >/dev/null
  sign_apk "$unsigned_apk" "$aligned_apk" "$signed_apk"

  if [ "$keep_theme_work" != "1" ]; then
    rm -rf "$theme_work_dir"
    rm -rf "$theme_artifact_dir"
  fi

  printf '%s\n' "signed theme: $signed_apk"
}

need_cmd apktool
need_cmd basename
need_cmd dirname
need_cmd find
need_cmd grep
need_cmd jarsigner
need_cmd perl
need_cmd sed
need_cmd sort
trap cleanup_macos_metadata_on_exit EXIT

load_signing
mkdir -p "$output_dir" "$work_root"

theme_apks=$(collect_apks)

if [ -n "$theme_filter" ]; then
  theme_apks=$(printf '%s\n' "$theme_apks" | grep "$theme_filter" || true)
fi

if [ -n "$theme_limit" ]; then
  case "$theme_limit" in
    ''|*[!0-9]*)
      fail "THEME_LIMIT must be numeric: $theme_limit"
      ;;
  esac
  theme_apks=$(printf '%s\n' "$theme_apks" | sed -n "1,${theme_limit}p")
fi

theme_count=$(printf '%s\n' "$theme_apks" | sed '/^$/d' | wc -l | tr -d ' ')
[ "$theme_count" -gt 0 ] || fail "no theme APKs matched"

printf '%s\n' "theme apk count: $theme_count"
printf '%s\n' "input path: $input_path"
printf '%s\n' "output dir: $output_dir"
printf '%s\n' "targetSdkVersion: $theme_target_sdk"
printf '%s\n' "keystore: $keystore_path"

printf '%s\n' "$theme_apks" | while IFS= read -r source_apk; do
  [ -n "$source_apk" ] || continue
  build_theme "$source_apk"
done

printf '%s\n' "done"
