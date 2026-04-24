# Old Launcher App Icons Single List Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** 把旧桌面的应用图标页改成“顶部全局规则 + 单列当前结果”，并接入第三方图标包兜底。

**Architecture:** 通过 `IconPackManager` 统一管理图标包选择、解析和图标查询；`Utils.loadIcon` 接入图标包兜底以影响桌面实际图标；`AppIconsSettingsActivity` 改成展示所有 launcher 应用及其当前来源。

**Tech Stack:** smali, apktool resources, Android framework preferences / package manager / xml parser

---

### Task 1: 接入图标包基础能力

**Files:**
- Create: `smali/com/smartisanos/home/settings/icons/IconPackManager.smali`
- Modify: `smali/com/smartisanos/launcher/data/Utils.smali`

- [ ] 新增图标包管理类，提供选择包名读写、已安装图标包扫描、`appfilter.xml` 解析和按包名取图能力
- [ ] 在 `Utils.loadIcon` 中接入图标包兜底逻辑，确保桌面默认图标链路可直接命中图标包
- [ ] 提供图标包缓存失效入口，切换图标包后可立即重载

### Task 2: 改造应用图标页顶部规则区

**Files:**
- Modify: `smali/com/smartisanos/home/settings/view/AppIconsSettingsActivity.smali`
- Modify: `res/layout/setting_single_defaultsearchengine_text.xml`

- [ ] 在 `AppIconsSettingsActivity` 顶部加入图标包选择行、改进版优先级开关、当前规则说明
- [ ] 选择图标包后保存偏好、刷新顶部文案、刷新图标缓存
- [ ] 切换改进版优先级后同步刷新顶部文案与列表

### Task 3: 把应用列表改成单列当前结果

**Files:**
- Modify: `smali/com/smartisanos/home/settings/view/AppIconsSettingsActivity.smali`
- Modify: `smali/com/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter.smali`
- Modify: `smali/com/smartisanos/home/settings/view/AppIconsSettingsActivity$3.smali`
- Modify: `res/layout/app_icon_settings_item_layout.xml`

- [ ] 把列表数据源改成所有 launcher apps，并与 `redirect_icons` 记录合并
- [ ] 移除双列切换交互，保留单图标 + 应用名 + 当前来源说明
- [ ] 顶部和列表刷新统一走同一套重新加载逻辑
- [ ] 包安装/卸载广播改成直接重建列表并刷新缓存

### Task 4: 全局刷新与验证

**Files:**
- Modify: `smali/com/smartisanos/home/settings/view/AppIconsSettingsActivity.smali`

- [ ] 切换图标包或改进版优先级时触发桌面图标重载
- [ ] 确认设置页列表与桌面实际图标来源一致
- [ ] 运行构建安装验证，至少覆盖：
  - 应用图标页可打开
  - 可切换图标包
  - 可切换改进版优先级
  - 桌面图标会随设置变化刷新
