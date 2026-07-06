.class public final Lcom/a/a/DynamicWeatherHelper;
.super Ljava/lang/Object;
.source "DynamicWeatherHelper.java"


# static fields
.field private static final KEY_DYNAMIC_WEATHER_ENABLED:Ljava/lang/String; = "dynamic_weather_enabled"

.field private static final WEATHER_PKG:Ljava/lang/String; = "com.smartisanos.weather"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static scheduleLauncherReboot()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/a/a/DynamicWeatherHelper$1;

    invoke-direct {v0}, Lcom/a/a/DynamicWeatherHelper$1;-><init>()V

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static findWeatherItems()Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/smartisanos/launcher/LauncherModel;->getItemMap()Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v2, :cond_1

    const-string v3, "com.smartisanos.weather"

    iget-object v4, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static ensureWeatherIcon(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    if-eqz p0, :cond_return

    invoke-static {}, Lcom/a/a/DynamicWeatherHelper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_return

    invoke-static {}, Lcom/a/a/DynamicWeatherHelper;->hasWeatherIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/smartisanos/home/Launcher;->getMainView()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    new-instance v3, Lcom/smartisanos/home/apps/Weather;

    invoke-direct {v3}, Lcom/smartisanos/home/apps/Weather;-><init>()V

    invoke-virtual {v3}, Lcom/smartisanos/home/apps/Weather;->toItemInfo()Lcom/smartisanos/launcher/data/ApplicationInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/handler/ItemDB;->insert(Lcom/smartisanos/launcher/data/ItemInfo;)J

    move-result-wide v4

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_return

    iput-wide v4, v3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v3}, Lcom/smartisanos/launcher/LauncherModel;->setItemInfo(Lcom/smartisanos/launcher/data/ItemInfo;)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/PageView;->addCellToPage(Lcom/smartisanos/launcher/data/ItemInfo;)Z

    move-result v6

    if-nez v6, :cond_return

    :cond_failed

    invoke-static {v4, v5}, Lcom/smartisanos/launcher/LauncherModel;->removeItemInfo(J)Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-static {v4, v5}, Lcom/smartisanos/launcher/data/DatabaseHandler;->removeItemRecordById(J)V

    :cond_return
    return-void
.end method

.method public static hasWeatherIcon()Z
    .locals 1

    invoke-static {}, Lcom/a/a/DynamicWeatherHelper;->findWeatherItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_true

    const/4 v0, 0x0

    return v0

    :cond_true
    const/4 v0, 0x1

    return v0
.end method

.method public static isEnabled()Z
    .locals 2

    const-string v0, "dynamic_weather_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isActuallyEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/a/a/DynamicWeatherHelper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_false

    invoke-static {}, Lcom/a/a/DynamicWeatherHelper;->hasWeatherIcon()Z

    move-result v1

    if-eqz v1, :cond_missing

    const/4 v0, 0x1

    return v0

    :cond_missing
    const-string v1, "dynamic_weather_enabled"

    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Lcom/smartisanos/launcher/data/LauncherSettings;->updateAndNotice(Ljava/lang/String;ZLandroid/content/Context;)V

    :cond_false
    const/4 v0, 0x0

    return v0
.end method

.method public static removeWeatherIcon()V
    .locals 4

    invoke-static {}, Lcom/a/a/DynamicWeatherHelper;->findWeatherItems()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "com.smartisanos.weather"

    invoke-static {v1}, Lcom/smartisanos/launcher/data/handler/ItemDB;->removeItemDataByPackage(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/ItemInfo;

    iget-wide v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/LauncherModel;->removeItemInfo(J)Lcom/smartisanos/launcher/data/ItemInfo;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static setEnabled(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    const-string v0, "dynamic_weather_enabled"

    invoke-static {v0, p1, p0}, Lcom/smartisanos/launcher/data/LauncherSettings;->updateAndNotice(Ljava/lang/String;ZLandroid/content/Context;)V

    if-eqz p1, :cond_disabled

    invoke-static {}, Lcom/a/a/DynamicWeatherHelper;->hasWeatherIcon()Z

    move-result v1

    invoke-static {p0}, Lcom/a/a/DynamicWeatherHelper;->syncWeatherIcon(Landroid/content/Context;)V

    if-nez v1, :cond_request_weather

    invoke-static {}, Lcom/a/a/DynamicWeatherHelper;->hasWeatherIcon()Z

    move-result v1

    if-eqz v1, :cond_request_weather

    invoke-static {}, Lcom/a/a/DynamicWeatherHelper;->scheduleLauncherReboot()V

    return-void

    :cond_request_weather

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Utils;->requestSyncWeatherData(Landroid/content/Context;)V

    return-void

    :cond_disabled

    invoke-static {}, Lcom/a/a/DynamicWeatherHelper;->hasWeatherIcon()Z

    move-result v1

    invoke-static {p0}, Lcom/a/a/DynamicWeatherHelper;->syncWeatherIcon(Landroid/content/Context;)V

    if-eqz v1, :cond_disabled_return

    invoke-static {}, Lcom/a/a/DynamicWeatherHelper;->scheduleLauncherReboot()V

    :cond_disabled_return
    return-void
.end method

.method public static syncWeatherIcon(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/a/a/DynamicWeatherHelper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/a/a/DynamicWeatherHelper;->ensureWeatherIcon(Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/a/a/DynamicWeatherHelper;->removeWeatherIcon()V

    return-void
.end method
