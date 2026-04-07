# Smartisan Launcher Maintained

基于 `apktool` 的锤子桌面非官方维护仓库。

当前仓库直接保存 `com.smartisanos.home_27.apk` 的解包结果，后续以修改 `smali` 和资源文件为主，维护方式尽量与本地 `handshaker-android-maintained` 保持一致。

## 兼容性记录

- 兼容性修复记录见 `docs/compatibility-fixes.md`
- 目前已记录 Android 16 顶部状态栏 / 底部手势区布局错位修复
- 这类问题优先记录根因、涉及 smali 文件和验证结果，方便后续继续整理

## 仓库结构

- `com.smartisanos.home_27.apk`：原始 APK
- `AndroidManifest.xml`、`apktool.yml`：apktool 解包后的核心描述文件
- `smali/`：主要代码
- `res/`、`assets/`、`lib/`、`unknown/`、`original/`：资源和原始附带文件
- `tools/`：构建、签名、发布脚本
- `docs/superpowers/`：本次设计和计划记录

## 环境要求

- `apktool`
- JDK，且命令行可用 `keytool` 和 `jarsigner`
- `adb`
- Android SDK `build-tools` 中的 `zipalign` / `apksigner`（release 构建优先使用）

`build_release.sh` 会优先从这些位置查找 `zipalign` 和 `apksigner`：

1. 项目内 `.local/android-sdk`
2. `ANDROID_HOME`
3. `ANDROID_SDK_ROOT`
4. `~/Library/Android/sdk`
5. `~/Android/Sdk`

## 常用命令

先做安装兼容性检查：

```sh
./tools/check_install_compat.sh
```

本地调试构建并尝试安装：

```sh
./tools/build_and_install.sh
```

构建 release APK：

```sh
sh ./tools/build_release.sh
```

## Release 版本维护

- 日常不要手动改 `apktool.yml`
- 版本入口统一在 `tools/release.conf`
- 修改 `RELEASE_SUFFIX` 和 `RELEASE_VERSION_CODE` 后，再运行 `sh ./tools/build_release.sh`
- release 构建产物会输出到 `build/release/`

## Release 签名配置

本地签名目录与 `Handshaker` 保持一致，统一使用：

```sh
.local/signing/
```

推荐直接复用现有 `Handshaker Android Maintained` 的 release keystore，不必为这个仓库单独再创建一把签名。

如果你已有那把签名，建议直接复制到当前仓库的 `.local/signing/` 下统一管理；如果没有，再自行准备一把固定的 release keystore。

当前推荐文件名与 `Handshaker` 保持一致：

```sh
.local/signing/handshaker-maintained-release.jks
```

先创建本地签名配置文件：

```sh
mkdir -p .local/signing
cat > .local/signing/release.env <<'EOF'
RELEASE_KEYSTORE_FILE=handshaker-maintained-release.jks
RELEASE_KEY_ALIAS=handshaker-maintained
RELEASE_STORE_PASSWORD='your_store_password'
RELEASE_KEY_PASSWORD='your_key_password'
EOF
```

如果 `RELEASE_KEYSTORE_FILE` 不是绝对路径，脚本会默认从 `.local/signing/` 下查找。

## 主题 APK 维护

先批量下载原始主题 APK：

```sh
./tools/download_all_themes.sh
```

再批量修复主题安装兼容性并重签名：

```sh
./tools/build_theme_release.sh
```

如果补了新主题包名，还需要把主题预览图同步提取到旧桌面的本地资产目录：

```sh
./tools/extract_theme_previews.sh
```

默认行为：

- 原始主题目录：`themes/source-apks/`
- 维护版主题目录：`themes/maintained/`
- 主题预览资产目录：`assets/theme_preview/`
- 主题 `targetSdkVersion`：默认改为 `36`
- 签名：复用 `.local/signing/release.env`
- `themes/source-apks/*.apk` 和 `themes/maintained/*.apk` 默认不提交进 git，只保留在本地与 GitHub Release
- `build/` 只保留中间解包/构建产物，不作为最终分发目录
- Launcher 在线主题下载固定指向 `gh-proxy` + GitHub Release：`themes-v1`
- GitHub Release 里的主题资产文件名必须保持为 `<主题包名>.apk`
- 更具体的主题资产维护说明见 `themes/README.md`

常用示例：

```sh
THEME_LIMIT=2 ./tools/build_theme_release.sh
THEME_FILTER=Literary ./tools/build_theme_release.sh
KEEP_THEME_WORK=1 ./tools/build_theme_release.sh
./tools/extract_theme_previews.sh
```

## 主题分发

Launcher 里的在线主题现在默认从这个固定前缀下载：

```text
https://gh-proxy.org/https://github.com/rianlu/smartisan-launcher-maintained/releases/download/themes-v1/
```

使用方式保持简单：

- 只需要维护一个固定的主题 release/tag：`themes-v1`
- 把 `themes/maintained/` 下的 APK 上传为 release assets
- 资产文件名必须和主题包名一致，例如 `com.smartisanos.launcher.theme.aero.apk`
- 后续普通 Launcher release 不需要重复附带这些主题；只有主题本身发生变化时，才需要更新这个固定 release
- 截至 2026-04-08，`themes-v1` 已发布 35 个主题资产；`copperred` 和 `gintama` 仍缺少可用上游包

## 主题兼容性说明

部分 ROM 上，`PackageManager.getInstalledPackages(0)` 的结果和 AOSP 不完全一致。

- Android 16 类原生系统上，旧逻辑还能通过全量枚举拿到已安装主题
- HyperOS 1.0.2.0 / Android 13 上，在线主题详情页可以通过 `getPackageInfo(pkg, 0)` 判断主题已安装，但“本地主题”列表未必能通过全量枚举拿到同一个主题包
- 如果继续依赖全量枚举，就会出现“详情页显示设定，但本地主题里看不到，点击设定后卡住”的不一致现象

维护版已经把主题安装判断统一为“按已知主题包名逐个 `getPackageInfo()` 探测”，不再依赖 `getInstalledPackages(0)` 做主题识别。

对于当前上游接口已失效的 `COPPER_RED` 和 `GINTAMA`：

- 仍保留在主题定义与包名映射中，方便用户手动安装后被本地主题识别
- 但默认不再出现在“在线主题”列表里，避免点击后无可用下载源
- 主题详情页底部的全量主题横条也会同步隐藏，避免继续暴露无效入口；如果当前正查看这两个主题，则仍保留当前项，避免详情页异常

## 主题支持扩充

保守方案下，维护版已把以下新版主题补进旧主题列表与包名映射：

- `BAMBOO`
- `BLUE_GREEN`
- `COPPER_RED`
- `DARK_GRAY`
- `DEEP_BLUE`
- `GINTAMA`
- `GRID`
- `LAKE`
- `LEAF`
- `LIGHT_GOLD`
- `RAVEN`
- `WINE_RED`

为避免把透明主题相关的额外行为一并带入旧桌面，当前没有把 `TRANS` 纳入旧项目主题列表。

由于这些新版主题 APK 没有提供旧桌面所需的纯色 `dot.png`，维护版会根据主题缩略图主色生成兼容旧样式的圆点资源，避免在详情页底部横条里显示成桌面缩略图。

从 2026-04-08 起，旧桌面的主题预览资产默认以新桌面仓库内置的 `assets/theme_preview` 为准，再转换成旧桌面使用的 `preview_9_S` / `preview_16_S` / `preview_9_L` / `preview_16_L` 文件名。这样可以避免直接使用主题 APK 自带 `preview_9/16` 时出现的重复预览问题，并让旧主题与新增主题的预览风格保持一致。

当前只有 `smartisan_theme_mist` 仍沿用旧项目现有资产作为兜底，因为新桌面仓库里没有对应目录。`thumbnail_settings.png` / `thumbnail_settings_16.png` 仍保留原有提取逻辑，供设置页缩略图继续使用。

## 安装说明

维护版保持原包名 `com.smartisanos.home`。

因为维护版和原版签名不同，首次安装前必须先卸载原版锤子桌面。之后只要一直使用同一把维护版签名，就可以在维护版之间覆盖升级。
