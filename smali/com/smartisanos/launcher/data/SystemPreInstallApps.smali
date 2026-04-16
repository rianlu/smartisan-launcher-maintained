.class public Lcom/smartisanos/launcher/data/SystemPreInstallApps;
.super Ljava/lang/Object;
.source "SystemPreInstallApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    }
.end annotation


# static fields
.field public static final ACTIVE_APPS:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final AIRDROID:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final APP_STORE:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final AUTO_NAVI:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final BROWSER:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final CALCULATOR:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final CALENDAR:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final CAMERA:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final CLOCK:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final CLOUD_SYNC:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final DAXIANG:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final DIALER:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final DOWNLOAD:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final DRIVING_MODE:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final DXY:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final EMAIL:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static EMBEDDED_APPS:[Lcom/smartisanos/home/apps/EmbeddedApp;

.field public static final GALLERY:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final GAME_STORE:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final LAUNCHER_SETTING:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final MMS:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final MOMO:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final MUSIC:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final NOTE:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field private static final PAGE1:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field private static final PAGE2:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field private static final PAGE3:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field private static final PAGE4:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final PHONE:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static PREDEFINED_DOCK:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static PREDEFINED_PAGES:[[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final PREINSTALLED_APPS:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final RECORDER:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final REMOTE_ASSISTANCE:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final SARA:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final SEARCH:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final SECURITY_CENTER:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final SETTINGS:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final SMARTISAN_BBS:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final SMS:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final SYSTEM_APPS:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final WEATHER:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final WEIBO:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final WIZARD:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final WPS:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final XUEQIU:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final YOUDAO:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field public static final YOUKU:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

.field private static final log:Lcom/smartisanos/launcher/LOG;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 32
    const-class v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->log:Lcom/smartisanos/launcher/LOG;

    .line 36
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.android.dialer"

    const-string v2, "com.android.dialer.DialtactsActivity"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->DIALER:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 37
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.android.messaging"

    const-string v2, "com.android.messaging.ui.conversationlist.ConversationListActivity"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SMS:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 39
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.smartisanos.home"

    const-string v2, "com.smartisanos.home.settings.view.SettingMainActivity"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->LAUNCHER_SETTING:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 41
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.android.contacts"

    const-string v2, "com.android.contacts.activities.DialtactsActivity"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PHONE:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 42
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.android.browser"

    const-string v2, "com.android.browser.BrowserActivity"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->BROWSER:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 43
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.android.mms"

    const-string v2, "com.android.mms.ui.ConversationList"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->MMS:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 44
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.smartisanos.appstore"

    const-string v2, "com.smartisanos.appstore.AppStoreActivity"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->APP_STORE:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 45
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.android.camera2"

    const-string v2, "com.android.camera.CameraLauncher"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->CAMERA:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 46
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.android.gallery3d"

    const-string v2, "com.android.gallery3d.app.Gallery"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->GALLERY:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 47
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.smartisanos.notes"

    const-string v2, "com.smartisanos.notes.NotesActivity"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->NOTE:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 48
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.smartisan.calendar"

    const-string v2, "com.android.calendar.AllInOneActivity"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->CALENDAR:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 49
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.smartisanos.clock"

    const-string v2, "com.smartisanos.clock.activity.ClockActivity"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->CLOCK:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 50
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.smartisanos.music"

    const-string v2, "com.smartisanos.music.activities.MusicMain"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->MUSIC:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 51
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SETTINGS:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 52
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.android.email"

    const-string v2, "com.android.email.activity.Welcome"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->EMAIL:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 53
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.smartisanos.calculator"

    const-string v2, "com.smartisanos.calculator.Calculator"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->CALCULATOR:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 54
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.smartisanos.recorder"

    const-string v2, "com.smartisanos.recorder.activity.EmptyActivity"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->RECORDER:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 55
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.smartisanos.weather"

    const-string v2, "com.smartisanos.weather.CityWeather"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->WEATHER:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 56
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.smartisanos.quicksearch"

    const-string v2, "com.android.quicksearchbox.SearchActivity"

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "com.android.quicksearchbox;com.android.quicksearchbox.SearchActivity"

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SEARCH:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 58
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.smartisanos.setupwizard"

    const-string v2, "com.smartisanos.setupwizard.launcherguidance.LauncherGuidanceActivity"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->WIZARD:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 59
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.smartisanos.cloudsync"

    const-string v2, "com.smartisanos.cloudsync.AccountsActivityLauncher"

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "com.smartisanos.cloudsync;com.smartisanos.accounts.AccountsActivity"

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->CLOUD_SYNC:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 61
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.android.providers.downloads.ui"

    const-string v2, "com.android.providers.downloads.ui.SplashActivity"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->DOWNLOAD:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 63
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.smartisanos.gamestore"

    const-string v2, "com.smartisanos.gamestore.GameStoreActivity"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->GAME_STORE:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 64
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.smartisanos.sara"

    const-string v2, "com.smartisanos.sara.SpeechNowActivity"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SARA:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 65
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.smartisanos.securitycenter"

    const-string v2, "com.smartisanos.securitycenter.SecurityCenterActivity"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SECURITY_CENTER:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 66
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.smartisanos.handinhand"

    const-string v2, "com.smartisanos.handinhand.activity.HomeActivity"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->REMOTE_ASSISTANCE:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 67
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.smartisanos.drivingmode"

    const-string v2, "com.smartisanos.drivingmode.MainActivity"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->DRIVING_MODE:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 69
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.smartisan.bbs"

    const-string v2, "com.smartisan.bbs.activity.MainActivity_"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SMARTISAN_BBS:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 70
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "org.idaxiang.android"

    const-string v2, "org.idaxiang.android.ui.SplashActivity"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->DAXIANG:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 71
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.immomo.momo"

    const-string v2, "com.immomo.momo.android.activity.WelcomeActivity"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->MOMO:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 72
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.sina.weibo"

    const-string v2, "com.sina.weibo.SplashActivity"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->WEIBO:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 73
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.xueqiu.android"

    const-string v2, "com.xueqiu.android.view.WelcomeActivityAlias"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->XUEQIU:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 74
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.sand.airdroid"

    const-string v2, "com.sand.airdroid.ui.splash.SplashActivity_"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->AIRDROID:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 75
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.youdao.dict"

    const-string v2, "com.youdao.dict.activity.DictSplashActivity"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->YOUDAO:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 76
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "cn.dxy.android.aspirin"

    const-string v2, "cn.dxy.android.aspirin.ui.activity.StartupActivity"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->DXY:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 77
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.youku.phone"

    const-string v2, "com.youku.phone.ActivityWelcomeCopy"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->YOUKU:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 78
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "com.autonavi.minimap"

    const-string v2, "com.autonavi.minimap.Splashy"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->AUTO_NAVI:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 79
    new-instance v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    const-string v1, "cn.wps.moffice_eng"

    const-string v2, "cn.wps.moffice.documentmanager.PreStartActivity"

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->WPS:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 99
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PHONE:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->BROWSER:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v6

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->MMS:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v7

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->APP_STORE:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v8

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->CAMERA:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->GALLERY:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->NOTE:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->CALENDAR:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->CLOCK:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->MUSIC:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SETTINGS:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->EMAIL:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->CALCULATOR:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->GAME_STORE:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->WEATHER:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SECURITY_CENTER:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->RECORDER:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SEARCH:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->CLOUD_SYNC:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->DOWNLOAD:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->WIZARD:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SARA:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->DRIVING_MODE:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->REMOTE_ASSISTANCE:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SYSTEM_APPS:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 104
    const/4 v0, 0x0

    check-cast v0, [[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PREDEFINED_PAGES:[[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 106
    new-array v0, v8, [Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PHONE:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->LAUNCHER_SETTING:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v6

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SMS:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v7

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PREDEFINED_DOCK:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 110
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smartisanos/home/apps/EmbeddedApp;

    new-instance v1, Lcom/smartisanos/home/apps/LauncherSettings;

    invoke-direct {v1}, Lcom/smartisanos/home/apps/LauncherSettings;-><init>()V

    aput-object v1, v0, v5

    new-instance v1, Lcom/smartisanos/home/apps/Weather;

    invoke-direct {v1}, Lcom/smartisanos/home/apps/Weather;-><init>()V

    aput-object v1, v0, v6

    new-instance v1, Lcom/smartisanos/home/apps/Search;

    invoke-direct {v1}, Lcom/smartisanos/home/apps/Search;-><init>()V

    aput-object v1, v0, v7

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->EMBEDDED_APPS:[Lcom/smartisanos/home/apps/EmbeddedApp;

    .line 445
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->APP_STORE:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->CAMERA:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v6

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->GALLERY:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v7

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->NOTE:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v8

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->CALENDAR:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->CLOCK:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->MUSIC:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SETTINGS:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->EMAIL:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PAGE1:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 449
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->CALCULATOR:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->GAME_STORE:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v6

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->WEATHER:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v7

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SECURITY_CENTER:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v8

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->RECORDER:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SEARCH:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->CLOUD_SYNC:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->DOWNLOAD:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->WIZARD:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PAGE2:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 453
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SMARTISAN_BBS:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->MOMO:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v6

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->WEIBO:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v7

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->YOUKU:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v8

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->YOUDAO:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->AIRDROID:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->WPS:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->DXY:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->XUEQIU:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PAGE3:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 457
    new-array v0, v7, [Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->AUTO_NAVI:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->DAXIANG:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v6

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PAGE4:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 461
    new-array v0, v7, [Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->WEATHER:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->CALENDAR:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v6

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->ACTIVE_APPS:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 519
    const/16 v0, 0x21

    new-array v0, v0, [Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PHONE:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->BROWSER:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v6

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->MMS:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v7

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->APP_STORE:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v8

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->CAMERA:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->GALLERY:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->NOTE:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->CALENDAR:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->CLOCK:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->MUSIC:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SETTINGS:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->EMAIL:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->CALCULATOR:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->RECORDER:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->WEATHER:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SEARCH:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->WIZARD:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->CLOUD_SYNC:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->DOWNLOAD:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->GAME_STORE:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SARA:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SECURITY_CENTER:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SMARTISAN_BBS:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->DAXIANG:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->MOMO:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->WEIBO:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->XUEQIU:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->AIRDROID:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->YOUDAO:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->DXY:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->YOUKU:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->AUTO_NAVI:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->WPS:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v0, v1

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PREINSTALLED_APPS:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEmbeddedApp(Ljava/lang/String;)Lcom/smartisanos/home/apps/EmbeddedApp;
    .locals 6
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "app":Lcom/smartisanos/home/apps/EmbeddedApp;
    sget-object v3, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->EMBEDDED_APPS:[Lcom/smartisanos/home/apps/EmbeddedApp;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 210
    .local v1, "embeddedApp":Lcom/smartisanos/home/apps/EmbeddedApp;
    invoke-virtual {v1}, Lcom/smartisanos/home/apps/EmbeddedApp;->pkg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 211
    move-object v0, v1

    .line 215
    .end local v1    # "embeddedApp":Lcom/smartisanos/home/apps/EmbeddedApp;
    :cond_0
    return-object v0

    .line 209
    .restart local v1    # "embeddedApp":Lcom/smartisanos/home/apps/EmbeddedApp;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 243
    :try_start_0
    invoke-static {p0}, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->loadData(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PREDEFINED_PAGES:[[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PREDEFINED_DOCK:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    if-nez v1, :cond_3

    .line 252
    :cond_0
    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PREDEFINED_PAGES:[[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    if-nez v1, :cond_1

    .line 253
    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "PREDEFINED_PAGES is null"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_1
    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PREDEFINED_DOCK:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    if-nez v1, :cond_2

    .line 256
    sget-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "PREDEFINED_DOCK is null"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_2
    const/4 v1, 0x4

    new-array v1, v1, [[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PAGE1:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v1, v4

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PAGE2:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v1, v5

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PAGE3:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v1, v6

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PAGE4:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v1, v7

    sput-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PREDEFINED_PAGES:[[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 261
    new-array v1, v7, [Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PHONE:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v1, v4

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->BROWSER:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v1, v5

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->MMS:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v1, v6

    sput-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PREDEFINED_DOCK:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 265
    :cond_3
    return-void

    .line 244
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v2

    .line 245
    check-cast v1, [[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    sput-object v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PREDEFINED_PAGES:[[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 246
    sput-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PREDEFINED_DOCK:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 247
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isActiveIconApp(Ljava/lang/String;)Z
    .locals 6
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 476
    if-nez p0, :cond_1

    .line 484
    :cond_0
    :goto_0
    return v1

    .line 479
    :cond_1
    sget-object v3, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->ACTIVE_APPS:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 480
    .local v0, "app":Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    iget-object v5, v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 481
    const/4 v1, 0x1

    goto :goto_0

    .line 479
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isEmbeddedApp(Ljava/lang/String;)Z
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 232
    if-eqz p0, :cond_0

    .line 233
    invoke-static {p0}, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->getEmbeddedApp(Ljava/lang/String;)Lcom/smartisanos/home/apps/EmbeddedApp;

    move-result-object v0

    .line 234
    .local v0, "app":Lcom/smartisanos/home/apps/EmbeddedApp;
    if-eqz v0, :cond_0

    .line 235
    const/4 v1, 0x1

    .line 238
    .end local v0    # "app":Lcom/smartisanos/home/apps/EmbeddedApp;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNeedDownloadApp(Ljava/lang/String;)Z
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 219
    if-eqz p0, :cond_0

    .line 220
    invoke-static {p0}, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->getEmbeddedApp(Ljava/lang/String;)Lcom/smartisanos/home/apps/EmbeddedApp;

    move-result-object v0

    .line 221
    .local v0, "app":Lcom/smartisanos/home/apps/EmbeddedApp;
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Lcom/smartisanos/home/apps/EmbeddedApp;->pkg()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.smartisanos.weather"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    .end local v0    # "app":Lcom/smartisanos/home/apps/EmbeddedApp;
    :cond_0
    :goto_0
    return v1

    .line 225
    .restart local v0    # "app":Lcom/smartisanos/home/apps/EmbeddedApp;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isPreinstalledApp(Ljava/lang/String;)Z
    .locals 6
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 524
    if-nez p0, :cond_1

    .line 532
    :cond_0
    :goto_0
    return v1

    .line 527
    :cond_1
    sget-object v3, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PREINSTALLED_APPS:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 528
    .local v0, "app":Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    iget-object v5, v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 529
    const/4 v1, 0x1

    goto :goto_0

    .line 527
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isSettings(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "cmp"    # Ljava/lang/String;

    .prologue
    .line 464
    const/4 v0, 0x0

    .line 465
    .local v0, "f":Z
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v1, v0

    .line 472
    .end local v0    # "f":Z
    .local v1, "f":I
    :goto_0
    return v1

    .line 468
    .end local v1    # "f":I
    .restart local v0    # "f":Z
    :cond_1
    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SETTINGS:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SETTINGS:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->cmp:Ljava/lang/String;

    .line 469
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 470
    const/4 v0, 0x1

    :cond_2
    move v1, v0

    .line 472
    .restart local v1    # "f":I
    goto :goto_0
.end method

.method private static loadData(Landroid/content/Context;)V
    .locals 23
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 268
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 269
    .local v17, "resources":Landroid/content/res/Resources;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v6, "appNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 271
    .local v16, "pageNameArr":[Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 273
    .local v7, "appOnPage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    :try_start_0
    sget v19, Lcom/smartisanos/launcher/ResIds$array;->app_display_order:I

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->readStringArray(Landroid/content/res/Resources;I)[Ljava/lang/String;

    move-result-object v16

    .line 274
    if-nez v16, :cond_2

    .line 275
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "app_display_order is null !"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :catch_0
    move-exception v10

    .line 296
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v9, 0x0

    .line 300
    .local v9, "dockAppNames":[Ljava/lang/String;
    :try_start_1
    sget v19, Lcom/smartisanos/launcher/ResIds$array;->dock_apps:I

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 301
    if-eqz v9, :cond_8

    .line 302
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_8

    .line 303
    aget-object v2, v9, v11

    .line 304
    .local v2, "app":Ljava/lang/String;
    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 305
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 302
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 277
    .end local v2    # "app":Ljava/lang/String;
    .end local v9    # "dockAppNames":[Ljava/lang/String;
    .end local v11    # "i":I
    :cond_2
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_1
    :try_start_2
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_0

    .line 278
    aget-object v15, v16, v11

    .line 279
    .local v15, "pageName":Ljava/lang/String;
    if-nez v15, :cond_4

    .line 277
    :cond_3
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 282
    :cond_4
    move-object/from16 v0, v17

    invoke-static {v0, v15}, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->readStringArray(Landroid/content/res/Resources;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 283
    .local v8, "apps":[Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 284
    array-length v0, v8

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_3
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    aget-object v2, v8, v19

    .line 285
    .restart local v2    # "app":Ljava/lang/String;
    if-nez v2, :cond_6

    .line 284
    :cond_5
    :goto_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 288
    :cond_6
    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 289
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 292
    .end local v2    # "app":Ljava/lang/String;
    :cond_7
    invoke-interface {v7, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 309
    .end local v8    # "apps":[Ljava/lang/String;
    .end local v11    # "i":I
    .end local v15    # "pageName":Ljava/lang/String;
    .restart local v9    # "dockAppNames":[Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 310
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 313
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_8
    :try_start_3
    sget v19, Lcom/smartisanos/launcher/ResIds$array;->SYSTEM_APPS:I

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->readStringArray(Landroid/content/res/Resources;I)[Ljava/lang/String;

    move-result-object v18

    .line 314
    .local v18, "systemAppNames":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_5
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    aget-object v13, v18, v19

    .line 315
    .local v13, "name":Ljava/lang/String;
    if-nez v13, :cond_a

    .line 314
    :cond_9
    :goto_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 318
    :cond_a
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 319
    invoke-interface {v6, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_9

    .line 320
    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    .line 323
    .end local v13    # "name":Ljava/lang/String;
    .end local v18    # "systemAppNames":[Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 324
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 327
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_b
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 328
    .local v3, "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_c
    :goto_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_d

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 329
    .local v4, "appName":Ljava/lang/String;
    if-eqz v4, :cond_c

    .line 332
    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->toApp(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    move-result-object v2

    .line 333
    .local v2, "app":Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    if-eqz v2, :cond_c

    .line 334
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 338
    .end local v2    # "app":Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    .end local v4    # "appName":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    move-object/from16 v19, v0

    sput-object v19, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PREDEFINED_PAGES:[[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 339
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_8
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_11

    .line 340
    aget-object v15, v16, v11

    .line 341
    .restart local v15    # "pageName":Ljava/lang/String;
    invoke-interface {v7, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 342
    .local v5, "appNameArr":[Ljava/lang/String;
    if-nez v5, :cond_e

    .line 343
    sget-object v19, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->log:Lcom/smartisanos/launcher/LOG;

    const-string v20, "DEBUG"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "lose page by name ==> ["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_e
    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v14, v0, [Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 346
    .local v14, "page":[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_9
    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_10

    .line 347
    aget-object v4, v5, v12

    .line 348
    .restart local v4    # "appName":Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 349
    .restart local v2    # "app":Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    aput-object v2, v14, v12

    .line 350
    if-nez v2, :cond_f

    .line 351
    sget-object v19, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->log:Lcom/smartisanos/launcher/LOG;

    const-string v20, "DEBUG"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "can\'t find app ["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] in page ["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "], index ["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 354
    .end local v2    # "app":Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    .end local v4    # "appName":Ljava/lang/String;
    :cond_10
    sget-object v19, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PREDEFINED_PAGES:[[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v14, v19, v11

    .line 339
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_8

    .line 356
    .end local v5    # "appNameArr":[Ljava/lang/String;
    .end local v12    # "j":I
    .end local v14    # "page":[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    .end local v15    # "pageName":Ljava/lang/String;
    :cond_11
    if-eqz v9, :cond_13

    .line 357
    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    move-object/from16 v19, v0

    sput-object v19, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PREDEFINED_DOCK:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 358
    const/4 v11, 0x0

    :goto_a
    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_13

    .line 359
    aget-object v4, v9, v11

    .line 360
    .restart local v4    # "appName":Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 361
    .restart local v2    # "app":Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    sget-object v19, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PREDEFINED_DOCK:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aput-object v2, v19, v11

    .line 362
    if-nez v2, :cond_12

    .line 363
    sget-object v19, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->log:Lcom/smartisanos/launcher/LOG;

    const-string v20, "DEBUG"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "can\'t find dock app ["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "], index ["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_12
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 367
    .end local v2    # "app":Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    .end local v4    # "appName":Ljava/lang/String;
    :cond_13
    return-void
.end method

.method private static readStringArray(Landroid/content/res/Resources;I)[Ljava/lang/String;
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 428
    const/4 v0, 0x0

    .line 430
    .local v0, "arr":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 431
    if-eqz v0, :cond_1

    .line 432
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 433
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 434
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 438
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 439
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 440
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 442
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v0
.end method

.method private static readStringArray(Landroid/content/res/Resources;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 415
    const/4 v1, -0x1

    .line 417
    .local v1, "id":I
    :try_start_0
    const-string v2, "array"

    const-string v3, "com.smartisanos.home"

    invoke-virtual {p0, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 421
    :goto_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 422
    const/4 v2, 0x0

    .line 424
    :goto_1
    return-object v2

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 424
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {p0, v1}, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->readStringArray(Landroid/content/res/Resources;I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static setEmbeddedAppByChannelId(I)V
    .locals 7
    .param p0, "channelId"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 125
    sparse-switch p0, :sswitch_data_0

    .line 175
    :goto_0
    return-void

    .line 127
    :sswitch_0
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smartisanos/home/apps/EmbeddedApp;

    new-instance v1, Lcom/smartisanos/home/apps/LauncherSettings;

    invoke-direct {v1}, Lcom/smartisanos/home/apps/LauncherSettings;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Lcom/smartisanos/home/apps/Weather;

    invoke-direct {v1}, Lcom/smartisanos/home/apps/Weather;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Lcom/smartisanos/home/apps/Search;

    invoke-direct {v1}, Lcom/smartisanos/home/apps/Search;-><init>()V

    aput-object v1, v0, v4

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->EMBEDDED_APPS:[Lcom/smartisanos/home/apps/EmbeddedApp;

    goto :goto_0

    .line 144
    :sswitch_1
    new-array v0, v4, [Lcom/smartisanos/home/apps/EmbeddedApp;

    new-instance v1, Lcom/smartisanos/home/apps/LauncherSettings;

    invoke-direct {v1}, Lcom/smartisanos/home/apps/LauncherSettings;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Lcom/smartisanos/home/apps/Weather;

    invoke-direct {v1}, Lcom/smartisanos/home/apps/Weather;-><init>()V

    aput-object v1, v0, v3

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->EMBEDDED_APPS:[Lcom/smartisanos/home/apps/EmbeddedApp;

    goto :goto_0

    .line 161
    :sswitch_2
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smartisanos/home/apps/EmbeddedApp;

    new-instance v1, Lcom/smartisanos/home/apps/LauncherSettings;

    invoke-direct {v1}, Lcom/smartisanos/home/apps/LauncherSettings;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Lcom/smartisanos/home/apps/Weather;

    invoke-direct {v1}, Lcom/smartisanos/home/apps/Weather;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Lcom/smartisanos/home/apps/Search;

    invoke-direct {v1}, Lcom/smartisanos/home/apps/Search;-><init>()V

    aput-object v1, v0, v4

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->EMBEDDED_APPS:[Lcom/smartisanos/home/apps/EmbeddedApp;

    goto/16 :goto_0

    .line 125
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_2
        0x68 -> :sswitch_2
        0x69 -> :sswitch_2
        0x6b -> :sswitch_2
        0x6c -> :sswitch_2
        0xc9 -> :sswitch_2
        0xca -> :sswitch_2
        0xcb -> :sswitch_2
        0xcc -> :sswitch_2
        0xcd -> :sswitch_2
    .end sparse-switch
.end method

.method public static setMarketEnable(Z)V
    .locals 7
    .param p0, "enable"    # Z

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 178
    if-eqz p0, :cond_0

    .line 179
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smartisanos/home/apps/EmbeddedApp;

    new-instance v1, Lcom/smartisanos/home/apps/LauncherSettings;

    invoke-direct {v1}, Lcom/smartisanos/home/apps/LauncherSettings;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Lcom/smartisanos/home/apps/Weather;

    invoke-direct {v1}, Lcom/smartisanos/home/apps/Weather;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Lcom/smartisanos/home/apps/Search;

    invoke-direct {v1}, Lcom/smartisanos/home/apps/Search;-><init>()V

    aput-object v1, v0, v4

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->EMBEDDED_APPS:[Lcom/smartisanos/home/apps/EmbeddedApp;

    .line 205
    :goto_0
    return-void

    .line 193
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smartisanos/home/apps/EmbeddedApp;

    new-instance v1, Lcom/smartisanos/home/apps/LauncherSettings;

    invoke-direct {v1}, Lcom/smartisanos/home/apps/LauncherSettings;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Lcom/smartisanos/home/apps/Weather;

    invoke-direct {v1}, Lcom/smartisanos/home/apps/Weather;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Lcom/smartisanos/home/apps/Search;

    invoke-direct {v1}, Lcom/smartisanos/home/apps/Search;-><init>()V

    aput-object v1, v0, v4

    sput-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->EMBEDDED_APPS:[Lcom/smartisanos/home/apps/EmbeddedApp;

    goto :goto_0
.end method

.method private static toApp(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    .locals 14
    .param p0, "appName"    # Ljava/lang/String;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 370
    const/4 v0, 0x0

    .line 372
    .local v0, "app":Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    :try_start_0
    invoke-static {p1, p0}, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->readStringArray(Landroid/content/res/Resources;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 373
    .local v6, "infos":[Ljava/lang/String;
    if-eqz v6, :cond_6

    array-length v10, v6

    if-lez v10, :cond_6

    .line 374
    const/4 v10, 0x0

    aget-object v5, v6, v10

    .line 375
    .local v5, "info":Ljava/lang/String;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 376
    const-string v10, ";"

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 377
    .local v9, "pkgAndCmp":[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 378
    const/4 v10, 0x0

    aget-object v8, v9, v10

    .line 379
    .local v8, "pkg":Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v2, v9, v10

    .line 380
    .local v2, "cmp":Ljava/lang/String;
    if-eqz v8, :cond_0

    if-eqz v2, :cond_0

    .line 381
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 382
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 383
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    .line 384
    new-instance v1, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    invoke-direct {v1, v8, v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "app":Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    .local v1, "app":Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    move-object v0, v1

    .line 390
    .end local v1    # "app":Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    .end local v2    # "cmp":Ljava/lang/String;
    .end local v8    # "pkg":Ljava/lang/String;
    .restart local v0    # "app":Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    array-length v10, v6

    const/4 v11, 0x1

    if-le v10, v11, :cond_2

    .line 392
    array-length v10, v6

    add-int/lit8 v10, v10, -0x1

    new-array v7, v10, [Ljava/lang/String;

    .line 393
    .local v7, "oldNames":[Ljava/lang/String;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    array-length v10, v6

    if-ge v4, v10, :cond_4

    .line 394
    add-int/lit8 v10, v4, -0x1

    aget-object v11, v6, v4

    aput-object v11, v7, v10

    .line 393
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 388
    .end local v4    # "i":I
    .end local v7    # "oldNames":[Ljava/lang/String;
    :cond_1
    sget-object v10, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "DEBUG"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error pkgAndCmp length ==> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 404
    .end local v5    # "info":Ljava/lang/String;
    .end local v6    # "infos":[Ljava/lang/String;
    .end local v9    # "pkgAndCmp":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 405
    .local v3, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 406
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 408
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 409
    sget-object v10, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "DEBUG"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parse ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] to app error !"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_3
    return-object v0

    .line 396
    .restart local v4    # "i":I
    .restart local v5    # "info":Ljava/lang/String;
    .restart local v6    # "infos":[Ljava/lang/String;
    .restart local v7    # "oldNames":[Ljava/lang/String;
    .restart local v9    # "pkgAndCmp":[Ljava/lang/String;
    :cond_4
    :try_start_1
    iput-object v7, v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->oldNames:[Ljava/lang/String;

    goto :goto_2

    .line 399
    .end local v4    # "i":I
    .end local v7    # "oldNames":[Ljava/lang/String;
    .end local v9    # "pkgAndCmp":[Ljava/lang/String;
    :cond_5
    sget-object v10, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "DEBUG"

    const-string v12, "info is empty"

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 402
    .end local v5    # "info":Ljava/lang/String;
    :cond_6
    sget-object v10, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "DEBUG"

    const-string v12, "infos is null"

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
