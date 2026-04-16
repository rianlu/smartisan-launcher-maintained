#!/bin/sh
set -eu

script_dir=$(CDPATH= cd -- "$(dirname "$0")" && pwd)
repo_root=$(CDPATH= cd -- "$script_dir/.." && pwd)
build_dir="$repo_root/build"
unsigned_apk="$build_dir/smartisan-launcher-debug-unsigned.apk"
aligned_apk="$build_dir/smartisan-launcher-debug-aligned.apk"
signed_apk="$build_dir/smartisan-launcher-debug-signed.apk"
keystore_dir="$build_dir/signing"
keystore_path="$keystore_dir/debug.keystore"
apk_input_dirs="
$repo_root/assets
$repo_root/lib
$repo_root/original
$repo_root/res
$repo_root/smali
$repo_root/unknown
"

fail() {
  echo "FAIL: $1" >&2
  exit 1
}

need_cmd() {
  command -v "$1" >/dev/null 2>&1 || fail "missing required command: $1"
}

clean_macos_metadata() {
  printf '%s\n' "$apk_input_dirs" | while IFS= read -r target_dir; do
    [ -n "$target_dir" ] || continue
    [ -d "$target_dir" ] || continue
    find "$target_dir" -type f -name .DS_Store -exec rm -f {} +
  done
}

assert_clean_macos_metadata() {
  leftovers=$(
    printf '%s\n' "$apk_input_dirs" | while IFS= read -r target_dir; do
      [ -n "$target_dir" ] || continue
      [ -d "$target_dir" ] || continue
      find "$target_dir" -type f -name .DS_Store -print
    done
  )

  [ -z "$leftovers" ] || fail "workspace still contains .DS_Store files:\n$leftovers"
}

clean_apktool_workspace() {
  if [ -d "$build_dir/apk" ]; then
    find "$build_dir/apk" -mindepth 1 -exec rm -rf {} +
  fi
  rm -f "$build_dir/resources.zip"
}

find_adb() {
  if command -v adb >/dev/null 2>&1; then
    command -v adb
    return 0
  fi

  for sdk_root in \
    "${ANDROID_HOME:-}" \
    "${ANDROID_SDK_ROOT:-}" \
    "$repo_root/.local/android-sdk" \
    "$HOME/Library/Android/sdk" \
    "$HOME/Android/Sdk"
  do
    [ -n "$sdk_root" ] || continue
    adb_bin="$sdk_root/platform-tools/adb"
    if [ -x "$adb_bin" ]; then
      printf '%s\n' "$adb_bin"
      return 0
    fi
  done

  return 1
}

build_apk() {
  mkdir -p "$build_dir"
  clean_macos_metadata
  assert_clean_macos_metadata
  clean_apktool_workspace
  rm -f "$unsigned_apk" "$aligned_apk" "$signed_apk"
  apktool b "$repo_root" -o "$unsigned_apk"
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

ensure_keystore() {
  mkdir -p "$keystore_dir"
  if [ ! -f "$keystore_path" ]; then
    keytool -genkeypair \
      -keystore "$keystore_path" \
      -storepass android \
      -keypass android \
      -alias androiddebugkey \
      -dname "CN=Android Debug,O=Android,C=US" \
      -keyalg RSA \
      -keysize 2048 \
      -validity 10000 >/dev/null
  fi
}

sign_apk() {
  if apksigner_bin=$(find_sdk_tool apksigner) && zipalign_bin=$(find_sdk_tool zipalign); then
    "$zipalign_bin" -f 4 "$unsigned_apk" "$aligned_apk"
    "$apksigner_bin" sign \
      --ks "$keystore_path" \
      --ks-key-alias androiddebugkey \
      --ks-pass pass:android \
      --key-pass pass:android \
      --out "$signed_apk" \
      "$aligned_apk"
    "$apksigner_bin" verify "$signed_apk" >/dev/null
  else
    cp "$unsigned_apk" "$signed_apk"
    jarsigner \
      -sigalg SHA256withRSA \
      -digestalg SHA-256 \
      -keystore "$keystore_path" \
      -storepass android \
      -keypass android \
      "$signed_apk" \
      androiddebugkey >/dev/null
    jarsigner -verify "$signed_apk" >/dev/null
    echo "warn: apksigner not found, used jarsigner (v1 only)" >&2
  fi
}

select_device() {
  adb_bin="$1"

  if [ -n "${ANDROID_SERIAL:-}" ]; then
    printf '%s\n' "$ANDROID_SERIAL"
    return 0
  fi

  # adb 输出为 serial<TAB>state；序列号可能含空格，不能用默认 FS 按列取 $2
  devices=$("$adb_bin" devices | awk -F'\t' 'NR>1 && $2=="device" {print $1}')
  count=$(printf '%s\n' "$devices" | sed '/^$/d' | wc -l | tr -d ' ')

  if [ "$count" -eq 0 ]; then
    return 1
  fi

  if [ "$count" -gt 1 ]; then
    echo "multiple adb devices detected; set ANDROID_SERIAL to choose one" >&2
    exit 1
  fi

  printf '%s\n' "$devices" | sed '/^$/d'
}

list_devices() {
  adb_bin="$1"
  "$adb_bin" devices | awk -F'\t' 'NR>1 && $2=="device" {print $1}'
}

install_to_device() {
  adb_bin="$1"
  device_serial="$2"

  "$adb_bin" -s "$device_serial" install -r "$signed_apk"
  echo "adb install -r succeeded on $device_serial"
}

install_apk() {
  if ! adb_bin=$(find_adb); then
    echo "adb not found, skipped install"
    return 0
  fi

  if [ -n "${ANDROID_SERIALS:-}" ]; then
    printf '%s\n' "$ANDROID_SERIALS" | tr ', ' '\n\n' | sed '/^$/d' | while IFS= read -r device_serial; do
      install_to_device "$adb_bin" "$device_serial"
    done
    return 0
  fi

  if [ "${INSTALL_ALL_DEVICES:-0}" = "1" ]; then
    devices=$(list_devices "$adb_bin")
    if [ -z "$devices" ]; then
      echo "no adb device detected, skipped install"
      return 0
    fi

    printf '%s\n' "$devices" | while IFS= read -r device_serial; do
      [ -n "$device_serial" ] || continue
      install_to_device "$adb_bin" "$device_serial"
    done
    return 0
  fi

  if ! device_serial=$(select_device "$adb_bin"); then
    echo "no adb device detected, skipped install"
    return 0
  fi

  if [ -n "${ANDROID_SERIAL:-}" ]; then
    "$adb_bin" -s "$device_serial" install -r "$signed_apk"
  else
    "$adb_bin" install -r "$signed_apk"
  fi

  echo "adb install -r succeeded"
}

need_cmd apktool
need_cmd keytool
need_cmd jarsigner

build_apk
ensure_keystore
sign_apk

echo "signed apk: $signed_apk"
install_apk
