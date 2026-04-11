# Themes

`themes/` 目录只保留主题维护说明，不把 APK 资产提交进 git。

## 目录约定

- `themes/source-apks/`
  本地下载的官方原始主题 APK。用于重新打包和排查问题。
- `themes/maintained/`
  本地重打包并重签名后的维护版主题 APK。用于上传到 GitHub Release。

这两个目录下的 `*.apk` 已在仓库根目录 `.gitignore` 中忽略。

## 分发方式

- Launcher 在线主题下载固定指向：
  `https://gh-proxy.org/https://github.com/rianlu/smartisan-launcher-maintained/releases/download/themes-v1/<package>.apk`
- GitHub Release `themes-v1` 是主题资产的唯一线上分发源。
- 仓库只提交脚本、文档和必要清单，不提交大体积 APK 产物。

## 常用命令

下载官方仍可获取的主题：

```sh
./tools/download_all_themes.sh
```

重打包并重签名为维护版主题：

```sh
./tools/build_theme_release.sh
```

把维护版主题里的预览图提取到旧桌面的本地资产目录：

```sh
./tools/extract_theme_previews.sh
```

上传维护版主题到固定 release：

```sh
gh release upload themes-v1 themes/maintained/*.apk
```

如果 release 中已有同名资产，需要先删除旧资产或只上传新增文件。

## 当前状态

截至 2026-04-11：

- `themes-v1` 已发布 35 个主题资产
- 已为仓库内可获取的新主题补齐 `assets/theme_preview/` 预览资产
- `MIST`（白雾）主题已公开，并保持预览图与实际下载包对齐
- 当前官方接口仍无法获取 2 个主题：
  - `com.smartisanos.launcher.theme.copperred`
  - `com.smartisanos.launcher.theme.gintama`
- Launcher 主题详情页当前会提示：主题下载完成后需从通知栏或 `下载` 应用继续手动安装

## 签名

维护版主题复用本仓库 `.local/signing/release.env` 指向的签名配置。
当前使用：

- keystore: `handshaker-maintained-release.jks`
- alias: `handshaker-maintained`
