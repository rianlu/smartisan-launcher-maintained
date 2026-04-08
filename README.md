<div align="center">
  <img src="./res/drawable-xhdpi-v4/ic_launcher.png" alt="Smartisan Launcher Maintained Logo" width="124" height="124" />

  <h1>Smartisan Launcher Maintained</h1>

  <p><strong>面向新版 Android 的锤子桌面非官方维护版</strong></p>
  <p>基于 <code>apktool</code> 直接维护 <code>com.smartisanos.home</code> 的反编译结果，修复新版 Android 上的安装、布局与主题兼容问题，并补齐旧桌面的可用主题资产。</p>

  <p>
    <a href="https://github.com/rianlu/smartisan-launcher-maintained/releases/latest">
      <img alt="Release" src="https://img.shields.io/github/v/release/rianlu/smartisan-launcher-maintained?display_name=tag&style=for-the-badge" />
    </a>
    <img alt="Android 16" src="https://img.shields.io/badge/Android-16%20Compatible-4CAF50?style=for-the-badge" />
    <img alt="Themes" src="https://img.shields.io/badge/Themes-35%20Assets-1E88E5?style=for-the-badge" />
    <img alt="apktool" src="https://img.shields.io/badge/apktool-smali%20Maintained-546E7A?style=for-the-badge" />
  </p>
</div>

> [!IMPORTANT]
> 本仓库是锤子桌面的非官方维护项目，与原厂无官方关联。仓库内容主要用于个人学习、兼容性分析和非商业研究。详细说明见 [NOTICE.md](NOTICE.md)。

## 相关项目

- 同系列维护项目：[HandShaker Android Maintained](https://github.com/rianlu/handshaker-android-maintained)

## 项目亮点

- 修复新版 Android 上的安装与启动兼容问题
- 修复 Android 16 顶部状态栏和底部手势区导致的桌面布局错位
- 统一主题安装识别逻辑，兼容 Android 16 与 HyperOS / Android 13
- 为旧桌面补齐一批新版主题，并统一预览图生成方案
- 主题 APK 已支持批量重打包、改 `targetSdkVersion`、重签名与 GitHub Release 分发
- 保留 `apktool` 解包结构，便于后续继续直接修改 `smali` 和资源

## 当前状态

- 维护版 Launcher 已可在新版 Android 上安装、打开并继续做后续兼容维护
- 兼容性修复记录集中在 [docs/compatibility-fixes.md](docs/compatibility-fixes.md)
- 在线主题下载固定指向 `gh-proxy` + GitHub Release 的 `themes-v1`
- 截至 2026-04-08，`themes-v1` 已发布 35 个主题资产
- `COPPER_RED` 和 `GINTAMA` 仍保留本地识别能力，但默认不再显示在“在线主题”列表中
- 改进版应用图标已补上“旧接口优先，新接口按包名兜底”的兼容逻辑，便于继续扩展旧桌面的图标覆盖范围

## Android 16 手势导航布局修复说明

- 2026-04-08 起，维护版已修复 Android 16 手势导航下桌面首页顶部/底部留缝的问题。
- 这次修复包含两部分：
  1. 启动时不再沿用旧逻辑额外扣减底部手势区高度，避免首页内容坐标被错误缩短。
  2. Launcher 窗口同时铺满状态栏与底部手势区域，并把底部导航栏背景设为透明，避免出现底部黑条。
- 当前已在 `Redmi Note 12 Turbo / Evolution X / Android 16` 实机确认：首页图标区与底栏可以正常贴合显示。

## 已实测环境

- Redmi Note 12 Turbo / Evolution X / Android 16
- Xiaomi Pad 5 Pro / HyperOS 1.0.2.0 / Android 13

> [!NOTE]
> 当前仓库明确实测的是以上设备与系统组合。不同品牌、ROM、Android 版本下的表现可能存在差异，请不要默认视为所有设备都完全一致。

## 应用图标逻辑说明

### 旧桌面原始逻辑

- 旧桌面原本主要依赖旧图标接口，也就是按 `packageName + drawableName` 去请求：
  - 图标信息：`http://icon.smartisan.com/info/<pkg>/<drawable>.xml`
  - 图标图片：`http://icon.smartisan.com/drawable/<pkg>/<drawable>.png`
- 这套逻辑的问题是：必须先知道应用当前可用的 `drawableName`
- 如果应用升级后换了图标资源名，或者旧桌面本地根本没有对应映射，就算服务器上有图，也可能完全命中不到
- 因此旧桌面以前的“改进版图标”更像是依赖旧白名单和旧资源名的静态方案

### 新桌面的补充逻辑

- 新桌面额外提供了一个按包名查询的接口：

```text
http://setting.smartisan.com/app/icon
```

- 请求体是 JSON 数组，例如：

```json
[{"package":"com.tencent.mm"}]
```

- 这个接口不再要求先知道 `drawableName`，只按包名返回候选图标列表
- 部分应用会返回多张候选图标；但“返回多张”不等于桌面支持手动选择
- 新桌面实际也是从返回结果里取第一张可用 `logo`

### 当前维护版采用的策略

- 当前旧桌面维护版没有重写整套“应用图标”设置页
- 维护版采用的是折中方案：
  1. 先走旧接口，兼容原有逻辑
  2. 旧接口拿不到时，再走新接口按包名查询
  3. 查到图后，再按包名扫描该应用下所有 Launcher Activity
  4. 把结果回填成旧桌面可识别的 `RedirectIconInfo` 记录
- 这样做的好处是：
  - 保留旧桌面的设置页与数据库结构
  - 尽量增加旧桌面对现代应用的图标命中率
  - 不需要把新桌面的整套图标系统完整搬过来

### 为什么有时看起来“图标没变化”

- 很多应用在新接口下本来就没有返回任何候选图标
- 很多应用虽然返回了图标，但第一张候选图本身和旧图标风格差异很小
- 当前版本不会把接口里的多张候选图暴露成“可选图标”，仍然只取第一张
- 所以“迁移已生效”不一定等于“桌面视觉上明显变化”

### 后续自检方法

如果你想自己检查已连接设备上的第三方应用，哪些包有返回图标、哪些包返回多张候选，可以直接在仓库根目录运行：

```sh
python3 - <<'PY'
import json, gzip, urllib.request, subprocess
from collections import Counter

pkgs = subprocess.check_output(
    "adb shell pm list packages -3 | sed 's/^package://g' | sort",
    shell=True,
    text=True,
).splitlines()

pkgs = [
    p.strip()
    for p in pkgs
    if p.strip()
    and p != "com.smartisanos.home"
    and not p.startswith("com.smartisanos.launcher.theme.")
]

body = json.dumps([{"package": p} for p in pkgs]).encode()
req = urllib.request.Request(
    "http://setting.smartisan.com/app/icon",
    data=body,
    headers={"Content-Type": "application/json", "Accept-Encoding": "gzip"},
    method="POST",
)

with urllib.request.urlopen(req, timeout=20) as resp:
    raw = resp.read()
    enc = resp.headers.get("Content-Encoding", "")

if "gzip" in enc.lower():
    raw = gzip.decompress(raw)

data = json.loads(raw.decode())
app_icon = data.get("body", {}).get("app_icon", {})

rows = []
for pkg in pkgs:
    arr = app_icon.get(pkg, [])
    logos = []
    if isinstance(arr, list):
        for item in arr:
            if isinstance(item, dict) and item.get("logo"):
                logos.append(item["logo"])
    rows.append((pkg, len(logos), logos))

ctr = Counter(n for _, n, _ in rows)
print("TOTAL", len(rows))
for k in sorted(ctr):
    print(f"COUNT_{k}={ctr[k]}")

print("\nMULTI:")
for pkg, n, logos in rows:
    if n > 1:
        print(pkg)
        for i, logo in enumerate(logos, 1):
            print(f"  {i}. {logo}")

print("\nNONE:")
for pkg, n, _ in rows:
    if n == 0:
        print(pkg)
PY
```

这段命令会输出：

- 第三方应用总数
- 返回 `0 / 1 / 2 / 3 / 4...` 张候选图的包数量
- 哪些应用属于“多候选图标”
- 哪些应用当前完全没有图标返回

## 下载与使用

### 获取 Launcher APK

- 推荐直接前往 [Releases](https://github.com/rianlu/smartisan-launcher-maintained/releases) 页面下载已签名 APK
- 当前最新版本可在 [Latest Release](https://github.com/rianlu/smartisan-launcher-maintained/releases/latest) 获取

### 安装说明

- 维护版保持原包名 `com.smartisanos.home`
- 因为维护版和原版签名不同，首次安装前必须先卸载原版锤子桌面
- 之后只要一直使用同一把维护版签名，就可以在维护版之间覆盖升级

### 主题下载说明

- Launcher 在线主题默认通过下面这个固定前缀下载：

```text
https://gh-proxy.org/https://github.com/rianlu/smartisan-launcher-maintained/releases/download/themes-v1/
```

- GitHub Release 里的主题资产文件名必须保持为 `<主题包名>.apk`
- 旧版主题在新版 Android 上常因 target 过旧被拦截安装；维护版主题已统一重打包、改 `targetSdkVersion` 为 `36` 并重新签名
- 主题 release 只在主题资产变化时更新，不跟随每次 Launcher release 重复发布

## 主题维护与兼容性

### 当前处理方式

- 旧桌面的主题安装判断已经统一为“按已知主题包名逐个 `getPackageInfo()` 探测”，不再依赖 `getInstalledPackages(0)` 的全量枚举
- 这样可以避免 HyperOS 1.0.2.0 / Android 13 上出现“详情页显示设定，但本地主题里看不到，点击后卡住”的不一致问题
- `COPPER_RED` 和 `GINTAMA` 由于当前缺少可用上游包，默认从在线主题列表隐藏，但用户手动安装后仍能被本地主题识别

### 主题补充范围

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

### 预览图策略

- 从 2026-04-08 起，旧桌面的主题预览资产默认以新桌面仓库内置的 `assets/theme_preview` 为准
- 再转换成旧桌面使用的 `preview_9_S`、`preview_16_S`、`preview_9_L`、`preview_16_L` 文件名，避免直接使用主题 APK 自带 `preview_9/16` 时出现重复预览问题
- 当前只有 `smartisan_theme_mist` 仍沿用旧项目现有资产作为兜底，因为新桌面仓库里没有对应目录
- `thumbnail_settings.png` 和 `thumbnail_settings_16.png` 仍保留原有提取逻辑，供设置页缩略图继续使用
- 新增主题缺少旧桌面所需纯色 `dot.png` 时，维护版会根据主题缩略图主色生成兼容旧样式的圆点资源

## 已修复问题

- Android 16 上应用无法安装或启动
- Android 16 顶部状态栏 / 底部手势区导致的桌面布局错位
- 旧主题 APK 在新版 Android 上无法直接安装
- HyperOS 1.0.2.0 / Android 13 上“在线主题已安装但本地主题不可见”的识别不一致
- 旧桌面与新增主题预览图来源不一致、重复预览和圆点资源异常
- 在线主题失效入口未隐藏导致的详情页异常

## 仓库结构

- `com.smartisanos.home_27.apk`：原始 APK
- `AndroidManifest.xml`、`apktool.yml`：apktool 解包后的核心描述文件
- `smali/`：反编译后的主要代码
- `res/`、`assets/`、`lib/`、`unknown/`、`original/`：资源和原始附带文件
- `themes/`：主题资产说明、下载和维护脚本相关目录
- `tools/`：检查、构建、签名、发布相关脚本
- `docs/compatibility-fixes.md`：兼容性修复记录

## 开发者说明

### 环境要求

- `apktool`
- JDK，且命令行可用 `keytool` 和 `jarsigner`
- `adb`
- Android SDK `build-tools` 中的 `zipalign` / `apksigner`

`build_release.sh` 会优先从这些位置查找 `zipalign` 和 `apksigner`：

1. 项目内 `.local/android-sdk`
2. `ANDROID_HOME`
3. `ANDROID_SDK_ROOT`
4. `~/Library/Android/sdk`
5. `~/Android/Sdk`

### 常用命令

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

### Release 版本维护

- 日常不要手动改 `apktool.yml`
- 版本入口统一在 `tools/release.conf`
- 修改 `RELEASE_SUFFIX` 和 `RELEASE_VERSION_CODE` 后，再运行 `sh ./tools/build_release.sh`
- release 构建产物会输出到 `build/release/`

### Release 签名配置

本地签名目录与 `HandShaker` 保持一致，统一使用：

```sh
.local/signing/
```

推荐直接复用现有 `HandShaker Android Maintained` 的 release keystore，不必为这个仓库单独再创建一把签名。

当前推荐文件名与 `HandShaker` 保持一致：

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

### 主题 APK 维护

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
- `build/` 只保留中间解包 / 构建产物，不作为最终分发目录
- 更具体的主题资产维护说明见 [themes/README.md](themes/README.md)

常用示例：

```sh
THEME_LIMIT=2 ./tools/build_theme_release.sh
THEME_FILTER=Literary ./tools/build_theme_release.sh
KEEP_THEME_WORK=1 ./tools/build_theme_release.sh
./tools/extract_theme_previews.sh
```

## 版权与免责声明

- 原始应用及相关商标、名称、资源和版权归原权利人所有
- 本仓库不主张对原始应用本体及其相关知识产权拥有任何权利
- 当前仓库未对整体内容附加通用开源许可证
- 如你计划基于本仓库进行公开分发、商用集成或其他超出个人研究范围的用途，请自行评估相关风险
