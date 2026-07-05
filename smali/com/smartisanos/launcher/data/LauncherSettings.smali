.class public Lcom/smartisanos/launcher/data/LauncherSettings;
.super Ljava/lang/Object;
.source "LauncherSettings.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static mInstance:Lcom/smartisanos/launcher/data/LauncherSettings;


# instance fields
.field private mBaseMode:I

.field private mComplexMode:I

.field private mEnableSweepMessageFlag:Z

.field private mEnableUnlockAnimation:Z

.field private mHideAppTitle:Z

.field private mHideMessageFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/smartisanos/launcher/data/LauncherSettings;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/LauncherSettings;->log:Lcom/smartisanos/launcher/LOG;

    .line 28
    new-instance v0, Lcom/smartisanos/launcher/data/LauncherSettings;

    invoke-direct {v0}, Lcom/smartisanos/launcher/data/LauncherSettings;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/data/LauncherSettings;->mInstance:Lcom/smartisanos/launcher/data/LauncherSettings;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mBaseMode:I

    .line 31
    iput v0, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mComplexMode:I

    .line 33
    iput-boolean v1, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mHideAppTitle:Z

    .line 34
    iput-boolean v1, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mHideMessageFlag:Z

    .line 35
    iput-boolean v2, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mEnableSweepMessageFlag:Z

    .line 36
    iput-boolean v2, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mEnableUnlockAnimation:Z

    .line 46
    return-void
.end method

.method public static getInstance()Lcom/smartisanos/launcher/data/LauncherSettings;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/smartisanos/launcher/data/LauncherSettings;->mInstance:Lcom/smartisanos/launcher/data/LauncherSettings;

    return-object v0
.end method

.method private getSettingContentValueList(Ljava/util/HashMap;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 117
    const/4 v3, 0x0

    .line 137
    :cond_0
    return-object v3

    .line 119
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 120
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 132
    .local v4, "value":Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 133
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v6, "key"

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v6, "value"

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getStringFromDB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 366
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/data/setting/SettingDB;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "value":Ljava/lang/String;
    return-object v0
.end method

.method private hardCodeSettingValues()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "isOpenAppInComplexMode":Z
    iput-boolean v4, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mHideAppTitle:Z

    .line 71
    iput-boolean v3, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mHideMessageFlag:Z

    .line 72
    iput-boolean v3, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mEnableSweepMessageFlag:Z

    .line 74
    iget-boolean v2, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mHideAppTitle:Z

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    sput-boolean v2, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    .line 75
    iget-boolean v2, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mHideMessageFlag:Z

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    sput-boolean v2, Lcom/smartisanos/launcher/data/Constants;->SHOW_MESSAGE_FLAG:Z

    .line 76
    iget-boolean v2, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mEnableSweepMessageFlag:Z

    sput-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SWEEP_MESSAGE_FLAG:Z

    .line 77
    sput-boolean v4, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LAUNCH_FLIP_ANIMATION:Z

    .line 78
    sput-boolean v0, Lcom/smartisanos/launcher/data/Constants;->OPEN_APP_IN_MULTI_PAGE_MODE:Z

    .line 80
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    .line 81
    .local v1, "style":I
    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->setPageStyle(I)V

    .line 82
    if-ne v1, v3, :cond_2

    .line 84
    const/4 v2, 0x3

    sput v2, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    .line 88
    :goto_2
    const/4 v0, 0x0

    .line 89
    sget-object v2, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sput-object v2, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    .line 90
    return-void

    .end local v1    # "style":I
    :cond_0
    move v2, v4

    .line 74
    goto :goto_0

    :cond_1
    move v2, v4

    .line 75
    goto :goto_1

    .line 86
    .restart local v1    # "style":I
    :cond_2
    const/4 v2, 0x5

    sput v2, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    goto :goto_2
.end method

.method private initSettingDB(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    sget-object v3, Lcom/smartisanos/launcher/data/LauncherSettings;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "A140"

    const-string v5, "init setting default value"

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "launcher_hide_lable"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v3, "launcher_hide_badge"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v3, "notification_badge_enabled"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v3, "launcher_badge_swipe_clean"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v3, "launcher_unlock_animation_enabled"

    const-string v4, "0"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "unlock_animation_compat_mode"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v3, "launcher_mode"

    const-string v4, "9"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v3, "multi_block_mode"

    const-string v4, "36"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v3, "fast_launch_app_on"

    const-string v4, "0"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v3, "one_hand_mode"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v3, Lcom/smartisanos/launcher/data/InterfaceDefine;->ENABLE_SYNC_APP_ICON:Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v3, "enable_cellular"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v3, "page_flip_animation"

    const-string v4, "0"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "launcher_icon_size"

    const-string v4, "0"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v3, Lcom/smartisanos/launcher/data/InterfaceDefine;->ENABLE_SYNC_APP_ICON:Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080269

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "defaultThemeId":Ljava/lang/String;
    const-string v3, "launcher_theme"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/data/LauncherSettings;->getSettingContentValueList(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    .line 112
    .local v2, "settings":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-static {v2}, Lcom/smartisanos/launcher/data/setting/SettingDB;->initLauncherSetting(Ljava/util/List;)V

    .line 113
    return-void
.end method

.method private loadFromSetting(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    sget-boolean v8, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/smartisanos/launcher/data/LauncherSettings;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    const-string v10, "loadFromSetting begin !"

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 145
    .local v6, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v8, "launcher_hide_lable"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mHideAppTitle:Z

    .line 146
    sget-object v8, Lcom/smartisanos/launcher/data/LauncherSettings;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "A140"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mHideAppTitle = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mHideAppTitle:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v8, "notification_badge_enabled"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_badge_disabled_load

    const/4 v8, 0x0

    goto :goto_badge_hide

    :cond_badge_disabled_load
    const/4 v8, 0x1

    :goto_badge_hide
    iput-boolean v8, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mHideMessageFlag:Z

    .line 149
    sget-object v8, Lcom/smartisanos/launcher/data/LauncherSettings;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "A140"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mHideMessageFlag = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mHideMessageFlag:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v8, "launcher_badge_swipe_clean"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mEnableSweepMessageFlag:Z

    .line 152
    sget-object v8, Lcom/smartisanos/launcher/data/LauncherSettings;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "A140"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mEnableSweepMessageFlag = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mEnableSweepMessageFlag:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    sget-object v8, Lcom/smartisanos/launcher/data/InterfaceDefine;->ENABLE_SYNC_APP_ICON:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SYNC_APP_ICON:Z

    .line 155
    sget-object v8, Lcom/smartisanos/launcher/data/LauncherSettings;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "A140"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Constants.ENABLE_SYNC_APP_ICON = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SYNC_APP_ICON:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v8, "enable_cellular"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/smartisanos/launcher/data/Constants;->ENABLE_CELLULAR:Z

    .line 158
    sget-object v8, Lcom/smartisanos/launcher/data/LauncherSettings;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "A140"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Constants.ENABLE_CELLULAR = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/smartisanos/launcher/data/Constants;->ENABLE_CELLULAR:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/smartisanos/home/net/StatusReceiver;->updateStatus()V

    .line 162
    const-string v8, "launcher_unlock_animation_enabled"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;I)I

    move-result v7

    .line 163
    .local v7, "unlockAnimValue":I
    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    const/4 v8, 0x1

    :goto_0
    sput-boolean v8, Lcom/smartisanos/launcher/data/Constants;->ENABLE_UNLOCK_ANIMATION:Z

    .line 165
    const/4 v4, -0x1

    .line 166
    .local v4, "noDefaultValue":I
    const-string v8, "launcher_mode"

    const/16 v9, 0x9

    invoke-static {v8, v9}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;I)I

    move-result v0

    .line 168
    .local v0, "baseMode":I
    sparse-switch v0, :sswitch_data_0

    .line 177
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "illegal base mode by "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mBaseMode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .end local v0    # "baseMode":I
    .end local v4    # "noDefaultValue":I
    .end local v7    # "unlockAnimValue":I
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/smartisanos/launcher/data/LauncherSettings;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Init fail, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 271
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    sget-boolean v8, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v8, :cond_1

    sget-object v8, Lcom/smartisanos/launcher/data/LauncherSettings;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    const-string v10, "loadFromSetting done !"

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_1
    return-void

    .line 163
    .restart local v7    # "unlockAnimValue":I
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 170
    .restart local v0    # "baseMode":I
    .restart local v4    # "noDefaultValue":I
    :sswitch_0
    const/4 v8, 0x1

    :try_start_1
    iput v8, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mBaseMode:I

    .line 181
    :goto_2
    iget v8, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mBaseMode:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    .line 182
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/smartisanos/launcher/data/Constants;->setPageStyle(I)V

    .line 183
    const/4 v8, 0x5

    sput v8, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    .line 217
    :goto_3
    sget v8, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 218
    sget v8, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_5

    sget v8, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_5

    .line 220
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "single page mode is 9, multi page mode error ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 173
    :sswitch_1
    const/4 v8, 0x4

    iput v8, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mBaseMode:I

    goto :goto_2

    .line 185
    :cond_3
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/smartisanos/launcher/data/Constants;->setPageStyle(I)V

    .line 186
    const/4 v8, 0x2

    sput v8, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    goto :goto_3

    .line 222
    :cond_4
    sget v8, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_5

    .line 223
    sget v8, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    const/4 v9, 0x5

    if-eq v8, v9, :cond_5

    .line 224
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "single page mode is 16, multi page mode error ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 228
    :cond_5
    sget v8, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    iput v8, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mComplexMode:I

    .line 229
    sget-boolean v8, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v8, :cond_6

    sget-object v8, Lcom/smartisanos/launcher/data/LauncherSettings;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "LauncherSettings => Constants.MULTI_PAGE_MODE=["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v11}, Lcom/smartisanos/launcher/data/Constants;->getModeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_6
    sget v8, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v8}, Lcom/smartisanos/launcher/data/Constants;->verifyComplexMode(I)Z

    move-result v8

    if-nez v8, :cond_7

    .line 231
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "can\'t get multi page mode from setting !"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 234
    :cond_7
    const-string v8, "fast_launch_app_on"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;I)I

    move-result v5

    .line 237
    .local v5, "openApp":I
    const/4 v3, 0x1

    .line 238
    .local v3, "isOpenAppInComplexMode":Z
    if-nez v5, :cond_8

    .line 239
    const/4 v3, 0x0

    .line 242
    :cond_8
    iget-boolean v8, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mHideAppTitle:Z

    if-nez v8, :cond_9

    const/4 v8, 0x1

    :goto_4
    sput-boolean v8, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    .line 243
    iget-boolean v8, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mHideMessageFlag:Z

    if-nez v8, :cond_a

    const/4 v8, 0x1

    :goto_5
    sput-boolean v8, Lcom/smartisanos/launcher/data/Constants;->SHOW_MESSAGE_FLAG:Z

    .line 244
    iget-boolean v8, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mEnableSweepMessageFlag:Z

    sput-boolean v8, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SWEEP_MESSAGE_FLAG:Z

    .line 246
    const/4 v8, 0x0

    sput-boolean v8, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LAUNCH_FLIP_ANIMATION:Z

    .line 247
    sput-boolean v3, Lcom/smartisanos/launcher/data/Constants;->OPEN_APP_IN_MULTI_PAGE_MODE:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 249
    :try_start_2
    const-string v8, "one_hand_mode"

    const/4 v9, 0x1

    invoke-static {p1, v8, v9}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 250
    .local v2, "hand":I
    if-nez v2, :cond_b

    .line 251
    sget-object v8, Lcom/smartisanos/launcher/data/Constants$HandHabit;->LEFT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sput-object v8, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    .line 255
    :goto_6
    const-string v8, "launcher_page_animation"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/smartisanos/launcher/data/Constants;->SCROLL_ANIMATION_TYPE:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 258
    .end local v2    # "hand":I
    :catch_1
    move-exception v1

    .line 259
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 242
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_9
    const/4 v8, 0x0

    goto :goto_4

    .line 243
    :cond_a
    const/4 v8, 0x0

    goto :goto_5

    .line 253
    .restart local v2    # "hand":I
    :cond_b
    :try_start_4
    sget-object v8, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sput-object v8, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    .line 168
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public static readSetting(Ljava/lang/String;I)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # I

    .prologue
    .line 338
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/data/setting/SettingDB;->readInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static readSetting(Ljava/lang/String;J)J
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # J

    .prologue
    .line 346
    invoke-static {p0, p1, p2}, Lcom/smartisanos/launcher/data/setting/SettingDB;->readLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 334
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/data/setting/SettingDB;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readSetting(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Z

    .prologue
    .line 342
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/data/setting/SettingDB;->readBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static updateAndNotice(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/smartisanos/launcher/data/LauncherSettings;->updateAndNotice(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 380
    return-void
.end method

.method public static updateAndNotice(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 384
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/data/LauncherSettings;->updateSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-static {p0}, Lcom/smartisanos/launcher/ApplicationProxy;->getUriByName(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 388
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 389
    return-void
.end method

.method public static updateAndNotice(Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 371
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "v":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 373
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    :cond_0
    invoke-static {p0, v0, p2}, Lcom/smartisanos/launcher/data/LauncherSettings;->updateAndNotice(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 376
    return-void
.end method

.method public static updateHandHabit(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 278
    .local v2, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "one_hand_mode"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;I)I

    move-result v1

    .line 280
    .local v1, "hand":I
    if-nez v1, :cond_0

    .line 281
    sget-object v3, Lcom/smartisanos/launcher/data/Constants$HandHabit;->LEFT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sput-object v3, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    .line 288
    .end local v1    # "hand":I
    :goto_0
    return-void

    .line 283
    .restart local v1    # "hand":I
    :cond_0
    sget-object v3, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sput-object v3, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    .end local v1    # "hand":I
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateSetting(Ljava/lang/String;I)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 358
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/data/setting/SettingDB;->setInt(Ljava/lang/String;I)V

    .line 359
    return-void
.end method

.method public static updateSetting(Ljava/lang/String;J)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # J

    .prologue
    .line 350
    invoke-static {p0, p1, p2}, Lcom/smartisanos/launcher/data/setting/SettingDB;->setLong(Ljava/lang/String;J)V

    .line 351
    return-void
.end method

.method public static updateSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 354
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/data/setting/SettingDB;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public static updateSetting(Ljava/lang/String;Z)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .prologue
    .line 362
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/data/setting/SettingDB;->setBool(Ljava/lang/String;Z)V

    .line 363
    return-void
.end method


# virtual methods
.method public enableSweepMessageFlag()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mEnableSweepMessageFlag:Z

    return v0
.end method

.method public getBaseMode()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mBaseMode:I

    return v0
.end method

.method public getComplexMode()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mComplexMode:I

    return v0
.end method

.method public getEnableSweepMessageFlagFromSystem(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 310
    const-string v0, "launcher_badge_swipe_clean"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mEnableSweepMessageFlag:Z

    .line 317
    iget-boolean v0, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mEnableSweepMessageFlag:Z

    sput-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SWEEP_MESSAGE_FLAG:Z

    .line 318
    iget-boolean v0, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mEnableSweepMessageFlag:Z

    return v0
.end method

.method public getHideAppTitleFromSystem(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 291
    const-string v1, "launcher_hide_lable"

    invoke-static {v1, v0}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mHideAppTitle:Z

    .line 292
    iget-boolean v1, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mHideAppTitle:Z

    if-nez v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    .line 293
    iget-boolean v0, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mHideAppTitle:Z

    return v0

    .line 292
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHideMessageFlagFromSystem(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 297
    const-string v1, "notification_badge_enabled"

    invoke-static {v1, v0}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_disabled

    const/4 v1, 0x0

    goto :goto_hide

    :cond_disabled
    const/4 v1, 0x1

    :goto_hide
    iput-boolean v1, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mHideMessageFlag:Z

    .line 305
    iget-boolean v1, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mHideMessageFlag:Z

    if-nez v1, :cond_show_off

    const/4 v0, 0x1

    :cond_show_off

    sput-boolean v0, Lcom/smartisanos/launcher/data/Constants;->SHOW_MESSAGE_FLAG:Z

    .line 306
    iget-boolean v0, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mHideMessageFlag:Z

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/data/LauncherSettings;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "LauncherSettings : init begin !"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/data/setting/SettingDB;->isLauncherSettingExist()Z

    move-result v0

    .line 58
    .local v0, "isSettingExist":Z
    if-nez v0, :cond_1

    .line 59
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/LauncherSettings;->initSettingDB(Landroid/content/Context;)V

    .line 61
    :cond_1
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/LauncherSettings;->loadFromSetting(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public isHideAppTitle()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mHideAppTitle:Z

    return v0
.end method

.method public isHideMessageFlag()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/smartisanos/launcher/data/LauncherSettings;->mHideMessageFlag:Z

    return v0
.end method
