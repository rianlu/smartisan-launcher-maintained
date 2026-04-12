.class public Lcom/smartisan/updater/ApkUpdater;
.super Landroid/os/AsyncTask;
.source "ApkUpdater.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisan/updater/ApkUpdater$DownloadReceiver;,
        Lcom/smartisan/updater/ApkUpdater$DownloadObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/smartisan/updater/Version;",
        ">;",
        "Landroid/content/DialogInterface$OnDismissListener;"
    }
.end annotation


# static fields
.field private static final EVT_CLICK_CHECK_UPDATE:I = 0x1b5e

.field private static final TAG:Ljava/lang/String; = "ApkUpdater"


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mCheckIfOsNeedUpgrade:Z

.field private mCheckMd5:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultSize:J

.field private mDownloadId:J

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mDownloadReceiver:Lcom/smartisan/updater/ApkUpdater$DownloadReceiver;

.field private mEvtPrefix:Ljava/lang/String;

.field private mIsManualUpdate:Z

.field private mNeedShowDialogAlways:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSupportForceUpdate:Z

.field private mUpdateUI:Lcom/smartisan/updater/UpdateUI;

.field private mUpdateUrl:Ljava/lang/String;

.field private mVersionMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isManual"    # Z

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisan/updater/ApkUpdater;->mUpdateUI:Lcom/smartisan/updater/UpdateUI;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisan/updater/ApkUpdater;->mCheckMd5:Z

    .line 76
    iput-object p1, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    .line 77
    iput-boolean p3, p0, Lcom/smartisan/updater/ApkUpdater;->mIsManualUpdate:Z

    .line 78
    iput-object p2, p0, Lcom/smartisan/updater/ApkUpdater;->mUpdateUrl:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/smartisan/updater/UpdateUtils;->getSmartisanAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/updater/ApkUpdater;->mEvtPrefix:Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v1, v0}, Lcom/smartisan/trackerlib/Agent;->init(Landroid/app/Application;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;J)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isManual"    # Z
    .param p4, "appName"    # Ljava/lang/String;
    .param p5, "appSize"    # J

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisan/updater/ApkUpdater;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 93
    iput-object p4, p0, Lcom/smartisan/updater/ApkUpdater;->mAppName:Ljava/lang/String;

    .line 94
    iput-wide p5, p0, Lcom/smartisan/updater/ApkUpdater;->mDefaultSize:J

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;JZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isManual"    # Z
    .param p4, "appName"    # Ljava/lang/String;
    .param p5, "appSize"    # J
    .param p7, "needShowDialogAlways"    # Z

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisan/updater/ApkUpdater;->mUpdateUI:Lcom/smartisan/updater/UpdateUI;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisan/updater/ApkUpdater;->mCheckMd5:Z

    .line 107
    iput-object p1, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    .line 108
    iput-boolean p3, p0, Lcom/smartisan/updater/ApkUpdater;->mIsManualUpdate:Z

    .line 109
    iput-object p2, p0, Lcom/smartisan/updater/ApkUpdater;->mUpdateUrl:Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/smartisan/updater/UpdateUtils;->getSmartisanAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/updater/ApkUpdater;->mEvtPrefix:Ljava/lang/String;

    .line 111
    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v1, v0}, Lcom/smartisan/trackerlib/Agent;->init(Landroid/app/Application;)V

    .line 112
    iput-object p4, p0, Lcom/smartisan/updater/ApkUpdater;->mAppName:Ljava/lang/String;

    .line 113
    iput-wide p5, p0, Lcom/smartisan/updater/ApkUpdater;->mDefaultSize:J

    .line 114
    iput-boolean p7, p0, Lcom/smartisan/updater/ApkUpdater;->mNeedShowDialogAlways:Z

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/smartisan/updater/ApkUpdater;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/updater/ApkUpdater;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisan/updater/ApkUpdater;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/updater/ApkUpdater;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/smartisan/updater/ApkUpdater;->exit()V

    return-void
.end method

.method static synthetic access$200(Lcom/smartisan/updater/ApkUpdater;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/updater/ApkUpdater;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/smartisan/updater/ApkUpdater;->mIsManualUpdate:Z

    return v0
.end method

.method static synthetic access$300(Lcom/smartisan/updater/ApkUpdater;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/updater/ApkUpdater;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/smartisan/updater/ApkUpdater;->registerDownloadReceiver()V

    return-void
.end method

.method static synthetic access$400(Lcom/smartisan/updater/ApkUpdater;)J
    .locals 2
    .param p0, "x0"    # Lcom/smartisan/updater/ApkUpdater;

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/smartisan/updater/ApkUpdater;->mDownloadId:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/smartisan/updater/ApkUpdater;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/updater/ApkUpdater;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/smartisan/updater/ApkUpdater;->getDownloadProcess()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/smartisan/updater/ApkUpdater;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/updater/ApkUpdater;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/smartisan/updater/ApkUpdater;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/smartisan/updater/ApkUpdater;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/updater/ApkUpdater;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/smartisan/updater/ApkUpdater;->unRegisterDownloadReceiver()V

    return-void
.end method

.method private checkSmartisanOs()V
    .locals 2

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/smartisan/updater/ApkUpdater;->mCheckIfOsNeedUpgrade:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/smartisan/updater/ApkUpdater;->isActivityFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/smartisan/updater/OsUpdateNotifer;

    invoke-direct {v0}, Lcom/smartisan/updater/OsUpdateNotifer;-><init>()V

    iget-object v1, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/smartisan/updater/OsUpdateNotifer;->notifyIfUpdatable(Landroid/content/Context;)V

    .line 133
    :cond_0
    return-void
.end method

.method private exit()V
    .locals 6

    .prologue
    .line 559
    iget-object v2, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 560
    iget-object v0, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 561
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 562
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 563
    .local v1, "timer":Ljava/util/Timer;
    new-instance v2, Lcom/smartisan/updater/ApkUpdater$6;

    invoke-direct {v2, p0}, Lcom/smartisan/updater/ApkUpdater$6;-><init>(Lcom/smartisan/updater/ApkUpdater;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 572
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "timer":Ljava/util/Timer;
    :goto_0
    return-void

    .line 570
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0
.end method

.method private getDownloadProcess()I
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 626
    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 627
    .local v1, "query":Landroid/app/DownloadManager$Query;
    const/4 v7, 0x1

    new-array v7, v7, [J

    iget-wide v8, p0, Lcom/smartisan/updater/ApkUpdater;->mDownloadId:J

    aput-wide v8, v7, v6

    invoke-virtual {v1, v7}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 628
    iget-object v7, p0, Lcom/smartisan/updater/ApkUpdater;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v7, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 629
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 630
    const-string v7, "total_size"

    .line 631
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 630
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 632
    .local v4, "size":J
    const-string v7, "bytes_so_far"

    .line 633
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 632
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 634
    .local v2, "downloadSize":J
    const-wide/16 v8, -0x1

    cmp-long v7, v4, v8

    if-eqz v7, :cond_0

    .line 635
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    long-to-double v8, v2

    mul-double/2addr v6, v8

    long-to-double v8, v4

    div-double/2addr v6, v8

    double-to-int v6, v6

    .line 637
    .end local v2    # "downloadSize":J
    .end local v4    # "size":J
    :cond_0
    return v6
.end method

.method private initDownloadObserver(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 552
    iget-object v1, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    const-string v2, "download"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    iput-object v1, p0, Lcom/smartisan/updater/ApkUpdater;->mDownloadManager:Landroid/app/DownloadManager;

    .line 553
    const-string v1, "content://downloads/my_downloads/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 554
    .local v0, "myDownloads":Landroid/net/Uri;
    iget-object v1, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/smartisan/updater/ApkUpdater$DownloadObserver;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/smartisan/updater/ApkUpdater$DownloadObserver;-><init>(Lcom/smartisan/updater/ApkUpdater;Landroid/os/Handler;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 556
    return-void
.end method

.method private isActivityFinished()Z
    .locals 3

    .prologue
    .line 641
    const/4 v1, 0x0

    .line 643
    .local v1, "isFinished":Z
    iget-object v2, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 644
    const/4 v1, 0x1

    .line 652
    :cond_0
    :goto_0
    return v1

    .line 645
    :cond_1
    iget-object v2, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 646
    iget-object v0, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 647
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 648
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isValidVersion(Lcom/smartisan/updater/Version;)Z
    .locals 8
    .param p1, "version"    # Lcom/smartisan/updater/Version;

    .prologue
    .line 320
    const/4 v2, 0x0

    .line 322
    .local v2, "isValid":Z
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/smartisan/updater/Version;->isNeedUpdate()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 323
    invoke-virtual {p1}, Lcom/smartisan/updater/Version;->getUpdateUrl()Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, "urlStr":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 326
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 327
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "protocol":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "https"

    .line 329
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 332
    :cond_0
    const/4 v2, 0x1

    .line 342
    .end local v1    # "host":Ljava/lang/String;
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "urlStr":Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 334
    .restart local v1    # "host":Ljava/lang/String;
    .restart local v3    # "url":Ljava/net/URL;
    .restart local v4    # "urlStr":Ljava/lang/String;
    :cond_2
    const-string v5, "ApkUpdater"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid download url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 336
    .end local v1    # "host":Ljava/lang/String;
    .end local v3    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method private isVersionChecked()Z
    .locals 13

    .prologue
    .line 580
    const/4 v11, 0x0

    .line 582
    .local v11, "isChecked":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 583
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 584
    .local v10, "curYear":I
    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 585
    .local v7, "curMonth":I
    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 586
    .local v6, "curDay":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 588
    .local v8, "curTime":J
    iget-object v12, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/smartisan/updater/UpdateSharedPreference;->getInstance(Landroid/content/Context;)Lcom/smartisan/updater/UpdateSharedPreference;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisan/updater/UpdateSharedPreference;->getCheckTime()J

    move-result-wide v2

    .line 589
    .local v2, "checkTime":J
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 590
    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 591
    .local v5, "chkYear":I
    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 592
    .local v4, "chkMonth":I
    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 593
    .local v1, "chkDay":I
    if-ne v10, v5, :cond_0

    if-ne v7, v4, :cond_0

    if-ne v6, v1, :cond_0

    cmp-long v12, v8, v2

    if-lez v12, :cond_0

    .line 597
    const/4 v11, 0x1

    .line 600
    :cond_0
    return v11
.end method

.method private registerDownloadReceiver()V
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/smartisan/updater/ApkUpdater;->registerDownloadReceiver(Z)V

    .line 292
    return-void
.end method

.method private registerDownloadReceiver(Z)V
    .locals 3
    .param p1, "forceUpdate"    # Z

    .prologue
    .line 298
    iget-object v1, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 299
    new-instance v1, Lcom/smartisan/updater/ApkUpdater$DownloadReceiver;

    invoke-direct {v1, p0, p1}, Lcom/smartisan/updater/ApkUpdater$DownloadReceiver;-><init>(Lcom/smartisan/updater/ApkUpdater;Z)V

    iput-object v1, p0, Lcom/smartisan/updater/ApkUpdater;->mDownloadReceiver:Lcom/smartisan/updater/ApkUpdater$DownloadReceiver;

    .line 300
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 301
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/smartisan/updater/ApkUpdater;->mDownloadReceiver:Lcom/smartisan/updater/ApkUpdater$DownloadReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 304
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private showDownloadDialog(Landroid/content/Context;Lcom/smartisan/updater/Version;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "version"    # Lcom/smartisan/updater/Version;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 438
    invoke-virtual {p2}, Lcom/smartisan/updater/Version;->getCode()I

    move-result v5

    iget-object v6, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/smartisan/updater/UpdateSharedPreference;->getInstance(Landroid/content/Context;)Lcom/smartisan/updater/UpdateSharedPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisan/updater/UpdateSharedPreference;->getCheckVersion()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 439
    iget-object v5, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/smartisan/updater/UpdateSharedPreference;->getInstance(Landroid/content/Context;)Lcom/smartisan/updater/UpdateSharedPreference;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/smartisan/updater/UpdateSharedPreference;->showDialog(Z)V

    .line 440
    iget-object v5, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/smartisan/updater/UpdateSharedPreference;->getInstance(Landroid/content/Context;)Lcom/smartisan/updater/UpdateSharedPreference;

    move-result-object v5

    invoke-virtual {p2}, Lcom/smartisan/updater/Version;->getCode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/smartisan/updater/UpdateSharedPreference;->setCheckVersion(I)V

    .line 442
    :cond_0
    iget-boolean v5, p0, Lcom/smartisan/updater/ApkUpdater;->mNeedShowDialogAlways:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/smartisan/updater/ApkUpdater;->mIsManualUpdate:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    .line 443
    invoke-static {v5}, Lcom/smartisan/updater/UpdateSharedPreference;->getInstance(Landroid/content/Context;)Lcom/smartisan/updater/UpdateSharedPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisan/updater/UpdateSharedPreference;->needShowDialog()Z

    move-result v5

    if-nez v5, :cond_1

    .line 514
    :goto_0
    return-void

    .line 447
    :cond_1
    iget-boolean v5, p0, Lcom/smartisan/updater/ApkUpdater;->mIsManualUpdate:Z

    if-nez v5, :cond_4

    .line 448
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x5

    invoke-direct {v1, p1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 454
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    :goto_1
    iget-object v5, p0, Lcom/smartisan/updater/ApkUpdater;->mVersionMessage:Ljava/lang/String;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/smartisan/updater/Version;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 456
    sget v5, Lcom/smartisan/updater/R$string;->check_update:I

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 458
    sget v3, Lcom/smartisan/updater/R$string;->update_download:I

    .line 459
    .local v3, "postiveId":I
    iget-object v5, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/smartisan/updater/Version;->getUpdateUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/smartisan/updater/Version;->getMd5Str()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/smartisan/updater/ApkUpdater;->checkInstallApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 460
    sget v3, Lcom/smartisan/updater/R$string;->update_install:I

    .line 462
    :cond_2
    new-instance v5, Lcom/smartisan/updater/ApkUpdater$3;

    invoke-direct {v5, p0, p2}, Lcom/smartisan/updater/ApkUpdater$3;-><init>(Lcom/smartisan/updater/ApkUpdater;Lcom/smartisan/updater/Version;)V

    invoke-virtual {v1, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 490
    sget v5, Lcom/smartisan/updater/R$string;->update_cancel:I

    new-instance v6, Lcom/smartisan/updater/ApkUpdater$4;

    invoke-direct {v6, p0}, Lcom/smartisan/updater/ApkUpdater$4;-><init>(Lcom/smartisan/updater/ApkUpdater;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 499
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 501
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 502
    .local v0, "alertDlg":Landroid/app/AlertDialog;
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 503
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 504
    iget-object v5, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    instance-of v5, v5, Landroid/app/Activity;

    if-nez v5, :cond_3

    .line 506
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_5

    .line 507
    const/16 v4, 0x7d5

    .line 511
    .local v4, "type":I
    :goto_2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Window;->setType(I)V

    .line 513
    .end local v4    # "type":I
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 450
    .end local v0    # "alertDlg":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "postiveId":I
    :cond_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    goto :goto_1

    .line 509
    .restart local v0    # "alertDlg":Landroid/app/AlertDialog;
    .restart local v2    # "message":Ljava/lang/String;
    .restart local v3    # "postiveId":I
    :cond_5
    const/16 v4, 0x7d2

    .restart local v4    # "type":I
    goto :goto_2
.end method

.method private showForceDownloadConfirmDialog(Lcom/smartisan/updater/Version;)V
    .locals 14
    .param p1, "version"    # Lcom/smartisan/updater/Version;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatMatches"
        }
    .end annotation

    .prologue
    .line 348
    const-string v2, ""

    .line 349
    .local v2, "message":Ljava/lang/String;
    iget-object v5, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/smartisan/updater/UpdateUtils;->isMobileNetworkAllowed(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 350
    iget-object v6, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    sget v7, Lcom/smartisan/updater/R$string;->force_update__var_mobile:I

    const/4 v5, 0x3

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/smartisan/updater/ApkUpdater;->mAppName:Ljava/lang/String;

    aput-object v9, v8, v5

    const/4 v5, 0x1

    .line 351
    invoke-virtual {p1}, Lcom/smartisan/updater/Version;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v9, 0x2

    invoke-virtual {p1}, Lcom/smartisan/updater/Version;->getSize()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-gtz v5, :cond_2

    iget-wide v10, p0, Lcom/smartisan/updater/ApkUpdater;->mDefaultSize:J

    invoke-virtual {p0, v10, v11}, Lcom/smartisan/updater/ApkUpdater;->formateSize(J)F

    move-result v5

    :goto_0
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v9

    .line 350
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 356
    :goto_1
    sget v3, Lcom/smartisan/updater/R$string;->update_download:I

    .line 357
    .local v3, "postiveId":I
    iget-object v5, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/smartisan/updater/Version;->getUpdateUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/smartisan/updater/Version;->getMd5Str()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/smartisan/updater/ApkUpdater;->checkInstallApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 358
    sget v3, Lcom/smartisan/updater/R$string;->update_install:I

    .line 360
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    const/4 v6, 0x5

    invoke-direct {v1, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 362
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    sget v5, Lcom/smartisan/updater/R$string;->check_update:I

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 363
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 364
    new-instance v5, Lcom/smartisan/updater/ApkUpdater$1;

    invoke-direct {v5, p0, p1}, Lcom/smartisan/updater/ApkUpdater$1;-><init>(Lcom/smartisan/updater/ApkUpdater;Lcom/smartisan/updater/Version;)V

    invoke-virtual {v1, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 393
    sget v5, Lcom/smartisan/updater/R$string;->update_cancel:I

    new-instance v6, Lcom/smartisan/updater/ApkUpdater$2;

    invoke-direct {v6, p0}, Lcom/smartisan/updater/ApkUpdater$2;-><init>(Lcom/smartisan/updater/ApkUpdater;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 400
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 402
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 403
    .local v0, "alertDlg":Landroid/app/AlertDialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 404
    iget-object v5, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    instance-of v5, v5, Landroid/app/Activity;

    if-nez v5, :cond_1

    .line 407
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_5

    .line 408
    const/16 v4, 0x7d5

    .line 412
    .local v4, "type":I
    :goto_2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Window;->setType(I)V

    .line 414
    .end local v4    # "type":I
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 418
    return-void

    .line 351
    .end local v0    # "alertDlg":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "postiveId":I
    :cond_2
    invoke-virtual {p1}, Lcom/smartisan/updater/Version;->getSize()J

    move-result-wide v10

    invoke-virtual {p0, v10, v11}, Lcom/smartisan/updater/ApkUpdater;->formateSize(J)F

    move-result v5

    goto :goto_0

    .line 353
    :cond_3
    iget-object v6, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    sget v7, Lcom/smartisan/updater/R$string;->force_update__var_wifi:I

    const/4 v5, 0x3

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/smartisan/updater/ApkUpdater;->mAppName:Ljava/lang/String;

    aput-object v9, v8, v5

    const/4 v5, 0x1

    .line 354
    invoke-virtual {p1}, Lcom/smartisan/updater/Version;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v9, 0x2

    invoke-virtual {p1}, Lcom/smartisan/updater/Version;->getSize()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-gtz v5, :cond_4

    iget-wide v10, p0, Lcom/smartisan/updater/ApkUpdater;->mDefaultSize:J

    invoke-virtual {p0, v10, v11}, Lcom/smartisan/updater/ApkUpdater;->formateSize(J)F

    move-result v5

    :goto_3
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v9

    .line 353
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 354
    :cond_4
    invoke-virtual {p1}, Lcom/smartisan/updater/Version;->getSize()J

    move-result-wide v10

    invoke-virtual {p0, v10, v11}, Lcom/smartisan/updater/ApkUpdater;->formateSize(J)F

    move-result v5

    goto :goto_3

    .line 410
    .restart local v0    # "alertDlg":Landroid/app/AlertDialog;
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v3    # "postiveId":I
    :cond_5
    const/16 v4, 0x7d2

    .restart local v4    # "type":I
    goto :goto_2
.end method

.method private showForceDownloadDialog(Ljava/lang/String;)V
    .locals 7
    .param p1, "updateUrl"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 422
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisan/updater/ApkUpdater;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 423
    iget-object v0, p0, Lcom/smartisan/updater/ApkUpdater;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 424
    iget-object v0, p0, Lcom/smartisan/updater/ApkUpdater;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/smartisan/updater/ApkUpdater;->mProgressDialog:Landroid/app/ProgressDialog;

    sget v1, Lcom/smartisan/updater/R$string;->updating:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 426
    iget-object v0, p0, Lcom/smartisan/updater/ApkUpdater;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    sget v2, Lcom/smartisan/updater/R$string;->auto_update_var_wifi:I

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/smartisan/updater/ApkUpdater;->mAppName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v0, p0, Lcom/smartisan/updater/ApkUpdater;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 428
    iget-object v0, p0, Lcom/smartisan/updater/ApkUpdater;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 430
    invoke-direct {p0, v5}, Lcom/smartisan/updater/ApkUpdater;->registerDownloadReceiver(Z)V

    .line 431
    iget-object v0, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/smartisan/updater/UpdateUtils;->download(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisan/updater/ApkUpdater;->mDownloadId:J

    .line 432
    const-string v0, "ApkUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDownloadId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/smartisan/updater/ApkUpdater;->mDownloadId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisan/updater/UpdateSharedPreference;->getInstance(Landroid/content/Context;)Lcom/smartisan/updater/UpdateSharedPreference;

    move-result-object v0

    iget-wide v2, p0, Lcom/smartisan/updater/ApkUpdater;->mDownloadId:J

    invoke-virtual {v0, v2, v3}, Lcom/smartisan/updater/UpdateSharedPreference;->setDownloadId(J)V

    .line 434
    invoke-direct {p0, p1}, Lcom/smartisan/updater/ApkUpdater;->initDownloadObserver(Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method private showOtaHintDailog(Z)V
    .locals 8
    .param p1, "forceExit"    # Z

    .prologue
    const/4 v7, 0x0

    .line 518
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    const/4 v4, 0x5

    invoke-direct {v1, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 520
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    sget v3, Lcom/smartisan/updater/R$string;->check_update:I

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 521
    iget-object v3, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    sget v4, Lcom/smartisan/updater/R$string;->ota_upate_hint:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/smartisan/updater/ApkUpdater;->mAppName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 522
    sget v3, Lcom/smartisan/updater/R$string;->update_cancel:I

    new-instance v4, Lcom/smartisan/updater/ApkUpdater$5;

    invoke-direct {v4, p0, p1}, Lcom/smartisan/updater/ApkUpdater$5;-><init>(Lcom/smartisan/updater/ApkUpdater;Z)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 530
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 532
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 533
    .local v0, "alertDlg":Landroid/app/AlertDialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 534
    iget-object v3, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 536
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_1

    .line 537
    const/16 v2, 0x7d5

    .line 541
    .local v2, "type":I
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setType(I)V

    .line 543
    .end local v2    # "type":I
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 544
    return-void

    .line 539
    :cond_1
    const/16 v2, 0x7d2

    .restart local v2    # "type":I
    goto :goto_0
.end method

.method private unRegisterDownloadReceiver()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/smartisan/updater/ApkUpdater;->mDownloadReceiver:Lcom/smartisan/updater/ApkUpdater$DownloadReceiver;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/smartisan/updater/ApkUpdater;->mDownloadReceiver:Lcom/smartisan/updater/ApkUpdater$DownloadReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 310
    :cond_0
    return-void
.end method


# virtual methods
.method public checkInstallApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updateUrl"    # Ljava/lang/String;
    .param p3, "md5Str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 704
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisan/updater/UpdateUtils;->getDownloadApkFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 705
    .local v1, "filePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 707
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 715
    :goto_0
    return v2

    .line 710
    :cond_0
    iget-boolean v3, p0, Lcom/smartisan/updater/ApkUpdater;->mCheckMd5:Z

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/smartisan/updater/UpdateUtils;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 711
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 715
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public checkUpdate()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 246
    iget-boolean v2, p0, Lcom/smartisan/updater/ApkUpdater;->mIsManualUpdate:Z

    if-eqz v2, :cond_0

    .line 247
    invoke-static {}, Lcom/smartisan/trackerlib/Agent;->getInstance()Lcom/smartisan/trackerlib/Agent;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/smartisan/updater/ApkUpdater;->mEvtPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x1b5e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisan/trackerlib/Agent;->onEvent(Ljava/lang/String;)V

    .line 260
    :cond_0
    iget-boolean v2, p0, Lcom/smartisan/updater/ApkUpdater;->mIsManualUpdate:Z

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/smartisan/updater/ApkUpdater;->isVersionChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 260
    :cond_1
    iget-object v2, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/smartisan/updater/UpdateUtils;->isNetworkAllowed(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v1}, Lcom/smartisan/updater/ApkUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 262
    const/4 v1, 0x1

    .line 269
    :goto_0
    return v1

    .line 263
    :cond_2
    iget-boolean v2, p0, Lcom/smartisan/updater/ApkUpdater;->mIsManualUpdate:Z

    if-eqz v2, :cond_3

    .line 265
    iget-object v2, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    sget v3, Lcom/smartisan/updater/R$string;->no_network:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "noNetWork":Ljava/lang/String;
    iget-object v2, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 268
    .end local v0    # "noNetWork":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/smartisan/updater/ApkUpdater;->checkSmartisanOs()V

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/smartisan/updater/Version;
    .locals 14
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v10, 0x0

    .line 145
    iget-object v11, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/smartisan/updater/UpdateSharedPreference;->getInstance(Landroid/content/Context;)Lcom/smartisan/updater/UpdateSharedPreference;

    move-result-object v7

    .line 146
    .local v7, "sharePreFerence":Lcom/smartisan/updater/UpdateSharedPreference;
    iget-object v11, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/smartisan/updater/UpdateSharedPreference;->getDownloadId()J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Lcom/smartisan/updater/UpdateUtils;->isDownloadProcessing(Landroid/content/Context;J)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v9, v10

    .line 193
    :cond_0
    :goto_0
    return-object v9

    .line 150
    :cond_1
    const/4 v9, 0x0

    .line 151
    .local v9, "version":Lcom/smartisan/updater/Version;
    const/4 v5, 0x0

    .line 152
    .local v5, "inputStream":Ljava/io/InputStream;
    new-instance v4, Lcom/smartisan/updater/HttpGetData;

    invoke-direct {v4}, Lcom/smartisan/updater/HttpGetData;-><init>()V

    .line 156
    .local v4, "httpdata":Lcom/smartisan/updater/HttpGetData;
    :try_start_0
    iget-object v11, p0, Lcom/smartisan/updater/ApkUpdater;->mUpdateUrl:Ljava/lang/String;

    invoke-virtual {v4, v11}, Lcom/smartisan/updater/HttpGetData;->executeHttpGetWithRetry(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 157
    if-nez v5, :cond_3

    .line 186
    if-eqz v5, :cond_2

    .line 187
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    move-object v9, v10

    .line 158
    goto :goto_0

    .line 189
    :catch_0
    move-exception v3

    .line 190
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 160
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_2
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 161
    .local v8, "stringBuffer":Ljava/lang/StringBuffer;
    new-instance v6, Ljava/io/InputStreamReader;

    const-string v11, "UTF-8"

    invoke-direct {v6, v5, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 163
    .local v6, "inputStreamReader":Ljava/io/InputStreamReader;
    const/16 v11, 0x2800

    new-array v0, v11, [C

    .line 164
    .local v0, "buffer":[C
    :goto_2
    invoke-virtual {v6, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v1

    .local v1, "count":I
    if-lez v1, :cond_5

    .line 165
    const/4 v11, 0x0

    invoke-virtual {v8, v0, v11, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 180
    .end local v0    # "buffer":[C
    .end local v1    # "count":I
    .end local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v8    # "stringBuffer":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v3

    .line 181
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v11, "ApkUpdater"

    const-string v12, "update error"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Lcom/smartisan/updater/UpdateSharedPreference;->setLastCheckTime(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 186
    if-eqz v5, :cond_4

    .line 187
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    move-object v9, v10

    .line 183
    goto :goto_0

    .line 167
    .restart local v0    # "buffer":[C
    .restart local v1    # "count":I
    .restart local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v8    # "stringBuffer":Ljava/lang/StringBuffer;
    :cond_5
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "data":Ljava/lang/String;
    iget-object v11, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v12}, Lcom/smartisan/updater/Version;->parse(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/smartisan/updater/Version;

    move-result-object v9

    .line 172
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Lcom/smartisan/updater/Version;->isNeedUpdate()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-direct {p0, v9}, Lcom/smartisan/updater/ApkUpdater;->isValidVersion(Lcom/smartisan/updater/Version;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 173
    if-eqz v9, :cond_6

    .line 174
    const-string v11, "ApkUpdater"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid version info:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Lcom/smartisan/updater/Version;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 186
    :cond_6
    if-eqz v5, :cond_7

    .line 187
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_7
    :goto_4
    move-object v9, v10

    .line 176
    goto/16 :goto_0

    .line 189
    :catch_2
    move-exception v3

    .line 190
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 179
    .end local v3    # "e":Ljava/io/IOException;
    :cond_8
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Lcom/smartisan/updater/UpdateSharedPreference;->setLastCheckTime(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 186
    if-eqz v5, :cond_0

    .line 187
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 189
    :catch_3
    move-exception v3

    .line 190
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 189
    .end local v0    # "buffer":[C
    .end local v1    # "count":I
    .end local v2    # "data":Ljava/lang/String;
    .end local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v8    # "stringBuffer":Ljava/lang/StringBuffer;
    .local v3, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 190
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 185
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 186
    if-eqz v5, :cond_9

    .line 187
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 191
    :cond_9
    :goto_5
    throw v10

    .line 189
    :catch_5
    move-exception v3

    .line 190
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/smartisan/updater/ApkUpdater;->doInBackground([Ljava/lang/Void;)Lcom/smartisan/updater/Version;

    move-result-object v0

    return-object v0
.end method

.method public formateSize(J)F
    .locals 5
    .param p1, "size"    # J

    .prologue
    const/high16 v2, 0x44800000    # 1024.0f

    .line 730
    long-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v0, v1

    div-float/2addr v0, v2

    div-float/2addr v0, v2

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public installApk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updateUrl"    # Ljava/lang/String;

    .prologue
    .line 719
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisan/updater/UpdateUtils;->getDownloadApkFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, "filePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 721
    .local v0, "file":Ljava/io/File;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 722
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 724
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 726
    invoke-direct {p0}, Lcom/smartisan/updater/ApkUpdater;->exit()V

    .line 727
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/smartisan/updater/ApkUpdater;->checkSmartisanOs()V

    .line 549
    return-void
.end method

.method protected onPostExecute(Lcom/smartisan/updater/Version;)V
    .locals 7
    .param p1, "version"    # Lcom/smartisan/updater/Version;

    .prologue
    const/4 v6, 0x0

    .line 198
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 199
    iget-boolean v3, p0, Lcom/smartisan/updater/ApkUpdater;->mIsManualUpdate:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/smartisan/updater/ApkUpdater;->mUpdateUI:Lcom/smartisan/updater/UpdateUI;

    if-eqz v3, :cond_0

    .line 200
    iget-object v3, p0, Lcom/smartisan/updater/ApkUpdater;->mUpdateUI:Lcom/smartisan/updater/UpdateUI;

    invoke-interface {v3}, Lcom/smartisan/updater/UpdateUI;->checkComplete()V

    .line 202
    :cond_0
    iget-object v3, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    if-nez v3, :cond_2

    .line 243
    :cond_1
    :goto_0
    return-void

    .line 205
    :cond_2
    if-eqz p1, :cond_6

    .line 206
    invoke-virtual {p1}, Lcom/smartisan/updater/Version;->isNeedUpdate()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 207
    invoke-virtual {p1}, Lcom/smartisan/updater/Version;->isOtaUpdateOn()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 208
    invoke-direct {p0}, Lcom/smartisan/updater/ApkUpdater;->isActivityFinished()Z

    move-result v3

    if-nez v3, :cond_1

    .line 209
    invoke-virtual {p1}, Lcom/smartisan/updater/Version;->isForceUpdateOn()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/smartisan/updater/ApkUpdater;->showOtaHintDailog(Z)V

    goto :goto_0

    .line 212
    :cond_3
    invoke-virtual {p1}, Lcom/smartisan/updater/Version;->isForceUpdateOn()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 213
    invoke-direct {p0}, Lcom/smartisan/updater/ApkUpdater;->isActivityFinished()Z

    move-result v3

    if-nez v3, :cond_1

    .line 214
    invoke-direct {p0, p1}, Lcom/smartisan/updater/ApkUpdater;->showForceDownloadConfirmDialog(Lcom/smartisan/updater/Version;)V

    goto :goto_0

    .line 219
    :cond_4
    invoke-direct {p0}, Lcom/smartisan/updater/ApkUpdater;->isActivityFinished()Z

    move-result v3

    if-nez v3, :cond_1

    .line 220
    iget-object v3, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3, p1}, Lcom/smartisan/updater/ApkUpdater;->showDownloadDialog(Landroid/content/Context;Lcom/smartisan/updater/Version;)V

    goto :goto_0

    .line 224
    :cond_5
    invoke-direct {p0}, Lcom/smartisan/updater/ApkUpdater;->checkSmartisanOs()V

    .line 225
    iget-boolean v3, p0, Lcom/smartisan/updater/ApkUpdater;->mIsManualUpdate:Z

    if-eqz v3, :cond_1

    .line 226
    iget-object v3, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    sget v4, Lcom/smartisan/updater/R$string;->no_updated_version:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "noVersion":Ljava/lang/String;
    iget-object v3, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 231
    .end local v1    # "noVersion":Ljava/lang/String;
    :cond_6
    invoke-direct {p0}, Lcom/smartisan/updater/ApkUpdater;->checkSmartisanOs()V

    .line 232
    iget-boolean v3, p0, Lcom/smartisan/updater/ApkUpdater;->mIsManualUpdate:Z

    if-eqz v3, :cond_1

    .line 233
    iget-object v3, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/smartisan/updater/UpdateSharedPreference;->getInstance(Landroid/content/Context;)Lcom/smartisan/updater/UpdateSharedPreference;

    move-result-object v2

    .line 234
    .local v2, "sharePreFerence":Lcom/smartisan/updater/UpdateSharedPreference;
    iget-object v3, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/smartisan/updater/UpdateSharedPreference;->getDownloadId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/smartisan/updater/UpdateUtils;->isDownloadProcessing(Landroid/content/Context;J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 239
    iget-object v3, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    sget v4, Lcom/smartisan/updater/R$string;->check_update_fail:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "error":Ljava/lang/String;
    iget-object v3, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    check-cast p1, Lcom/smartisan/updater/Version;

    invoke-virtual {p0, p1}, Lcom/smartisan/updater/ApkUpdater;->onPostExecute(Lcom/smartisan/updater/Version;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 138
    iget-boolean v0, p0, Lcom/smartisan/updater/ApkUpdater;->mIsManualUpdate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisan/updater/ApkUpdater;->mUpdateUI:Lcom/smartisan/updater/UpdateUI;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/smartisan/updater/ApkUpdater;->mUpdateUI:Lcom/smartisan/updater/UpdateUI;

    invoke-interface {v0}, Lcom/smartisan/updater/UpdateUI;->checkContinue()V

    .line 141
    :cond_0
    return-void
.end method

.method public setIsCheckMd5(Z)V
    .locals 1
    .param p1, "checkMd5"    # Z

    .prologue
    .line 285
    iget-object v0, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 286
    iput-boolean p1, p0, Lcom/smartisan/updater/ApkUpdater;->mCheckMd5:Z

    .line 288
    :cond_0
    return-void
.end method

.method public setNeedCheckOsUpdate(Z)V
    .locals 0
    .param p1, "needCheck"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/smartisan/updater/ApkUpdater;->mCheckIfOsNeedUpgrade:Z

    .line 127
    return-void
.end method

.method public setUpdateUI(Lcom/smartisan/updater/UpdateUI;)V
    .locals 0
    .param p1, "updateUI"    # Lcom/smartisan/updater/UpdateUI;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/smartisan/updater/ApkUpdater;->mUpdateUI:Lcom/smartisan/updater/UpdateUI;

    .line 119
    return-void
.end method

.method public setVerisonMessage(I)V
    .locals 1
    .param p1, "messageId"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/smartisan/updater/ApkUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/updater/ApkUpdater;->mVersionMessage:Ljava/lang/String;

    .line 282
    :cond_0
    return-void
.end method
