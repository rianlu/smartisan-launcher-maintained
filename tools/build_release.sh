#!/bin/sh
set -eu

script_dir=$(CDPATH= cd -- "$(dirname "$0")" && pwd)
repo_root=$(CDPATH= cd -- "$script_dir/.." && pwd)
config_file="$script_dir/release.conf"
local_signing_dir="$repo_root/.local/signing"
signing_env="$local_signing_dir/release.env"
apktool_yml="$repo_root/apktool.yml"
build_dir="$repo_root/build/release"
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
  find "$repo_root" \
    \( -path "$repo_root/.git" -o -path "$repo_root/.git/*" \) -prune -o \
    -type f -name .DS_Store -exec rm -f {} +
}

assert_clean_macos_metadata() {
  leftovers=$(
    find "$repo_root" \
      \( -path "$repo_root/.git" -o -path "$repo_root/.git/*" \) -prune -o \
      -type f -name .DS_Store -print
  )

  [ -z "$leftovers" ] || fail "workspace still contains .DS_Store files:\n$leftovers"
}

cleanup_macos_metadata_on_exit() {
  clean_macos_metadata >/dev/null 2>&1 || true
}

clean_apktool_workspace() {
  if [ -d "$repo_root/build/apk" ]; then
    find "$repo_root/build/apk" -mindepth 1 -exec rm -rf {} +
  fi
  rm -f "$repo_root/build/resources.zip"
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

load_config() {
  require_file "$config_file"
  require_file "$signing_env"

  # shellcheck disable=SC1090
  . "$config_file"
  # shellcheck disable=SC1090
  . "$signing_env"

  : "${RELEASE_BASE_VERSION:?missing RELEASE_BASE_VERSION in $config_file}"
  : "${RELEASE_SUFFIX:=}"
  : "${RELEASE_VERSION_CODE:?missing RELEASE_VERSION_CODE in $config_file}"
  : "${RELEASE_KEYSTORE_FILE:?missing RELEASE_KEYSTORE_FILE in $signing_env}"
  : "${RELEASE_KEY_ALIAS:?missing RELEASE_KEY_ALIAS in $signing_env}"
  : "${RELEASE_STORE_PASSWORD:?missing RELEASE_STORE_PASSWORD in $signing_env}"
  : "${RELEASE_KEY_PASSWORD:?missing RELEASE_KEY_PASSWORD in $signing_env}"

  case "$RELEASE_VERSION_CODE" in
    ''|*[!0-9]*)
      fail "RELEASE_VERSION_CODE must be numeric: $RELEASE_VERSION_CODE"
      ;;
  esac

  if [ -n "$RELEASE_SUFFIX" ]; then
    release_version_name="$RELEASE_BASE_VERSION-$RELEASE_SUFFIX"
  else
    release_version_name="$RELEASE_BASE_VERSION"
  fi

  output_basename="smartisan-launcher-maintained-$release_version_name-release"
  unsigned_apk="$build_dir/$output_basename-unsigned.apk"
  aligned_apk="$build_dir/$output_basename-aligned.apk"
  signed_apk="$build_dir/$output_basename.apk"

  case "$RELEASE_KEYSTORE_FILE" in
    /*) keystore_path="$RELEASE_KEYSTORE_FILE" ;;
    *) keystore_path="$local_signing_dir/$RELEASE_KEYSTORE_FILE" ;;
  esac

  require_file "$keystore_path"
}

sync_versions() {
  RELEASE_VERSION_NAME="$release_version_name" \
  RELEASE_VERSION_CODE_VALUE="$RELEASE_VERSION_CODE" \
  perl -0pi -e '
    s/(versionCode:\s*)\d+/${1}.$ENV{"RELEASE_VERSION_CODE_VALUE"}/ge;
    s/(versionName:\s*)[^\n]+/${1}.$ENV{"RELEASE_VERSION_NAME"}/ge;
  ' "$apktool_yml"
}

build_apk() {
  mkdir -p "$build_dir"
  clean_macos_metadata
  assert_clean_macos_metadata
  # Apktool reuses build intermediates and can keep stale version metadata.
  clean_apktool_workspace
  rm -f "$unsigned_apk" "$aligned_apk" "$signed_apk"
  apktool b "$repo_root" -o "$unsigned_apk"
}

sign_with_apksigner() {
  "$zipalign_bin" -f 4 "$unsigned_apk" "$aligned_apk"
  if ! "$apksigner_bin" sign \
    --ks "$keystore_path" \
    --ks-key-alias "$RELEASE_KEY_ALIAS" \
    --ks-pass "pass:$RELEASE_STORE_PASSWORD" \
    --key-pass "pass:$RELEASE_KEY_PASSWORD" \
    --out "$signed_apk" \
    "$aligned_apk"; then
    rm -f "$signed_apk"
    fail "apksigner failed"
  fi
  "$apksigner_bin" verify "$signed_apk" >/dev/null
  signer_tool="$apksigner_bin"
}

sign_with_jarsigner() {
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
    fail "jarsigner failed"
  fi
  jarsigner -verify "$signed_apk" >/dev/null
  signer_tool="jarsigner"
}

sign_apk() {
  if apksigner_bin=$(find_sdk_tool apksigner) && zipalign_bin=$(find_sdk_tool zipalign); then
    sign_with_apksigner
  else
    sign_with_jarsigner
  fi
}

print_summary() {
  printf '%s\n' "release base version: $RELEASE_BASE_VERSION"
  printf '%s\n' "release suffix: ${RELEASE_SUFFIX:-<none>}"
  printf '%s\n' "release versionName: $release_version_name"
  printf '%s\n' "release versionCode: $RELEASE_VERSION_CODE"
  printf '%s\n' "keystore: $keystore_path"
  printf '%s\n' "signer: $signer_tool"
  printf '%s\n' "unsigned apk: $unsigned_apk"
  if [ -f "$aligned_apk" ]; then
    printf '%s\n' "aligned apk: $aligned_apk"
  fi
  printf '%s\n' "signed apk: $signed_apk"
}

need_cmd apktool
need_cmd perl
need_cmd jarsigner
trap cleanup_macos_metadata_on_exit EXIT

load_config
sync_versions
build_apk
sign_apk
print_summary
