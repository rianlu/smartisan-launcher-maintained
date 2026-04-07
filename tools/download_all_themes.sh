#!/bin/sh
set -eu

script_dir=$(CDPATH= cd -- "$(dirname "$0")" && pwd)
repo_root=$(CDPATH= cd -- "$script_dir/.." && pwd)
strings_xml="$repo_root/res/values/strings.xml"
out_dir="${1:-$repo_root/themes/source-apks}"
theme_filter="${THEME_FILTER:-}"
theme_limit="${THEME_LIMIT:-}"
force_download="${FORCE_DOWNLOAD:-0}"

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

list_theme_packages() {
  sed -n 's/.*<string name="[^"]*_PKG">\(com\.smartisanos\.launcher\.theme\.[^<]*\)<\/string>.*/\1/p' \
    "$strings_xml" | sort -u
}

get_download_url() {
  pkg="$1"
  curl -L --max-time 30 -fsS "http://api-app.smartisan.com/api/v1_4/app/info/$pkg" \
    | tr -d '\n' \
    | sed -n 's/.*"download_url":"\([^"]*\)".*/\1/p'
}

download_theme() {
  pkg="$1"
  apk_path="$out_dir/$pkg.apk"

  if [ -f "$apk_path" ] && [ "$force_download" != "1" ]; then
    printf '%s\n' "skip existing: $apk_path"
    return 0
  fi

  download_url=$(get_download_url "$pkg")
  [ -n "$download_url" ] || fail "download_url not found for $pkg"

  printf '%s\n' "downloading: $pkg"
  curl -L --fail --progress-bar -o "$apk_path" "$download_url"
}

need_cmd curl
need_cmd sed
need_cmd sort
need_cmd tr
require_file "$strings_xml"
mkdir -p "$out_dir"

packages=$(list_theme_packages)

if [ -n "$theme_filter" ]; then
  packages=$(printf '%s\n' "$packages" | grep "$theme_filter" || true)
fi

if [ -n "$theme_limit" ]; then
  case "$theme_limit" in
    ''|*[!0-9]*)
      fail "THEME_LIMIT must be numeric: $theme_limit"
      ;;
  esac
  packages=$(printf '%s\n' "$packages" | sed -n "1,${theme_limit}p")
fi

theme_count=$(printf '%s\n' "$packages" | sed '/^$/d' | wc -l | tr -d ' ')
[ "$theme_count" -gt 0 ] || fail "no theme packages matched"

printf '%s\n' "theme package count: $theme_count"
printf '%s\n' "output dir: $out_dir"
printf '%s\n' "note: smartisan_theme_black is built into com.smartisanos.home and is not downloaded separately"

printf '%s\n' "$packages" | while IFS= read -r pkg; do
  [ -n "$pkg" ] || continue
  download_theme "$pkg"
done

printf '%s\n' "done"
