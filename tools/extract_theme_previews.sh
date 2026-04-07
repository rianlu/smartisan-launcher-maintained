#!/bin/sh
set -eu

script_dir=$(CDPATH= cd -- "$(dirname "$0")" && pwd)
repo_root=$(CDPATH= cd -- "$script_dir/.." && pwd)
input_path="${1:-$repo_root/themes/maintained}"
output_root="${2:-$repo_root/assets/theme_preview}"
force_extract="${FORCE_THEME_PREVIEWS:-0}"
launcher_new_preview_root="${LAUNCHER_NEW_THEME_PREVIEW_ROOT:-$repo_root/../smartisan-launcher-new-maintained/assets/theme_preview}"

fail() {
  printf '%s\n' "FAIL: $1" >&2
  exit 1
}

need_cmd() {
  command -v "$1" >/dev/null 2>&1 || fail "missing required command: $1"
}

legacy_dot_template="$repo_root/assets/theme_preview/smartisan_theme_blue/dot.png"

collect_apks() {
  if [ -f "$input_path" ]; then
    printf '%s\n' "$input_path"
    return 0
  fi

  [ -d "$input_path" ] || fail "input path does not exist: $input_path"
  find "$input_path" -maxdepth 1 -type f -name '*.apk' | sort
}

theme_id_from_apk() {
  apk_name=$(basename "$1" .apk)
  suffix=${apk_name##*.}

  case "$suffix" in
    LiteraryBrown|LiteraryCyan|LiteraryGreen|LiteraryPink|LiteraryPurple|LiteraryRed|LiteraryWhite|LiteraryYellow)
      printf '%s\n' "$suffix"
      ;;
    aero) printf '%s\n' "smartisan_theme_aero" ;;
    bamboo) printf '%s\n' "smartisan_theme_bamboo" ;;
    blue) printf '%s\n' "smartisan_theme_blue" ;;
    bluegreen) printf '%s\n' "smartisan_theme_blue_green" ;;
    clay) printf '%s\n' "smartisan_theme_clay" ;;
    copperred) printf '%s\n' "smartisan_theme_copper_red" ;;
    cyan) printf '%s\n' "smartisan_theme_cyan" ;;
    darkgray) printf '%s\n' "smartisan_theme_dark_gray" ;;
    darkwood) printf '%s\n' "smartisan_theme_dark_wood" ;;
    deepblue) printf '%s\n' "smartisan_theme_deep_blue" ;;
    fibre) printf '%s\n' "smartisan_theme_fibre" ;;
    gintama) printf '%s\n' "smartisan_theme_gintama" ;;
    green) printf '%s\n' "smartisan_theme_green" ;;
    grid) printf '%s\n' "smartisan_theme_grid" ;;
    indigo) printf '%s\n' "smartisan_theme_indigo" ;;
    lake) printf '%s\n' "smartisan_theme_lake" ;;
    leaf) printf '%s\n' "smartisan_theme_leaf" ;;
    leather) printf '%s\n' "smartisan_theme_leather" ;;
    lightblue) printf '%s\n' "smartisan_theme_light_blue" ;;
    lightgold) printf '%s\n' "smartisan_theme_light_gold" ;;
    lightwood) printf '%s\n' "smartisan_theme_light_wood" ;;
    mist) printf '%s\n' "smartisan_theme_mist" ;;
    orange) printf '%s\n' "smartisan_theme_orange" ;;
    purple) printf '%s\n' "smartisan_theme_purple" ;;
    raven) printf '%s\n' "smartisan_theme_raven" ;;
    red) printf '%s\n' "smartisan_theme_red" ;;
    strip) printf '%s\n' "smartisan_theme_strip" ;;
    winered) printf '%s\n' "smartisan_theme_wine_red" ;;
    yellow) printf '%s\n' "smartisan_theme_yellow" ;;
    *)
      fail "unsupported theme package: $apk_name"
      ;;
  esac
}

extract_first() {
  apk_path="$1"
  work_dir="$2"
  shift 2

  for entry in "$@"; do
    output_path="$work_dir/$(basename "$entry")"
    if unzip -p "$apk_path" "$entry" >"$output_path" 2>/dev/null && [ -s "$output_path" ]; then
      printf '%s\n' "$output_path"
      return 0
    fi
    rm -f "$output_path"
  done

  return 1
}

theme_requires_generated_dot() {
  case "$1" in
    smartisan_theme_bamboo|smartisan_theme_blue_green|smartisan_theme_dark_gray|smartisan_theme_deep_blue|smartisan_theme_grid|smartisan_theme_lake|smartisan_theme_leaf|smartisan_theme_light_gold|smartisan_theme_raven|smartisan_theme_wine_red)
      return 0
      ;;
    *)
      return 1
      ;;
  esac
}

has_launcher_new_preview_set() {
  theme_id="$1"
  preview_dir="$launcher_new_preview_root/$theme_id"

  [ -f "$preview_dir/dot.png" ] &&
    [ -f "$preview_dir/12/trident_S.jpg" ] &&
    [ -f "$preview_dir/20/trident_S.jpg" ] &&
    [ -f "$preview_dir/12/darwin_L.jpg" ] &&
    [ -f "$preview_dir/20/darwin_L.jpg" ]
}

write_resized_jpeg() {
  source_path="$1"
  target_path="$2"
  width="$3"
  height="$4"

  sips -s format jpeg -z "$height" "$width" "$source_path" --out "$target_path" >/dev/null
}

extract_theme_dot_color() {
  source_path="$1"

  ffmpeg -v error -i "$source_path" \
    -vf "boxblur=20:1,crop=iw*0.6:ih*0.6:(iw-ow)/2:(ih-oh)/2,scale=1:1,format=rgb24" \
    -frames:v 1 -f rawvideo - | od -An -tu1 | awk 'NF {print $1, $2, $3; exit}'
}

write_generated_dot() {
  source_path="$1"
  target_path="$2"

  set -- $(extract_theme_dot_color "$source_path")
  [ "$#" -eq 3 ] || fail "failed to extract theme dot color from $source_path"

  ffmpeg -v error -y -i "$legacy_dot_template" \
    -vf "hue=s=0,lutrgb=r='val*$1/255':g='val*$2/255':b='val*$3/255'" \
    -frames:v 1 "$target_path"
}

import_launcher_new_previews() {
  theme_id="$1"
  output_dir="$2"
  preview_dir="$launcher_new_preview_root/$theme_id"

  cp "$preview_dir/dot.png" "$output_dir/dot.png"
  write_resized_jpeg "$preview_dir/12/trident_S.jpg" "$output_dir/preview_9_S.jpg" 174 309
  write_resized_jpeg "$preview_dir/20/trident_S.jpg" "$output_dir/preview_16_S.jpg" 174 309
  write_resized_jpeg "$preview_dir/12/darwin_L.jpg" "$output_dir/preview_9_L.jpg" 558 990
  write_resized_jpeg "$preview_dir/20/darwin_L.jpg" "$output_dir/preview_16_L.jpg" 558 990
}

extract_theme_preview() {
  apk_path="$1"
  theme_id=$(theme_id_from_apk "$apk_path")
  output_dir="$output_root/$theme_id"

  if [ -d "$output_dir" ] && [ "$force_extract" != "1" ]; then
    printf '%s\n' "skip existing: $theme_id"
    return 0
  fi

  work_dir=$(mktemp -d "${TMPDIR:-/tmp}/theme-preview-work.XXXXXX")
  mkdir -p "$output_dir"

  preview_9_l="$output_dir/preview_9_L.jpg"
  preview_9_s="$output_dir/preview_9_S.jpg"
  preview_16_l="$output_dir/preview_16_L.jpg"
  preview_16_s="$output_dir/preview_16_S.jpg"
  thumb_settings_out="$output_dir/thumbnail_settings.png"
  thumb_settings_16_out="$output_dir/thumbnail_settings_16.png"

  if has_launcher_new_preview_set "$theme_id"; then
    import_launcher_new_previews "$theme_id" "$output_dir"
    preview_9_src=""
    preview_16_src=""
  else
    preview_9_src=$(extract_first "$apk_path" "$work_dir" \
      res/drawable-xxhdpi-v4/preview_9.jpg \
      res/drawable-xxhdpi-v4/preview_9.png \
      res/drawable-xxhdpi/preview_9.jpg \
      res/drawable-xxhdpi/preview_9.png) || preview_9_src=""
    preview_16_src=$(extract_first "$apk_path" "$work_dir" \
      res/drawable-xxhdpi-v4/preview_16.jpg \
      res/drawable-xxhdpi-v4/preview_16.png \
      res/drawable-xxhdpi/preview_16.jpg \
      res/drawable-xxhdpi/preview_16.png) || preview_16_src=""
  fi

  thumb_settings_src=$(extract_first "$apk_path" "$work_dir" \
    res/drawable-xxhdpi-v4/thumbnail_settings.png \
    res/drawable-xxhdpi/thumbnail_settings.png) || thumb_settings_src=""
  thumb_settings_16_src=$(extract_first "$apk_path" "$work_dir" \
    res/drawable-xxhdpi-v4/thumbnail_settings_16.png \
    res/drawable-xxhdpi/thumbnail_settings_16.png) || thumb_settings_16_src=""

  if [ -z "$preview_9_src" ] && { [ ! -f "$preview_9_l" ] || [ ! -f "$preview_9_s" ]; }; then
    fail "missing preview_9 in $apk_path"
  fi
  if [ -z "$preview_16_src" ] && { [ ! -f "$preview_16_l" ] || [ ! -f "$preview_16_s" ]; }; then
    fail "missing preview_16 in $apk_path"
  fi
  if [ -z "$thumb_settings_src" ]; then
    [ -f "$thumb_settings_out" ] || fail "missing thumbnail_settings in $apk_path"
    thumb_settings_src="$thumb_settings_out"
  fi
  if [ -z "$thumb_settings_16_src" ]; then
    [ -f "$thumb_settings_16_out" ] || fail "missing thumbnail_settings_16 in $apk_path"
    thumb_settings_16_src="$thumb_settings_16_out"
  fi

  if has_launcher_new_preview_set "$theme_id"; then
    :
  elif theme_requires_generated_dot "$theme_id"; then
    write_generated_dot "$thumb_settings_src" "$output_dir/dot.png"
  elif [ ! -f "$output_dir/dot.png" ]; then
    fail "missing legacy dot asset for $theme_id"
  fi
  if [ -n "$preview_9_src" ]; then
    write_resized_jpeg "$preview_9_src" "$preview_9_l" 558 990
    write_resized_jpeg "$preview_9_src" "$preview_9_s" 174 309
  fi
  if [ -n "$preview_16_src" ]; then
    write_resized_jpeg "$preview_16_src" "$preview_16_l" 558 990
    write_resized_jpeg "$preview_16_src" "$preview_16_s" 174 309
  fi
  if [ "$thumb_settings_src" != "$thumb_settings_out" ]; then
    cp "$thumb_settings_src" "$thumb_settings_out"
  fi
  if [ "$thumb_settings_16_src" != "$thumb_settings_16_out" ]; then
    cp "$thumb_settings_16_src" "$thumb_settings_16_out"
  fi

  rm -rf "$work_dir"
  printf '%s\n' "generated: $theme_id"
}

need_cmd awk
need_cmd basename
need_cmd ffmpeg
need_cmd find
need_cmd mktemp
need_cmd od
need_cmd sips
need_cmd sort
need_cmd unzip

[ -f "$legacy_dot_template" ] || fail "missing legacy dot template: $legacy_dot_template"

mkdir -p "$output_root"

theme_apks=$(collect_apks)
theme_count=$(printf '%s\n' "$theme_apks" | sed '/^$/d' | wc -l | tr -d ' ')
[ "$theme_count" -gt 0 ] || fail "no theme APKs matched"

printf '%s\n' "$theme_apks" | while IFS= read -r apk_path; do
  [ -n "$apk_path" ] || continue
  extract_theme_preview "$apk_path"
done
