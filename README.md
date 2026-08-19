<div align="center">
  <img src="./launcher_icon.png" alt="Smartisan Launcher Maintained Logo" width="124" height="124" />

  <h1>Smartisan Launcher Maintained</h1>

  <p><strong>锤子桌面非官方维护版</strong></p>
  <p>让原版锤子桌面在更多现代 Android 和非锤子手机上继续可安装, 可使用, 可维护.</p>

  <p>
    <a href="https://github.com/rianlu/smartisan-launcher-maintained/releases/latest">
      <img alt="Release" src="https://img.shields.io/github/v/release/rianlu/smartisan-launcher-maintained?display_name=tag&style=for-the-badge" />
    </a>
    <img alt="Modern Android Maintained" src="https://img.shields.io/badge/Modern%20Android-Maintained-4CAF50?style=for-the-badge" />
    <img alt="apktool" src="https://img.shields.io/badge/apktool-smali%20Maintained-546E7A?style=for-the-badge" />
    <img alt="Themes" src="https://img.shields.io/badge/Themes-Maintained-1E88E5?style=for-the-badge" />
  </p>
</div>

> [!IMPORTANT]
> 本仓库是非官方维护项目, 与锤子科技, Smartisan OS 或原厂无官方关联. 仓库内容主要用于个人学习, 兼容性分析和非商业研究. 详细说明见 [NOTICE.md](NOTICE.md).

## 目录

- [项目简介](#项目简介)
- [主要特性](#主要特性)
- [下载与安装](#下载与安装)
- [常见设置](#常见设置)
- [权限说明](#权限说明)
- [兼容性与限制](#兼容性与限制)
- [开发者信息](#开发者信息)
- [仓库结构](#仓库结构)
- [相关项目](#相关项目)
- [友情链接](#友情链接)
- [免责声明](#免责声明)
- [Star History](#star-history)

## 项目简介

Smartisan Launcher Maintained 是基于锤子官方公开发布的最后一个锤子桌面 APK 维护的非官方版本. 它保留原版九宫格 / 十六宫格, 多板块视图, 主题, 翻页动画和桌面整理体验, 同时修复旧版桌面在现代 Android 上遇到的兼容性问题.

维护版重点处理普通用户能直接感知的问题: 新系统安装失败, 默认桌面设置异常, 主题无法下载, 图标包错配, 搜索不稳定, 联系人权限打扰, 分身应用入口缺失, 国产 ROM 后台限制等.

本项目不是重写版 Launcher. 维护目标是尽量保留原版风格, 在可控范围内补齐现代系统适配.

> [!NOTE]
> 下载前建议先阅读 [已知系统限制说明 #11](https://github.com/rianlu/smartisan-launcher-maintained/issues/11). 手势导航, 多任务过渡, 返回动画, 默认桌面限制等现象通常受 ROM 和系统桌面框架影响, 不一定是应用 Bug.

## 主要特性

| 类别 | 说明 |
| --- | --- |
| 现代 Android 适配 | 针对 Android 12 ~ 16 的常见安装规则, 运行时权限, 应用可见性, 默认桌面入口和状态栏沉浸问题做维护 |
| 国产 ROM 后台设置引导 | 提供常见 ROM 的电池优化, 自启动和后台运行设置入口. 这不是所有国产系统都能安装或完整可用的保证 |
| 主题维护 | 原主题服务器不可用后, 改用维护版主题 Release / Gitee 镜像, 修复主题下载, 预览和切换流程 |
| 壁纸与透明主题 | 修复透明主题相关显示问题, 毛玻璃 / 白雾主题支持自定义壁纸和恢复默认 |
| 图标包 | 支持 `res/xml/appfilter.xml` 和 `assets/appfilter.xml`, 按 `ComponentName` 精确匹配, 减少电话, 短信, 联系人等图标错配 |
| 单应用图标 | 增加应用图标管理页, 支持筛选, 推荐图标, 全部图标, 多图标包选择和搜索 |
| 搜索 | 联系人搜索默认关闭, 开启后再申请权限; 支持 T9 / 输入法键盘选择; 支持搜索分身 / 双开应用 |
| 分身应用 | 增加分身应用设置页, 可选择哪些分身应用显示在桌面, 并用角标区分主应用和分身 |
| 桌面交互 | 支持空白处下拉通知栏, 右侧下拉快捷设置, 解锁 7 种桌面翻页动画 |
| 旧服务替换 | 天气入口改为打开系统天气应用, 更新检查改为 GitHub Release |
| 设置整理 | 增加附加功能页面, 优化设置页状态栏和底部导航栏适配 |

## 下载与安装

| 项目 | 链接 / 说明 |
| --- | --- |
| 最新版本 | [Latest Release](https://github.com/rianlu/smartisan-launcher-maintained/releases/latest) |
| 全部版本 | [Releases](https://github.com/rianlu/smartisan-launcher-maintained/releases) |
| 提交问题 | <https://github.com/rianlu/smartisan-launcher-maintained/issues/new/choose> |
| 安装注意 | 维护版保持原包名 `com.smartisanos.home`. 因签名不同, 首次安装前必须先卸载原版锤子桌面 |

## 常见设置

| 场景 | 操作 |
| --- | --- |
| 设置默认桌面 | 系统设置 -> 应用 -> 默认应用 -> 主屏幕应用 / 桌面应用 -> 选择锤子桌面 |
| vivo / OriginOS 无法切换默认桌面 | 系统设置中搜索"更换系统桌面", 打开"允许更换桌面", 关闭"点击主屏幕锁定系统桌面", 再重新设置默认桌面 |
| 回到桌面偶发正在初始化 | 在锤子桌面设置中进入电池优化, 自启动和后台运行相关入口, 按当前 ROM 提示放行 |
| 不想授权联系人 | 保持联系人搜索关闭即可. 应用搜索不依赖联系人权限 |
| 管理分身应用入口 | 桌面设置 -> 分身应用, 选择需要显示在桌面的分身应用 |

## 权限说明

| 权限 / 设置 | 用途 |
| --- | --- |
| `READ_EXTERNAL_STORAGE` / `READ_MEDIA_*` | 主题, 壁纸和部分自定义壁纸导入 / 恢复 |
| `READ_CONTACTS` | 仅在开启联系人搜索后用于建立联系人索引. 拒绝后不影响应用搜索 |
| `EXPAND_STATUS_BAR` | 桌面空白区域下拉展开通知栏 / 快捷设置 |
| `QUERY_ALL_PACKAGES` | 兼容分身应用, 图标包和部分 ROM 应用发现逻辑 |
| `REQUEST_IGNORE_BATTERY_OPTIMIZATIONS` | 跳转系统电池优化设置, 帮助用户允许桌面后台运行 |
| 自启动 / 后台运行设置 | 非标准 Android 运行时权限. 维护版只能跳转系统设置页, 不能强制绕过 ROM 后台策略 |

## 兼容性与限制

| 限制 | 原因 / 说明 |
| --- | --- |
| 手势导航, 多任务过渡和返回动画不能保证和系统桌面一致 | 这些动画由系统 Launcher / Quickstep / ROM 手势框架接管, 普通第三方桌面权限有限. 详见 [#11](https://github.com/rianlu/smartisan-launcher-maintained/issues/11) |
| 部分国产 ROM 可能无法安装或无法设为默认桌面 | 厂商可能限制第三方桌面, 默认桌面替换或后台运行, 维护版只能做已知路径适配和设置引导 |
| 非锤子 ROM 下应用打开 / 关闭动画仍主要由系统控制 | 旧锤子私有动画引擎无法在所有现代 ROM 上完整复现 |
| 分身应用桌面入口不负责真实卸载 | 维护版只控制桌面入口显示, 不接管系统分身的安装, 卸载或数据删除 |
| 桌面仍可能被部分 ROM 杀后台 | 普通 APK 无法强制绕过系统后台策略, 需要用户在电池优化和自启动中放行 |
| 横屏桌面暂不支持 | 原版布局, 拖拽和多板块坐标系统强依赖竖屏九宫格 / 十六宫格 |

## 开发者信息

### 基线信息

| 字段 | 值 |
| --- | --- |
| 包名 | `com.smartisanos.home` |
| 原版版本名 | `1.5.1` |
| 原版版本号 | `27` |
| `minSdkVersion` | `19` |
| `targetSdkVersion` | `28` (维护版从原版 19 升级) |
| 基线 APK SHA-256 | `9f3470ecfb46e4596225b6ffad8cf66c785e51a9e6161208120199dba2b74177` |

### 本地构建

需要 `apktool`, JDK (`keytool` / `jarsigner`), `adb`, Android SDK build-tools (`zipalign` / `apksigner`).

| 场景 | 命令 |
| --- | --- |
| 调试构建并安装到所有在线设备的机主用户 | `sh tools/build_and_install.sh` |
| 仅安装到指定设备 | `ANDROID_SERIAL=<设备序列号> sh tools/build_and_install.sh` |
| 保留应用分身 / 其它 Android 用户中的同包名安装 | `REMOVE_OTHER_USERS=0 sh tools/build_and_install.sh` |
| 不指定 Android 用户, 使用 `adb install` 默认安装范围 | `INSTALL_USER=all sh tools/build_and_install.sh` |
| release 构建 | `sh tools/build_release.sh` |

构建管线: 编辑 smali / 资源 -> `apktool b` -> 签名 -> `adb install --user 0`. 默认会移除同包名在应用分身 / 其它 Android 用户中的安装状态, 避免多用户机型出现重复入口.

## 仓库结构

| 路径 | 说明 |
| --- | --- |
| `smali/` | 反编译后的 Dalvik 字节码, 主要维护代码 |
| `res/` | 资源, 布局, 文案, 动画 |
| `assets/` | 主题, 图标和桌面运行所需资产 |
| `tools/` | 构建, 签名, 安装, 发布和主题维护脚本 |
| `themes/` | 主题资产处理说明和本地主题工作目录 |
| `com.smartisanos.home_27.apk` | 当前维护基线 APK |
| `NOTICE.md` | 非官方维护和使用边界说明 |

## 相关项目

| 项目 | 说明 |
| --- | --- |
| [HandShaker Android Maintained](https://github.com/rianlu/handshaker-android-maintained) | 同系列维护项目 |

## 友情链接

| 链接 | 说明 |
| --- | --- |
| [LINUX DO](https://linux.do) | 社区文化: 真诚, 友善, 团结, 专业, 共建你我引以为荣之社区 |

## 免责声明

本仓库为非官方维护项目, 与锤子科技, Smartisan OS 或原厂无官方关联.
仅用于学习, 兼容性分析与非商业研究, 详见 [NOTICE.md](NOTICE.md).

## Star History

<a href="https://star-history.dera.page/#rianlu/smartisan-launcher-maintained&Date">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://star-history.dera.page/svg?repos=rianlu/smartisan-launcher-maintained&type=Date&theme=dark" />
    <source media="(prefers-color-scheme: light)" srcset="https://star-history.dera.page/svg?repos=rianlu/smartisan-launcher-maintained&type=Date" />
    <img alt="Star History Chart" src="https://star-history.dera.page/svg?repos=rianlu/smartisan-launcher-maintained&type=Date" />
  </picture>
</a>
