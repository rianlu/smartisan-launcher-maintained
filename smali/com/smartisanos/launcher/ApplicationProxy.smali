.class public Lcom/smartisanos/launcher/ApplicationProxy;
.super Ljava/lang/Object;
.source "ApplicationProxy.java"


# static fields
.field public static final ACTION_ACTIVITY_RESUMED:Ljava/lang/String; = "android.intent.action.ACTIVITY_RESUMED"

.field public static final ACTION_KEYGUARD_ON:Ljava/lang/String; = "action_keyguard_on"

.field public static final ACTION_KEYGUARD_TO_DISMISS:Ljava/lang/String; = "action_keyguard_to_dismiss"

.field public static final EXTRA_ACTIVITY_NAME:Ljava/lang/String; = "android.intent.extra.activiti_name"

.field public static volatile PROC_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ApplicationProxy"

.field private static final TYPE_GLOBAL:Ljava/lang/String; = "Global"

.field private static final TYPE_SYSTEM:Ljava/lang/String; = "System"

.field public static intentBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile localeChanged:Z

.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static modelInitDone:Z

.field private static final setting_base_uri:Landroid/net/Uri;


# instance fields
.field private final MESSAGE_LOAD_COMPLETE:I

.field private application:Landroid/app/Application;

.field private mActivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBadgeObserver:Landroid/database/ContentObserver;

.field private mDateChangeIntent:Landroid/content/Intent;

.field private final mDateTimeReceiver:Landroid/content/BroadcastReceiver;

.field mH:Landroid/os/Handler;

.field private mHandHabitObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mIsLoading:Z

.field private mLabelObserver:Landroid/database/ContentObserver;

.field private final mLockScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mLockscreenWallpaperObserver:Landroid/database/ContentObserver;

.field public mNewMessageReceiver:Landroid/content/BroadcastReceiver;

.field private mObsBaseMode:Landroid/database/ContentObserver;

.field private mObsCmpMode:Landroid/database/ContentObserver;

.field private mObsEnableCellular:Landroid/database/ContentObserver;

.field private mObsEnableSyncIcon:Landroid/database/ContentObserver;

.field private mObsFlipAnim:Landroid/database/ContentObserver;

.field private mObsOpenApp:Landroid/database/ContentObserver;

.field private mObsScrollAnim:Landroid/database/ContentObserver;

.field private mObsSwitchAnim:Landroid/database/ContentObserver;

.field private mObsUnlockAnim:Landroid/database/ContentObserver;

.field private mObsUseFingerPrint:Landroid/database/ContentObserver;

.field private mObsVoiceAssit:Landroid/database/ContentObserver;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mSweepObserver:Landroid/database/ContentObserver;

.field private mTemperatureTypeObserver:Landroid/database/ContentObserver;

.field private final mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

.field private messageBuffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private packageIntentReceiver:Lcom/smartisanos/launcher/receiver/LauncherReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    const-class v0, Lcom/smartisanos/launcher/ApplicationProxy;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/ApplicationProxy;->log:Lcom/smartisanos/launcher/LOG;

    .line 67
    sput v1, Lcom/smartisanos/launcher/ApplicationProxy;->PROC_ID:I

    .line 69
    sput-boolean v1, Lcom/smartisanos/launcher/ApplicationProxy;->localeChanged:Z

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/ApplicationProxy;->intentBuffer:Ljava/util/ArrayList;

    .line 72
    sput-boolean v1, Lcom/smartisanos/launcher/ApplicationProxy;->modelInitDone:Z

    .line 914
    const-string v0, "content://com.smartisanos.home.settings/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/ApplicationProxy;->setting_base_uri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 2
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->application:Landroid/app/Application;

    .line 183
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mH:Landroid/os/Handler;

    .line 254
    iput v1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->MESSAGE_LOAD_COMPLETE:I

    .line 255
    iput-boolean v1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mIsLoading:Z

    .line 257
    new-instance v0, Lcom/smartisanos/launcher/ApplicationProxy$2;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/ApplicationProxy$2;-><init>(Lcom/smartisanos/launcher/ApplicationProxy;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mHandler:Landroid/os/Handler;

    .line 421
    new-instance v0, Lcom/smartisanos/launcher/receiver/LauncherReceiver;

    invoke-direct {v0}, Lcom/smartisanos/launcher/receiver/LauncherReceiver;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->packageIntentReceiver:Lcom/smartisanos/launcher/receiver/LauncherReceiver;

    .line 475
    new-instance v0, Lcom/smartisanos/launcher/ApplicationProxy$8;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/ApplicationProxy$8;-><init>(Lcom/smartisanos/launcher/ApplicationProxy;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mActivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 497
    new-instance v0, Lcom/smartisanos/launcher/ApplicationProxy$9;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/ApplicationProxy$9;-><init>(Lcom/smartisanos/launcher/ApplicationProxy;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mLockScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 576
    new-instance v0, Lcom/smartisanos/launcher/ApplicationProxy$10;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/ApplicationProxy$10;-><init>(Lcom/smartisanos/launcher/ApplicationProxy;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 610
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->messageBuffer:Ljava/util/List;

    .line 628
    new-instance v0, Lcom/smartisanos/launcher/ApplicationProxy$11;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/ApplicationProxy$11;-><init>(Lcom/smartisanos/launcher/ApplicationProxy;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mNewMessageReceiver:Landroid/content/BroadcastReceiver;

    .line 649
    new-instance v0, Lcom/smartisanos/launcher/ApplicationProxy$12;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/ApplicationProxy$12;-><init>(Lcom/smartisanos/launcher/ApplicationProxy;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mDateTimeReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    iput-object p1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->application:Landroid/app/Application;

    .line 77
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/smartisanos/launcher/ApplicationProxy;->modelInitDone:Z

    return v0
.end method

.method static synthetic access$102(Lcom/smartisanos/launcher/ApplicationProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/ApplicationProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$200()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/smartisanos/launcher/ApplicationProxy;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$300(Lcom/smartisanos/launcher/ApplicationProxy;)Landroid/app/Application;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/ApplicationProxy;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->application:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic access$400(Lcom/smartisanos/launcher/ApplicationProxy;)Lcom/smartisanos/smengine/Event;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/ApplicationProxy;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/smartisanos/launcher/ApplicationProxy;->createPreparePowerOffEvent()Lcom/smartisanos/smengine/Event;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/smartisanos/launcher/ApplicationProxy;)Lcom/smartisanos/smengine/Event;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/ApplicationProxy;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/smartisanos/launcher/ApplicationProxy;->createClearPasswordEvent()Lcom/smartisanos/smengine/Event;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/smartisanos/launcher/ApplicationProxy;)Lcom/smartisanos/smengine/Event;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/ApplicationProxy;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/smartisanos/launcher/ApplicationProxy;->createUnlockAnimationEvent()Lcom/smartisanos/smengine/Event;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/smartisanos/launcher/ApplicationProxy;)Lcom/smartisanos/smengine/Event;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/ApplicationProxy;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/smartisanos/launcher/ApplicationProxy;->createForceFinishUnlockAnimationEvent()Lcom/smartisanos/smengine/Event;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/smartisanos/launcher/ApplicationProxy;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/ApplicationProxy;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->messageBuffer:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/smartisanos/launcher/ApplicationProxy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/ApplicationProxy;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createAndRegisterObserver(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;
    .locals 5
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 185
    new-instance v1, Lcom/smartisanos/launcher/ApplicationProxy$1;

    iget-object v3, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mH:Landroid/os/Handler;

    invoke-direct {v1, p0, v3, p1}, Lcom/smartisanos/launcher/ApplicationProxy$1;-><init>(Lcom/smartisanos/launcher/ApplicationProxy;Landroid/os/Handler;Ljava/lang/String;)V

    .line 195
    .local v1, "obs":Landroid/database/ContentObserver;
    :try_start_0
    invoke-static {p1}, Lcom/smartisanos/launcher/ApplicationProxy;->getUriByName(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 196
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/smartisanos/launcher/ApplicationProxy;->application:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private createClearPasswordEvent()Lcom/smartisanos/smengine/Event;
    .locals 2

    .prologue
    .line 410
    new-instance v0, Lcom/smartisanos/launcher/ApplicationProxy$7;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/ApplicationProxy$7;-><init>(Lcom/smartisanos/launcher/ApplicationProxy;I)V

    .line 417
    .local v0, "e":Lcom/smartisanos/smengine/Event;
    return-object v0
.end method

.method private createForceFinishUnlockAnimationEvent()Lcom/smartisanos/smengine/Event;
    .locals 2

    .prologue
    .line 360
    new-instance v0, Lcom/smartisanos/launcher/ApplicationProxy$4;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/ApplicationProxy$4;-><init>(Lcom/smartisanos/launcher/ApplicationProxy;I)V

    .line 374
    .local v0, "event":Lcom/smartisanos/smengine/Event;
    return-object v0
.end method

.method private createPreparePowerOffEvent()Lcom/smartisanos/smengine/Event;
    .locals 2

    .prologue
    .line 397
    new-instance v0, Lcom/smartisanos/launcher/ApplicationProxy$6;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/ApplicationProxy$6;-><init>(Lcom/smartisanos/launcher/ApplicationProxy;I)V

    .line 406
    .local v0, "e":Lcom/smartisanos/smengine/Event;
    return-object v0
.end method

.method private createUnlockAnimationEvent()Lcom/smartisanos/smengine/Event;
    .locals 2

    .prologue
    .line 344
    new-instance v0, Lcom/smartisanos/launcher/ApplicationProxy$3;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/ApplicationProxy$3;-><init>(Lcom/smartisanos/launcher/ApplicationProxy;I)V

    .line 355
    .local v0, "event":Lcom/smartisanos/smengine/Event;
    return-object v0
.end method

.method private static debugHardware(Landroid/content/Context;)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 921
    invoke-static/range {p0 .. p0}, Lcom/smartisanos/launcher/ApplicationProxy;->supportOpenGLES30(Landroid/content/Context;)Z

    move-result v15

    sput-boolean v15, Lcom/smartisanos/launcher/data/Constants;->IS_OPENGL_3:Z

    .line 922
    sget-boolean v15, Lcom/smartisanos/launcher/data/Constants;->IS_OPENGL_3:Z

    if-eqz v15, :cond_0

    .line 923
    const/4 v15, 0x1

    sput-boolean v15, Lcom/smartisanos/launcher/data/Constants;->IS_OPENGL_2:Z

    .line 927
    :goto_0
    const-string v15, "window"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    .line 928
    .local v14, "wm":Landroid/view/WindowManager;
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 929
    .local v7, "metric":Landroid/util/DisplayMetrics;
    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 930
    .local v5, "display":Landroid/view/Display;
    invoke-virtual {v5, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 931
    iget v4, v7, Landroid/util/DisplayMetrics;->density:F

    .line 932
    .local v4, "density":F
    iget v13, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 933
    .local v13, "widthPixels":I
    iget v6, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 935
    .local v6, "heightPixels":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 936
    .local v9, "resources":Landroid/content/res/Resources;
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 937
    .local v2, "configuration":Landroid/content/res/Configuration;
    iget v11, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 938
    .local v11, "screenWidthDp":I
    iget v10, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 939
    .local v10, "screenHeightDp":I
    iget v12, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 941
    .local v12, "smallestScreenWidthDp":I
    const-string v15, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 942
    .local v1, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v3

    .line 943
    .local v3, "configurationInfo":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual {v3}, Landroid/content/pm/ConfigurationInfo;->getGlEsVersion()Ljava/lang/String;

    move-result-object v8

    .line 945
    .local v8, "openGLVersion":Ljava/lang/String;
    sget-object v15, Lcom/smartisanos/launcher/ApplicationProxy;->log:Lcom/smartisanos/launcher/LOG;

    const-string v16, "DEBUG"

    const-string v17, "##### Hardware Info #####"

    invoke-virtual/range {v15 .. v17}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    sget-object v15, Lcom/smartisanos/launcher/ApplicationProxy;->log:Lcom/smartisanos/launcher/LOG;

    const-string v16, "DEBUG"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "IS_OPENGL_2    ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-boolean v18, Lcom/smartisanos/launcher/data/Constants;->IS_OPENGL_2:Z

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    sget-object v15, Lcom/smartisanos/launcher/ApplicationProxy;->log:Lcom/smartisanos/launcher/LOG;

    const-string v16, "DEBUG"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "IS_OPENGL_3    ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-boolean v18, Lcom/smartisanos/launcher/data/Constants;->IS_OPENGL_3:Z

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    sget-object v15, Lcom/smartisanos/launcher/ApplicationProxy;->log:Lcom/smartisanos/launcher/LOG;

    const-string v16, "DEBUG"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "DENSITY        ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    sget-object v15, Lcom/smartisanos/launcher/ApplicationProxy;->log:Lcom/smartisanos/launcher/LOG;

    const-string v16, "DEBUG"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "WIDTH PIXELS   ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    sget-object v15, Lcom/smartisanos/launcher/ApplicationProxy;->log:Lcom/smartisanos/launcher/LOG;

    const-string v16, "DEBUG"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "HEIGHT PIXELS  ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    sget-object v15, Lcom/smartisanos/launcher/ApplicationProxy;->log:Lcom/smartisanos/launcher/LOG;

    const-string v16, "DEBUG"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "WIDTH DP       ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    sget-object v15, Lcom/smartisanos/launcher/ApplicationProxy;->log:Lcom/smartisanos/launcher/LOG;

    const-string v16, "DEBUG"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "HEIGHT DP      ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    sget-object v15, Lcom/smartisanos/launcher/ApplicationProxy;->log:Lcom/smartisanos/launcher/LOG;

    const-string v16, "DEBUG"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "SMALLEST W DP  ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    sget-object v15, Lcom/smartisanos/launcher/ApplicationProxy;->log:Lcom/smartisanos/launcher/LOG;

    const-string v16, "DEBUG"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "OPENGL VERSION ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    return-void

    .line 925
    .end local v1    # "activityManager":Landroid/app/ActivityManager;
    .end local v2    # "configuration":Landroid/content/res/Configuration;
    .end local v3    # "configurationInfo":Landroid/content/pm/ConfigurationInfo;
    .end local v4    # "density":F
    .end local v5    # "display":Landroid/view/Display;
    .end local v6    # "heightPixels":I
    .end local v7    # "metric":Landroid/util/DisplayMetrics;
    .end local v8    # "openGLVersion":Ljava/lang/String;
    .end local v9    # "resources":Landroid/content/res/Resources;
    .end local v10    # "screenHeightDp":I
    .end local v11    # "screenWidthDp":I
    .end local v12    # "smallestScreenWidthDp":I
    .end local v13    # "widthPixels":I
    .end local v14    # "wm":Landroid/view/WindowManager;
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/smartisanos/launcher/ApplicationProxy;->supportOpenGLES20(Landroid/content/Context;)Z

    move-result v15

    sput-boolean v15, Lcom/smartisanos/launcher/data/Constants;->IS_OPENGL_2:Z

    goto/16 :goto_0
.end method

.method private static getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 860
    const-string v3, "window"

    .line 861
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 862
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 863
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 864
    .local v2, "result":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 865
    return-object v2
.end method

.method private getScreenSize()[F
    .locals 15

    .prologue
    const/16 v9, 0x11

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 869
    const/4 v7, 0x4

    new-array v4, v7, [F

    .line 870
    .local v4, "result":[F
    iget-object v7, p0, Lcom/smartisanos/launcher/ApplicationProxy;->application:Landroid/app/Application;

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 871
    .local v5, "w":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 872
    .local v0, "d":Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 873
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 876
    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v7, v8, :cond_1

    .line 877
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 878
    .local v6, "widthPixels":I
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 883
    .local v1, "heightPixels":I
    :goto_0
    const-string v7, "Meizu"

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 885
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xe

    if-lt v7, v8, :cond_2

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v9, :cond_2

    .line 887
    :try_start_0
    const-class v7, Landroid/view/Display;

    const-string v8, "getRawHeight"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 899
    :cond_0
    :goto_1
    move v14, v1

    .line 900
    .local v14, "screenHeightPixels":I
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/ApplicationProxy;->getRealDisplayHeight(Landroid/view/Display;)I

    move-result v7

    .line 901
    .local v7, "realHeightPixels":I
    if-lez v7, :cond_3

    if-le v7, v14, :cond_3

    move v14, v7

    .line 905
    :cond_3
    if-lez v7, :cond_4

    .line 913
    :cond_4
    int-to-float v8, v6

    aput v8, v4, v12

    .line 914
    int-to-float v8, v1

    aput v8, v4, v13

    .line 915
    const/4 v8, 0x2

    iget v10, v2, Landroid/util/DisplayMetrics;->density:F

    aput v10, v4, v8

    .line 916
    const/4 v8, 0x3

    int-to-float v10, v14

    aput v10, v4, v8

    .line 917
    return-object v4

    .line 880
    .end local v1    # "heightPixels":I
    .end local v6    # "widthPixels":I
    :cond_1
    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 881
    .restart local v6    # "widthPixels":I
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .restart local v1    # "heightPixels":I
    goto :goto_0

    .line 891
    :cond_2
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_0

    .line 893
    :try_start_1
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 894
    .local v3, "realSize":Landroid/graphics/Point;
    const-class v7, Landroid/view/Display;

    const-string v8, "getRealSize"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/graphics/Point;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    iget v1, v3, Landroid/graphics/Point;->y:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 896
    .end local v3    # "realSize":Landroid/graphics/Point;
    :catch_0
    move-exception v7

    goto :goto_1

    .line 888
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method private getBottomSystemInset(Landroid/content/Context;F)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "density"    # F

    .prologue
    .line 906
    const/high16 v4, 0x42400000    # 48.0f

    mul-float/2addr v4, p2

    float-to-int v1, v4

    .line 907
    .local v1, "bottomInset":I
    const/4 v2, 0x0

    .line 909
    .local v2, "navigationMode":I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "navigation_mode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    :goto_0
    const-string v3, "navigation_bar_height"

    .line 914
    .local v3, "resourceName":Ljava/lang/String;
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 915
    const-string v3, "navigation_bar_gesture_height"

    .line 916
    const/high16 v4, 0x41c00000    # 24.0f

    mul-float/2addr v4, p2

    float-to-int v1, v4

    .line 919
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "dimen"

    const-string v6, "android"

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 920
    .local v0, "resourceId":I
    if-lez v0, :cond_1

    .line 921
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 923
    :cond_1
    return v1

    .line 910
    .end local v0    # "resourceId":I
    .end local v3    # "resourceName":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private getRealDisplayHeight(Landroid/view/Display;)I
    .locals 7
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 927
    const/4 v0, -0x1

    .line 928
    .local v0, "realHeight":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 930
    :try_start_0
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 931
    .local v3, "realSize":Landroid/graphics/Point;
    const-class v1, Landroid/view/Display;

    const-string v2, "getRealSize"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/graphics/Point;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    iget v1, v3, Landroid/graphics/Point;->y:I

    iget v2, v3, Landroid/graphics/Point;->x:I

    if-lt v1, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 934
    :cond_0
    move v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    .end local v3    # "realSize":Landroid/graphics/Point;
    :cond_1
    :goto_0
    return v0

    .line 936
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getStatusBarHeight(Landroid/content/Context;F)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "density"    # F

    .prologue
    .line 906
    const/high16 v2, 0x41c80000    # 25.0f

    mul-float/2addr v2, p2

    float-to-int v1, v2

    .line 907
    .local v1, "statusBarHeight":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 908
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 909
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 911
    :cond_0
    return v1
.end method

.method public static getUriByName(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 917
    sget-object v0, Lcom/smartisanos/launcher/ApplicationProxy;->setting_base_uri:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static hasNavigationBar(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    const/4 v1, 0x0

    .line 109
    .local v1, "hasNavigationBar":Z
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 110
    .local v5, "rs":Landroid/content/res/Resources;
    const-string v7, "config_showNavigationBar"

    const-string v8, "bool"

    const-string v9, "android"

    invoke-virtual {v5, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 111
    .local v2, "id":I
    if-lez v2, :cond_0

    .line 112
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 115
    :cond_0
    :try_start_0
    const-string v7, "android.os.SystemProperties"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 116
    .local v6, "systemPropertiesClass":Ljava/lang/Class;
    const-string v7, "get"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 117
    .local v3, "m":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "qemu.hw.mainkeys"

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 118
    .local v4, "navBarOverride":Ljava/lang/String;
    const-string v7, "1"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 119
    const/4 v1, 0x0

    .line 126
    .end local v3    # "m":Ljava/lang/reflect/Method;
    .end local v4    # "navBarOverride":Ljava/lang/String;
    .end local v6    # "systemPropertiesClass":Ljava/lang/Class;
    :cond_1
    :goto_0
    return v1

    .line 120
    .restart local v3    # "m":Ljava/lang/reflect/Method;
    .restart local v4    # "navBarOverride":Ljava/lang/String;
    .restart local v6    # "systemPropertiesClass":Ljava/lang/Class;
    :cond_2
    const-string v7, "0"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 121
    const/4 v1, 0x1

    goto :goto_0

    .line 123
    .end local v3    # "m":Ljava/lang/reflect/Method;
    .end local v4    # "navBarOverride":Ljava/lang/String;
    .end local v6    # "systemPropertiesClass":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "ApplicationProxy"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initProductConfig()V
    .locals 6

    .prologue
    .line 142
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->getBoard()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "board":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 144
    const-string v0, ""

    .line 146
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 147
    const-string v2, "msm8916"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    const/4 v2, 0x1

    sput-boolean v2, Lcom/smartisanos/launcher/data/Constants;->IS_U1_BOARD:Z

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/ApplicationProxy;->application:Landroid/app/Application;

    invoke-static {v2}, Lcom/smartisanos/launcher/ApplicationProxy;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    .line 152
    .local v1, "screenSize":Landroid/graphics/Point;
    iget v2, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v2, 0x3

    sput v2, Lcom/smartisanos/launcher/data/Constants;->ICON_CELL_SHOOTER_SURFACE_WIDTH:I

    .line 153
    sget v2, Lcom/smartisanos/launcher/data/Constants;->ICON_CELL_SHOOTER_SURFACE_WIDTH:I

    mul-int/lit8 v2, v2, 0x3

    sput v2, Lcom/smartisanos/launcher/data/Constants;->ICON_CELL_SHOOTER_SURFACE_HEIGHT:I

    .line 155
    sget-object v2, Lcom/smartisanos/launcher/ApplicationProxy;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "### width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/smartisanos/launcher/data/Constants;->ICON_CELL_SHOOTER_SURFACE_WIDTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/smartisanos/launcher/data/Constants;->ICON_CELL_SHOOTER_SURFACE_HEIGHT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/smartisanos/launcher/ApplicationProxy;->application:Landroid/app/Application;

    invoke-static {v2}, Lcom/smartisanos/launcher/ApplicationProxy;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/smartisanos/launcher/data/Constants;->IS_NAVIGATION_BAR:Z

    .line 164
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->IS_NAVIGATION_BAR:Z

    if-eqz v2, :cond_2

    .line 165
    sget-object v2, Lcom/smartisanos/launcher/ApplicationProxy;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "### has navigation bar !!!!"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 170
    :goto_0
    sget-object v2, Lcom/smartisanos/launcher/ApplicationProxy;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->IS_DSDS:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->IS_US:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->IS_JP:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void

    .line 167
    :cond_2
    sget-object v2, Lcom/smartisanos/launcher/ApplicationProxy;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "### no navigation bar !!!!"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerObserver()V
    .locals 2

    .prologue
    .line 300
    const-string v0, "launcher_hide_lable"

    const-string v1, "System"

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/ApplicationProxy;->createAndRegisterObserver(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mLabelObserver:Landroid/database/ContentObserver;

    .line 301
    const-string v0, "launcher_hide_badge"

    const-string v1, "System"

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/ApplicationProxy;->createAndRegisterObserver(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mBadgeObserver:Landroid/database/ContentObserver;

    .line 302
    const-string v0, "launcher_badge_swipe_clean"

    const-string v1, "System"

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/ApplicationProxy;->createAndRegisterObserver(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mSweepObserver:Landroid/database/ContentObserver;

    .line 303
    const-string v0, "lockscreen_background"

    const-string v1, "System"

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/ApplicationProxy;->createAndRegisterObserver(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mLockscreenWallpaperObserver:Landroid/database/ContentObserver;

    .line 304
    const-string v0, "launcher_mode"

    const-string v1, "Global"

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/ApplicationProxy;->createAndRegisterObserver(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mObsBaseMode:Landroid/database/ContentObserver;

    .line 305
    const-string v0, "multi_block_mode"

    const-string v1, "Global"

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/ApplicationProxy;->createAndRegisterObserver(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mObsCmpMode:Landroid/database/ContentObserver;

    .line 306
    const-string v0, "fast_launch_app_on"

    const-string v1, "Global"

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/ApplicationProxy;->createAndRegisterObserver(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mObsOpenApp:Landroid/database/ContentObserver;

    .line 307
    const-string v0, "launcher_flip_animation"

    const-string v1, "Global"

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/ApplicationProxy;->createAndRegisterObserver(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mObsFlipAnim:Landroid/database/ContentObserver;

    .line 308
    const-string v0, "one_hand_mode"

    const-string v1, "Global"

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/ApplicationProxy;->createAndRegisterObserver(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mHandHabitObserver:Landroid/database/ContentObserver;

    .line 309
    const-string v0, "launcher_unlock_animation_enabled"

    const-string v1, "Global"

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/ApplicationProxy;->createAndRegisterObserver(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mObsUnlockAnim:Landroid/database/ContentObserver;

    .line 310
    const-string v0, "launcher_page_animation"

    const-string v1, "Global"

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/ApplicationProxy;->createAndRegisterObserver(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mObsScrollAnim:Landroid/database/ContentObserver;

    .line 311
    const-string v0, "launcher_switching_orientation"

    const-string v1, "Global"

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/ApplicationProxy;->createAndRegisterObserver(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mObsSwitchAnim:Landroid/database/ContentObserver;

    .line 312
    const-string v0, "voice_assit_by_menu"

    const-string v1, "Global"

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/ApplicationProxy;->createAndRegisterObserver(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mObsVoiceAssit:Landroid/database/ContentObserver;

    .line 313
    const-string v0, "temperature_unit"

    const-string v1, "System"

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/ApplicationProxy;->createAndRegisterObserver(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mTemperatureTypeObserver:Landroid/database/ContentObserver;

    .line 314
    const-string v0, "use_fingerprint_in_launcher"

    const-string v1, "Global"

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/ApplicationProxy;->createAndRegisterObserver(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mObsUseFingerPrint:Landroid/database/ContentObserver;

    .line 315
    sget-object v0, Lcom/smartisanos/launcher/data/InterfaceDefine;->ENABLE_SYNC_APP_ICON:Ljava/lang/String;

    const-string v1, "Global"

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/ApplicationProxy;->createAndRegisterObserver(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mObsEnableSyncIcon:Landroid/database/ContentObserver;

    .line 316
    const-string v0, "enable_cellular"

    const-string v1, "Global"

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/ApplicationProxy;->createAndRegisterObserver(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mObsEnableCellular:Landroid/database/ContentObserver;

    .line 318
    return-void
.end method

.method private registerReceiver()V
    .locals 7

    .prologue
    .line 423
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 424
    .local v4, "packageIntentFilter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 425
    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 426
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 427
    const-string v6, "package"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 428
    iget-object v6, p0, Lcom/smartisanos/launcher/ApplicationProxy;->packageIntentReceiver:Lcom/smartisanos/launcher/receiver/LauncherReceiver;

    invoke-direct {p0, v6, v4}, Lcom/smartisanos/launcher/ApplicationProxy;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 430
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 431
    .local v1, "fil":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 432
    const-string v6, "action_keyguard_to_dismiss"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 433
    const-string v6, "action_keyguard_on"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 434
    iget-object v6, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mLockScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v6, v1}, Lcom/smartisanos/launcher/ApplicationProxy;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 436
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 437
    .local v5, "wpl":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 439
    iget-object v6, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v6, v5}, Lcom/smartisanos/launcher/ApplicationProxy;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 441
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 442
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.ACTIVITY_RESUMED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 443
    iget-object v6, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mActivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v6, v2}, Lcom/smartisanos/launcher/ApplicationProxy;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 445
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 446
    .local v3, "newMessageFilter":Landroid/content/IntentFilter;
    const-string v6, "com.smartisanos.launcher.new_message"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 447
    iget-object v6, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mNewMessageReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v6, v3}, Lcom/smartisanos/launcher/ApplicationProxy;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 450
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 451
    .local v0, "dateFilter":Landroid/content/IntentFilter;
    const-string v6, "smartisan.intent.action.update_calendar_date"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 452
    const-string v6, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 453
    const-string v6, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 454
    const-string v6, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 455
    iget-object v6, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mDateTimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v6, v0}, Lcom/smartisanos/launcher/ApplicationProxy;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 456
    return-void
.end method

.method private registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->application:Landroid/app/Application;

    invoke-virtual {v0, p1, p2}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 460
    return-void
.end method

.method public static supportOpenGLES20(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 958
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 959
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 960
    .local v1, "configurationInfo":Landroid/content/pm/ConfigurationInfo;
    iget v3, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v4, 0x20000

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    .line 961
    .local v2, "supportsEs2":Z
    :goto_0
    return v2

    .line 960
    .end local v2    # "supportsEs2":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static supportOpenGLES30(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 965
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 966
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 967
    .local v1, "configurationInfo":Landroid/content/pm/ConfigurationInfo;
    iget v3, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v4, 0x30000

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    .line 968
    .local v2, "supportsEs3":Z
    :goto_0
    return v2

    .line 967
    .end local v2    # "supportsEs3":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private unregisterContentObserver()V
    .locals 2

    .prologue
    .line 321
    iget-object v1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->application:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 322
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mLabelObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 323
    iget-object v1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 324
    iget-object v1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mSweepObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 325
    iget-object v1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mHandHabitObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 326
    iget-object v1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mObsBaseMode:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 327
    iget-object v1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mObsCmpMode:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 328
    iget-object v1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mObsOpenApp:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 329
    iget-object v1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mObsFlipAnim:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 330
    iget-object v1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mObsUnlockAnim:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 331
    iget-object v1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mLockscreenWallpaperObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 332
    iget-object v1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mObsScrollAnim:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 333
    iget-object v1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mObsSwitchAnim:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 334
    iget-object v1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mObsVoiceAssit:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 335
    iget-object v1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mTemperatureTypeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 336
    iget-object v1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mObsUseFingerPrint:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 337
    iget-object v1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mObsEnableSyncIcon:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 338
    iget-object v1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mObsEnableCellular:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 339
    return-void
.end method

.method private unregisterReceiver()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mLockScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/ApplicationProxy;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 464
    iget-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/ApplicationProxy;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 465
    iget-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mActivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/ApplicationProxy;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 466
    iget-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mNewMessageReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/ApplicationProxy;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 467
    iget-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->packageIntentReceiver:Lcom/smartisanos/launcher/receiver/LauncherReceiver;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/ApplicationProxy;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 468
    iget-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mDateTimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/ApplicationProxy;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 469
    return-void
.end method

.method private unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 472
    iget-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->application:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 473
    return-void
.end method

.method private verifyMode()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method


# virtual methods
.method public createInitUnlockAnimationEvent()Lcom/smartisanos/smengine/Event;
    .locals 2

    .prologue
    .line 379
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getInputManager()Lcom/smartisanos/smengine/InputManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/InputManager;->forceCancelMotionEvent()Z

    .line 380
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/home/Launcher;->removeEmergencyUnlockEvent()V

    .line 381
    new-instance v0, Lcom/smartisanos/launcher/ApplicationProxy$5;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/ApplicationProxy$5;-><init>(Lcom/smartisanos/launcher/ApplicationProxy;I)V

    .line 394
    .local v0, "e":Lcom/smartisanos/smengine/Event;
    return-object v0
.end method

.method public forceStop()V
    .locals 3

    .prologue
    .line 722
    iget-object v1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->application:Landroid/app/Application;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 723
    .local v0, "am":Landroid/app/ActivityManager;
    const-string v1, "com.smartisanos.home"

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/InvisibleApi;->forceStopPackage(Landroid/app/ActivityManager;Ljava/lang/String;)V

    .line 724
    return-void
.end method

.method public handleCacheMessageIntent()V
    .locals 4

    .prologue
    .line 612
    iget-object v2, p0, Lcom/smartisanos/launcher/ApplicationProxy;->messageBuffer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 613
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 626
    :goto_0
    return-void

    .line 616
    :cond_0
    :goto_1
    if-lez v0, :cond_2

    .line 618
    :try_start_0
    iget-object v2, p0, Lcom/smartisanos/launcher/ApplicationProxy;->messageBuffer:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 619
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 620
    iget-object v2, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mNewMessageReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/smartisanos/launcher/ApplicationProxy;->messageBuffer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    .line 625
    :cond_2
    iget-object v2, p0, Lcom/smartisanos/launcher/ApplicationProxy;->messageBuffer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 622
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mIsLoading:Z

    return v0
.end method

.method public onConfigChanged(Ljava/lang/String;)V
    .locals 12
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 737
    sget-boolean v8, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/smartisanos/launcher/ApplicationProxy;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    const-string v10, "=========================================="

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :cond_0
    sget-boolean v8, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v8, :cond_1

    sget-object v8, Lcom/smartisanos/launcher/ApplicationProxy;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "| onConfigChanged begin, type == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :cond_1
    sget-boolean v8, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v8, :cond_2

    sget-object v8, Lcom/smartisanos/launcher/ApplicationProxy;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    const-string v10, "=========================================="

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v8

    if-nez v8, :cond_4

    .line 741
    sget-object v8, Lcom/smartisanos/launcher/ApplicationProxy;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    const-string v10, "MainView.getInstance is null when onConfigChanged !"

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    :cond_3
    :goto_0
    return-void

    .line 744
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 745
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string v8, "launcher_hide_lable"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 746
    invoke-static {}, Lcom/smartisanos/launcher/data/LauncherPreferences;->isHideAppTitle()Z

    move-result v3

    .line 747
    .local v3, "old":Z
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v8

    invoke-static {v8}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getHideAppTitleFromSystem(Landroid/content/Context;)Z

    move-result v0

    .line 748
    .local v0, "change":Z
    if-eq v3, v0, :cond_3

    .line 749
    invoke-static {}, Lcom/smartisanos/launcher/data/LauncherPreferences;->isHideAppTitle()Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v8, 0x1

    :goto_1
    sput-boolean v8, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    .line 750
    sget-boolean v8, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v8, :cond_5

    sget-object v8, Lcom/smartisanos/launcher/ApplicationProxy;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SHOW_APP_NAME ==> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    :cond_5
    new-instance v1, Lcom/smartisanos/launcher/ApplicationProxy$13;

    const/16 v8, 0x64

    invoke-direct {v1, p0, v8}, Lcom/smartisanos/launcher/ApplicationProxy$13;-><init>(Lcom/smartisanos/launcher/ApplicationProxy;I)V

    .line 760
    .local v1, "event":Lcom/smartisanos/smengine/Event;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/smartisanos/smengine/EventManager;->sendEvent(Lcom/smartisanos/smengine/Event;)V

    goto :goto_0

    .line 749
    .end local v1    # "event":Lcom/smartisanos/smengine/Event;
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 762
    .end local v0    # "change":Z
    .end local v3    # "old":Z
    :cond_7
    const-string v8, "launcher_hide_badge"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "launcher_badge_swipe_clean"

    .line 763
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 764
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v8

    invoke-static {v8}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getEnableSweepMessageFlagFromSystem(Landroid/content/Context;)Z

    .line 765
    invoke-static {}, Lcom/smartisanos/launcher/data/LauncherPreferences;->isHideMessageFlag()Z

    move-result v3

    .line 766
    .restart local v3    # "old":Z
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v8

    invoke-static {v8}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getHideMessageFlagFromSystem(Landroid/content/Context;)Z

    move-result v0

    .line 767
    .restart local v0    # "change":Z
    if-eq v3, v0, :cond_3

    .line 768
    invoke-static {}, Lcom/smartisanos/launcher/data/LauncherPreferences;->enableSweepMessageFlag()Z

    move-result v8

    sput-boolean v8, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SWEEP_MESSAGE_FLAG:Z

    .line 769
    sget-boolean v8, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v8, :cond_9

    sget-object v8, Lcom/smartisanos/launcher/ApplicationProxy;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ENABLE_SWEEP_MESSAGE_FLAG ==> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SWEEP_MESSAGE_FLAG:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :cond_9
    sget-boolean v9, Lcom/smartisanos/launcher/data/Constants;->SHOW_MESSAGE_FLAG:Z

    invoke-static {}, Lcom/smartisanos/launcher/data/LauncherPreferences;->isHideMessageFlag()Z

    move-result v8

    if-nez v8, :cond_a

    const/4 v8, 0x1

    :goto_2
    if-eq v9, v8, :cond_3

    .line 771
    invoke-static {}, Lcom/smartisanos/launcher/data/LauncherPreferences;->isHideMessageFlag()Z

    move-result v8

    if-nez v8, :cond_b

    const/4 v8, 0x1

    :goto_3
    sput-boolean v8, Lcom/smartisanos/launcher/data/Constants;->SHOW_MESSAGE_FLAG:Z

    .line 773
    new-instance v1, Lcom/smartisanos/launcher/ApplicationProxy$14;

    const/16 v8, 0x64

    invoke-direct {v1, p0, v8}, Lcom/smartisanos/launcher/ApplicationProxy$14;-><init>(Lcom/smartisanos/launcher/ApplicationProxy;I)V

    .line 779
    .restart local v1    # "event":Lcom/smartisanos/smengine/Event;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/smartisanos/smengine/EventManager;->sendEvent(Lcom/smartisanos/smengine/Event;)V

    goto/16 :goto_0

    .line 770
    .end local v1    # "event":Lcom/smartisanos/smengine/Event;
    :cond_a
    const/4 v8, 0x0

    goto :goto_2

    .line 771
    :cond_b
    const/4 v8, 0x0

    goto :goto_3

    .line 782
    .end local v0    # "change":Z
    .end local v3    # "old":Z
    :cond_c
    const-string v8, "launcher_mode"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 784
    const-string v8, "multi_block_mode"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 785
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/smartisanos/launcher/LauncherModel;->setDirtyMode(Z)V

    goto/16 :goto_0

    .line 786
    :cond_d
    const-string v8, "one_hand_mode"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 787
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 788
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v8

    invoke-static {v8}, Lcom/smartisanos/launcher/data/LauncherSettings;->updateHandHabit(Landroid/content/Context;)V

    .line 789
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v8

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/smartisanos/home/Launcher;->handHabitChanged:Z

    goto/16 :goto_0

    .line 791
    :cond_e
    const-string v8, "launcher_page_animation"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 792
    const-string v8, "launcher_page_animation"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/smartisanos/launcher/data/Constants;->SCROLL_ANIMATION_TYPE:I

    .line 793
    invoke-static {}, Lcom/smartisanos/launcher/animations/PageScrollAnimationList;->onScrollAnimationTypeChanged()V

    goto/16 :goto_0

    .line 794
    :cond_f
    const-string v8, "launcher_switching_orientation"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 795
    const-string v8, "launcher_switching_orientation"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/smartisanos/launcher/data/Constants;->SLIDE_DOCK_ACTION_TYPE:I

    goto/16 :goto_0

    .line 796
    :cond_10
    const-string v8, "voice_assit_by_menu"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 797
    const-string v8, "voice_assit_by_menu"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/smartisanos/launcher/data/Constants;->VOICE_ASSIT_BY_MENU:I

    goto/16 :goto_0

    .line 798
    :cond_11
    const-string v8, "fast_launch_app_on"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 800
    const-string v8, "fast_launch_app_on"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;I)I

    move-result v4

    .line 803
    .local v4, "openApp":I
    const/4 v8, 0x1

    if-ne v4, v8, :cond_12

    const/4 v8, 0x1

    :goto_4
    sput-boolean v8, Lcom/smartisanos/launcher/data/Constants;->OPEN_APP_IN_MULTI_PAGE_MODE:Z

    goto/16 :goto_0

    :cond_12
    const/4 v8, 0x0

    goto :goto_4

    .line 804
    .end local v4    # "openApp":I
    :cond_13
    const-string v8, "launcher_flip_animation"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 806
    const-string v8, "launcher_flip_animation"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;I)I

    move-result v2

    .line 809
    .local v2, "flipAnimation":I
    const/4 v8, 0x1

    if-ne v2, v8, :cond_14

    const/4 v8, 0x1

    :goto_5
    sput-boolean v8, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LAUNCH_FLIP_ANIMATION:Z

    goto/16 :goto_0

    :cond_14
    const/4 v8, 0x0

    goto :goto_5

    .line 810
    .end local v2    # "flipAnimation":I
    :cond_15
    const-string v8, "launcher_unlock_animation_enabled"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 811
    const-string v8, "launcher_unlock_animation_enabled"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;I)I

    move-result v6

    .line 813
    .local v6, "unlockAnimValue":I
    const/4 v8, 0x1

    if-ne v6, v8, :cond_16

    const/4 v8, 0x1

    :goto_6
    sput-boolean v8, Lcom/smartisanos/launcher/data/Constants;->ENABLE_UNLOCK_ANIMATION:Z

    goto/16 :goto_0

    :cond_16
    const/4 v8, 0x0

    goto :goto_6

    .line 814
    .end local v6    # "unlockAnimValue":I
    :cond_17
    const-string v8, "lockscreen_background"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 829
    const-string v8, "temperature_unit"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 830
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v8

    sget-object v9, Lcom/smartisanos/launcher/view/WeatherView;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/view/MainView;->getActiveIconView(Ljava/lang/String;)Lcom/smartisanos/launcher/view/ActiveIconView;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/WeatherView;

    .line 831
    .local v7, "wv":Lcom/smartisanos/launcher/view/WeatherView;
    if-eqz v7, :cond_3

    .line 832
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/WeatherView;->onTemperatureTypeChange()V

    goto/16 :goto_0

    .line 841
    .end local v7    # "wv":Lcom/smartisanos/launcher/view/WeatherView;
    :cond_18
    sget-object v8, Lcom/smartisanos/launcher/data/InterfaceDefine;->ENABLE_SYNC_APP_ICON:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 842
    sget-object v8, Lcom/smartisanos/launcher/data/InterfaceDefine;->ENABLE_SYNC_APP_ICON:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SYNC_APP_ICON:Z

    .line 843
    invoke-static {}, Lcom/smartisanos/home/net/StatusReceiver;->updateNetStatus()V

    .line 844
    invoke-static {}, Lcom/smartisanos/home/net/StatusReceiver;->updateStatus()V

    .line 845
    sget-object v8, Lcom/smartisanos/launcher/ApplicationProxy;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "A140"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setConfigFromSystemSettings ENABLE_SYNC_APP_ICON = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SYNC_APP_ICON:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    sget-boolean v8, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SYNC_APP_ICON:Z

    if-eqz v8, :cond_3

    .line 847
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/smartisanos/home/net/StatusReceiver;->tryToFetch(Z)V

    goto/16 :goto_0

    .line 849
    :cond_19
    const-string v8, "enable_cellular"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 850
    const-string v8, "enable_cellular"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/smartisanos/launcher/data/setting/SettingDB;->readBool(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/smartisanos/launcher/data/Constants;->ENABLE_CELLULAR:Z

    .line 851
    invoke-static {}, Lcom/smartisanos/home/net/StatusReceiver;->updateNetStatus()V

    .line 852
    invoke-static {}, Lcom/smartisanos/home/net/StatusReceiver;->updateStatus()V

    .line 853
    sget-boolean v8, Lcom/smartisanos/launcher/data/Constants;->ENABLE_CELLULAR:Z

    if-eqz v8, :cond_3

    .line 854
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/smartisanos/home/net/StatusReceiver;->tryToFetch(Z)V

    goto/16 :goto_0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    .line 80
    iget-object v1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->application:Landroid/app/Application;

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Utils;->preLoadImage(Landroid/content/Context;)V

    .line 81
    iget-object v1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->application:Landroid/app/Application;

    invoke-static {v1}, Lcom/smartisanos/launcher/ApplicationProxy;->debugHardware(Landroid/content/Context;)V

    .line 82
    invoke-direct {p0}, Lcom/smartisanos/launcher/ApplicationProxy;->initProductConfig()V

    .line 83
    iget-object v1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->application:Landroid/app/Application;

    invoke-static {v1}, Lcom/smartisanos/launcher/data/DatabaseProvider;->init(Landroid/content/Context;)V

    .line 84
    invoke-static {}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getInstance()Lcom/smartisanos/launcher/data/LauncherPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/ApplicationProxy;->application:Landroid/app/Application;

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/data/LauncherPreferences;->init(Landroid/content/Context;)V

    .line 85
    iget-object v1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->application:Landroid/app/Application;

    invoke-static {v1}, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->init(Landroid/content/Context;)V

    .line 86
    iget-object v1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->application:Landroid/app/Application;

    invoke-static {v1}, Lcom/smartisanos/launcher/theme/ThemeManager;->initThemeOrder(Landroid/content/Context;)V

    .line 87
    invoke-static {}, Lcom/smartisanos/launcher/LauncherTracker;->getInstance()Lcom/smartisanos/launcher/LauncherTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/ApplicationProxy;->application:Landroid/app/Application;

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LauncherTracker;->init(Landroid/app/Application;)V

    .line 88
    invoke-direct {p0}, Lcom/smartisanos/launcher/ApplicationProxy;->verifyMode()V

    .line 89
    invoke-direct {p0}, Lcom/smartisanos/launcher/ApplicationProxy;->registerReceiver()V

    .line 90
    iget-object v1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->application:Landroid/app/Application;

    invoke-static {v1}, Lcom/smartisanos/launcher/theme/ThemeManager;->initThemeWhenStartup(Landroid/content/Context;)V

    .line 93
    invoke-direct {p0}, Lcom/smartisanos/launcher/ApplicationProxy;->getScreenSize()[F

    move-result-object v0

    .line 94
    .local v0, "screenSize":[F
    iget-object v1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->application:Landroid/app/Application;

    const/4 v2, 0x0

    aget v2, v0, v2

    float-to-int v2, v2

    aget v3, v0, v7

    float-to-int v3, v3

    aget v4, v0, v6

    iget-object v5, p0, Lcom/smartisanos/launcher/ApplicationProxy;->application:Landroid/app/Application;

    aget v6, v0, v6

    invoke-direct {p0, v5, v6}, Lcom/smartisanos/launcher/ApplicationProxy;->getStatusBarHeight(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/smartisanos/launcher/data/Constants;->init(Landroid/content/Context;IIFI)V

    .line 95
    const/4 v1, 0x3

    aget v1, v0, v1

    float-to-int v1, v1

    sput v1, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    .line 96
    invoke-static {}, Lcom/smartisanos/launcher/view/TextView;->initTextPaints()V

    .line 97
    sput-boolean v7, Lcom/smartisanos/launcher/ApplicationProxy;->modelInitDone:Z

    .line 98
    invoke-direct {p0}, Lcom/smartisanos/launcher/ApplicationProxy;->registerObserver()V

    .line 99
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->isNetworkConnected()Z

    move-result v1

    sput-boolean v1, Lcom/smartisanos/home/net/StatusReceiver;->networkConnected:Z

    .line 99
    iget-object v1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->application:Landroid/app/Application;

    invoke-static {v1}, Lcom/smartisanos/launcher/actions/NumFlagWhiteList;->init(Landroid/content/Context;)V

    .line 100
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/smartisanos/launcher/ApplicationProxy;->unregisterContentObserver()V

    .line 104
    invoke-direct {p0}, Lcom/smartisanos/launcher/ApplicationProxy;->unregisterReceiver()V

    .line 105
    return-void
.end method

.method public setDateChangeIntent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 699
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    .line 700
    sget-object v2, Lcom/smartisanos/launcher/ApplicationProxy;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "DEBUG"

    const-string v4, "setDateChangeIntent"

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v1

    .line 703
    .local v1, "context":Landroid/content/Context;
    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 704
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    if-eqz v0, :cond_3

    .line 706
    :try_start_0
    iget-object v2, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    .line 707
    iget-object v2, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    .line 708
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mPendingIntent:Landroid/app/PendingIntent;

    .line 710
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mDateChangeIntent:Landroid/content/Intent;

    if-nez v2, :cond_2

    .line 711
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mDateChangeIntent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    :cond_2
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "smartisan.intent.action.update_calendar_date"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mDateChangeIntent:Landroid/content/Intent;

    .line 715
    iget-object v2, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mDateChangeIntent:Landroid/content/Intent;

    const-string v3, "ttt"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 716
    iget-object v2, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mDateChangeIntent:Landroid/content/Intent;

    const/high16 v3, 0x8000000

    invoke-static {v1, v5, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mPendingIntent:Landroid/app/PendingIntent;

    .line 717
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->getNextDayTriggerTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 719
    :cond_3
    return-void

    .line 713
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setEnableStatusbarMessage(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 734
    return-void
.end method

.method public setLoading(Z)V
    .locals 4
    .param p1, "loading"    # Z

    .prologue
    .line 270
    iput-boolean p1, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mIsLoading:Z

    .line 271
    iget-boolean v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mIsLoading:Z

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 274
    :cond_0
    return-void
.end method
