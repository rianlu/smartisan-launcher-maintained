<div align="center">
  <img src="./launcher_icon.png" alt="Smartisan Launcher Maintained App Icon" width="124" height="124" />

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

- 桌面维护版仓库：当前仓库
- 同系列维护项目：[HandShaker Android Maintained](https://github.com/rianlu/handshaker-android-maintained)
- HandShaker 最新发布页：[Latest Release](https://github.com/rianlu/handshaker-android-maintained/releases/latest)

## 项目亮点

- 修复新版 Android 上的安装与启动兼容问题
- 修复 Android 12 ~ 16 因状态栏、手势导航和三键导航导致的桌面布局错位
- 修复新版 Android 上“设为默认桌面”确认按钮无响应的问题
- 修复锁屏解锁动画误触发，避免从设置页、应用页或桌面侧滑返回时错误播放解锁动画
- 修复四指左右滑动切换主题时，偶发停留在“正在加载主题”的问题
- 统一主题安装识别逻辑，兼容 Android 16 与 HyperOS / Android 13
- 补强主题下载状态识别与残留清理，兼容 Android 11+ 上 `DownloadManager` 字段变化
- 为旧桌面补齐一批新版主题，并统一预览图生成方案
- 为毛玻璃 / 白雾主题补入桌面壁纸设置入口，支持手动选择图片或恢复默认壁纸
- 天气入口已改为优先拉起系统或已安装的天气应用，避免旧天气接口失效后直接报错
- 搜索页已支持补充显示应用分身 / 双开结果，并可直接启动对应分身实例
- 改进版应用图标同步逻辑已补强，减少已下载图标回退默认图标的问题
- 在线更新已接入 GitHub Release，并调整为回到桌面时自动静默检查
- 已支持第三方图标包，可在桌面设置的应用图标页选择已安装的图标包
- 桌面设置新增"切换默认桌面"入口，方便用户快速恢复原桌面
- 移除默认桌面中无法安装的旧锤子预置应用快捷方式
- 主题 APK 已支持批量重打包、改 `targetSdkVersion`、重签名与 GitHub Release 分发
- 保留 `apktool` 解包结构，便于后续继续直接修改 `smali` 和资源

## 当前状态

- 维护版 Launcher 已可在新版 Android 上安装、打开并继续做后续兼容维护
- 主要兼容性修复记录集中在 [docs/compatibility-fixes.md](docs/compatibility-fixes.md)
- 在线主题下载固定指向 `gh-proxy` + GitHub Release 的 `themes-v1`
- `themes-v1` 已补入并公开 `MIST`（白雾）主题，主题预览与实际下载包保持对齐
- `COPPER_RED` 和 `GINTAMA` 仍保留本地识别能力，但默认不再显示在“在线主题”列表中
- 搜索页已可在主应用结果之外补充显示分身 / 双开应用，并支持直接打开对应实例
- 改进版应用图标已补上“旧接口优先，新接口按包名兜底”的兼容逻辑，并补强缓存回填与状态同步触发
- 桌面设置页已加入“非官方维护版 / 兼容 Android 16”标识，避免与原版混淆
- 当设备已安装毛玻璃或白雾主题时，桌面设置页会显示“桌面壁纸”入口，可单独为这类高斯主题设置壁纸
- 天气图标点击后会优先拉起系统或已安装的天气应用，而不是继续走已失效的旧天气数据逻辑
- 在线更新已改为对接 GitHub Release；手动检查保留在设置页，同时回到桌面时会自动静默检查，每天最多一次
- 检查到新版本时，更新弹窗会直接显示 GitHub Release 中填写的更新内容（纯文本）
- 已支持在桌面设置 → 应用图标页面选择第三方图标包；图标优先级规则为 `改进版图标 > 图标包图标 > 默认图标`，关闭改进版开关后为 `图标包图标 > 默认图标`
- 桌面设置"更多信息"区域新增"切换默认桌面"入口，点击后直接跳转系统默认桌面设置页
- 解锁动画当前只在真实锁屏解锁回桌面时触发，不再因为普通返回桌面、桌面侧滑返回或设置页锁屏恢复而误触发
- 默认桌面布局已移除应用商店、游戏中心、欢喜云服务、锤子便签、锤子阅读、锤子科技论坛、电话、短信等无法在非锤子系统上安装的旧预置应用快捷方式
- `targetSdkVersion` 已从 24 提升至 28，修复 Android 16 上部分设备无法安装的问题
- `v1.5.1-r5` 是首个支持当前 GitHub Release 在线更新机制的版本；`r5` 之前的旧版本需要先手动安装 `r5`，后续版本才可继续走应用内更新

## 当前限制

- 桌面当前仍不支持直接显示多开 / 分身应用；但搜索页已支持补充显示并直接打开分身结果。
- 当前不支持显示快捷方式。
- 当前不支持文件夹。
- 当前不支持在桌面空白区域下拉直接展开系统通知栏。
- “桌面壁纸”设置当前仅对毛玻璃 / 白雾主题生效；其他主题仍使用各自主题包内置壁纸。
- 当前仍不提供桌面内置天气数据与天气卡片服务；天气图标仅作为外部天气应用入口。
- 第三方图标包当前仅支持标准 `appfilter.xml` 格式，不支持 `iconback` / `iconmask` / `iconupon` 合成，不支持单应用手动另选图标。

## 近期新增修复

- `2026-04-17`：收紧解锁动画触发条件。现在仅在真实锁屏解锁回桌面时触发，不再因普通返回桌面、桌面侧滑返回或“桌面设置 → 锁屏 → 解锁后回桌面”等场景误播动画。
- `2026-04-17`：补强主题下载完成态识别与残留清理，兼容 Android 11+ 上 `DownloadManager` 的 `local_filename` 列变化；即使系统已清理下载记录，也会继续清掉残留主题文件，避免主题状态卡死。
- `2026-04-16`：新增第三方图标包支持，可在应用图标页选择已安装图标包，桌面图标按优先级规则自动匹配。
- `2026-04-16`：桌面设置新增"切换默认桌面"入口，方便用户恢复原桌面。
- `2026-04-16`：移除默认桌面中无法安装的旧锤子预置应用（应用商店、游戏中心、欢喜云、便签、阅读、论坛、电话、短信）。
- `2026-04-16`：`targetSdkVersion` 从 24 提升至 28，修复部分 Android 16 设备（如 OriginOS 6）无法安装的问题；同步补充 `usesCleartextTraffic` 和 Apache HTTP legacy 库声明。
- `2026-04-16`：debug 构建脚本优先使用 `apksigner`（v2+ 签名），解决仅 v1 签名在高版本 Android 上被拒绝安装的问题。
- `2026-04-13`：在线更新弹窗已支持显示 GitHub Release 中填写的更新内容（纯文本）。
- `2026-04-11`：搜索页补上分身 / 双开应用结果显示与启动支持；桌面仍暂不直接展示分身图标。
- `2026-04-11`：补强改进版应用图标同步逻辑，减少已下载图标在状态刷新后回退默认图标的问题。
- `2026-04-11`：桌面设置页新增“桌面壁纸”入口，仅在已安装毛玻璃 / 白雾主题时显示，并支持选择图片或恢复默认壁纸。
- `2026-04-11`：主题详情页新增并上移手动安装提示，明确主题下载后需从通知栏或 `下载` 应用继续安装。
- `2026-04-12`：在线更新改为对接 GitHub Release；保留手动检查更新，同时把自动检查触发点调整为回到桌面时静默检查，每天最多一次。`v1.5.1-r5` 为首个支持当前机制的版本，更早版本需先手动升级。
- `2026-04-10`：修复四指左右滑动切换主题时，偶发停留在“正在加载主题”的竞态问题。
- `2026-04-10`：天气图标改为优先拉起系统或已安装的天气应用，避免旧天气接口失效后直接提示无法获取天气。
- `2026-04-09`：修复新版 Android 上“设为默认桌面”弹窗点击“确定”无响应的问题。
- `2026-04-09`：桌面设置页补入“非官方维护版 / 兼容 Android 16”标识。
- `2026-04-09`：搜索页补上联系人运行时权限动态申请，避免首次进入搜索页时联系人索引初始化异常。
- `2026-04-08`：修复 Android 12 ~ 16 桌面沉浸布局适配，解决首页顶部 / 底部留缝及底部垃圾桶露出问题。
- `2026-04-08`：`build_and_install.sh` 已支持单设备、多设备和全部已连接设备安装。
- `2026-04-08`：公开 `MIST`（白雾）主题并修正其主题预览。

## 已实测环境

- Redmi Note 12 Turbo / Evolution X / Android 16
- Xiaomi Pad 5 Pro / HyperOS 1.0.2.0 / Android 13
- Android 15 Emulator / 手势导航 + 三键导航
- Android 12 Emulator / 手势导航 + 三键导航

> [!NOTE]
> 当前仓库明确实测的是以上设备与系统组合。不同品牌、ROM、Android 版本下的表现可能存在差异，请不要默认视为所有设备都完全一致。

## 搜索与联系人行为说明

### 为什么需要补动态权限兼容

- 旧版搜索模块默认直接访问联系人索引，没有适配新版 Android 的运行时联系人权限模型。
- 在新版系统上，首次进入搜索页时如果还没有 `READ_CONTACTS` 授权，继续沿用旧逻辑就可能导致联系人索引初始化或同步异常。

### 当前版本的实际表现

- 2026-04-09 起，搜索页已补上 `READ_CONTACTS` 的运行时动态申请逻辑。
- 首次进入搜索页时，如果系统尚未授予联系人权限，Launcher 会先发起权限请求，而不是直接访问联系人索引。
- 用户授权后，搜索模块会立即初始化联系人索引、注册联系人变更监听，并刷新搜索结果，无需手动重启 Launcher。
- 未授权时，应用搜索结果仍可正常刷新；联系人索引初始化与同步会被跳过，避免在新版 Android 上因为运行时权限导致搜索页异常。

## 分身应用搜索说明

- 2026-04-11 起，维护版已在应用搜索结果里补上分身 / 双开应用的补充查询逻辑。
- 当系统里存在同包名的分身应用时，搜索页会在主应用结果之外追加带 `（分身）` 标记的结果项。
- 点击该结果后，会通过 `LauncherApps` 按对应 `UserHandle` 直接启动分身实例，而不是误打开主应用。
- 这次兼容当前只覆盖搜索结果页，不代表桌面首页、文件夹或快捷方式区域已经支持直接展示分身图标。

## 桌面沉浸布局修复说明

- 2026-04-08 起，维护版已修复桌面首页在新版 Android 上因状态栏、手势导航和三键导航导致的顶部 / 底部留缝问题。
- 这次修复包含两部分：
  1. 启动时不再沿用旧逻辑额外扣减底部导航区域高度，避免首页内容坐标被错误缩短。
  2. Launcher 窗口同时铺满状态栏与底部导航区域，并把底部导航栏背景设为透明，避免出现底部黑条和垃圾桶外露。
- 当前已经在 Android 12 模拟器、Android 15 模拟器和 Android 16 实机上做过回归；手势导航与三键导航两种模式都已恢复正常。

## 默认桌面设置兼容说明

- 旧桌面的默认桌面设置入口原本依赖较早的系统行为，在新版 Android 上点击确认后可能没有任何反应。
- 当前版本已补齐新版系统下的跳转兼容逻辑，确认按钮会优先走可用的系统设置入口。
- 这部分修复目标是兼容新版 Android，并不依赖 MIUI 专属实现。

## 厂商系统与全面屏手势说明

- 第三方桌面的全面屏手势、返回桌面动画、多任务过渡效果，会明显受 Android 版本和厂商 ROM 策略影响。
- 当前项目无法保证在所有厂商系统上都获得与系统原生桌面一致的全面屏手势体验；部分系统会直接限制第三方桌面使用原生手势，或在返回桌面、多任务切换时表现异常。
- 桌面空白区域下拉直接展开通知栏，当前也不作为维护版内置能力提供。原因不是手势入口难接，而是新版 Android 对状态栏控制限制较多，第三方桌面缺少稳定、公开、全机型通用的实现方式。
- 以小米 / HyperOS / 澎湃 OS 为例，网上存在一些“替代方案”，例如：
  1. 将锤子桌面设为默认桌面
  2. 安装第三方手势软件，实现左右返回等操作
  3. 再通过系统里的“全屏模式”相关入口隐藏虚拟按键
- 需要注意：这类方案属于用户侧 workaround，不是 Launcher 内置能力；不同机型、系统版本和手势软件的兼容性可能不同，不能保证长期稳定可用。

## 在线更新说明

- 当前版本已移除旧锤子桌面的过时更新地址，改为直接检查本仓库的 GitHub Release 最新版本。
- `v1.5.1-r5` 是首个支持当前这套在线更新机制的版本；`r5` 之前发布的旧版没有接入当前 GitHub Release 检查链路，无法通过应用内“检查更新”直接升级到 `r5`。
- 如果当前设备安装的是 `r5` 之前的版本，需要先手动下载安装 `v1.5.1-r5`；从 `r5` 开始，后续版本才可以继续通过应用内更新接收新版本。
- 设置页中的“检查更新”仍然保留，点击后会立即请求最新 release 并给出结果。
- 除手动检查外，Launcher 在回到桌面 `onResume` 时也会自动做一次静默检查；为了避免频繁请求，当前限制为每天最多一次。
- 检查到新版本后，会继续复用旧桌面的更新弹窗，并把 GitHub Release 中填写的更新内容一并显示出来；下载仍通过系统下载器完成，安装需要用户自行继续确认。
- APK 下载地址当前使用 GitHub Release + `gh-proxy`，以兼顾国内网络环境下的可访问性。

## 天气入口兼容说明

- 旧桌面原本依赖锤子时代的天气数据逻辑；在现在的系统和网络环境下，这条链路基本已经失效。
- 当前版本不再继续依赖旧天气接口，而是把天气图标作为“天气应用入口”处理：
  - 优先尝试系统自带天气应用
  - 找不到时，再尝试已安装的其他天气应用
- 因此现在的天气行为是“能快速打开可用天气 App”，而不是“在桌面内直接获取锤子天气数据”。

## 四指切换主题说明

- 旧桌面支持四指左右滑动切换主题。
- 当前版本已修复一个竞态问题：主题切换已经开始后，旧的延迟“加载中”弹窗任务不应再补弹，否则会造成界面看起来一直停在“正在加载主题”。
- 修复后，四指切换主题仍保留原有交互，但不会再因为迟到弹窗而制造“看似卡死”的假象。

## 桌面壁纸设置说明

- 当前版本已在桌面设置中补入“桌面壁纸”入口。
- 这个入口默认只在设备已安装 `smartisan_theme_aero`（毛玻璃）或 `smartisan_theme_mist`（白雾）时显示，避免在无对应主题时出现空白预览。
- 点击后可执行两种操作：
  - 选择图片：通过系统图片选择器导入图片，并保存到 Launcher 私有目录。
  - 恢复默认壁纸：删除自定义壁纸，回退到主题默认壁纸。
- 当前这套桌面壁纸能力只作用于毛玻璃 / 白雾这类高斯主题；其他主题仍按原始主题包逻辑使用内置壁纸。
- 这样处理的目的，是在新版 Android 上避开系统壁纸读取兼容差异，把“可控、稳定”的壁纸设置能力收敛到高斯主题场景内。

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
- 当前版本不会把接口里的多张候选图暴露成”可选图标”，仍然只取第一张
- 所以”迁移已生效”不一定等于”桌面视觉上明显变化”

### 第三方图标包支持

- 2026-04-16 起，维护版已支持标准 `appfilter.xml` 格式的第三方图标包
- 在桌面设置 → 应用图标页面，顶部新增「图标包」选择入口
- 选择图标包后，图标优先级为：`改进版图标 > 图标包图标 > 默认图标`
- 关闭「优先使用改进版图标」后，优先级变为：`图标包图标 > 默认图标`
- 当前版本不支持 `iconback` / `iconmask` / `iconupon` 合成，也不支持单应用手动从图标包中另选图标
- 图标包切换后，设置页预览会立即更新，桌面图标会在返回桌面后统一刷新

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
- 主题下载完成后不会自动拉起安装；当前会在主题详情页提示“下载后请在通知栏或 `下载` 应用中安装”
- 主题 release 只在主题资产变化时更新，不跟随每次 Launcher release 重复发布

## 主题维护与兼容性

### 当前处理方式

- 旧桌面的主题安装判断已经统一为“按已知主题包名逐个 `getPackageInfo()` 探测”，不再依赖 `getInstalledPackages(0)` 的全量枚举
- 这样可以避免 HyperOS 1.0.2.0 / Android 13 上出现“详情页显示设定，但本地主题里看不到，点击后卡住”的不一致问题
- `COPPER_RED` 和 `GINTAMA` 由于当前缺少可用上游包，默认从在线主题列表隐藏，但用户手动安装后仍能被本地主题识别
- `MIST`（白雾）主题现已公开到维护版主题分发列表，并已修正对应预览图

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
- `targetSdkVersion` 过低导致部分 Android 16 设备（OriginOS 6 等）拒绝安装
- `targetSdkVersion` 28 下 Apache HTTP 类缺失导致启动崩溃
- Android 12 ~ 16 顶部状态栏 / 底部导航区域导致的桌面布局错位
- 搜索页首次访问联系人时缺少动态权限申请，导致联系人搜索初始化异常
- 旧主题 APK 在新版 Android 上无法直接安装
- HyperOS 1.0.2.0 / Android 13 上”在线主题已安装但本地主题不可见”的识别不一致
- 旧桌面与新增主题预览图来源不一致、重复预览和圆点资源异常
- 在线主题失效入口未隐藏导致的详情页异常
- 新版 Android 上默认桌面设置弹窗点击”确定”无反应
- 四指左右滑动切换主题时，偶发停留在”正在加载主题”
- 天气图标继续走旧天气接口而直接提示不可用
- 默认桌面预置了无法在非锤子系统上安装的旧应用快捷方式

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

指定单个设备安装：

```sh
ANDROID_SERIAL=<device_serial> ./tools/build_and_install.sh
```

安装到多个指定设备：

```sh
ANDROID_SERIALS=<serial1>,<serial2> ./tools/build_and_install.sh
```

安装到当前全部已连接设备：

```sh
INSTALL_ALL_DEVICES=1 ./tools/build_and_install.sh
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

## 友情链接

- [LINUX DO](https://linux.do/)
  社区文化：真诚、友善、团结、专业，共建你我引以为荣之社区。

## 版权与免责声明

- 原始应用及相关商标、名称、资源和版权归原权利人所有
- 本仓库不主张对原始应用本体及其相关知识产权拥有任何权利
- 当前仓库未对整体内容附加通用开源许可证
- 如你计划基于本仓库进行公开分发、商用集成或其他超出个人研究范围的用途，请自行评估相关风险
