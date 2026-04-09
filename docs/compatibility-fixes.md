# Smartisan Launcher Maintained Compatibility Fixes

## 2026-04-07 Android 16 首页上下留缝修复

### 现象

- Android 16 手势导航下，Launcher 主窗口已经是全屏，但首页顶部 / 底部仍会出现细缝
- 左右滑页时，页面内容像被整体压短了一点

### 根因

- `ApplicationProxy.getScreenSize()` 的旧兼容路径会在窗口本身已经是全高时，继续按底部系统 inset 缩短 `window_height`
- 首页、`dock`、页面动画都会消费 `Constants.window_height`，源头高度一旦偏小，整页坐标系就会一起收缩

### 修复

- `smali/com/smartisanos/launcher/ApplicationProxy.smali`
  - 保留 `realHeight` / `screenHeight` 采集
  - 当 Launcher 窗口已经是全高时，不再额外扣减底部系统 inset
  - 只修正 `window_height` 定义，不改 `status_bar_height` 语义，也不重做整套 `WindowInsets` 架构

### 结果

- 首页背景和内容重新铺满
- 不需要为不同屏幕尺寸写死数值

### 验证

- `./tools/build_and_install.sh`
- Android 16 手势导航真机验证：首页顶部 / 底部细缝消失

## 2026-04-09 Android 16 编辑 / 排序 / 拖拽模式连续性修复

### 现象

- 进入多页模式后，顶部两页标题被挡住
- 预览页和图标出现纵向拉伸
- 进入排序 `dock` 时，整页继续下沉，顶部出现黑条
- 长按页面拖拽会再次触发同样的状态栏 / 页面下移问题
- 在恢复无黑条后，顶部“已选择 [x/x] 个应用程序”文案又丢失

### 根因

- 多页预览布局仍带着旧几何假设，首行没有给标题栏预留足够高度
- 预览缩放的 X / Y 分别取值，Android 16 长屏上更容易出现纵向拉伸
- 编辑、排序、长按拖拽等特殊模式里，多条路径仍会调用 `MainView.hideStatusBar()`，切换 `FLAG_FULLSCREEN`，导致系统状态栏与自绘场景坐标突然脱节
- 选中计数文案在排序模式动画完成后没有再刷新一次，容易被后续状态切换覆盖

### 修复

- `smali/com/smartisanos/launcher/animations/PageViewAnimation.smali`
  - 预览缩放统一使用 `Constants.pageSizeScale[targetMode].x`，避免 X / Y 非等比缩放
  - 4 页 / 9 页预览首行补回 `page_title_height + title_page_spacing` 预留高度
- `smali/com/smartisanos/launcher/view/SettingButton.smali`
  - 进入排序模式时不再调用 `hideStatusBar()`，保留当前非 fullscreen 的连续性
- `smali/com/smartisanos/launcher/view/Cell.smali`
- `smali/com/smartisanos/launcher/view/FloatPageNode.smali`
- `smali/com/smartisanos/launcher/view/SwitchPageNode.smali`
  - 去掉长按拖拽路径中的 `hideStatusBar()` 调用，避免再次触发整页下移 / 黑条
- `smali/com/smartisanos/launcher/view/SettingButton$3.smali`
  - 排序模式进入完成后补一次 `updateStatusBarText(0)`，恢复顶部选中计数文案

### 结果

- 多页顶部标题不再被挡住
- 预览页和图标不再被拉伸
- 排序模式和长按拖拽不再触发黑条或整页下移
- 顶部选中计数文案重新可见
- 这部分保持“不重新引入 fullscreen 切换”的原则，优先保证模式切换连续性

### 验证

- `./tools/build_and_install.sh`
- Android 16 真机验证：
  - 多页预览标题显示正常
  - 排序 `dock` 不再继续下沉
  - 长按页面拖拽后不再出现黑条 / 页面位移
  - 选中计数文案已恢复
