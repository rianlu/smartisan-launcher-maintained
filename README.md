# Smartisan Launcher Maintained

基于 `apktool` 的锤子桌面非官方维护仓库。

当前仓库直接保存 `com.smartisanos.home_27.apk` 的解包结果，后续以修改 `smali` 和资源文件为主，维护方式尽量与本地 `handshaker-android-maintained` 保持一致。

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

默认行为：

- 原始主题目录：`themes/source-apks/`
- 维护版主题目录：`themes/maintained/`
- 主题 `targetSdkVersion`：默认改为 `36`
- 签名：复用 `.local/signing/release.env`
- `build/` 只保留中间解包/构建产物，不作为最终分发目录

常用示例：

```sh
THEME_LIMIT=2 ./tools/build_theme_release.sh
THEME_FILTER=Literary ./tools/build_theme_release.sh
KEEP_THEME_WORK=1 ./tools/build_theme_release.sh
```

## 安装说明

维护版保持原包名 `com.smartisanos.home`。

因为维护版和原版签名不同，首次安装前必须先卸载原版锤子桌面。之后只要一直使用同一把维护版签名，就可以在维护版之间覆盖升级。
