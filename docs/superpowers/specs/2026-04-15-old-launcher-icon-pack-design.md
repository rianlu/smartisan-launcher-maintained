# 旧桌面第三方图标包支持设计

## 背景

当前旧桌面已经具备按应用存储重定向图标并刷新桌面与搜索结果的能力，但现有设置页仅围绕锤子官方已适配图标工作，覆盖范围不足。部分用户已经自行安装第三方图标包，因此需要在旧桌面内补齐第三方图标包的扫描、解析、选择与应用能力。

本设计聚焦旧桌面工程 `/Users/lu/AIProjects/smartisan-launcher-maintained`，不依赖新桌面或系统侧私有能力。

## 目标

- 支持识别已安装的第三方图标包 APK
- 支持解析主流 `appfilter.xml` 格式
- 支持选择一个“当前图标包”
- 支持单应用切换“默认图标 / 当前图标包图标”
- 支持批量应用当前图标包
- 支持恢复单应用或全部默认图标
- 支持图标包卸载后的自动回退
- 复用现有 `redirect_icons` 存储与刷新链路，避免侵入桌面渲染逻辑

## 非目标

- 不支持本地图片自定义图标
- 不支持动态图标、动态日历、动态时钟
- 不支持 `iconback`、`iconmask`、`iconupon` 遮罩合成
- 不承诺兼容所有非标准图标包格式
- 不引入系统级图标管理服务依赖

## 现状与约束

### 已有能力

- `redirect_icons` 已支持按 `packageName + componentName` 存储图标字节与启用状态
- `RedirectIconDB.updateIcon(...)` 在记录不存在时可直接插入新行
- 保存图标后可通过现有 `EVENT_SAVE_ICON` 与 `EVENT_UPDATE_ICON` 触发刷新
- 桌面和搜索已经直接消费 `ItemInfo.iconData`

### 现有问题

- 当前设置页数据源来自 `redirect_icons` 已有记录，而不是全量 launcher apps
- 当前交互只支持在“默认图标 / 锤子改进图标”之间切换
- 图标来源信息没有显式建模
- 没有第三方图标包发现、解析、预览、批量应用能力

### 约束

- 项目为 smali 维护工程，UI 与逻辑改动需要控制边界
- V1 要以“可用且可维护”为优先，不追求一次兼容所有图标包
- 不应改动桌面渲染主链路，只在图标来源层和设置层补能力

## 方案选择

本次采用轻量方案：

- 支持已安装 icon pack APK
- 解析主流 `appfilter.xml`
- 支持一个当前图标包
- 支持单应用与批量应用
- 所有图标在应用时都转换并落库到现有 `redirect_icons`

不采用运行时动态从图标包资源取图的方案，原因如下：

- 会把资源查找失败、桌面渲染缓存、搜索索引、包变更监听都耦合到显示链路
- 与现有 `iconData` 消费模型冲突，侵入范围过大
- 对 smali 工程维护成本明显更高

## 总体架构

### 1. 图标包发现层

新增 `IconPackManager`，职责：

- 扫描已安装应用
- 判断是否为可支持的图标包
- 产出 `IconPackInfo` 列表
- 管理当前图标包包名的读取与持久化

V1 识别策略：

- 优先检查 `assets/appfilter.xml`
- 再检查 `res/xml/appfilter.xml`
- 任一位置存在且可成功解析，则视为支持的图标包

### 2. 图标包解析层

新增 `IconPackParser`，职责：

- 读取目标图标包的 `appfilter.xml`
- 提取 `<item component="..." drawable="...">`
- 解析并归一化 component
- 输出 `Map<String, String>`，key 为 `packageName;componentName`，value 为 `drawableName`

component 归一化规则：

- 兼容 `ComponentInfo{pkg/class}` 形式
- 若类名以 `.` 开头，则补全为 `pkg + class`
- 最终产出格式与 `RedirectIconInfo.getPrimaryId()` 一致

### 3. 图标资源提取层

新增 `IconPackResourceLoader`，职责：

- 获取图标包 `Resources`
- 根据 `drawableName` 定位资源 id
- 读取为 `Drawable`
- 统一转换为 `Bitmap`
- 编码为与现有 `iconData` 兼容的字节数组
- 计算 `md5`

### 4. 图标应用层

新增 `IconPackApplyController`，职责：

- 单应用应用图标包图标
- 批量应用当前图标包
- 恢复单应用默认图标
- 恢复全部默认图标
- 汇总刷新请求

应用层只负责构造 `RedirectIconInfo` 并调用现有落库与刷新机制，不直接改桌面显示逻辑。

### 5. 设置页展示层

保留现有设置入口与 `AppIconsSettingsActivity`，但重构其数据源和头部交互。

页面分为两部分：

- 头部操作区
- 应用图标列表区

## 数据设计

### `redirect_icons` 复用策略

V1 不新增数据表，继续使用 `redirect_icons`。

字段使用方式：

- `packageName`
  应用包名
- `componentName`
  应用主入口组件名
- `icon`
  当前实际使用的图标字节
- `md5`
  当前图标字节摘要，用于避免重复写入
- `use_improved_app_icon`
  继续表示是否启用替换图标
- `data1`
  来源类型，V1 仅使用 `pack` 或 `default`
- `data2`
  图标包包名
- `data3`
  图标包中命中的 `drawableName`

这样可以在不做数据库升级的前提下补足来源信息，支撑以下需求：

- 页面展示当前图标来自哪个图标包
- 重新应用当前图标包
- 图标包卸载后的回退清理
- 问题排查时定位到具体 drawable

### 全局设置项

新增两个轻量设置项：

- `current_icon_pack_package`
- `icon_pack_enabled`

用途如下：

- `current_icon_pack_package`
  记录当前选中的图标包
- `icon_pack_enabled`
  控制页面与批量应用逻辑是否处于图标包模式

这两个值应保存在现有设置持久化通道中，不额外建表。

### 列表数据模型

`AppIconsSettingsActivity` 的列表项需要从“仅 DB 记录”改为“全量应用 + 覆盖状态 + 图标包匹配状态”的聚合模型。

每个列表项应至少包含：

- 应用名
- `packageName`
- `componentName`
- 默认图标
- 当前图标包预览图标，可为空
- 当前是否已启用替换
- 当前记录来源类型
- 当前记录图标包包名
- 当前图标包是否能命中此应用

## 页面设计

### 入口

继续从设置主页进入应用图标设置页，不新增一级设置入口。

### 头部操作区

V1 头部操作区包含：

- 当前图标包名称
- 选择图标包
- 一键应用当前图标包
- 恢复全部默认图标

交互规则：

- 未选择图标包时，一键应用按钮置灰
- 无支持的图标包时，展示空状态文案
- 恢复全部默认图标始终可见

### 应用列表区

列表来源必须改为全量 launcher apps，而不是当前 `redirect_icons` 记录。

每个应用展示：

- 应用名
- 默认图标预览
- 当前图标包图标预览；若当前图标包未适配则显示“未适配”
- 当前使用状态：默认 / 图标包

点击应用后的操作仅保留两个：

- 使用默认图标
- 使用当前图标包图标

V1 不提供多来源选择器，不提供多图标候选列表。

## 关键数据流

### 图标包列表加载

1. 进入设置页
2. `IconPackManager` 扫描已安装应用
3. 识别支持的图标包并生成 `IconPackInfo` 列表
4. 读取 `current_icon_pack_package`
5. 刷新头部图标包状态

### 应用列表加载

1. 拉取全量 launcher apps
2. 从 `redirect_icons` 读取当前覆盖记录
3. 若已选择当前图标包，则读取其 `component -> drawableName` 映射
4. 合并为页面聚合模型
5. 异步加载图标预览并刷新列表

### 单应用应用图标包

1. 用户点击应用并选择“使用当前图标包图标”
2. 根据 `packageName;componentName` 查当前图标包映射
3. 若存在映射，则提取 `Drawable`
4. 编码为 `iconData`
5. 生成 `RedirectIconInfo`
6. 写入：
   - `icon`
   - `md5`
   - `use_improved_app_icon = true`
   - `data1 = pack`
   - `data2 = 当前图标包包名`
   - `data3 = drawableName`
7. 通知 launcher 刷新对应应用

### 单应用恢复默认

1. 用户点击应用并选择“使用默认图标”
2. 若已有 `redirect_icons` 记录，则将其状态改为默认
3. 同时清空 `data1/data2/data3`，保持来源状态准确
4. 通知 launcher 刷新对应应用

### 批量应用当前图标包

1. 用户点击“一键应用当前图标包”
2. 后台线程遍历全量 launcher apps
3. 仅处理当前图标包可命中的应用
4. 为每一项生成 `RedirectIconInfo` 并落库
5. 批量完成后统一刷新桌面

### 恢复全部默认

1. 用户点击“恢复全部默认图标”
2. 扫描 `redirect_icons`
3. 将来源为 `pack` 的记录批量回退为默认状态
4. 统一刷新桌面与搜索

## 图标包卸载与异常处理

### 图标包卸载

当包变更广播检测到当前图标包被卸载时：

1. 清空 `current_icon_pack_package`
2. 将 `data2 = 被卸载包名` 且来源为 `pack` 的记录批量回退为默认
3. 统一刷新桌面与搜索
4. 设置页头部恢复“未选择图标包”状态

### 图标包解析失败

若 `appfilter.xml` 缺失或解析失败：

- 不将其视为支持的图标包
- 不影响其他图标包扫描结果
- 设置页不展示该图标包

### 图标资源缺失

若 `drawableName` 找不到资源：

- 当前应用视为“未适配”
- 单应用应用操作应阻止并提示失败
- 批量应用时跳过该项，不中断整体流程

### 图标编码失败

若 `Drawable -> iconData` 失败：

- 当前应用跳过
- 记录日志，包含图标包包名、应用组件名、drawableName
- 不中断整体流程

## 性能与线程模型

- 图标包扫描与 `appfilter` 解析放后台线程
- 图标预览加载放异步任务
- 批量应用必须放后台线程
- 落库完成后统一切回主线程更新 UI
- 刷新动作按应用列表批量合并，不做主线程高频逐项刷新

## 修改范围

### 新增模块

建议新增以下类，放在 `smali/com/smartisanos/home/settings/icons/` 下：

- `IconPackInfo`
- `IconPackManager`
- `IconPackParser`
- `IconPackResourceLoader`
- `IconPackApplyController`

### 重点修改文件

- `smali/com/smartisanos/home/settings/view/AppIconsSettingsActivity.smali`
- `smali/com/smartisanos/home/settings/icons/IconManager.smali`
- `smali/com/smartisanos/launcher/data/redirectIcon/RedirectIconInfo.smali`
- `smali/com/smartisanos/launcher/data/redirectIcon/RedirectIconDB.smali`
- 相关布局与字符串资源

### 可选修改文件

- 包变更广播接收器相关 smali
- 设置项持久化相关 smali

## 验收标准

- 能识别并列出已安装的主流图标包
- 选择图标包后，能看到当前图标包适配状态
- 单应用切换到图标包图标后，桌面与搜索结果同步更新
- 批量应用后，所有可匹配应用正确更新
- 恢复默认后，桌面与搜索结果恢复
- 当前图标包卸载后，能自动回退，不出现空白图标
- 未适配应用有明确状态提示，不崩溃

## 风险与取舍

- 最大不确定性来自第三方 `appfilter.xml` 兼容差异
- 最大工作量在设置页数据模型和列表来源重构
- V1 明确不追求“兼容所有图标包”
- 通过复用现有 `iconData` 协议，换取低侵入和较高稳定性

## 开发顺序

1. 打通图标包扫描与 `appfilter.xml` 解析
2. 打通单应用从图标包写入 `redirect_icons` 并刷新
3. 将应用列表改为全量 launcher apps 聚合模型
4. 增加当前图标包选择与持久化
5. 完成批量应用、恢复默认、卸载回退
