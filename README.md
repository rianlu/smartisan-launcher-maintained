# Smartisan Launcher Maintained

面向新版 Android 的锤子桌面非官方维护版。  
基于 `apktool` 维护 `com.smartisanos.home` 反编译工程，让旧版锤子桌面在现代系统上可安装、可使用、可持续修复。

## 使用前先看

- 已知系统限制（置顶，避免重复提问）：[#11](https://github.com/rianlu/smartisan-launcher-maintained/issues/11)
- 最新版本下载：<https://github.com/rianlu/smartisan-launcher-maintained/releases/latest>
- 提交问题：<https://github.com/rianlu/smartisan-launcher-maintained/issues/new/choose>

> 建议先阅读 #11；很多“手势/动画/ROM 策略”问题属于系统限制，不是桌面应用单点 Bug。

## 当前重点能力

- 适配 Android 12 ~ 16 安装与运行
- 主题下载与识别链路可用（含下载状态异常兜底清理）
- 毛玻璃/白雾主题支持桌面壁纸（自定义/恢复默认）
- 主题/壁纸切换时可同步系统壁纸，降低多任务过渡割裂感
- 支持第三方图标包（标准 `appfilter.xml`）
- 搜索页支持分身/多开结果显示与直接启动
- 设置页提供“切换默认桌面”入口
- 设置页提供“隐藏虚拟键”开关
- 在线更新对接 GitHub Release（支持回桌面自动静默检查）
- 设置页提供“关闭电池优化”入口（用于提升后台包变更刷新稳定性）

## 权限申请说明（用户侧可见）

- `READ_EXTERNAL_STORAGE`：用于首次启动备份系统壁纸、主题/壁纸切换时同步系统壁纸，以及毛玻璃/白雾主题的自定义壁纸导入与恢复默认。
- `READ_CONTACTS`：用于搜索页建立联系人索引并提供联系人搜索结果；拒绝后不影响应用搜索，仅联系人搜索受限。
- 关闭电池优化（系统设置项，非运行时权限弹窗）：用于提升后台安装/卸载后桌面图标刷新稳定性，尤其在 MIUI/HyperOS 上。

## 常见问题（简版）

- 在系统设置里卸载/安装应用后，桌面图标不及时刷新：
  - 常见于 MIUI/HyperOS 后台策略限制
  - 处理方式：在桌面设置中开启“关闭电池优化”引导并完成设置
- 关于全面屏手势、多任务过渡、返回动画割裂：
  - 请优先查看置顶 #11 的系统限制说明

## 壁纸与主题逻辑

- 毛玻璃（`smartisan_theme_aero`）与白雾（`smartisan_theme_mist`）：显示“桌面壁纸”入口
- 其他主题：使用主题内置壁纸，不显示“桌面壁纸”入口

## 本地构建

```sh
# 调试构建并安装
sh tools/build_and_install.sh

# release 构建
sh tools/build_release.sh
```

## 目录

- `smali/`：主要代码
- `res/`：资源与布局
- `tools/`：构建与发布脚本
- `themes/`：主题资产与处理脚本
- `docs/compatibility-fixes.md`：兼容修复记录

## 友情链接

- [LINUX DO](https://linux.do) 社区文化：真诚、友善、团结、专业，共建你我引以为荣之社区。

## 免责声明

本仓库为非官方维护项目，与原厂无官方关联。  
仅用于学习、兼容性分析与非商业研究，详见 [NOTICE.md](NOTICE.md)。
