#!/bin/sh
set -eu

manifest="AndroidManifest.xml"
apktool_yml="apktool.yml"

fail() {
  printf '%s\n' "FAIL: $1" >&2
  exit 1
}

target_sdk=$(sed -n 's/^[[:space:]]*targetSdkVersion: //p' "$apktool_yml" | head -n 1)
[ -n "$target_sdk" ] || fail "Could not read targetSdkVersion from $apktool_yml"

case "$target_sdk" in
  ''|*[!0-9]*)
    fail "targetSdkVersion is not numeric: $target_sdk"
    ;;
esac

if [ "$target_sdk" -lt 24 ]; then
  fail "targetSdkVersion must be at least 24 for fresh installs on Android 15+ (found $target_sdk)"
fi

if grep -q 'android:sharedUserId=' "$manifest"; then
  if ! grep -q 'android:sharedUserMaxSdkVersion="32"' "$manifest"; then
    fail "sharedUserId is present without android:sharedUserMaxSdkVersion=\"32\""
  fi
fi

printf '%s\n' "PASS: install compatibility checks passed"
