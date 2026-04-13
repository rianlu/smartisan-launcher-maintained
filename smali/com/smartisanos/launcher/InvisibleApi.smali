.class public Lcom/smartisanos/launcher/InvisibleApi;
.super Ljava/lang/Object;
.source "InvisibleApi.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/LOG;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/smartisanos/launcher/InvisibleApi;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/InvisibleApi;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableScreenAfterBoot(Landroid/app/ActivityManager;)V
    .locals 0
    .param p0, "activityManager"    # Landroid/app/ActivityManager;

    .prologue
    .line 69
    return-void
.end method

.method public static forceStopPackage(Landroid/app/ActivityManager;Ljava/lang/String;)V
    .locals 1
    .param p0, "am"    # Landroid/app/ActivityManager;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 96
    return-void
.end method

.method public static getHomeActivities(Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)V
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Utils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initWindow(Landroid/view/Window;)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 79
    .local v0, "winParams":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 81
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 83
    return-void
.end method

.method public static lockPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageNames"    # Ljava/lang/String;

    .prologue
    .line 61
    return-void
.end method

.method public static pauseDownload(Landroid/app/DownloadManager;J)V
    .locals 0
    .param p0, "dm"    # Landroid/app/DownloadManager;
    .param p1, "downloadId"    # J

    .prologue
    .line 36
    return-void
.end method

.method public static resetWindowOneHandedState(Landroid/view/WindowManager;)V
    .locals 0
    .param p0, "windowManager"    # Landroid/view/WindowManager;

    .prologue
    .line 20
    if-nez p0, :cond_0

    .line 24
    :cond_0
    return-void
.end method

.method public static resumeDownload(Landroid/app/DownloadManager;J)V
    .locals 0
    .param p0, "dm"    # Landroid/app/DownloadManager;
    .param p1, "downloadId"    # J

    .prologue
    .line 32
    return-void
.end method

.method public static sessionUnlockAllPackages(Landroid/content/pm/PackageManager;)V
    .locals 0
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 57
    return-void
.end method

.method public static sessionUnlockPackageLPw(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 53
    return-void
.end method

.method public static setAccessAllDownloads(Landroid/app/DownloadManager;Z)V
    .locals 0
    .param p0, "downloadManager"    # Landroid/app/DownloadManager;
    .param p1, "accessAllDownloads"    # Z

    .prologue
    .line 40
    return-void
.end method

.method public static setAnimationScale(IF)V
    .locals 0
    .param p0, "witch"    # I
    .param p1, "scale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 91
    return-void
.end method

.method public static unlockPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageNames"    # Ljava/lang/String;

    .prologue
    .line 65
    return-void
.end method
