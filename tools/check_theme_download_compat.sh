#!/usr/bin/env bash

set -euo pipefail

repo_root="$(cd "$(dirname "$0")/.." && pwd)"
download_receiver="$repo_root/smali/com/smartisanos/launcher/actions/DownloadReceiver.smali"
theme_item_activity="$repo_root/smali/com/smartisanos/launcher/theme/ThemeItemActivity.smali"

extract_method() {
  local file="$1"
  local signature="$2"
  awk -v signature="$signature" '
    $0 == signature { in_method = 1 }
    in_method { print }
    in_method && $0 == ".end method" { exit }
  ' "$file"
}

fail() {
  echo "FAIL: $1" >&2
  exit 1
}

assert_method_uses_download_uri() {
  local file="$1"
  local signature="$2"
  local method_body
  method_body="$(extract_method "$file" "$signature")"

  [[ -n "$method_body" ]] || fail "未找到方法: $signature"
  [[ "$method_body" != *"Uri;->fromFile"* ]] || fail "$signature 仍在使用 file:// 安装"
  [[ "$method_body" == *"->getDownloadFileUri(J)Landroid/net/Uri;"* ]] || fail "$signature 仍未切到 DownloadManager content uri"

  local add_flags_count
  add_flags_count="$(printf '%s\n' "$method_body" | rg -c --fixed-strings -- '->addFlags(I)Landroid/content/Intent;')"
  [[ "$add_flags_count" -ge 2 ]] || fail "$signature 未同时设置 NEW_TASK 和 GRANT_READ_URI_PERMISSION"
}

assert_method_uses_download_uri \
  "$download_receiver" \
  ".method public static handleInstall(J)V"

assert_method_uses_download_uri \
  "$theme_item_activity" \
  ".method private requestInstallTheme(Ljava/lang/String;)V"

download_receiver_uri_call_count="$(rg -c --fixed-strings -- '->getDownloadFileUri(J)Landroid/net/Uri;' "$download_receiver")"
[[ "$download_receiver_uri_call_count" -ge 2 ]] || fail "DownloadReceiver 未在下载完成和安装两个阶段都使用 DownloadManager uri"

theme_request_method="$(extract_method "$theme_item_activity" ".method private requestInstallTheme(Ljava/lang/String;)V")"
[[ "$theme_request_method" != *"local_filename"* ]] || fail "requestInstallTheme 仍依赖 local_filename 判断安装包是否存在"

echo "OK: theme download compatibility checks passed"
