.class public Lcom/smartisanos/home/Launcher;
.super Landroid/app/Activity;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/home/Launcher$FpsViewTouchListener;,
        Lcom/smartisanos/home/Launcher$RUNNING_ENV;
    }
.end annotation


# static fields
.field public static final ACTION_ACTIVITY_RESUMED:Ljava/lang/String; = "android.intent.action.ACTIVITY_RESUMED"

.field private static DEBUG_STRICT_MODE:Z = false

.field public static final DIRECTION_NEXT:I = 0x1

.field public static final DIRECTION_PREVIOUS:I = 0x0

.field public static final EXTRA_ACTIVITY_NAME:Ljava/lang/String; = "android.intent.extra.activiti_name"

.field public static final FLAG_PRIVILEGED:I = 0x40000000

.field private static volatile FORCE_CHANGE_LANGUAGE:Z = false

.field public static final MESSAGE_CHANGE_THEME:I = 0x12

.field public static final MESSAGE_COLOR_THEME_CHANGED:I = 0x11

.field public static final MESSAGE_COMPLETE:I = 0xc

.field public static final MESSAGE_INITED:I = 0xa

.field public static final MESSAGE_LOADED:I = 0xb

.field public static final MESSAGE_RENDER_SCENE:I = 0xe

.field public static final MESSAGE_REQUEST_DOWNLOAD_EMBEDDED_APP:I = 0x6f

.field public static final MESSAGE_UNLOCK_TOUCH:I = 0xd

.field private static final PRESS_HOME_INTERVAL:I = 0x1f4

.field public static final PRIVATE_FLAG_PRIVILEGED:I = 0x8

.field public static final REQUEST_CODE_JUST_VERIFY_PASSWORD:I = 0x16

.field public static final REQUEST_CODE_LOCK_PASSWORD:I = 0x14

.field public static final REQUEST_CODE_VERIFY_PASSWORD:I = 0x15

.field public static final SETUP_WIZARD_COMPLETE:I = 0x1

.field private static final TRANSACTION_ANIM_NONE:I = 0x1

.field private static final TRANSACTION_ANIM_PUSH_UP:I = 0x2

.field private static final TRANSACTION_ANIM_SLIDE:I

.field private static log:Lcom/smartisanos/launcher/LOG;

.field private static mySelf:Lcom/smartisanos/home/Launcher;


# instance fields
.field public volatile DATA_INIT_RUNNING:Z

.field private DB_THREAD_ID:I

.field public volatile ENABLE_RECEIVER:Z

.field private GL_THREAD_ID:I

.field private MAIN_THREAD_ID:I

.field public WAIT_QUICK_SETTING:Z

.field public volatile flipAnimEvent:Lcom/smartisanos/smengine/Event;

.field public handHabitChanged:Z

.field private isFirstStartup:Z

.field private isHomeKeyScrollToLeft:Z

.field public volatile isResumed:Z

.field private lastLaunchApp:Lcom/smartisanos/launcher/view/Cell;

.field public localeChanged:Z

.field private mContext:Landroid/app/Activity;

.field private mDateChangeIntent:Landroid/content/Intent;

.field private mEditPageTitleDialog:Lcom/smartisanos/launcher/view/EditTitleDialog;

.field private mEmergencyUnlockEvent:Lcom/smartisanos/smengine/Event;

.field private mGLSurfaceView:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

.field public mHandler:Landroid/os/Handler;

.field public mHasFocus:Z

.field public mHasStartSetupWizard:Z

.field private mLastHomeTime:J

.field private volatile mLauncherIsPreparingPowerOff:Z

.field private mLoadingUI:Lcom/smartisanos/launcher/widget/LoadingUI;

.field private mMainView:Lcom/smartisanos/launcher/view/MainView;

.field private mPaused:Z

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mReleaseEvent:Lcom/smartisanos/smengine/Event;

.field private volatile needPauseEventByScreenOff:Z

.field private startUpTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    const-class v0, Lcom/smartisanos/home/Launcher;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    .line 116
    const/4 v0, 0x0

    sput-object v0, Lcom/smartisanos/home/Launcher;->mySelf:Lcom/smartisanos/home/Launcher;

    .line 391
    sput-boolean v1, Lcom/smartisanos/home/Launcher;->DEBUG_STRICT_MODE:Z

    .line 1102
    sput-boolean v1, Lcom/smartisanos/home/Launcher;->FORCE_CHANGE_LANGUAGE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 101
    new-instance v0, Lcom/smartisanos/launcher/widget/LoadingUI;

    invoke-direct {v0}, Lcom/smartisanos/launcher/widget/LoadingUI;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/home/Launcher;->mLoadingUI:Lcom/smartisanos/launcher/widget/LoadingUI;

    .line 105
    iput-wide v4, p0, Lcom/smartisanos/home/Launcher;->mLastHomeTime:J

    .line 108
    iput-boolean v1, p0, Lcom/smartisanos/home/Launcher;->localeChanged:Z

    .line 109
    iput-boolean v1, p0, Lcom/smartisanos/home/Launcher;->handHabitChanged:Z

    .line 110
    iput-boolean v1, p0, Lcom/smartisanos/home/Launcher;->mHasStartSetupWizard:Z

    .line 111
    iput-boolean v3, p0, Lcom/smartisanos/home/Launcher;->mHasFocus:Z

    .line 121
    iput-boolean v3, p0, Lcom/smartisanos/home/Launcher;->DATA_INIT_RUNNING:Z

    .line 122
    iput-boolean v1, p0, Lcom/smartisanos/home/Launcher;->ENABLE_RECEIVER:Z

    .line 124
    iput-boolean v1, p0, Lcom/smartisanos/home/Launcher;->needPauseEventByScreenOff:Z

    .line 125
    iput-boolean v1, p0, Lcom/smartisanos/home/Launcher;->mPaused:Z

    .line 126
    iput-boolean v1, p0, Lcom/smartisanos/home/Launcher;->mLauncherIsPreparingPowerOff:Z

    .line 127
    iput-object v2, p0, Lcom/smartisanos/home/Launcher;->mEmergencyUnlockEvent:Lcom/smartisanos/smengine/Event;

    .line 128
    iput-boolean v1, p0, Lcom/smartisanos/home/Launcher;->isHomeKeyScrollToLeft:Z

    .line 130
    iput-boolean v1, p0, Lcom/smartisanos/home/Launcher;->isResumed:Z

    .line 175
    iput-wide v4, p0, Lcom/smartisanos/home/Launcher;->startUpTime:J

    .line 282
    iput-boolean v1, p0, Lcom/smartisanos/home/Launcher;->isFirstStartup:Z

    .line 283
    iput-boolean v1, p0, Lcom/smartisanos/home/Launcher;->WAIT_QUICK_SETTING:Z

    .line 441
    iput-object v2, p0, Lcom/smartisanos/home/Launcher;->flipAnimEvent:Lcom/smartisanos/smengine/Event;

    .line 790
    iput-object v2, p0, Lcom/smartisanos/home/Launcher;->mEditPageTitleDialog:Lcom/smartisanos/launcher/view/EditTitleDialog;

    .line 1104
    new-instance v0, Lcom/smartisanos/home/Launcher$12;

    invoke-direct {v0, p0}, Lcom/smartisanos/home/Launcher$12;-><init>(Lcom/smartisanos/home/Launcher;)V

    iput-object v0, p0, Lcom/smartisanos/home/Launcher;->mHandler:Landroid/os/Handler;

    .line 1604
    new-instance v0, Lcom/smartisanos/home/Launcher$22;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/home/Launcher$22;-><init>(Lcom/smartisanos/home/Launcher;I)V

    iput-object v0, p0, Lcom/smartisanos/home/Launcher;->mReleaseEvent:Lcom/smartisanos/smengine/Event;

    return-void
.end method

.method private refreshPendingIconAppearance()V
    .locals 11

    invoke-static {p0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->isLauncherRefreshPending(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_start

    return-void

    :cond_start
    invoke-static {p0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->clearLauncherRefreshPending(Landroid/content/Context;)V

    # collect unique package names from all desktop items

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/smartisanos/launcher/LauncherModel;->getItemMap()Ljava/util/HashMap;

    move-result-object v4

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_loop
    :goto_loop
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_loop_end

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/smartisanos/launcher/LauncherModel;->getItemInfo(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_loop

    iget-object v9, v6, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_loop

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_loop

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_loop

    :cond_loop_end
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_end

    # show initializing dialog

    sget v0, Lcom/smartisanos/launcher/ResIds$string;->initializing:I

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v9}, Lcom/smartisanos/home/Launcher;->showDialog(ZLjava/lang/String;)V

    # build RedirectIconInfo[] with correct useImprovedAppIcon flag

    new-array v0, v10, [Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SYNC_APP_ICON:Z

    const/4 v2, 0x0

    :goto_fill
    if-ge v2, v10, :cond_fill_done

    new-instance v6, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    invoke-direct {v6}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v6, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    iput-boolean v1, v6, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->useImprovedAppIcon:Z

    aput-object v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_fill

    :cond_fill_done
    invoke-static {v0}, Lcom/smartisanos/launcher/LauncherModel;->updateAppIcon([Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V

    # dismiss dialog after 1500ms

    const/4 v0, 0x0

    const-wide/16 v1, 0x5dc

    invoke-virtual {p0, v0, v9, v1, v2}, Lcom/smartisanos/home/Launcher;->showDialogDelayed(ZLjava/lang/String;J)V

    :cond_end
    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/smartisanos/home/Launcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/Launcher;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/smartisanos/home/Launcher;->isHomeKeyScrollToLeft:Z

    return v0
.end method

.method static synthetic access$102(Lcom/smartisanos/home/Launcher;Lcom/smartisanos/smengine/Event;)Lcom/smartisanos/smengine/Event;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/home/Launcher;
    .param p1, "x1"    # Lcom/smartisanos/smengine/Event;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/smartisanos/home/Launcher;->mEmergencyUnlockEvent:Lcom/smartisanos/smengine/Event;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/smartisanos/home/Launcher;)Lcom/smartisanos/launcher/view/MainView;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/Launcher;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/smartisanos/home/Launcher;->mMainView:Lcom/smartisanos/launcher/view/MainView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/smartisanos/home/Launcher;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/Launcher;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/smartisanos/home/Launcher;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 98
    sget-boolean v0, Lcom/smartisanos/home/Launcher;->FORCE_CHANGE_LANGUAGE:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 98
    sput-boolean p0, Lcom/smartisanos/home/Launcher;->FORCE_CHANGE_LANGUAGE:Z

    return p0
.end method

.method static synthetic access$400(Lcom/smartisanos/home/Launcher;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/home/Launcher;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/smartisanos/home/Launcher;->languageChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/smartisanos/home/Launcher;)Lcom/smartisanos/launcher/widget/LoadingUI;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/Launcher;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/smartisanos/home/Launcher;->mLoadingUI:Lcom/smartisanos/launcher/widget/LoadingUI;

    return-object v0
.end method

.method static synthetic access$600(Lcom/smartisanos/home/Launcher;)J
    .locals 2
    .param p0, "x0"    # Lcom/smartisanos/home/Launcher;

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/smartisanos/home/Launcher;->startUpTime:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/smartisanos/home/Launcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/home/Launcher;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/smartisanos/home/Launcher;->isFirstStartup:Z

    return p1
.end method

.method static synthetic access$800(Lcom/smartisanos/home/Launcher;)Lcom/smartisanos/smengine/Event;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/Launcher;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/smartisanos/home/Launcher;->createVerifyOkEvent()Lcom/smartisanos/smengine/Event;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/smartisanos/home/Launcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/home/Launcher;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/smartisanos/home/Launcher;->resumeActiveIcons()V

    return-void
.end method

.method private createEmergencyUnlockEvent()Lcom/smartisanos/smengine/Event;
    .locals 2

    .prologue
    .line 835
    new-instance v0, Lcom/smartisanos/home/Launcher$10;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/home/Launcher$10;-><init>(Lcom/smartisanos/home/Launcher;I)V

    .line 852
    .local v0, "event":Lcom/smartisanos/smengine/Event;
    return-object v0
.end method

.method private createScrollToLeftEvent()Lcom/smartisanos/smengine/Event;
    .locals 2

    .prologue
    .line 821
    new-instance v0, Lcom/smartisanos/home/Launcher$9;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/home/Launcher$9;-><init>(Lcom/smartisanos/home/Launcher;I)V

    .line 831
    .local v0, "event":Lcom/smartisanos/smengine/Event;
    return-object v0
.end method

.method private createVerifyOkEvent()Lcom/smartisanos/smengine/Event;
    .locals 2

    .prologue
    .line 804
    new-instance v0, Lcom/smartisanos/home/Launcher$8;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/home/Launcher$8;-><init>(Lcom/smartisanos/home/Launcher;I)V

    .line 818
    .local v0, "event":Lcom/smartisanos/smengine/Event;
    return-object v0
.end method

.method public static debugTheadId()V
    .locals 7

    .prologue
    .line 260
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 261
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    .line 262
    .local v1, "tid":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 263
    .local v2, "uid":I
    sget-object v3, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pid ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], tid ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], uid ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method private delayResumeActiveIcons()V
    .locals 6

    .prologue
    .line 1486
    const-wide/16 v0, 0x3e8

    .line 1487
    .local v0, "DELAY_TIME":J
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 1489
    .local v2, "delayTimer":Ljava/util/Timer;
    new-instance v3, Lcom/smartisanos/home/Launcher$19;

    invoke-direct {v3, p0}, Lcom/smartisanos/home/Launcher$19;-><init>(Lcom/smartisanos/home/Launcher;)V

    .line 1496
    .local v3, "timerTask":Ljava/util/TimerTask;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 1497
    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1499
    :cond_0
    return-void
.end method

.method private detectOpenGLES20()Z
    .locals 4

    .prologue
    .line 413
    const-string v2, "activity"

    .line 414
    invoke-virtual {p0, v2}, Lcom/smartisanos/home/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 415
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 416
    .local v1, "info":Landroid/content/pm/ConfigurationInfo;
    iget v2, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v3, 0x20000

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/smartisanos/home/Launcher;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/smartisanos/home/Launcher;->mySelf:Lcom/smartisanos/home/Launcher;

    return-object v0
.end method

.method public static isSystemAppByPackageName(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 712
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 713
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 715
    .local v0, "appFlags":I
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v4, p1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    and-int/lit8 v6, v0, 0x1

    if-nez v6, :cond_0

    const/high16 v6, 0x40000000    # 2.0f

    and-int/2addr v6, v0

    if-nez v6, :cond_0

    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_1

    .line 723
    :cond_0
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v4, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 724
    .local v3, "pinfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_1

    .line 725
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 726
    .local v2, "path":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v6, "/system"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-eqz v6, :cond_1

    .line 727
    const/4 v5, 0x1

    .line 734
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "pinfo":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_0
    return v5

    .line 716
    :catch_0
    move-exception v1

    .line 717
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 730
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 731
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private languageChanged(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 986
    sget-boolean v2, Lcom/smartisanos/launcher/ApplicationProxy;->localeChanged:Z

    if-nez v2, :cond_0

    .line 1092
    :goto_0
    return-void

    .line 989
    :cond_0
    const/4 v2, 0x0

    sput-boolean v2, Lcom/smartisanos/launcher/ApplicationProxy;->localeChanged:Z

    .line 990
    iget-object v2, p0, Lcom/smartisanos/home/Launcher;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 991
    .local v1, "oldLan":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 992
    .local v0, "newLan":Ljava/lang/String;
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switch language from ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] to ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 993
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v2

    const/high16 v3, 0x800000

    invoke-virtual {v2, v3, v5}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 994
    iget-boolean v2, p0, Lcom/smartisanos/home/Launcher;->ENABLE_RECEIVER:Z

    if-nez v2, :cond_2

    .line 995
    sget-object v2, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "launcher startup not finish, languageChanged abandon, force reload when handle MESSAGE_COMPLETE"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 996
    sput-boolean v5, Lcom/smartisanos/home/Launcher;->FORCE_CHANGE_LANGUAGE:Z

    goto :goto_0

    .line 999
    :cond_2
    new-instance v2, Lcom/smartisanos/home/Launcher$11;

    const/16 v3, 0x64

    invoke-direct {v2, p0, v3}, Lcom/smartisanos/home/Launcher$11;-><init>(Lcom/smartisanos/home/Launcher;I)V

    const/4 v3, 0x0

    .line 1091
    invoke-virtual {v2, v3}, Lcom/smartisanos/home/Launcher$11;->send(F)V

    goto :goto_0
.end method

.method private pauseActiveIcons()V
    .locals 2

    .prologue
    .line 1518
    new-instance v0, Lcom/smartisanos/home/Launcher$21;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/home/Launcher$21;-><init>(Lcom/smartisanos/home/Launcher;I)V

    const/4 v1, 0x0

    .line 1532
    invoke-virtual {v0, v1}, Lcom/smartisanos/home/Launcher$21;->send(F)V

    .line 1533
    return-void
.end method

.method private postEmergencyUnlockEvent()V
    .locals 2

    .prologue
    .line 856
    invoke-direct {p0}, Lcom/smartisanos/home/Launcher;->createEmergencyUnlockEvent()Lcom/smartisanos/smengine/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/Launcher;->mEmergencyUnlockEvent:Lcom/smartisanos/smengine/Event;

    .line 857
    iget-object v0, p0, Lcom/smartisanos/home/Launcher;->mEmergencyUnlockEvent:Lcom/smartisanos/smengine/Event;

    const-string v1, "EmergencyUnlockEvent"

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Event;->setName(Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/smartisanos/home/Launcher;->mEmergencyUnlockEvent:Lcom/smartisanos/smengine/Event;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Event;->send(F)V

    .line 859
    return-void
.end method

.method private rebootLauncher()V
    .locals 3

    .prologue
    .line 203
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/smartisanos/home/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 204
    .local v0, "am":Landroid/app/ActivityManager;
    const-string v2, "com.smartisanos.home"

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/InvisibleApi;->forceStopPackage(Landroid/app/ActivityManager;Ljava/lang/String;)V

    .line 205
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 207
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0, v1}, Lcom/smartisanos/home/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 209
    return-void
.end method

.method private resetStatusBarColor()V
    .locals 2

    .prologue
    .line 1616
    const-string v0, "Meizu"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1617
    invoke-virtual {p0}, Lcom/smartisanos/home/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/flyme/reflect/StatusBarProxy;->setStatusBarDarkIcon(Landroid/view/Window;Z)Z

    .line 1619
    :cond_0
    return-void
.end method

.method private resumeActiveIcons()V
    .locals 2

    .prologue
    .line 1502
    new-instance v0, Lcom/smartisanos/home/Launcher$20;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/home/Launcher$20;-><init>(Lcom/smartisanos/home/Launcher;I)V

    const/4 v1, 0x0

    .line 1514
    invoke-virtual {v0, v1}, Lcom/smartisanos/home/Launcher$20;->send(F)V

    .line 1515
    return-void
.end method

.method private setLauncherFinishPowerOff()V
    .locals 2

    .prologue
    .line 1593
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "#### setLauncherFinishPowerOff"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 1594
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/home/Launcher;->mLauncherIsPreparingPowerOff:Z

    .line 1595
    return-void
.end method

.method private strictMode()V
    .locals 1

    .prologue
    .line 394
    sget-boolean v0, Lcom/smartisanos/home/Launcher;->DEBUG_STRICT_MODE:Z

    if-eqz v0, :cond_0

    .line 395
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 396
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 398
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 401
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectCustomSlowCalls()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 402
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 395
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 403
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 404
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 406
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 403
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 410
    :cond_0
    return-void
.end method

.method public static toHome(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    if-nez p0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 196
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 197
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public changeTheme(Lcom/smartisanos/launcher/theme/Theme;Ljava/lang/String;)V
    .locals 5
    .param p1, "theme"    # Lcom/smartisanos/launcher/theme/Theme;
    .param p2, "loadingText"    # Ljava/lang/String;

    .prologue
    .line 1403
    iget-object v3, p0, Lcom/smartisanos/home/Launcher;->mMainView:Lcom/smartisanos/launcher/view/MainView;

    if-nez v3, :cond_0

    .line 1404
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->forceCompleteChangeTheme()V

    .line 1429
    :goto_0
    return-void

    .line 1407
    :cond_0
    sget-object v3, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->FOUR_FINGER_RIGHT:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    .line 1408
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getRequireChangeFrom()Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    move-result-object v4

    if-eq v3, v4, :cond_1

    sget-object v3, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->FOUR_FINGER_LEFT:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    .line 1410
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getRequireChangeFrom()Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 1414
    :cond_1
    :goto_1
    move-object v2, p1

    .line 1415
    .local v2, "tm":Lcom/smartisanos/launcher/theme/Theme;
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/theme/ThemeManager;->isDefaultTheme(Landroid/content/Context;Lcom/smartisanos/launcher/theme/Theme;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1416
    invoke-virtual {p0}, Lcom/smartisanos/home/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisanos/launcher/theme/Theme;->mResources:Landroid/content/res/Resources;

    .line 1418
    :cond_2
    move-object v1, v2

    .line 1419
    .local v1, "the":Lcom/smartisanos/launcher/theme/Theme;
    new-instance v0, Lcom/smartisanos/home/Launcher$16;

    const/16 v3, 0x64

    invoke-direct {v0, p0, v3, v1}, Lcom/smartisanos/home/Launcher$16;-><init>(Lcom/smartisanos/home/Launcher;ILcom/smartisanos/launcher/theme/Theme;)V

    .line 1426
    .local v0, "event":Lcom/smartisanos/smengine/Event;
    const-string v3, "ChangeThemeEvent"

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/Event;->setName(Ljava/lang/String;)V

    .line 1427
    const v3, 0x3d4ccccd    # 0.05f

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/Event;->send(F)V

    .line 1428
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->updateGLView()V

    goto :goto_0

    .line 1412
    .end local v0    # "event":Lcom/smartisanos/smengine/Event;
    .end local v1    # "the":Lcom/smartisanos/launcher/theme/Theme;
    .end local v2    # "tm":Lcom/smartisanos/launcher/theme/Theme;
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {p0, v3, p2}, Lcom/smartisanos/home/Launcher;->showDialog(ZLjava/lang/String;)V

    goto :goto_1
.end method

.method public createActivityOptions(II)Landroid/os/Bundle;
    .locals 2
    .param p1, "enterAnim"    # I
    .param p2, "exitAnim"    # I

    .prologue
    .line 267
    invoke-static {p0, p1, p2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 268
    .local v0, "ao":Landroid/app/ActivityOptions;
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 269
    .local v1, "bd":Landroid/os/Bundle;
    return-object v1
.end method

.method public disableAnimationScale(I)V
    .locals 1
    .param p1, "witch"    # I

    .prologue
    .line 1536
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1560
    :cond_0
    return-void
.end method

.method public declared-synchronized getDbThreadId()I
    .locals 1

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/smartisanos/home/Launcher;->DB_THREAD_ID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEditPageTitleDialog()Lcom/smartisanos/launcher/view/EditTitleDialog;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/smartisanos/home/Launcher;->mEditPageTitleDialog:Lcom/smartisanos/launcher/view/EditTitleDialog;

    return-object v0
.end method

.method public getGLSurfaceView()Landroid/opengl/GLSurfaceView;
    .locals 1

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/smartisanos/home/Launcher;->mGLSurfaceView:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    return-object v0
.end method

.method public declared-synchronized getGlThreadId()I
    .locals 1

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/smartisanos/home/Launcher;->GL_THREAD_ID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLatestOpenCell()Lcom/smartisanos/launcher/view/Cell;
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/smartisanos/home/Launcher;->lastLaunchApp:Lcom/smartisanos/launcher/view/Cell;

    return-object v0
.end method

.method public getLauncherIsPreparingPowerOff()Z
    .locals 1

    .prologue
    .line 1598
    iget-boolean v0, p0, Lcom/smartisanos/home/Launcher;->mLauncherIsPreparingPowerOff:Z

    return v0
.end method

.method public declared-synchronized getMainThreadId()I
    .locals 1

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/smartisanos/home/Launcher;->MAIN_THREAD_ID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMainView()Lcom/smartisanos/launcher/view/MainView;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/smartisanos/home/Launcher;->mMainView:Lcom/smartisanos/launcher/view/MainView;

    return-object v0
.end method

.method public getMyHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/smartisanos/home/Launcher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getPauseEventStatus()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/smartisanos/home/Launcher;->needPauseEventByScreenOff:Z

    return v0
.end method

.method public handleSettingsChange()V
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 869
    sget-boolean v8, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    const-string v10, "handleSettingsChange !"

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    :cond_0
    const/4 v1, 0x0

    .line 871
    .local v1, "isInMultiPageMode":Z
    sget v8, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    if-eq v8, v11, :cond_1

    sget v8, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_1

    .line 873
    const/4 v1, 0x1

    .line 875
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    .line 876
    .local v2, "mainView":Lcom/smartisanos/launcher/view/MainView;
    if-nez v2, :cond_2

    .line 877
    sget-object v8, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    const-string v10, "handleSettingsChange main view is null"

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    :goto_0
    return-void

    .line 880
    :cond_2
    invoke-virtual {v2, v11}, Lcom/smartisanos/launcher/view/MainView;->setLoadingConfigStatus(Z)V

    .line 881
    invoke-static {}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getInstance()Lcom/smartisanos/launcher/data/LauncherPreferences;

    move-result-object v6

    .line 882
    .local v6, "preferences":Lcom/smartisanos/launcher/data/LauncherPreferences;
    invoke-virtual {v6}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getComplexMode()I

    move-result v4

    .line 884
    .local v4, "oldComplexMode":I
    invoke-virtual {v6, p0}, Lcom/smartisanos/launcher/data/LauncherPreferences;->init(Landroid/content/Context;)V

    .line 886
    invoke-virtual {v6}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getComplexMode()I

    move-result v3

    .line 887
    .local v3, "newComplexMode":I
    if-eq v4, v3, :cond_c

    .line 888
    sget-boolean v8, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v8, :cond_3

    sget-object v8, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    const-string v10, "handleSettingsChange oldComplexMode != newComplexMode"

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    :cond_3
    sget-boolean v8, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v8, :cond_4

    sget-object v8, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleSettingsChange oldComplexMode == ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->getModeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    :cond_4
    sget-boolean v8, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v8, :cond_5

    sget-object v8, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleSettingsChange newComplexMode == ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->getModeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    :cond_5
    sget-boolean v8, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v8, :cond_6

    sget-object v8, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleSettingsChange currMode       == ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v11}, Lcom/smartisanos/launcher/data/Constants;->getModeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    :cond_6
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v5

    .line 894
    .local v5, "pageView":Lcom/smartisanos/launcher/view/PageView;
    if-eqz v1, :cond_a

    .line 895
    const/4 v7, 0x0

    .line 896
    .local v7, "targetPage":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 897
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "targetPage":Lcom/smartisanos/launcher/view/Page;
    check-cast v7, Lcom/smartisanos/launcher/view/Page;

    .line 899
    .restart local v7    # "targetPage":Lcom/smartisanos/launcher/view/Page;
    :cond_7
    if-nez v7, :cond_8

    .line 900
    sget-boolean v8, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v8, :cond_8

    sget-object v8, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    const-string v10, "updatePageModeAndView targetPage is null"

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v8

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 905
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v8

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v8

    if-nez v8, :cond_9

    .line 906
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v0

    .line 907
    .local v0, "floatPageNode":Lcom/smartisanos/launcher/view/FloatPageNode;
    if-eqz v0, :cond_9

    .line 908
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/FloatPageNode;->resetPageNoAnimation()V

    .line 911
    .end local v0    # "floatPageNode":Lcom/smartisanos/launcher/view/FloatPageNode;
    :cond_9
    invoke-virtual {v5, v7}, Lcom/smartisanos/launcher/view/PageView;->switchPageMode(Lcom/smartisanos/launcher/view/Page;)Z

    .line 913
    .end local v7    # "targetPage":Lcom/smartisanos/launcher/view/Page;
    :cond_a
    sget-boolean v8, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v8, :cond_b

    sget-object v8, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    const-string v10, "mPageView.getPageViewAnimation().initPageLocation()"

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    :cond_b
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getPageViewAnimation()Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->initPageLocation()V

    .line 916
    .end local v5    # "pageView":Lcom/smartisanos/launcher/view/PageView;
    :cond_c
    sget-boolean v8, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v8, :cond_d

    sget-object v8, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    const-string v10, "handleSettingsChange() done"

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    :cond_d
    invoke-virtual {v2, v12}, Lcom/smartisanos/launcher/view/MainView;->setLoadingConfigStatus(Z)V

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 1292
    packed-switch p1, :pswitch_data_0

    .line 1400
    :cond_0
    :goto_0
    return-void

    .line 1294
    :pswitch_0
    sget-object v1, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult REQUEST_CODE_LOCK_PASSWORD requestCode == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Activity.RESULT_OK ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    if-ne v5, p2, :cond_0

    .line 1297
    new-instance v1, Lcom/smartisanos/home/Launcher$13;

    const/16 v2, 0x64

    invoke-direct {v1, p0, v2}, Lcom/smartisanos/home/Launcher$13;-><init>(Lcom/smartisanos/home/Launcher;I)V

    const/4 v2, 0x0

    .line 1307
    invoke-virtual {v1, v2}, Lcom/smartisanos/home/Launcher$13;->send(F)V

    goto :goto_0

    .line 1312
    :pswitch_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/smartisanos/home/Launcher$14;

    invoke-direct {v1, p0, p2}, Lcom/smartisanos/home/Launcher$14;-><init>(Lcom/smartisanos/home/Launcher;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1355
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1359
    .end local v0    # "thread":Ljava/lang/Thread;
    :pswitch_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/smartisanos/home/Launcher$15;

    invoke-direct {v1, p0, p2}, Lcom/smartisanos/home/Launcher$15;-><init>(Lcom/smartisanos/home/Launcher;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1396
    .restart local v0    # "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1292
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 981
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 982
    invoke-direct {p0, p0}, Lcom/smartisanos/home/Launcher;->languageChanged(Landroid/content/Context;)V

    .line 983
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 287
    sget-object v2, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "Launcher Activity onCreate !"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 288
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/home/Launcher;->strictMode()V

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/smartisanos/home/Launcher;->startUpTime:J

    .line 291
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v13

    .line 292
    .local v13, "mainTid":I
    sget v2, Lcom/smartisanos/launcher/ApplicationProxy;->PROC_ID:I

    if-eqz v2, :cond_1

    .line 293
    sget v2, Lcom/smartisanos/launcher/ApplicationProxy;->PROC_ID:I

    if-ne v13, v2, :cond_1

    .line 295
    sget-object v2, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "DEBUG"

    const-string v4, "maybe is relaunch activity ! kill launcher"

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/home/Launcher;->rebootLauncher()V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    sput v13, Lcom/smartisanos/launcher/ApplicationProxy;->PROC_ID:I

    .line 301
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/smartisanos/home/Launcher;->setMainThreadId(I)V

    .line 302
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MAIN_THREAD_ID ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/home/Launcher;->getMainThreadId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/home/Launcher;->mContext:Landroid/app/Activity;

    .line 304
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 305
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/home/Launcher;->requestWindowFeature(I)Z

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/home/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/data/Utils;->applyLauncherImmersiveWindow(Landroid/content/Context;Landroid/view/Window;)V

    .line 309
    sget v2, Lcom/smartisanos/launcher/ResIds$layout;->launcher_view:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/home/Launcher;->setContentView(I)V

    .line 313
    sget-object v2, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate set mode sPageMode ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] to ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    sget v2, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    sput v2, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    .line 315
    sget v2, Lcom/smartisanos/launcher/ResIds$id;->rootView:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/home/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    .line 316
    .local v20, "rootView":Landroid/view/ViewGroup;
    new-instance v2, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v2, v0, v1}, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    invoke-static {v2}, Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;->setInstance(Lcom/smartisanos/launcher/particleconfig/ParticlePropertyView;)V

    .line 317
    sget v2, Lcom/smartisanos/launcher/ResIds$id;->glview:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/home/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/smartisanos/home/Launcher;->mGLSurfaceView:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    .line 318
    sput-object p0, Lcom/smartisanos/home/Launcher;->mySelf:Lcom/smartisanos/home/Launcher;

    .line 320
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/home/Launcher;->setLauncherWindowStatus(Z)V

    .line 321
    sget v2, Lcom/smartisanos/launcher/ResIds$string;->initializing:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/home/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 322
    .local v10, "dialogText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/home/Launcher;->mLoadingUI:Lcom/smartisanos/launcher/widget/LoadingUI;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v10}, Lcom/smartisanos/launcher/widget/LoadingUI;->create(Landroid/app/Activity;Ljava/lang/String;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/home/Launcher;->mLoadingUI:Lcom/smartisanos/launcher/widget/LoadingUI;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/widget/LoadingUI;->show()V

    .line 324
    invoke-static/range {p0 .. p0}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getFirstTimeToUseMenuKeySwitchPageModeResult(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/smartisanos/launcher/data/Constants;->FIRST_USE_MENU_KEY_SWITCH_PAGE_MODE:Z

    .line 325
    invoke-static {}, Lcom/smartisanos/launcher/ResourceValue;->verifyResource()V

    .line 326
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/home/Launcher;->detectOpenGLES20()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/home/Launcher;->mGLSurfaceView:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/SMGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/home/Launcher;->mGLSurfaceView:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/16 v8, 0x8

    invoke-virtual/range {v2 .. v8}, Lcom/smartisanos/launcher/view/SMGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/home/Launcher;->mGLSurfaceView:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/SMGLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/home/Launcher;->mGLSurfaceView:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/SMGLSurfaceView;->setFocusableInTouchMode(Z)V

    .line 333
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->getInputManager()Lcom/smartisanos/smengine/InputManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/home/Launcher;->mGLSurfaceView:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/InputManager;->setView(Landroid/opengl/GLSurfaceView;)V

    .line 334
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/World;->setAndroidContext(Landroid/content/Context;)V

    .line 335
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/home/Launcher;->mGLSurfaceView:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/World;->setGLView(Landroid/opengl/GLSurfaceView;)V

    .line 336
    new-instance v18, Lcom/smartisanos/launcher/view/SMRenderer;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/SMRenderer;-><init>(Landroid/app/Activity;)V

    .line 338
    .local v18, "r":Lcom/smartisanos/launcher/view/SMRenderer;
    new-instance v14, Lcom/smartisanos/launcher/view/MainView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/smartisanos/launcher/view/MainView;-><init>(Landroid/app/Activity;)V

    .line 339
    .local v14, "mainView":Lcom/smartisanos/launcher/view/MainView;
    invoke-static {v14}, Lcom/smartisanos/launcher/view/MainView;->setInstance(Lcom/smartisanos/launcher/view/MainView;)V

    .line 341
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/smartisanos/launcher/view/SMRenderer;->setMainView(Lcom/smartisanos/launcher/view/MainView;)V

    .line 342
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/smartisanos/home/Launcher;->mMainView:Lcom/smartisanos/launcher/view/MainView;

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/home/Launcher;->mGLSurfaceView:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/SMGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/home/Launcher;->mGLSurfaceView:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/SMGLSurfaceView;->setRenderMode(I)V

    .line 351
    .end local v14    # "mainView":Lcom/smartisanos/launcher/view/MainView;
    .end local v18    # "r":Lcom/smartisanos/launcher/view/SMRenderer;
    :cond_3
    invoke-static {}, Lcom/smartisanos/home/net/StatusReceiver;->updateNetStatus()V

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/home/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/LauncherPreferences;->isFirstEnter(Landroid/content/Context;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/smartisanos/home/Launcher;->isFirstStartup:Z

    .line 353
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prefs_key_first_enter ==> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/smartisanos/home/Launcher;->isFirstStartup:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_4
    const/4 v11, 0x0

    .line 356
    .local v11, "enableDebug":Z
    if-eqz v11, :cond_7

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/home/Launcher;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/smartisanos/launcher/LauncherModel;->getAllAppsInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v19

    .line 358
    .local v19, "resInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v19, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 359
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "print all apps, app count ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/home/Launcher;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 361
    .local v15, "manager":Landroid/content/pm/PackageManager;
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 362
    .local v12, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v12, :cond_6

    .line 365
    iget-object v3, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 366
    .local v17, "pkgName":Ljava/lang/String;
    invoke-virtual {v12, v15}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 367
    .local v9, "appName":Ljava/lang/String;
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_6

    sget-object v3, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package name ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], app name ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 371
    .end local v9    # "appName":Ljava/lang/String;
    .end local v12    # "info":Landroid/content/pm/ResolveInfo;
    .end local v15    # "manager":Landroid/content/pm/PackageManager;
    .end local v17    # "pkgName":Ljava/lang/String;
    .end local v19    # "resInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_7
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v16, "params":Ljava/util/ArrayList;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/home/Launcher;->mContext:Landroid/app/Activity;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/home/Launcher;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    sget-object v2, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_INIT_DATA:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 376
    invoke-static {}, Lcom/smartisanos/smengine/shadow/ShadowManager;->getInstance()Lcom/smartisanos/smengine/shadow/ShadowManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/shadow/ShadowManager;->init()V

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/home/Launcher;->setDateChangeIntent()V

    .line 378
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v2, :cond_8

    const-string v2, "smartisan_theme_aero"

    .line 379
    invoke-static/range {p0 .. p0}, Lcom/smartisanos/launcher/theme/ThemeManager;->getCurrentTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v3

    iget-object v3, v3, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->sGaussianResSuffix:Ljava/lang/String;

    const-string v3, "_light"

    .line 380
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 381
    invoke-static/range {p0 .. p0}, Lcom/smartisanos/launcher/theme/ThemeManager;->getCurrentTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v2

    const-string v3, "_light"

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/data/Utils;->setStatusBarColor(Lcom/smartisanos/launcher/theme/Theme;Ljava/lang/String;)V

    .line 386
    :goto_2
    goto/16 :goto_0

    .line 383
    :cond_8
    invoke-static/range {p0 .. p0}, Lcom/smartisanos/launcher/theme/ThemeManager;->getCurrentTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Utils;->setStatusBarColor(Lcom/smartisanos/launcher/theme/Theme;)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 967
    invoke-static {}, Lcom/smartisanos/home/tracker/LauncherAgent;->flush()V

    .line 968
    sget-object v0, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    const-string v2, "onDestroy"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    iget-object v0, p0, Lcom/smartisanos/home/Launcher;->mLoadingUI:Lcom/smartisanos/launcher/widget/LoadingUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/home/Launcher;->mLoadingUI:Lcom/smartisanos/launcher/widget/LoadingUI;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/widget/LoadingUI;->destroy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/Launcher;->setLauncherWindowStatus(Z)V

    .line 972
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 973
    sget-object v0, Lcom/smartisanos/home/Launcher;->mySelf:Lcom/smartisanos/home/Launcher;

    if-ne v0, p0, :cond_1

    .line 974
    const/4 v0, 0x0

    sput-object v0, Lcom/smartisanos/home/Launcher;->mySelf:Lcom/smartisanos/home/Launcher;

    .line 976
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/home/Launcher;->rebootLauncher()V

    .line 977
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x400000

    const/4 v6, 0x1

    .line 922
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 923
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v7

    invoke-static {v7}, Lcom/smartisanos/launcher/data/Utils;->checkDefaultHome(Landroid/app/Activity;)V

    .line 924
    sget-boolean v7, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "onNewIntent"

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 925
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    .line 926
    .local v2, "mainView":Lcom/smartisanos/launcher/view/MainView;
    if-nez v2, :cond_2

    .line 927
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "onNewIntent"

    const-string v8, "mainView is null"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    :cond_1
    :goto_0
    return-void

    .line 930
    :cond_2
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    .line 931
    .local v4, "pageView":Lcom/smartisanos/launcher/view/PageView;
    if-nez v4, :cond_3

    .line 932
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "onNewIntent"

    const-string v8, "pageView is null"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 936
    :cond_3
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/AnimationController;->getHasAnimationPlaying()Z

    move-result v7

    if-ne v7, v6, :cond_4

    .line 937
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "onNewIntent"

    const-string v8, "getHasAnimationPlaying is true"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 940
    :cond_4
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getWaitingToLockPage()Lcom/smartisanos/launcher/view/Page;

    move-result-object v5

    .line 941
    .local v5, "pageWait":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getConfirmPasswordPage()Lcom/smartisanos/launcher/view/Page;

    move-result-object v3

    .line 942
    .local v3, "pageConfirm":Lcom/smartisanos/launcher/view/Page;
    if-nez v5, :cond_5

    if-eqz v3, :cond_6

    .line 943
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/smartisanos/launcher/view/PageView;->setWaitingToLockPage(Lcom/smartisanos/launcher/view/Page;)V

    .line 944
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/smartisanos/launcher/view/PageView;->setConfirmPasswordPage(Lcom/smartisanos/launcher/view/Page;)V

    .line 945
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "onNewIntent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pageWait ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "], pageConfirm ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 948
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v7

    and-int/2addr v7, v9

    if-eq v7, v9, :cond_9

    move v0, v6

    .line 950
    .local v0, "alreadyOnHome":Z
    :goto_1
    if-eqz v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/smartisanos/home/Launcher;->mLastHomeTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1f4

    cmp-long v7, v8, v10

    if-gez v7, :cond_a

    .line 951
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/smartisanos/home/Launcher;->mLastHomeTime:J

    .line 952
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_8

    sget-object v6, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "System.currentTimeMillis() - mLastHomeTime ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/smartisanos/home/Launcher;->mLastHomeTime:J

    sub-long/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    :cond_8
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "onNewIntent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "alreadyOnHome="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 948
    .end local v0    # "alreadyOnHome":Z
    :cond_9
    const/4 v0, 0x0

    goto :goto_1

    .line 956
    .restart local v0    # "alreadyOnHome":Z
    :cond_a
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v7

    invoke-static {v7}, Lcom/smartisanos/launcher/data/Utils;->isHome(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-boolean v7, Lcom/smartisanos/launcher/actions/UninstallApp;->mCancelUninstallWithoutAnimRun:Z

    if-nez v7, :cond_1

    .line 957
    sget-object v7, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "DEBUG"

    const-string v9, "createScrollToLeftEvent"

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    iput-boolean v6, p0, Lcom/smartisanos/home/Launcher;->isHomeKeyScrollToLeft:Z

    .line 959
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v6

    iget-object v7, p0, Lcom/smartisanos/home/Launcher;->mReleaseEvent:Lcom/smartisanos/smengine/Event;

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/EventManager;->removeEvent(Lcom/smartisanos/smengine/Event;)V

    .line 960
    invoke-direct {p0}, Lcom/smartisanos/home/Launcher;->createScrollToLeftEvent()Lcom/smartisanos/smengine/Event;

    move-result-object v1

    .line 961
    .local v1, "event":Lcom/smartisanos/smengine/Event;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/Event;->send(F)V

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 626
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 630
    iput-boolean v2, p0, Lcom/smartisanos/home/Launcher;->isResumed:Z

    .line 633
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "### onPause ####"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/home/Launcher;->mMainView:Lcom/smartisanos/launcher/view/MainView;

    if-eqz v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/smartisanos/home/Launcher;->mMainView:Lcom/smartisanos/launcher/view/MainView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->forceFinishDismissAnimation()V

    .line 638
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/home/Launcher;->removeEmergencyUnlockEvent()V

    .line 640
    iget-object v0, p0, Lcom/smartisanos/home/Launcher;->mEditPageTitleDialog:Lcom/smartisanos/launcher/view/EditTitleDialog;

    if-eqz v0, :cond_2

    .line 641
    iget-object v0, p0, Lcom/smartisanos/home/Launcher;->mEditPageTitleDialog:Lcom/smartisanos/launcher/view/EditTitleDialog;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/EditTitleDialog;->dismiss()V

    .line 643
    :cond_2
    sget-object v0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->MULTI_UNINSTALL_PREVIEW_DIALOG:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    .line 644
    sget-object v0, Lcom/smartisanos/launcher/actions/MultiUninstallDialog;->MULTI_UNINSTALL_PREVIEW_DIALOG:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 646
    :cond_3
    sput-boolean v2, Lcom/smartisanos/launcher/actions/UninstallApp;->mCancelUninstallWithoutAnimRun:Z

    .line 647
    invoke-static {}, Lcom/smartisanos/launcher/actions/UninstallApp;->cancelUninstallWithoutAnim()V

    .line 648
    invoke-direct {p0}, Lcom/smartisanos/home/Launcher;->pauseActiveIcons()V

    .line 650
    iget-object v0, p0, Lcom/smartisanos/home/Launcher;->mReleaseEvent:Lcom/smartisanos/smengine/Event;

    const v1, 0x3ca3d70a    # 0.02f

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Event;->send(F)V

    .line 651
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/home/Launcher;->mPaused:Z

    .line 653
    return-void
.end method

.method protected onResume()V
    .locals 12

    .prologue
    const/16 v11, 0x2000

    const/4 v10, 0x1

    const/16 v9, 0x64

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 447
    sput-boolean v7, Lcom/smartisanos/launcher/actions/UninstallApp;->mCancelUninstallWithoutAnimRun:Z

    .line 448
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 452
    iput-boolean v10, p0, Lcom/smartisanos/home/Launcher;->isResumed:Z

    .line 455
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "#### onResume #####"

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 462
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/data/DBHelper;->initAppSearchInfo()V

    .line 463
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Utils;->requestSyncWeatherData(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/smartisanos/home/Launcher;->refreshPendingIconAppearance()V

    .line 465
    iget-object v3, p0, Lcom/smartisanos/home/Launcher;->mEditPageTitleDialog:Lcom/smartisanos/launcher/view/EditTitleDialog;

    if-eqz v3, :cond_1

    .line 466
    iget-object v3, p0, Lcom/smartisanos/home/Launcher;->mEditPageTitleDialog:Lcom/smartisanos/launcher/view/EditTitleDialog;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/EditTitleDialog;->dismiss()V

    .line 469
    :cond_1
    iget-boolean v3, p0, Lcom/smartisanos/home/Launcher;->handHabitChanged:Z

    if-eqz v3, :cond_2

    .line 470
    iput-boolean v7, p0, Lcom/smartisanos/home/Launcher;->handHabitChanged:Z

    .line 471
    new-instance v3, Lcom/smartisanos/home/Launcher$2;

    invoke-direct {v3, p0, v9}, Lcom/smartisanos/home/Launcher$2;-><init>(Lcom/smartisanos/home/Launcher;I)V

    .line 479
    invoke-virtual {v3, v8}, Lcom/smartisanos/home/Launcher$2;->send(F)V

    .line 482
    :cond_2
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mHasStartSetupWizard ==> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/smartisanos/home/Launcher;->mHasStartSetupWizard:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 483
    :cond_3
    iget-boolean v3, p0, Lcom/smartisanos/home/Launcher;->mHasStartSetupWizard:Z

    if-eqz v3, :cond_12

    .line 484
    iput-boolean v7, p0, Lcom/smartisanos/home/Launcher;->mHasStartSetupWizard:Z

    .line 485
    new-instance v3, Lcom/smartisanos/home/Launcher$3;

    invoke-direct {v3, p0, v9}, Lcom/smartisanos/home/Launcher$3;-><init>(Lcom/smartisanos/home/Launcher;I)V

    .line 496
    invoke-virtual {v3, v8}, Lcom/smartisanos/home/Launcher$3;->send(F)V

    .line 502
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->shouldDoChangeThemeAnim()Z

    move-result v2

    .line 503
    .local v2, "shouldDoChangeThemeAnim":Z
    invoke-static {}, Lcom/smartisanos/launcher/LauncherModel;->isDirtyMode()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v2, :cond_13

    .line 504
    :cond_4
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_5

    sget-object v3, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDirtyMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/smartisanos/launcher/LauncherModel;->isDirtyMode()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", shouldDoChangeThemeAnim = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :cond_5
    new-instance v1, Lcom/smartisanos/home/Launcher$4;

    invoke-direct {v1, p0, v9, v2}, Lcom/smartisanos/home/Launcher$4;-><init>(Lcom/smartisanos/home/Launcher;IZ)V

    .line 535
    .local v1, "dirtyModeEvent":Lcom/smartisanos/smengine/Event;
    const-string v3, "dirtyModeEvent"

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/Event;->setName(Ljava/lang/String;)V

    .line 536
    const/4 v0, 0x0

    .line 537
    .local v0, "delay":F
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 538
    const/high16 v0, 0x3f800000    # 1.0f

    .line 540
    :cond_6
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/Event;->send(F)V

    .line 558
    .end local v0    # "delay":F
    .end local v1    # "dirtyModeEvent":Lcom/smartisanos/smengine/Event;
    :cond_7
    :goto_1
    iget-object v3, p0, Lcom/smartisanos/home/Launcher;->mMainView:Lcom/smartisanos/launcher/view/MainView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->onResume()V

    .line 559
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->isEnableDownload()Z

    move-result v3

    if-eqz v3, :cond_update_skip

    .line 560
    invoke-static {p0, v7}, Lcom/smartisanos/launcher/data/Utils;->checkUpdate(Landroid/app/Activity;Z)V

    .line 559
    :cond_update_skip
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LAUNCH_FLIP_ANIMATION:Z

    if-eqz v3, :cond_resume_active_icons

    .line 561
    invoke-direct {p0}, Lcom/smartisanos/home/Launcher;->delayResumeActiveIcons()V

    .line 567
    :goto_2
    if-eqz v2, :cond_color_theme_resume

    .line 568
    iget-object v3, p0, Lcom/smartisanos/home/Launcher;->mMainView:Lcom/smartisanos/launcher/view/MainView;

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->isChangeThemeAnimating()Z

    move-result v3

    if-nez v3, :cond_8

    .line 569
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->setChangeThemeAnimStart()V

    .line 570
    iget-object v3, p0, Lcom/smartisanos/home/Launcher;->mContext:Landroid/app/Activity;

    invoke-static {v3}, Lcom/smartisanos/launcher/theme/ThemeManager;->getCurrentTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v3

    sget v4, Lcom/smartisanos/launcher/ResIds$string;->theme_changing:I

    invoke-virtual {p0, v4}, Lcom/smartisanos/home/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/smartisanos/home/Launcher;->changeTheme(Lcom/smartisanos/launcher/theme/Theme;Ljava/lang/String;)V

    .line 578
    :cond_8
    :goto_3
    sget-boolean v3, Lcom/smartisanos/launcher/ApplicationProxy;->localeChanged:Z

    if-eqz v3, :cond_9

    .line 579
    invoke-direct {p0, p0}, Lcom/smartisanos/home/Launcher;->languageChanged(Landroid/content/Context;)V

    .line 581
    :cond_9
    iget-object v3, p0, Lcom/smartisanos/home/Launcher;->mReleaseEvent:Lcom/smartisanos/smengine/Event;

    if-eqz v3, :cond_a

    .line 582
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/home/Launcher;->mReleaseEvent:Lcom/smartisanos/smengine/Event;

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/EventManager;->removeEvent(Lcom/smartisanos/smengine/Event;)V

    .line 584
    :cond_a
    if-nez v2, :cond_b

    iget-boolean v3, p0, Lcom/smartisanos/home/Launcher;->isHomeKeyScrollToLeft:Z

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/smartisanos/home/Launcher;->mMainView:Lcom/smartisanos/launcher/view/MainView;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/smartisanos/home/Launcher;->mMainView:Lcom/smartisanos/launcher/view/MainView;

    .line 585
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/smartisanos/home/Launcher;->mMainView:Lcom/smartisanos/launcher/view/MainView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getPageInitFinishStatus()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 586
    new-instance v3, Lcom/smartisanos/home/Launcher$6;

    invoke-direct {v3, p0, v9}, Lcom/smartisanos/home/Launcher$6;-><init>(Lcom/smartisanos/home/Launcher;I)V

    .line 591
    invoke-virtual {v3, v8}, Lcom/smartisanos/home/Launcher$6;->send(F)V

    .line 593
    :cond_b
    iput-boolean v7, p0, Lcom/smartisanos/home/Launcher;->isHomeKeyScrollToLeft:Z

    .line 594
    iput-boolean v7, p0, Lcom/smartisanos/home/Launcher;->mPaused:Z

    .line 596
    if-nez v2, :cond_c

    .line 597
    invoke-virtual {p0, v10}, Lcom/smartisanos/home/Launcher;->restoreAnimationScale(I)V

    .line 598
    invoke-virtual {p0, v7}, Lcom/smartisanos/home/Launcher;->restoreAnimationScale(I)V

    .line 600
    :cond_c
    iget-object v3, p0, Lcom/smartisanos/home/Launcher;->mMainView:Lcom/smartisanos/launcher/view/MainView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getPageInitFinishStatus()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 601
    invoke-static {}, Lcom/smartisanos/launcher/LauncherTracker;->getInstance()Lcom/smartisanos/launcher/LauncherTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/LauncherTracker;->flushAllStatus()V

    .line 603
    :cond_d
    iget-object v3, p0, Lcom/smartisanos/home/Launcher;->flipAnimEvent:Lcom/smartisanos/smengine/Event;

    if-eqz v3, :cond_f

    .line 604
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_e

    sget-object v3, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "### launcher resume send flip event."

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 605
    :cond_e
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v3, :cond_16

    .line 606
    iget-object v3, p0, Lcom/smartisanos/home/Launcher;->flipAnimEvent:Lcom/smartisanos/smengine/Event;

    const v4, 0x3d4ccccd    # 0.05f

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/Event;->send(F)V

    .line 610
    :goto_4
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/smartisanos/home/Launcher;->flipAnimEvent:Lcom/smartisanos/smengine/Event;

    .line 613
    :cond_f
    sget-boolean v3, Lcom/smartisanos/launcher/actions/HandlePushedMsg;->needShowDialog:Z

    if-eqz v3, :cond_10

    .line 614
    invoke-static {}, Lcom/smartisanos/launcher/actions/HandlePushedMsg;->showDialog()V

    .line 617
    :cond_10
    invoke-direct {p0}, Lcom/smartisanos/home/Launcher;->setLauncherFinishPowerOff()V

    .line 618
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_11

    sget-object v3, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "#### onResume Done #####"

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 620
    :cond_11
    invoke-direct {p0}, Lcom/smartisanos/home/Launcher;->resetStatusBarColor()V

    .line 621
    return-void

    .line 498
    .end local v2    # "shouldDoChangeThemeAnim":Z
    :cond_12
    invoke-direct {p0}, Lcom/smartisanos/home/Launcher;->postEmergencyUnlockEvent()V

    goto/16 :goto_0

    .line 542
    .restart local v2    # "shouldDoChangeThemeAnim":Z
    :cond_13
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 543
    new-instance v3, Lcom/smartisanos/home/Launcher$5;

    invoke-direct {v3, p0, v9}, Lcom/smartisanos/home/Launcher$5;-><init>(Lcom/smartisanos/home/Launcher;I)V

    .line 555
    invoke-virtual {v3, v8}, Lcom/smartisanos/home/Launcher$5;->send(F)V

    goto/16 :goto_1

    .line 562
    :cond_resume_active_icons
    invoke-direct {p0}, Lcom/smartisanos/home/Launcher;->resumeActiveIcons()V

    goto/16 :goto_2

    .line 572
    :cond_color_theme_resume
    sget-object v3, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->changeThemeMessage:Landroid/os/Message;

    if-eqz v3, :cond_8

    .line 573
    sget-object v3, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    const-string v5, "changeThemeMessage begin from onResume "

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/smartisanos/launcher/actions/ColorThemeChanged;->changeThemeMessage:Landroid/os/Message;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 608
    :cond_16
    iget-object v3, p0, Lcom/smartisanos/home/Launcher;->flipAnimEvent:Lcom/smartisanos/smengine/Event;

    invoke-virtual {v3, v8}, Lcom/smartisanos/smengine/Event;->send(F)V

    goto :goto_4
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 437
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "### onStop ###"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 438
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 439
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    .line 658
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 659
    iput-boolean p1, p0, Lcom/smartisanos/home/Launcher;->mHasFocus:Z

    .line 660
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/smartisanos/home/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/data/Utils;->applyLauncherImmersiveWindow(Landroid/content/Context;Landroid/view/Window;)V

    .line 661
    :cond_0
    if-nez p1, :cond_1

    .line 662
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getInputManager()Lcom/smartisanos/smengine/InputManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/InputManager;->forceCancelMotionEvent()Z

    .line 663
    new-instance v0, Lcom/smartisanos/home/Launcher$7;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/home/Launcher$7;-><init>(Lcom/smartisanos/home/Launcher;I)V

    const/4 v1, 0x0

    .line 668
    invoke-virtual {v0, v1}, Lcom/smartisanos/home/Launcher$7;->send(F)V

    .line 670
    :cond_1
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWindowFocusChanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    :cond_2
    if-nez p1, :cond_3

    iget-boolean v0, p0, Lcom/smartisanos/home/Launcher;->mPaused:Z

    if-eqz v0, :cond_3

    .line 672
    iget-object v0, p0, Lcom/smartisanos/home/Launcher;->mMainView:Lcom/smartisanos/launcher/view/MainView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->onPause()V

    .line 674
    :cond_3
    return-void
.end method

.method public removeEmergencyUnlockEvent()V
    .locals 2

    .prologue
    .line 861
    iget-object v0, p0, Lcom/smartisanos/home/Launcher;->mEmergencyUnlockEvent:Lcom/smartisanos/smengine/Event;

    if-eqz v0, :cond_0

    .line 862
    sget-object v0, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "######## remove emergency unlcok"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 863
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/home/Launcher;->mEmergencyUnlockEvent:Lcom/smartisanos/smengine/Event;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/EventManager;->removeEvent(Lcom/smartisanos/smengine/Event;)V

    .line 864
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/home/Launcher;->mEmergencyUnlockEvent:Lcom/smartisanos/smengine/Event;

    .line 866
    :cond_0
    return-void
.end method

.method public restoreAnimationScale(I)V
    .locals 5
    .param p1, "witch"    # I

    .prologue
    const/4 v3, 0x1

    const/high16 v4, -0x40800000    # -1.0f

    .line 1563
    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_1

    .line 1585
    :cond_0
    :goto_0
    return-void

    .line 1567
    :cond_1
    const-string v2, "WINDOW_ANIM_SCALE"

    .line 1568
    .local v2, "wi":Ljava/lang/String;
    if-ne p1, v3, :cond_2

    .line 1569
    const-string v2, "TRANSITION_ANIM_SCALE"

    .line 1571
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getInstance()Lcom/smartisanos/launcher/data/LauncherPreferences;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getAnimationScale(Landroid/content/Context;I)F

    move-result v1

    .line 1572
    .local v1, "scale":F
    cmpl-float v3, v1, v4

    if-eqz v3, :cond_0

    .line 1575
    :try_start_0
    invoke-static {p1, v1}, Lcom/smartisanos/launcher/InvisibleApi;->setAnimationScale(IF)V

    .line 1578
    invoke-static {}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getInstance()Lcom/smartisanos/launcher/data/LauncherPreferences;

    move-result-object v3

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v3, p0, p1, v4}, Lcom/smartisanos/launcher/data/LauncherPreferences;->setAnimationScale(Landroid/content/Context;IF)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1579
    :catch_0
    move-exception v0

    .line 1580
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 1581
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 1582
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public sessionUnlockAllPackage()V
    .locals 3

    .prologue
    .line 748
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "sessionUnlockAllPackage !!!"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 749
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/home/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 750
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_1

    .line 751
    invoke-static {v0}, Lcom/smartisanos/launcher/InvisibleApi;->sessionUnlockAllPackages(Landroid/content/pm/PackageManager;)V

    .line 753
    :cond_1
    return-void
.end method

.method public sessionUnlockPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 738
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/home/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 742
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 743
    invoke-static {v0, p1}, Lcom/smartisanos/launcher/InvisibleApi;->sessionUnlockPackageLPw(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDateChangeIntent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1463
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    .line 1464
    sget-object v2, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "DEBUG"

    const-string v4, "setDateChangeIntent"

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v1

    .line 1467
    .local v1, "context":Landroid/content/Context;
    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1468
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    if-eqz v0, :cond_3

    .line 1470
    :try_start_0
    iget-object v2, p0, Lcom/smartisanos/home/Launcher;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    .line 1471
    iget-object v2, p0, Lcom/smartisanos/home/Launcher;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    .line 1472
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/smartisanos/home/Launcher;->mPendingIntent:Landroid/app/PendingIntent;

    .line 1474
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/home/Launcher;->mDateChangeIntent:Landroid/content/Intent;

    if-nez v2, :cond_2

    .line 1475
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/smartisanos/home/Launcher;->mDateChangeIntent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1478
    :cond_2
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "smartisan.intent.action.update_calendar_date"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/smartisanos/home/Launcher;->mDateChangeIntent:Landroid/content/Intent;

    .line 1479
    iget-object v2, p0, Lcom/smartisanos/home/Launcher;->mDateChangeIntent:Landroid/content/Intent;

    const-string v3, "ttt"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1480
    iget-object v2, p0, Lcom/smartisanos/home/Launcher;->mDateChangeIntent:Landroid/content/Intent;

    const/high16 v3, 0x8000000

    invoke-static {v1, v5, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/home/Launcher;->mPendingIntent:Landroid/app/PendingIntent;

    .line 1481
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->getNextDayTriggerTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/smartisanos/home/Launcher;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1483
    :cond_3
    return-void

    .line 1477
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public declared-synchronized setDbThreadId(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/smartisanos/home/Launcher;->DB_THREAD_ID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGlThreadId(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/smartisanos/home/Launcher;->GL_THREAD_ID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLatestOpenCell(Lcom/smartisanos/launcher/view/Cell;)V
    .locals 0
    .param p1, "cell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/smartisanos/home/Launcher;->lastLaunchApp:Lcom/smartisanos/launcher/view/Cell;

    .line 1100
    return-void
.end method

.method public setLauncherWillPreparePowerOff()V
    .locals 2

    .prologue
    .line 1588
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "#### setLauncherWillPreparePowerOff"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 1589
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/home/Launcher;->mLauncherIsPreparingPowerOff:Z

    .line 1590
    return-void
.end method

.method public setLauncherWindowStatus(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 420
    iget-object v0, p0, Lcom/smartisanos/home/Launcher;->mGLSurfaceView:Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    new-instance v1, Lcom/smartisanos/home/Launcher$1;

    invoke-direct {v1, p0, p1}, Lcom/smartisanos/home/Launcher$1;-><init>(Lcom/smartisanos/home/Launcher;Z)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/SMGLSurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 434
    return-void
.end method

.method public declared-synchronized setMainThreadId(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/smartisanos/home/Launcher;->MAIN_THREAD_ID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPackageLockStatus(ZLjava/lang/String;)V
    .locals 4
    .param p1, "isLock"    # Z
    .param p2, "packageNames"    # Ljava/lang/String;

    .prologue
    .line 776
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v1

    if-nez v1, :cond_0

    .line 777
    sget-object v1, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "setPackageLockStatus nothing to do, Launcher Activity is not initialize"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 788
    :goto_0
    return-void

    .line 780
    :cond_0
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/home/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 781
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz p1, :cond_2

    .line 782
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockPackage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 783
    :cond_1
    invoke-static {v0, p2}, Lcom/smartisanos/launcher/InvisibleApi;->lockPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    goto :goto_0

    .line 785
    :cond_2
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unlockPackage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 786
    :cond_3
    invoke-static {v0, p2}, Lcom/smartisanos/launcher/InvisibleApi;->unlockPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPackageLockStatus(ZLjava/util/List;)V
    .locals 5
    .param p1, "isLock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 756
    .local p2, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 760
    .local v3, "size":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 761
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 762
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 763
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 764
    add-int/lit8 v4, v3, -0x1

    if-eq v1, v4, :cond_2

    .line 765
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 761
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 768
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lcom/smartisanos/home/Launcher;->setPackageLockStatus(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public setPauseEventStatus(Z)V
    .locals 3
    .param p1, "status"    # Z

    .prologue
    .line 137
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPauseEventStatus set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 138
    :cond_0
    iput-boolean p1, p0, Lcom/smartisanos/home/Launcher;->needPauseEventByScreenOff:Z

    .line 139
    iget-boolean v0, p0, Lcom/smartisanos/home/Launcher;->needPauseEventByScreenOff:Z

    if-nez v0, :cond_2

    .line 140
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->GL:Lcom/smartisanos/home/Launcher$RUNNING_ENV;

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/Launcher;->verifyThread(Lcom/smartisanos/home/Launcher$RUNNING_ENV;)V

    .line 141
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "setPauseEventStatus handleTaskList !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 142
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->handleTaskList()V

    .line 144
    :cond_2
    return-void
.end method

.method public setSetupWizardToDefaultHome()V
    .locals 13

    .prologue
    .line 1246
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1247
    .local v3, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/smartisanos/home/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1248
    .local v8, "pm":Landroid/content/pm/PackageManager;
    invoke-static {v8, v3}, Lcom/smartisanos/launcher/InvisibleApi;->getHomeActivities(Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)V

    .line 1250
    const/4 v2, -0x1

    .line 1251
    .local v2, "filterIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_0

    .line 1252
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 1253
    .local v9, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1254
    .local v7, "info":Landroid/content/pm/ActivityInfo;
    const-string v11, "com.android.provision"

    iget-object v12, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1255
    move v2, v6

    .line 1260
    .end local v7    # "info":Landroid/content/pm/ActivityInfo;
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    const/4 v11, -0x1

    if-eq v2, v11, :cond_1

    .line 1261
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1264
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v4, v11, [Landroid/content/ComponentName;

    .line 1265
    .local v4, "homeComponentSet":[Landroid/content/ComponentName;
    new-instance v5, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v5, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1266
    .local v5, "homeFilter":Landroid/content/IntentFilter;
    const-string v11, "android.intent.category.HOME"

    invoke-virtual {v5, v11}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1267
    const-string v11, "android.intent.category.DEFAULT"

    invoke-virtual {v5, v11}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1268
    const/4 v10, 0x0

    .line 1270
    .local v10, "setupWizardHomeName":Landroid/content/ComponentName;
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_4

    .line 1271
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1272
    .local v1, "candidate":Landroid/content/pm/ResolveInfo;
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1273
    .restart local v7    # "info":Landroid/content/pm/ActivityInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    .local v0, "activityName":Landroid/content/ComponentName;
    aput-object v0, v4, v6

    .line 1275
    sget-object v11, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->WIZARD:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    iget-object v11, v11, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    iget-object v12, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1276
    move-object v10, v0

    .line 1270
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1251
    .end local v0    # "activityName":Landroid/content/ComponentName;
    .end local v1    # "candidate":Landroid/content/pm/ResolveInfo;
    .end local v4    # "homeComponentSet":[Landroid/content/ComponentName;
    .end local v5    # "homeFilter":Landroid/content/IntentFilter;
    .end local v10    # "setupWizardHomeName":Landroid/content/ComponentName;
    .restart local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1280
    .end local v7    # "info":Landroid/content/pm/ActivityInfo;
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "homeComponentSet":[Landroid/content/ComponentName;
    .restart local v5    # "homeFilter":Landroid/content/IntentFilter;
    .restart local v10    # "setupWizardHomeName":Landroid/content/ComponentName;
    :cond_4
    if-eqz v10, :cond_5

    .line 1281
    const/high16 v11, 0x100000

    invoke-virtual {v8, v5, v11, v4, v10}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1284
    :cond_5
    return-void
.end method

.method public showDialog(ZLjava/lang/String;)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/smartisanos/home/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/smartisanos/home/Launcher$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/smartisanos/home/Launcher$17;-><init>(Lcom/smartisanos/home/Launcher;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1438
    return-void
.end method

.method public showDialogDelayed(ZLjava/lang/String;J)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "info"    # Ljava/lang/String;
    .param p3, "time"    # J

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/smartisanos/home/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/smartisanos/home/Launcher$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/smartisanos/home/Launcher$18;-><init>(Lcom/smartisanos/home/Launcher;ZLjava/lang/String;)V

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1447
    return-void
.end method

.method public showDialogWithoutPostThread(ZLjava/lang/String;)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 1450
    if-eqz p1, :cond_1

    .line 1451
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "A140"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Show dialog ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/home/Launcher;->mLoadingUI:Lcom/smartisanos/launcher/widget/LoadingUI;

    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/smartisanos/launcher/widget/LoadingUI;->create(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1453
    iget-object v0, p0, Lcom/smartisanos/home/Launcher;->mLoadingUI:Lcom/smartisanos/launcher/widget/LoadingUI;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/widget/LoadingUI;->show()V

    .line 1458
    :goto_0
    return-void

    .line 1455
    :cond_1
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "A140"

    const-string v2, "Dismiss dialog by showDialog(false)"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/home/Launcher;->mLoadingUI:Lcom/smartisanos/launcher/widget/LoadingUI;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/widget/LoadingUI;->dismiss()Z

    goto :goto_0
.end method

.method public showEditPageTitleDialog(Lcom/smartisanos/launcher/view/Page;)V
    .locals 2
    .param p1, "page"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 797
    iget-object v0, p0, Lcom/smartisanos/home/Launcher;->mEditPageTitleDialog:Lcom/smartisanos/launcher/view/EditTitleDialog;

    if-nez v0, :cond_0

    .line 798
    new-instance v0, Lcom/smartisanos/launcher/view/EditTitleDialog;

    iget-object v1, p0, Lcom/smartisanos/home/Launcher;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/EditTitleDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisanos/home/Launcher;->mEditPageTitleDialog:Lcom/smartisanos/launcher/view/EditTitleDialog;

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/home/Launcher;->mEditPageTitleDialog:Lcom/smartisanos/launcher/view/EditTitleDialog;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/EditTitleDialog;->show(Lcom/smartisanos/launcher/view/Page;)V

    .line 801
    return-void
.end method

.method public verifyThread(Lcom/smartisanos/home/Launcher$RUNNING_ENV;)V
    .locals 4
    .param p1, "env"    # Lcom/smartisanos/home/Launcher$RUNNING_ENV;

    .prologue
    .line 212
    if-nez p1, :cond_0

    .line 213
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "verifyThread parameter env is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_0
    sget-object v1, Lcom/smartisanos/home/Launcher$23;->$SwitchMap$com$smartisanos$home$Launcher$RUNNING_ENV:[I

    invoke-virtual {p1}, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 254
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyThread unknown env name ! ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :pswitch_0
    iget v1, p0, Lcom/smartisanos/home/Launcher;->GL_THREAD_ID:I

    if-nez v1, :cond_2

    .line 219
    sget-object v1, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "GL_THREAD_ID is 0, GL thread is not startup !"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_1
    :goto_0
    return-void

    .line 222
    :cond_2
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 223
    .local v0, "tid":I
    iget v1, p0, Lcom/smartisanos/home/Launcher;->GL_THREAD_ID:I

    if-eq v0, v1, :cond_1

    .line 224
    invoke-static {}, Lcom/smartisanos/home/Launcher;->debugTheadId()V

    .line 225
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current env is not GL thread, GL ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/home/Launcher;->GL_THREAD_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], tid ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    .end local v0    # "tid":I
    :pswitch_1
    sget-object v1, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "DB_THREAD_ID is 0, DB thread is not startup !"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 233
    .restart local v0    # "tid":I
    iget v1, p0, Lcom/smartisanos/home/Launcher;->DB_THREAD_ID:I

    if-eq v0, v1, :cond_1

    .line 234
    invoke-static {}, Lcom/smartisanos/home/Launcher;->debugTheadId()V

    .line 235
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current env is not DB thread, DB ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/home/Launcher;->DB_THREAD_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], tid ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    .end local v0    # "tid":I
    :pswitch_2
    iget v1, p0, Lcom/smartisanos/home/Launcher;->MAIN_THREAD_ID:I

    if-nez v1, :cond_3

    .line 242
    sget-object v1, Lcom/smartisanos/home/Launcher;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "MAIN_THREAD_ID is 0, Main thread is not startup !"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 245
    :cond_3
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 246
    .restart local v0    # "tid":I
    iget v1, p0, Lcom/smartisanos/home/Launcher;->MAIN_THREAD_ID:I

    if-eq v0, v1, :cond_1

    .line 247
    invoke-static {}, Lcom/smartisanos/home/Launcher;->debugTheadId()V

    .line 248
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current env is not main UI thread. tid ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
