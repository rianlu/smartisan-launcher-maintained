# Smartisan Launcher Maintained Dual App / Profile Support Design

**日期：** 2026-04-09

## 目标

为维护版桌面补齐“应用双开 / 分身”的基础支持，使桌面在新版 Android 上能够把同一包名下不同 profile 的应用实例当作独立图标处理，而不是只显示主应用。

本次设计要求覆盖以下用户可见链路：

- 桌面页显示
- 应用列表显示
- 搜索结果显示
- 点击启动对应实例
- 安装 / 卸载 / 更新后的同步

## 范围

本阶段只支持 Android 官方 launcher / profile 能力可以直接覆盖的双实例场景：

- 主用户 + clone / work / private profile 下的同包应用
- 同一 `packageName + componentName` 在不同 profile 中的独立展示与启动
- 对 profile 应用的增删改同步

本阶段不做：

- 厂商私有“双开”黑科技适配
- 文件夹内专属分身 UI 标识设计
- 分身批量管理入口
- 应用锁、Sidebar、Launchpad 等其他功能扩展

## 当前问题

当前维护版的桌面应用模型仍然是单用户设计，具体表现为：

1. 应用枚举只走 `PackageManager.queryIntentActivities()`，只能看到当前用户应用。
2. `ItemInfo / ApplicationInfo / ShortcutInfo` 没有 `user` 维度字段，唯一语义只有 `packageName + componentName`。
3. 数据库存取和同步逻辑大量按 `packageName` 或 `packageName + componentName` 查询、更新、删除。
4. 点击图标启动时使用普通 `Intent + startActivity()`，不会指定 profile。
5. 安装 / 卸载 / 更新仍然依赖 `PACKAGE_*` 广播，无法正确表达不同 profile 的独立变化。

因此，当前桌面对双开 / 分身应用的处理结果一定是：

- 只能看到主应用，或
- 两个实例互相覆盖，或
- 显示出了两份但点击后仍然只启动主应用。

## 方案选择

### 方案 A：继续沿用现有 `PackageManager` 逻辑，只在展示层补去重

优点：

- 改动小

缺点：

- 拿不到其他 profile 的 launcher activity
- 无法启动分身实例
- 不能解决根因

结论：

- 放弃

### 方案 B：直接搬新桌面的 `queryIntentActivitiesAsUser / startActivityAsUser / userId / DoppelgangerUtils`

优点：

- 对旧锤子实现路径最接近

缺点：

- 强依赖隐藏 API、系统签名和厂商模型
- 在 Android 16 主线环境不可作为长期方案
- 会把当前维护版重新绑回锤子私有系统能力

结论：

- 放弃作为主线方案

### 方案 C：基于 Android 官方 `LauncherApps` 做 profile-aware launcher 改造

优点：

- 符合 Android 官方 launcher 角色能力
- 支持标准 clone / work / private profile
- 架构方向可长期维护

缺点：

- 改动面较大，需要升级模型、数据库、同步和启动链路

结论：

- 采用

## 设计原则

- 不引入锤子私有 `userId=10` 语义作为主线前提
- 不把 profile 信息塞进 `packageName` 或 `componentName` 里伪装去重
- 统一以“同一包在不同 profile 下是不同应用项”建模
- 持久化使用稳定 `userSerial`，运行时再映射回 `UserHandle`
- 标准 profile 能力优先；厂商私有双开兼容留作第二阶段

## 核心设计

### 1. 应用项增加 profile 维度

在 `ItemInfo / ApplicationInfo / ShortcutInfo` 中新增：

- `userSerial: long`

语义约定：

- 主用户默认值为 `0`
- 标准 profile 使用 `UserManager.getSerialNumberForUser(UserHandle)` 获取稳定 serial
- 所有应用项唯一键升级为 `packageName + componentName + userSerial`

同步调整：

- `ItemInfo.id()`
- `ApplicationInfo.getFingerprint()`
- 各类按包名 / 组件名比较的逻辑
- 图标缓存、搜索索引、数据库更新条件

### 2. 应用枚举从 `PackageManager` 切换到 `LauncherApps`

新增一层 `profile-aware` 应用枚举逻辑：

1. 通过 `LauncherApps.getProfiles()` 获取当前 launcher 可见的所有 profile
2. 对每个 profile 调用 `LauncherApps.getActivityList(null, user)`
3. 把每个 `LauncherActivityInfo` 转成独立 `ApplicationInfo`
4. 写入：
   - `packageName`
   - `componentName`
   - `title`
   - `userSerial`
   - `iconDrawableName` 或直接缓存 badged icon

图标策略：

- 优先使用 `LauncherActivityInfo.getBadgedIcon()` 生成带 profile 标记的图标
- 第一版不自定义分身角标文案，只依赖系统 badge

### 3. 数据库存储增加 `userSerial`

`table_iteminfos` 需要新增列：

- `userSerial INTEGER NOT NULL DEFAULT 0`

并统一修改：

- `ItemInfo.convertItemInfoToContentValues`
- `ItemInfo.toItemInfo`
- `ItemDB.ITEM_INFO_COLUMNS`
- 所有 `packageName` / `componentName` 相关查询条件
- 所有插入、更新、删除条件

关键约束：

- 任何“更新应用”“删除应用”“查找应用项”的逻辑都必须同时带 `userSerial`
- `packageName` 不能再被当成应用项唯一标识

### 4. 数据迁移采用“加列 + 全量重建应用项”

不做复杂增量修补，采用更稳的策略：

1. 数据库 schema 增加 `userSerial`
2. 旧数据默认填充 `0`
3. 启动迁移后，删除所有 `itemType=APPLICATION` 的旧应用项记录
4. 重新从 `LauncherApps` 全量扫描可见 profile 的 launcher activity
5. 重新写入应用项
6. 保留非应用项数据：
   - 页面信息
   - 快捷方式
   - 文件夹结构

设计取舍：

- 第一版不尝试把旧桌面上已有应用图标位置自动映射到分身实例
- 旧主应用图标可尽量保留原位置
- 新出现的分身实例按“新增应用”处理，落到空位或新增页

### 5. 启动链路改成按 profile 启动

`StartActivity` 当前使用普通 `Intent + startActivity()`。

需要改成：

- 由 `userSerial -> UserHandle`
- 调用 `LauncherApps.startMainActivity(component, user, sourceBounds, opts)`

这样才能保证：

- 点主应用时启动主应用实例
- 点分身图标时启动分身实例

兼容处理：

- 若 `userSerial=0` 且无法解析 profile，可回退主用户启动
- 若目标 `UserHandle` 已失效，则把该应用项标记为未安装并触发一次同步

### 6. 同步链路从包广播升级为 profile-aware

当前 `PACKAGE_ADDED / CHANGED / REMOVED` 只能拿到 `packageName`，不够表达 profile 差异。

第一版同步分两层：

#### 层 1：保留现有 `PACKAGE_*` 广播

用途：

- 作为兜底全量刷新触发器

行为：

- 收到相关包广播后，不再只按 `packageName` 精确改动单条应用
- 而是对该包执行“跨 profile 重新扫描并同步”

#### 层 2：新增 `LauncherApps.Callback`

监听：

- package added
- package removed
- package changed
- packages available / unavailable

行为：

- 回调里拿到目标 `UserHandle`
- 转成 `userSerial`
- 只同步该 profile 下的目标包

### 7. 搜索结果也按 profile 区分

搜索模块当前主要按 `packageName / componentName / title` 建索引，双开后必须扩成：

- `packageName`
- `componentName`
- `userSerial`

显示要求：

- 同包双实例都能被搜到
- 第一版只要求“结果可区分、可启动”
- 区分方式优先复用 badged icon，不强制额外文案

### 8. 桌面与应用列表展示规则

第一版展示规则如下：

- 主应用和分身应用均显示
- 同包不同 profile 视为两个独立应用项
- 排序按现有标题 / 拼音 / 布局规则继续工作
- 系统 badge 足够清晰时，不额外添加“分身”文本标签

## 兼容性边界

本设计明确支持：

- Android 官方对 launcher 暴露的关联 profile
- `LauncherApps` 可枚举、可启动的 clone / work / private profile 应用

本设计不承诺首版支持：

- 厂商把双开实现成私有 provider / 隐藏用户模型，但未向 `LauncherApps` 暴露的场景
- 依赖系统签名或隐藏 API 的锤子私有多开能力

第二阶段如果需要补 ROM 兼容，策略应为：

- 保持主线继续用 `LauncherApps`
- 仅对确认无法暴露标准 profile 的 ROM，再做受控兼容分支

## 实现拆分

### 阶段 1：底层建模与枚举

- 新增 `userSerial`
- 接入 `LauncherApps`
- 建立 `UserHandle <-> userSerial` 转换
- 新应用枚举逻辑替换旧的 `PackageManager.queryIntentActivities()`

### 阶段 2：数据库迁移与全量重建

- 扩表
- 读写适配
- 首次迁移后的全量 resync

### 阶段 3：启动与同步

- `StartActivity` 改为 `LauncherApps.startMainActivity`
- `LauncherApps.Callback`
- 包广播改为触发跨 profile resync

### 阶段 4：桌面 / 应用列表 / 搜索联调

- 桌面显示
- 应用列表显示
- 搜索结果显示与启动
- 图标 badge 验证

## 验收标准

以下条件同时满足才视为本功能完成：

1. 同一包名在主用户和分身 profile 下可同时显示为两条应用项
2. 桌面、应用列表、搜索三处都能看到两份实例
3. 点击不同实例时能启动对应 profile 下的应用
4. 卸载分身不会误删主应用图标，反之亦然
5. 更新主应用或分身后，不会互相覆盖或丢图标
6. 应用项重建后，数据库中同包不同 profile 记录可并存

## 验证方案

定向验证至少包含：

1. 在带标准分身 / clone profile 的设备上安装同包双实例
2. 冷启动 Launcher，确认桌面 / 应用列表显示两份
3. 搜索同名应用，确认两份结果都可见且可启动
4. 分别点击主应用和分身，确认启动实例正确
5. 更新主应用，确认分身记录不被覆盖
6. 删除分身，确认主应用记录仍保留
7. 重启 Launcher，确认数据持久化正确

## 风险与权衡

### 风险 1：数据库改动面大

影响：

- 现有大量查询条件依赖 `packageName` 和 `componentName`

处理：

- 第一轮实现只扩 `itemType=APPLICATION` 的应用链路
- 快捷方式、文件夹先保持现状

### 风险 2：部分 ROM 的双开不暴露标准 profile

影响：

- 即便完成本设计，个别 ROM 仍可能只显示主应用

处理：

- 先把标准 `LauncherApps` 方案跑通
- ROM 个案单独补兼容，不污染主线设计

### 风险 3：旧桌面布局数据迁移复杂

影响：

- 分身首次出现时无法天然继承原主应用的位置

处理：

- 第一版接受“新分身图标按新增应用落位”
- 后续如有必要，再做位置继承优化

## 官方接口依据

- `LauncherApps.getProfiles()`
- `LauncherApps.getActivityList()`
- `LauncherApps.startMainActivity()`
- `LauncherActivityInfo.getUser()`
- `LauncherActivityInfo.getBadgedIcon()`
- `UserManager.getSerialNumberForUser()`
- `UserManager.getUserForSerialNumber()`

本设计只以 Android 官方公开 launcher / profile API 作为主线依赖。
