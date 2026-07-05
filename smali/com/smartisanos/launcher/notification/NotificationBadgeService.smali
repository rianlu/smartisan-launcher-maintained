.class public Lcom/smartisanos/launcher/notification/NotificationBadgeService;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationBadgeService.java"


# static fields
.field private static final KEY_ENABLED:Ljava/lang/String; = "notification_badge_enabled"

.field private static final KEY_PACKAGES:Ljava/lang/String; = "packages"

.field private static final PREFS:Ljava/lang/String; = "notification_badges"

.field private static sInstance:Lcom/smartisanos/launcher/notification/NotificationBadgeService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method

.method private clearPreviousBadges()V
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/smartisanos/launcher/notification/NotificationBadgeService;->getPreviousPackages()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_loop
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_save

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/LauncherModel;->updateMessageCount(Ljava/lang/String;I)V

    goto :goto_loop

    :cond_save
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/notification/NotificationBadgeService;->savePackages(Ljava/util/Set;)V

    return-void
.end method

.method private collectCounts()Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/notification/NotificationBadgeService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    if-eqz v1, :cond_return

    array-length v2, v1

    const/4 v3, 0x0

    :goto_loop
    if-ge v3, v2, :cond_return

    aget-object v4, v1, v3

    if-eqz v4, :cond_next

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_next

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    if-eqz v4, :cond_next

    iget v6, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v6, 0x2

    if-eqz v7, :cond_check_group

    goto :goto_next

    :cond_check_group
    and-int/lit16 v7, v6, 0x200

    if-eqz v7, :cond_count

    goto :goto_next

    :cond_count
    iget v6, v4, Landroid/app/Notification;->number:I

    if-lez v6, :cond_default_count

    goto :goto_count_ready

    :cond_default_count
    const/4 v6, 0x1

    :goto_count_ready
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    const/4 v8, 0x0

    if-eqz v7, :cond_put

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :cond_put
    add-int/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_next
    :goto_next
    add-int/lit8 v3, v3, 0x1

    goto :goto_loop

    :cond_return
    return-object v0
.end method

.method private getPreviousPackages()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "notification_badges"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/notification/NotificationBadgeService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "packages"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    new-instance v2, Ljava/util/HashSet;

    if-eqz v0, :cond_empty

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v2

    :cond_empty
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    return-object v2
.end method

.method private isBadgeEnabled()Z
    .locals 2

    .prologue
    const-string v0, "notification_badge_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private savePackages(Ljava/util/Set;)V
    .locals 3
    .param p1, "packages"    # Ljava/util/Set;

    .prologue
    const-string v0, "notification_badges"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/notification/NotificationBadgeService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "packages"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private syncBadges()V
    .locals 8

    .prologue
    :try_start
    invoke-direct {p0}, Lcom/smartisanos/launcher/notification/NotificationBadgeService;->isBadgeEnabled()Z

    move-result v0

    if-eqz v0, :cond_clear

    invoke-direct {p0}, Lcom/smartisanos/launcher/notification/NotificationBadgeService;->collectCounts()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_active
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_old

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/smartisanos/launcher/LauncherModel;->updateMessageCount(Ljava/lang/String;I)V

    goto :goto_active

    :cond_old
    invoke-direct {p0}, Lcom/smartisanos/launcher/notification/NotificationBadgeService;->getPreviousPackages()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_old
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_save

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_zero

    goto :goto_old

    :cond_zero
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/smartisanos/launcher/LauncherModel;->updateMessageCount(Ljava/lang/String;I)V

    goto :goto_old

    :cond_save
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/notification/NotificationBadgeService;->savePackages(Ljava/util/Set;)V

    return-void

    :cond_clear
    invoke-direct {p0}, Lcom/smartisanos/launcher/notification/NotificationBadgeService;->clearPreviousBadges()V
    :try_end
    .catch Ljava/lang/Exception; {:try_start .. :try_end} :catch_exception

    return-void

    :catch_exception
    move-exception v5

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onCreate()V

    sput-object p0, Lcom/smartisanos/launcher/notification/NotificationBadgeService;->sInstance:Lcom/smartisanos/launcher/notification/NotificationBadgeService;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    sget-object v0, Lcom/smartisanos/launcher/notification/NotificationBadgeService;->sInstance:Lcom/smartisanos/launcher/notification/NotificationBadgeService;

    if-ne v0, p0, :cond_super

    const/4 v0, 0x0

    sput-object v0, Lcom/smartisanos/launcher/notification/NotificationBadgeService;->sInstance:Lcom/smartisanos/launcher/notification/NotificationBadgeService;

    :cond_super
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onDestroy()V

    return-void
.end method

.method public onListenerConnected()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/smartisanos/launcher/notification/NotificationBadgeService;->syncBadges()V

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    invoke-direct {p0}, Lcom/smartisanos/launcher/notification/NotificationBadgeService;->syncBadges()V

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    invoke-direct {p0}, Lcom/smartisanos/launcher/notification/NotificationBadgeService;->syncBadges()V

    return-void
.end method


# static methods
.method public static syncNow()V
    .locals 1

    .prologue
    sget-object v0, Lcom/smartisanos/launcher/notification/NotificationBadgeService;->sInstance:Lcom/smartisanos/launcher/notification/NotificationBadgeService;

    if-eqz v0, :cond_end

    invoke-direct {v0}, Lcom/smartisanos/launcher/notification/NotificationBadgeService;->syncBadges()V

    :cond_end
    return-void
.end method
