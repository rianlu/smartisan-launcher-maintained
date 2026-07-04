.class public Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;
.super Ljava/lang/Object;
.source "SearchUsageStore.java"


# static fields
.field private static final KEY_COUNT_PREFIX:Ljava/lang/String; = "count_"

.field private static final KEY_TIME_PREFIX:Ljava/lang/String; = "time_"

.field private static final PREF_NAME:Ljava/lang/String; = "search_app_usage"

.field private static final RECENT_LIMIT:I = 0x8

.field private static sPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildCountKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "count_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildTimeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "time_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getKey(Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;)Ljava/lang/String;
    .locals 4
    .param p0, "appSearchBean"    # Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->getComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getKey(Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;)Ljava/lang/String;
    .locals 5
    .param p0, "profileAppSearchBean"    # Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;->getComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    goto :goto_base_ready

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    goto :goto_base_ready

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_base_ready
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#profile:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildProfileParentTimeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "profile_parent_time_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    sget-object v0, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->sPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_cached

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p0

    :cond_1
    const-string v1, "search_app_usage"

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->sPrefs:Landroid/content/SharedPreferences;

    :cond_cached

    return-object v0
.end method


# virtual methods
.method public static getCount(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appSearchBean"    # Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    invoke-static {p1}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->getKey(Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->buildCountKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLastUsed(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appSearchBean"    # Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    invoke-static {p1}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->getKey(Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->buildTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastUsed(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "profileAppSearchBean"    # Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;

    invoke-static {p1}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->getKey(Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->buildTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getProfileParentLastUsed(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appSearchBean"    # Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    invoke-static {p1}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->getKey(Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->buildProfileParentTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRecentSortTime(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appSearchBean"    # Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    invoke-static {p0, p1}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->getLastUsed(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;)J

    move-result-wide v0

    invoke-static {p0, p1}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->getProfileParentLastUsed(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    return-wide v2

    :cond_0
    return-wide v0
.end method

.method public static record(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appSearchBean"    # Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    invoke-static {p1}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->getKey(Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->buildCountKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->buildTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static record(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "profileAppSearchBean"    # Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;

    invoke-static {p1}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->getKey(Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->buildCountKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->buildTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "#profile:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_commit

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->buildProfileParentTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    :cond_commit
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static recordIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->buildCountKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->buildTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v1, v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public static sortForSearch(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resultList"    # Ljava/util/List;
    .param p2, "keyWord"    # Ljava/lang/String;

    if-nez p1, :cond_0

    return-object p1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_search

    const-string v0, "search_recent_apps_enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_recent_enabled

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_recent_enabled
    new-instance v0, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore$2;

    invoke-direct {v0, p0}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore$2;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_loop
    :goto_loop
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_recent_end

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    invoke-static {p0, v0}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->getRecentSortTime(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_loop

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_recent_limit

    goto :goto_loop

    :cond_recent_limit
    return-object v1

    :cond_recent_end
    return-object v1

    :cond_search
    const-string v0, "search_usage_sort_enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_search_end

    new-instance v0, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore$1;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_search_end
    return-object p1
.end method
