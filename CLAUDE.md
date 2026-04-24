# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Maintained fork of the Smartisan Launcher (`com.smartisanos.home`), kept running on modern Android (12-16) via smali-level patches. There is no Java/Kotlin source — all code lives as `.smali` files (Dalvik bytecode assembly). A sibling repo `smartisan-launcher-new-maintained` (LauncherSmartisanNew) serves as a feature reference only; this old launcher is the release mainline.

## Language

All documentation, commit messages, and user-facing strings are in **Chinese (Simplified)**. Follow this convention.

## Build & Install

Prerequisites: `apktool`, JDK (`keytool`/`jarsigner`), `adb`, Android SDK build-tools (`zipalign`/`apksigner`).

```sh
# Debug build + install to connected device
sh tools/build_and_install.sh

# Release build (requires .local/signing/release.env)
sh tools/build_release.sh
```

The build pipeline is: edit smali/resources → `apktool b` → sign → install via adb.

Multi-device install: set `ANDROID_SERIAL`, `ANDROID_SERIALS` (comma-separated), or `INSTALL_ALL_DEVICES=1`.

Version is defined in `tools/release.conf` and synced into `apktool.yml` by the release script.

## Commit Convention

Conventional Commits in Chinese: `type(scope): 中文描述`

Types: `fix`, `feat`, `chore`, `docs`

## Code Architecture

All source is under `smali/`. Key packages:

- `com/smartisanos/home/` — Main launcher Activity (`Launcher.smali`, ~5k lines with 23+ inner classes), settings UI, network, tracking, widgets
- `com/smartisanos/launcher/` — Core infrastructure: actions, animations, data, provider, theme engine, views
- `com/smartisanos/quicksearchbox/` — Search (pinyin-based)
- `com/smartisanos/smengine/` — 3D/particle rendering
- `com/smartisan/weather/` — Weather widget
- `com/smartisan/updater/` — Online update (checks GitHub Release API)

Vendor libraries (support-v4/v7, Volley, Jackson, AMap, pinyin4j, etc.) are also in smali form but rarely need editing.

## Theme System

Theme APKs are separate packages downloaded from Smartisan servers, repackaged with modern targetSdkVersion, re-signed, and distributed via GitHub Release tag `themes-v1`.

Key scripts: `tools/build_theme_release.sh`, `tools/extract_theme_previews.sh`, `tools/download_all_themes.sh`.

## Working with Smali

- Smali is Dalvik assembly. Register-based, typed. `.method`/`.end method` blocks, `invoke-*` for calls, `v0`-`vN` for locals, `p0`-`pN` for parameters (`p0` = `this` in instance methods).
- When adding/modifying methods, update `.locals` count and register allocation carefully.
- String resources go in `res/values/strings.xml` (with Chinese translations in `res/values-zh-rCN/`).
- Layout XML is in `res/layout/`; drawables span multiple density buckets (`-hdpi` through `-xxxhdpi`).

## Compatibility Approach

Fixes target standard Android APIs only. The project avoids depending on Smartisan/OEM-private APIs. When porting features from the new launcher, only migrate what works with public Android APIs (see `docs/feature-migration-roadmap.md`).

Detailed fix records with root cause analysis are in `docs/compatibility-fixes.md`.
