.class public Lcom/smartisanos/launcher/actions/StartActivity;
.super Ljava/lang/Object;
.source "StartActivity.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/LOG;


# instance fields
.field private mCell:Lcom/smartisanos/launcher/view/Cell;

.field private mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

.field private mLastStartActivityTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/smartisanos/launcher/actions/StartActivity;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/actions/StartActivity;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/launcher/view/Cell;)V
    .locals 2
    .param p1, "cell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/smartisanos/launcher/actions/StartActivity;->mLastStartActivityTime:J

    .line 40
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/StartActivity;->mCell:Lcom/smartisanos/launcher/view/Cell;

    .line 41
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/StartActivity;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/actions/StartActivity;->mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 42
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Intent;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/smartisanos/launcher/actions/StartActivity;->startActivitySafely(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/smartisanos/launcher/actions/StartActivity;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method public static launchByName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "cmp"    # Ljava/lang/String;

    .prologue
    .line 133
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 145
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "A260009"

    invoke-static {v1}, Lcom/smartisanos/home/tracker/LauncherAgent;->event(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v1

    const-class v2, Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 147
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 148
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    invoke-static {v0}, Lcom/smartisanos/launcher/actions/StartActivity;->startActivitySafely(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private launchWithCellDownAnimation(Landroid/content/Intent;Z)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "showShadowRect"    # Z

    .prologue
    .line 154
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/actions/StartActivity;->mCell:Lcom/smartisanos/launcher/view/Cell;

    new-instance v2, Lcom/smartisanos/launcher/actions/StartActivity$1;

    invoke-direct {v2, p0, p1}, Lcom/smartisanos/launcher/actions/StartActivity$1;-><init>(Lcom/smartisanos/launcher/actions/StartActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, p2, v2}, Lcom/smartisanos/launcher/view/MainView;->showCellClickShadow(Lcom/smartisanos/launcher/view/Cell;ZLjava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method private removeNewlyInstall()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 45
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->GL:Lcom/smartisanos/home/Launcher$RUNNING_ENV;

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/Launcher;->verifyThread(Lcom/smartisanos/home/Launcher$RUNNING_ENV;)V

    .line 46
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/StartActivity;->mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/StartActivity;->mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-boolean v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 48
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/actions/StartActivity;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNewlyInstalled set false by removeNewlyInstall, name ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/actions/StartActivity;->mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], pkg ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/actions/StartActivity;->mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], cmp ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/actions/StartActivity;->mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/StartActivity;->mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    iput-boolean v4, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    .line 51
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/StartActivity;->mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-static {v0}, Lcom/smartisanos/launcher/LauncherModel;->setItemInfo(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 52
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/StartActivity;->mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-wide v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v0, v1, v4}, Lcom/smartisanos/launcher/LauncherModel;->updateNewlyInstall(JZ)V

    .line 55
    :cond_1
    return-void
.end method

.method private startActivityForFlipAnimation(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 196
    invoke-static {p1}, Lcom/smartisanos/launcher/actions/StartActivity;->startActivitySafely(Landroid/content/Intent;)V

    .line 197
    return-void
.end method

.method private static startActivitySafely(Landroid/content/Intent;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 163
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    .line 164
    .local v0, "launcher":Lcom/smartisanos/home/Launcher;
    new-instance v1, Lcom/smartisanos/launcher/actions/StartActivity$2;

    invoke-direct {v1, v0, p0}, Lcom/smartisanos/launcher/actions/StartActivity$2;-><init>(Lcom/smartisanos/home/Launcher;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 192
    return-void
.end method


# virtual methods
.method public launch()V
    .locals 14

    .prologue
    .line 60
    iget-object v10, p0, Lcom/smartisanos/launcher/actions/StartActivity;->mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    if-nez v10, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v10, p0, Lcom/smartisanos/launcher/actions/StartActivity;->mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-boolean v10, v10, Lcom/smartisanos/launcher/data/ItemInfo;->installed:Z

    if-nez v10, :cond_2

    .line 65
    sget-object v10, Lcom/smartisanos/launcher/actions/StartActivity;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "DEBUG"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/smartisanos/launcher/actions/StartActivity;->mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v13, v13, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is not installed, handle install process ?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 67
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 68
    .local v5, "msg":Landroid/os/Message;
    const/16 v10, 0x6f

    iput v10, v5, Landroid/os/Message;->what:I

    .line 69
    const/4 v10, 0x2

    new-array v6, v10, [Ljava/lang/Object;

    .line 70
    .local v6, "objects":[Ljava/lang/Object;
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/smartisanos/launcher/actions/StartActivity;->mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    aput-object v11, v6, v10

    .line 71
    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-object v11, v6, v10

    .line 72
    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 73
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 77
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "objects":[Ljava/lang/Object;
    :cond_2
    iget-object v10, p0, Lcom/smartisanos/launcher/actions/StartActivity;->mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-boolean v10, v10, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    if-eqz v10, :cond_3

    .line 78
    invoke-direct {p0}, Lcom/smartisanos/launcher/actions/StartActivity;->removeNewlyInstall()V

    .line 80
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 81
    .local v2, "currentTime":J
    iget-wide v10, p0, Lcom/smartisanos/launcher/actions/StartActivity;->mLastStartActivityTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_weather_toast

    iget-wide v10, p0, Lcom/smartisanos/launcher/actions/StartActivity;->mLastStartActivityTime:J

    sub-long v10, v2, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0x1f4

    cmp-long v10, v10, v12

    if-gez v10, :cond_4

    .line 82
    sget-object v10, Lcom/smartisanos/launcher/actions/StartActivity;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "launch app reject, time too close"

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_weather_toast
    iput-wide v2, p0, Lcom/smartisanos/launcher/actions/StartActivity;->mLastStartActivityTime:J

    .line 86
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v1, "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/smartisanos/launcher/actions/StartActivity;->mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v7, v10, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 88
    .local v7, "packageName":Ljava/lang/String;
    iget-object v10, p0, Lcom/smartisanos/launcher/actions/StartActivity;->mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v0, v10, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    .line 89
    .local v0, "componentName":Ljava/lang/String;
    iget-object v10, p0, Lcom/smartisanos/launcher/actions/StartActivity;->mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-byte v4, v10, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    .line 91
    .local v4, "itemType":B
    const-string v10, "com.smartisanos.weather"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 92
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v10

    invoke-static {v10}, Lcom/smartisanos/launcher/data/Utils;->getAvailableWeatherLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v10

    if-eqz v10, :cond_4

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/smartisanos/launcher/actions/StartActivity;->launchWithCellDownAnimation(Landroid/content/Intent;Z)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->showWeatherInfoToast()V

    goto/16 :goto_0

    .line 95
    :cond_5
    sget-object v10, Lcom/smartisanos/launcher/actions/StartActivity;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "launch app ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 96
    if-nez v4, :cond_8

    .line 97
    const-string v10, "com.smartisanos.home.settings"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 98
    const-string v10, "com.smartisanos.home"

    const-string v11, "com.smartisanos.home.settings.view.SettingMainActivity"

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const/high16 v10, 0x20000000

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 108
    :goto_1
    const-string v10, "android.intent.action.MAIN"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    :goto_2
    sget-boolean v9, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LAUNCH_FLIP_ANIMATION:Z

    .line 122
    .local v9, "useFlipAnim":Z
    sget-object v10, Lcom/smartisanos/launcher/actions/StartActivity;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "DEBUG"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "launchApplication useFlipAnim ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    if-eqz v9, :cond_b

    sget-boolean v10, Lcom/smartisanos/launcher/data/Constants;->IS_U1_BOARD:Z

    if-eqz v10, :cond_b

    .line 125
    const/4 v10, 0x0

    invoke-direct {p0, v1, v10}, Lcom/smartisanos/launcher/actions/StartActivity;->launchWithCellDownAnimation(Landroid/content/Intent;Z)V

    goto/16 :goto_0

    .line 100
    .end local v9    # "useFlipAnim":Z
    :cond_6
    const-string v10, "com.smartisanos.quicksearchbox"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 101
    const-string v10, "A260009"

    invoke-static {v10}, Lcom/smartisanos/home/tracker/LauncherAgent;->event(Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v10

    const-class v11, Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 103
    const/high16 v10, 0x20000000

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 105
    :cond_7
    new-instance v10, Landroid/content/ComponentName;

    invoke-direct {v10, v7, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 106
    const/high16 v10, 0x10200000

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 110
    :cond_8
    const/4 v10, 0x1

    if-ne v4, v10, :cond_a

    .line 111
    iget-object v8, p0, Lcom/smartisanos/launcher/actions/StartActivity;->mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    check-cast v8, Lcom/smartisanos/launcher/data/ShortcutInfo;

    .line 112
    .local v8, "shortcutInfo":Lcom/smartisanos/launcher/data/ShortcutInfo;
    iget-object v10, v8, Lcom/smartisanos/launcher/data/ShortcutInfo;->intent:Landroid/content/Intent;

    if-nez v10, :cond_9

    .line 113
    sget-object v10, Lcom/smartisanos/launcher/actions/StartActivity;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "warning intent is null"

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 115
    :cond_9
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    iget-object v10, v8, Lcom/smartisanos/launcher/data/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 116
    .restart local v1    # "intent":Landroid/content/Intent;
    const/high16 v10, 0x10000000

    invoke-virtual {v1, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 118
    .end local v8    # "shortcutInfo":Lcom/smartisanos/launcher/data/ShortcutInfo;
    :cond_a
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "launch error, unknown item type ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/smartisanos/launcher/actions/StartActivity;->mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-byte v12, v12, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 128
    .restart local v9    # "useFlipAnim":Z
    :cond_b
    const/4 v10, 0x1

    invoke-direct {p0, v1, v10}, Lcom/smartisanos/launcher/actions/StartActivity;->launchWithCellDownAnimation(Landroid/content/Intent;Z)V

    goto/16 :goto_0
.end method
