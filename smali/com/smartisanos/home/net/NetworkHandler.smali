.class public Lcom/smartisanos/home/net/NetworkHandler;
.super Ljava/lang/Object;
.source "NetworkHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/home/net/NetworkHandler$NetUtils;,
        Lcom/smartisanos/home/net/NetworkHandler$Task;,
        Lcom/smartisanos/home/net/NetworkHandler$Action;
    }
.end annotation


# static fields
.field private static BE_INTERRUPTED:Z = false

.field public static final DOWNLOAD_URL_SUFFIX:Ljava/lang/String; = ".apk"

.field private static final DRAWABLE_NAME_FOR_GET_THIRD_PART_SYS_ICON:Ljava/lang/String; = "icon_provided_by_smartisan"

.field private static final MANUFACTURERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final THIRD_PART_SYS_APPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final URL_GET_ALL_CATEGORY:Ljava/lang/String; = "http://icon.smartisan.com/cate_logo.json"

.field private static final URL_GET_CATEGORY_BY_PKG:Ljava/lang/String; = "http://api-app.smartisan.com/api/v1_4/getcidbypkg/"

.field private static final URL_PREFIX:Ljava/lang/String; = "http://icon.smartisan.com/"

.field private static final URL_TYPE_DRAWABLE:Ljava/lang/String; = "drawable"

.field private static final URL_TYPE_INFO:Ljava/lang/String; = "info"

.field static final log:Lcom/smartisanos/launcher/LOG;

.field private static final mWorker:Landroid/os/Handler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-class v0, Lcom/smartisanos/home/net/NetworkHandler;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/home/net/NetworkHandler;->log:Lcom/smartisanos/launcher/LOG;

    .line 44
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetworkHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/home/net/NetworkHandler;->sWorkerThread:Landroid/os/HandlerThread;

    .line 47
    sget-object v0, Lcom/smartisanos/home/net/NetworkHandler;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/smartisanos/home/net/NetworkHandler;->BE_INTERRUPTED:Z

    .line 75
    new-instance v0, Lcom/smartisanos/home/net/NetworkHandler$1;

    sget-object v1, Lcom/smartisanos/home/net/NetworkHandler;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smartisanos/home/net/NetworkHandler$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/smartisanos/home/net/NetworkHandler;->mWorker:Landroid/os/Handler;

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/home/net/NetworkHandler;->THIRD_PART_SYS_APPS:Ljava/util/List;

    .line 327
    sget-object v0, Lcom/smartisanos/home/net/NetworkHandler;->THIRD_PART_SYS_APPS:Ljava/util/List;

    const-string v1, "com.android.alarmclock"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v0, Lcom/smartisanos/home/net/NetworkHandler;->THIRD_PART_SYS_APPS:Ljava/util/List;

    const-string v1, "com.android.deskclock"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    sget-object v0, Lcom/smartisanos/home/net/NetworkHandler;->THIRD_PART_SYS_APPS:Ljava/util/List;

    const-string v1, "com.android.mms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v0, Lcom/smartisanos/home/net/NetworkHandler;->THIRD_PART_SYS_APPS:Ljava/util/List;

    const-string v1, "com.android.providers.downloads.ui"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v0, Lcom/smartisanos/home/net/NetworkHandler;->THIRD_PART_SYS_APPS:Ljava/util/List;

    const-string v1, "com.android.email"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v0, Lcom/smartisanos/home/net/NetworkHandler;->THIRD_PART_SYS_APPS:Ljava/util/List;

    const-string v1, "com.android.settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    sget-object v0, Lcom/smartisanos/home/net/NetworkHandler;->THIRD_PART_SYS_APPS:Ljava/util/List;

    const-string v1, "com.android.calendar"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    sget-object v0, Lcom/smartisanos/home/net/NetworkHandler;->THIRD_PART_SYS_APPS:Ljava/util/List;

    const-string v1, "com.android.soundrecorder"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    sget-object v0, Lcom/smartisanos/home/net/NetworkHandler;->THIRD_PART_SYS_APPS:Ljava/util/List;

    const-string v1, "com.android.browser"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    sget-object v0, Lcom/smartisanos/home/net/NetworkHandler;->THIRD_PART_SYS_APPS:Ljava/util/List;

    const-string v1, "com.android.contacts"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object v0, Lcom/smartisanos/home/net/NetworkHandler;->THIRD_PART_SYS_APPS:Ljava/util/List;

    const-string v1, "com.android.dialer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    sget-object v0, Lcom/smartisanos/home/net/NetworkHandler;->THIRD_PART_SYS_APPS:Ljava/util/List;

    const-string v1, "com.android.calculator2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    sget-object v0, Lcom/smartisanos/home/net/NetworkHandler;->THIRD_PART_SYS_APPS:Ljava/util/List;

    const-string v1, "com.android.soundrecorder"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    sget-object v0, Lcom/smartisanos/home/net/NetworkHandler;->THIRD_PART_SYS_APPS:Ljava/util/List;

    const-string v1, "com.android.camera"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v0, Lcom/smartisanos/home/net/NetworkHandler;->THIRD_PART_SYS_APPS:Ljava/util/List;

    const-string v1, "com.android.thememanager"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/home/net/NetworkHandler;->MANUFACTURERS:Ljava/util/List;

    .line 346
    sget-object v0, Lcom/smartisanos/home/net/NetworkHandler;->MANUFACTURERS:Ljava/util/List;

    const-string v1, "sony"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    sget-object v0, Lcom/smartisanos/home/net/NetworkHandler;->MANUFACTURERS:Ljava/util/List;

    const-string v1, "htc"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    sget-object v0, Lcom/smartisanos/home/net/NetworkHandler;->MANUFACTURERS:Ljava/util/List;

    const-string v1, "meizu"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    sget-object v0, Lcom/smartisanos/home/net/NetworkHandler;->MANUFACTURERS:Ljava/util/List;

    const-string v1, "xiaomi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    sget-object v0, Lcom/smartisanos/home/net/NetworkHandler;->MANUFACTURERS:Ljava/util/List;

    const-string v1, "samsung"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    sget-object v0, Lcom/smartisanos/home/net/NetworkHandler;->MANUFACTURERS:Ljava/util/List;

    const-string v1, "motorola"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    sget-object v0, Lcom/smartisanos/home/net/NetworkHandler;->MANUFACTURERS:Ljava/util/List;

    const-string v1, "lge"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    sget-object v0, Lcom/smartisanos/home/net/NetworkHandler;->MANUFACTURERS:Ljava/util/List;

    const-string v1, "letv"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    sget-object v0, Lcom/smartisanos/home/net/NetworkHandler;->MANUFACTURERS:Ljava/util/List;

    const-string v1, "oppo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    sget-object v0, Lcom/smartisanos/home/net/NetworkHandler;->MANUFACTURERS:Ljava/util/List;

    const-string v1, "huawei"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    sget-object v0, Lcom/smartisanos/home/net/NetworkHandler;->MANUFACTURERS:Ljava/util/List;

    const-string v1, "bbk"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/smartisanos/home/net/NetworkHandler;->handleDL_ICON(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/smartisanos/home/net/NetworkHandler;->handleFETCH_ICON(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/smartisanos/home/net/NetworkHandler;->handleFETCH_ICON_END(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/smartisanos/home/net/NetworkHandler;->handleGET_APP_DL_INFO(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/smartisanos/home/net/NetworkHandler;->handleGET_THEME_DL_INFO(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/smartisanos/home/net/NetworkHandler;->getIconUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method private static fetchIcon(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)Z
    .locals 7
    .param p0, "item"    # Lcom/smartisanos/launcher/data/ItemInfo;
    .param p1, "icon"    # Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    .prologue
    const/4 v6, 0x0

    .line 407
    if-nez p0, :cond_0

    .line 408
    sget-object v0, Lcom/smartisanos/home/net/NetworkHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    const-string v2, "fetchIcon return by item is null"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    return v6

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->iconDrawableName:Ljava/lang/String;

    .line 413
    .local v0, "drawable":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 414
    invoke-static {p0}, Lcom/smartisanos/home/net/NetworkHandler$NetUtils;->getInfoFromServer(Lcom/smartisanos/launcher/data/ItemInfo;)Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    move-result-object v1

    .line 415
    .local v1, "iconInfo":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    if-eqz v1, :cond_4

    .line 416
    iget-object v2, v1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->md5:Ljava/lang/String;

    .line 417
    .local v2, "md5FromServer":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 418
    invoke-static {p0}, Lcom/smartisanos/home/net/NetworkHandler$NetUtils;->access$500(Lcom/smartisanos/launcher/data/ItemInfo;)[B

    move-result-object v3

    .line 419
    .local v3, "data":[B
    if-eqz v3, :cond_4

    array-length v4, v3

    if-nez v4, :cond_1

    goto :goto_0

    .line 422
    :cond_1
    invoke-static {v3}, Lcom/smartisanos/home/net/NetworkHandler$NetUtils;->getMd5([B)Ljava/lang/String;

    move-result-object v4

    .line 423
    .local v4, "newMd5":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 424
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 425
    invoke-static {p0, v1, v3}, Lcom/smartisanos/home/net/NetworkHandler;->saveIconForPackageActivities(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;[B)Z

    move-result v5

    return v5

    .line 428
    :cond_2
    sget-object v5, Lcom/smartisanos/home/net/NetworkHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "A140"

    const-string v0, "md5 is not match, fallback to package icon"

    invoke-virtual {v5, v6, v0}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .end local v1    # "iconInfo":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .end local v2    # "md5FromServer":Ljava/lang/String;
    .end local v3    # "data":[B
    .end local v4    # "newMd5":Ljava/lang/String;
    :cond_4
    :goto_0
    invoke-static {p0}, Lcom/smartisanos/home/net/NetworkHandler;->fetchIconByPackage(Lcom/smartisanos/launcher/data/ItemInfo;)Z

    move-result v0

    return v0
.end method

.method private static fetchIconByPackage(Lcom/smartisanos/launcher/data/ItemInfo;)Z
    .locals 6
    .param p0, "item"    # Lcom/smartisanos/launcher/data/ItemInfo;

    .prologue
    const/4 v5, 0x0

    .line 474
    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 475
    .local v0, "pkg":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 476
    invoke-static {v0}, Lcom/smartisanos/home/net/NetworkHandler$NetUtils;->getPackageIconUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, "iconUrl":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 478
    invoke-static {v1}, Lcom/smartisanos/home/net/NetworkHandler$NetUtils;->getBytesFromUrl(Ljava/lang/String;)[B

    move-result-object v2

    .line 479
    .local v2, "data":[B
    if-eqz v2, :cond_1

    array-length v3, v2

    if-eqz v3, :cond_1

    .line 480
    invoke-static {v2}, Lcom/smartisanos/home/net/NetworkHandler$NetUtils;->getMd5([B)Ljava/lang/String;

    move-result-object v3

    .line 481
    .local v3, "md5":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 482
    new-instance v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    invoke-direct {v4}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;-><init>()V

    .line 483
    .local v4, "iconInfo":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    iput-object v0, v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    .line 484
    iput-object v3, v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->md5:Ljava/lang/String;

    .line 485
    invoke-static {p0, v4, v2}, Lcom/smartisanos/home/net/NetworkHandler;->saveIconForPackageActivities(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;[B)Z

    move-result v5

    return v5

    .line 488
    .end local v0    # "pkg":Ljava/lang/String;
    .end local v1    # "iconUrl":Ljava/lang/String;
    .end local v2    # "data":[B
    .end local v3    # "md5":Ljava/lang/String;
    .end local v4    # "iconInfo":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    :cond_1
    invoke-static {p0}, Lcom/smartisanos/home/net/NetworkHandler;->applyBuiltinRoleIconFallback(Lcom/smartisanos/launcher/data/ItemInfo;)Z

    move-result v5

    return v5
.end method

.method private static getBuiltinRoleIconResId(Lcom/smartisanos/launcher/data/ItemInfo;)I
    .locals 3
    .param p0, "item"    # Lcom/smartisanos/launcher/data/ItemInfo;

    .prologue
    const/4 v2, 0x0

    .line 490
    if-nez p0, :cond_0

    return v2

    .line 494
    :cond_0
    const/4 v0, 0x0

    .line 495
    .local v0, "roleSource":Ljava/lang/String;
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 496
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 499
    :goto_0
    if-nez v0, :cond_2

    return v2

    .line 497
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :goto_0

    .line 498
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 502
    :cond_2
    const-string v1, "dial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "call"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "twelvekey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 503
    :cond_3
    sget v1, Lcom/smartisanos/home/R$drawable;->app_icon_phone:I

    return v1

    .line 506
    :cond_4
    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "messag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "conversation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 507
    :cond_5
    sget v1, Lcom/smartisanos/home/R$drawable;->app_icon_mms:I

    return v1

    .line 510
    :cond_6
    const-string v1, "contact"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "people"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "person"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "addressbook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 511
    :cond_7
    sget v1, Lcom/smartisanos/home/R$drawable;->contact_shortcut:I

    return v1

    .line 514
    :cond_8
    const-string v1, "calendar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "calender"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "schedule"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 515
    :cond_9
    sget v1, Lcom/smartisanos/home/R$drawable;->calendar:I

    return v1

    .line 518
    :cond_a
    const-string v1, "clock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "deskclock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "timer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "stopwatch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 519
    :cond_b
    sget v1, Lcom/smartisanos/home/R$drawable;->clock:I

    return v1

    .line 522
    :cond_c
    return v2
.end method

.method private static applyBuiltinRoleIconFallback(Lcom/smartisanos/launcher/data/ItemInfo;)Z
    .locals 10
    .param p0, "item"    # Lcom/smartisanos/launcher/data/ItemInfo;

    .prologue
    const/4 v9, 0x0

    .line 518
    if-eqz p0, :cond_4

    iget-object v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 519
    return v9

    .line 522
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/home/net/NetworkHandler;->getBuiltinRoleIconResId(Lcom/smartisanos/launcher/data/ItemInfo;)I

    move-result v1

    .line 523
    .local v1, "resId":I
    if-nez v1, :cond_1

    return v9

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v2

    .line 524
    .local v2, "app":Lcom/smartisanos/launcher/LauncherApplication;
    if-eqz v2, :cond_4

    invoke-static {v2, v0}, Lcom/smartisanos/home/Launcher;->isSystemAppByPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_sys_app

    return v9

    :cond_sys_app

    invoke-virtual {v2}, Lcom/smartisanos/launcher/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 525
    .local v3, "res":Landroid/content/res/Resources;
    if-eqz v3, :cond_4

    .line 527
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 528
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/smartisanos/launcher/data/Utils;->drawableToBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 529
    .local v5, "bmp":Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/smartisanos/launcher/data/Utils;->Bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    .line 530
    .local v6, "data":[B
    if-eqz v6, :cond_4

    array-length v7, v6

    if-lez v7, :cond_4

    .line 532
    invoke-static {v6}, Lcom/smartisanos/home/net/NetworkHandler$NetUtils;->getMd5([B)Ljava/lang/String;

    move-result-object v7

    .line 533
    .local v7, "md5":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 535
    new-instance v8, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    invoke-direct {v8}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;-><init>()V

    .line 536
    .local v8, "saveInfo":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    iput-object v0, v8, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    .line 537
    iput-object v7, v8, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->md5:Ljava/lang/String;

    const/4 v7, 0x1

    iput-boolean v7, v8, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->useImprovedAppIcon:Z

    .line 538
    invoke-static {p0, v8, v6}, Lcom/smartisanos/home/net/NetworkHandler;->saveIconForPackageActivities(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;[B)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    .line 549
    .end local v2    # "app":Lcom/smartisanos/launcher/LauncherApplication;
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "bmp":Landroid/graphics/Bitmap;
    .end local v6    # "data":[B
    .end local v7    # "md5":Ljava/lang/String;
    .end local v8    # "saveInfo":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    :catch_0
    move-exception v2

    .line 550
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/smartisanos/home/net/NetworkHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyBuiltinRoleIconFallback fail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    return v9

    .line 547
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_4
    return v9
.end method

.method private static getOwnerIdMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 490
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 491
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz p0, :cond_2

    .line 492
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 493
    .local v4, "whereCase":Ljava/lang/String;
    invoke-static {v4}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listItem(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 494
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-eqz v1, :cond_2

    .line 495
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 496
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 497
    .local v0, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v0, :cond_0

    .line 498
    iget-object v5, v0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 499
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 500
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 501
    iget-wide v6, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 505
    .end local v0    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v4    # "whereCase":Ljava/lang/String;
    .end local v5    # "key":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method private static saveFetchedIcon(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V
    .locals 3
    .param p0, "iconInfo"    # Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    .prologue
    .line 507
    if-eqz p0, :cond_0

    .line 508
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 509
    .local v0, "params":Ljava/util/ArrayList;
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_SAVE_ICON:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 512
    .end local v0    # "params":Ljava/util/ArrayList;
    :cond_0
    return-void
.end method

.method private static saveIconForPackageActivities(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;[B)Z
    .locals 12
    .param p0, "item"    # Lcom/smartisanos/launcher/data/ItemInfo;
    .param p1, "iconInfo"    # Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .param p2, "data"    # [B

    .prologue
    const/4 v5, 0x0

    .line 514
    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    array-length v2, p2

    if-eqz v2, :cond_8

    .line 515
    iget-object v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 516
    .local v0, "pkg":Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 517
    iget-object v1, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->md5:Ljava/lang/String;

    .line 518
    .local v1, "md5":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 519
    invoke-static {p2}, Lcom/smartisanos/home/net/NetworkHandler$NetUtils;->getMd5([B)Ljava/lang/String;

    move-result-object v1

    .line 520
    if-eqz v1, :cond_8

    .line 523
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 524
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2, v0}, Lcom/smartisanos/launcher/data/Utils;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 525
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_8

    .line 526
    invoke-static {v0}, Lcom/smartisanos/home/net/NetworkHandler;->getOwnerIdMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 527
    .local v4, "ownerIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 528
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 529
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_1

    iget-object v2, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_1

    .line 530
    iget-object v8, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 531
    .local v8, "componentName":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 532
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, ";"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 533
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 534
    .local v2, "ownerIdValue":Ljava/lang/Long;
    const-wide/16 v10, -0x1

    .line 535
    .local v10, "ownerId":J
    if-eqz v2, :cond_2

    .line 536
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 538
    :cond_2
    invoke-static {v0, v8}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->getRedirectIconInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    move-result-object v9

    .line 539
    .local v9, "oldInfo":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    if-eqz v9, :cond_3

    const-wide/16 v2, 0x0

    cmp-long v7, v10, v2

    if-gez v7, :cond_3

    .line 540
    iget-wide v10, v9, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->ownerId:J

    .line 542
    :cond_3
    if-eqz v9, :cond_4

    .line 543
    iget-object v7, v9, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->md5:Ljava/lang/String;

    if-eqz v7, :cond_4

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 544
    iget-wide v2, v9, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->ownerId:J

    cmp-long v7, v2, v10

    if-nez v7, :cond_4

    iget-boolean v2, v9, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->useImprovedAppIcon:Z

    if-eqz v2, :goto_0

    iget-object v2, v9, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->iconData:[B

    if-eqz v2, :goto_0

    array-length v2, v2

    if-eqz v2, :goto_0

    invoke-static {v9}, Lcom/smartisanos/home/net/NetworkHandler;->saveFetchedIcon(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V

    const/4 v5, 0x1

    goto :goto_0

    .line 548
    :cond_4
    new-instance v7, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    invoke-direct {v7}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;-><init>()V

    .line 549
    .local v7, "saveInfo":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    iput-wide v10, v7, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->ownerId:J

    .line 550
    iput-object v0, v7, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    .line 551
    iput-object v8, v7, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->componentName:Ljava/lang/String;

    .line 552
    iget-object v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->iconDrawableName:Ljava/lang/String;

    iput-object v2, v7, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->drawableName:Ljava/lang/String;

    .line 553
    iput-object v1, v7, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->md5:Ljava/lang/String;

    .line 554
    iget-object v2, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->lastUpdateTime:Ljava/lang/String;

    iput-object v2, v7, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->lastUpdateTime:Ljava/lang/String;

    .line 555
    iput-object p2, v7, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->iconData:[B

    .line 556
    if-eqz v9, :cond_5

    .line 557
    iget-boolean v2, v9, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->useImprovedAppIcon:Z

    iput-boolean v2, v7, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->useImprovedAppIcon:Z

    goto :goto_1

    .line 559
    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-ltz v2, :cond_6

    const/4 v2, 0x1

    iput-boolean v2, v7, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->useImprovedAppIcon:Z

    goto :goto_1

    .line 561
    :cond_6
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->useImprovedAppIcon:Z

    .line 563
    :goto_1
    invoke-static {v7}, Lcom/smartisanos/home/net/NetworkHandler;->saveFetchedIcon(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V

    .line 564
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 568
    .end local v0    # "pkg":Ljava/lang/String;
    .end local v1    # "md5":Ljava/lang/String;
    .end local v2    # "lastTemp":Ljava/lang/Object;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "ownerIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "saveInfo":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .end local v8    # "componentName":Ljava/lang/String;
    .end local v9    # "oldInfo":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .end local v10    # "ownerId":J
    :cond_8
    return v5
.end method

.method private static getIconUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 6
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "drawName"    # Ljava/lang/String;

    .prologue
    .line 369
    move-object v2, p0

    .line 370
    .local v2, "pkgName":Ljava/lang/String;
    move-object v1, p1

    .line 371
    .local v1, "imgName":Ljava/lang/String;
    if-eqz p0, :cond_0

    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->MANUFACTURER:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 372
    sget-object v4, Lcom/smartisanos/home/net/NetworkHandler;->THIRD_PART_SYS_APPS:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/smartisanos/home/net/NetworkHandler;->MANUFACTURERS:Ljava/util/List;

    sget-object v5, Lcom/smartisanos/launcher/data/Constants;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 373
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/smartisanos/launcher/data/Constants;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 377
    :cond_0
    const-string v1, "icon_provided_by_smartisan"

    .line 379
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://icon.smartisan.com/drawable/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, "str":Ljava/lang/String;
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    .end local v3    # "str":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 384
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getInfoUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 6
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "drawName"    # Ljava/lang/String;

    .prologue
    .line 388
    move-object v2, p0

    .line 389
    .local v2, "pkgName":Ljava/lang/String;
    move-object v1, p1

    .line 390
    .local v1, "imgName":Ljava/lang/String;
    if-eqz p0, :cond_0

    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->MANUFACTURER:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 391
    sget-object v4, Lcom/smartisanos/home/net/NetworkHandler;->THIRD_PART_SYS_APPS:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/smartisanos/home/net/NetworkHandler;->MANUFACTURERS:Ljava/util/List;

    sget-object v5, Lcom/smartisanos/launcher/data/Constants;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 392
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/smartisanos/launcher/data/Constants;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 396
    :cond_0
    const-string v1, "icon_provided_by_smartisan"

    .line 398
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://icon.smartisan.com/info/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, "str":Ljava/lang/String;
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    .end local v3    # "str":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 403
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static handleDL_ICON(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .param p1, "params"    # Ljava/util/List;
    .annotation runtime Lcom/smartisanos/home/net/ActionType;
        name = "DL_ICON"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v7, 0x1

    .line 183
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->ENABLE_DOWNLOAD_ICON:Z

    if-nez v4, :cond_1

    .line 184
    sget-object v4, Lcom/smartisanos/home/net/NetworkHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    const-string v6, "handleDL_ICON return by ENABLE_DOWNLOAD_ICON is false"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-static {v1}, Lcom/smartisanos/home/net/NetworkHandler;->applyBuiltinRoleIconFallback(Lcom/smartisanos/launcher/data/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 185
    sput-boolean v7, Lcom/smartisanos/home/net/NetworkHandler;->BE_INTERRUPTED:Z

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 189
    :cond_2
    sget-object v4, Lcom/smartisanos/home/net/NetworkHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    const-string v6, "DL_ICON params is empty !"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_3
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 193
    .local v1, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    .line 194
    .local v0, "icon":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    sget-object v4, Lcom/smartisanos/home/net/NetworkHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "A140"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DL_ICON begin for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 197
    .local v2, "pkg":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 198
    invoke-static {v2}, Lcom/smartisanos/launcher/data/Utils;->isHalfAlphaIcon(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 213
    :cond_4
    invoke-static {v1, v0}, Lcom/smartisanos/home/net/NetworkHandler;->fetchIcon(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)Z

    move-result v3

    .line 214
    .local v3, "result":Z
    if-nez v3, :cond_5

    .line 215
    sget-object v4, Lcom/smartisanos/home/net/NetworkHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "A140"

    iget-object v6, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Lcom/smartisanos/launcher/data/ItemInfo;->iconDrawableName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/smartisanos/home/net/NetworkHandler;->getInfoUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_5
    sget-object v4, Lcom/smartisanos/home/net/NetworkHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "A140"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DL_ICON end ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static handleFETCH_ICON(Ljava/util/List;Ljava/util/List;)V
    .locals 17
    .param p1, "params"    # Ljava/util/List;
    .annotation runtime Lcom/smartisanos/home/net/ActionType;
        name = "FETCH_ICON"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez p1, :cond_0

    .line 153
    sget-object v12, Lcom/smartisanos/home/net/NetworkHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v13, "DEBUG"

    const-string v14, "FETCH_ICON return by params is null"

    invoke-virtual {v12, v13, v14}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void

    .line 156
    :cond_0
    const/4 v12, 0x0

    sput-boolean v12, Lcom/smartisanos/home/net/NetworkHandler;->BE_INTERRUPTED:Z

    .line 157
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 158
    .local v8, "itemInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 159
    .local v3, "iconInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 160
    .local v5, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    .line 161
    .local v11, "total":I
    const/4 v6, 0x0

    .line 162
    .local v6, "index":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 163
    .local v4, "id":Ljava/lang/String;
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 164
    .local v7, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    .line 165
    .local v2, "icon":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    add-int/lit8 v6, v6, 0x1

    .line 166
    sget-object v13, Lcom/smartisanos/home/net/NetworkHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v14, "A140"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DL_ICON begin for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Lcom/smartisanos/launcher/data/ItemInfo;->id()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sget-object v13, Lcom/smartisanos/home/net/NetworkHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v14, "A140"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DL_ICON task current ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], total ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v10, Lcom/smartisanos/home/net/NetworkHandler$Task;

    invoke-direct {v10}, Lcom/smartisanos/home/net/NetworkHandler$Task;-><init>()V

    .line 169
    .local v10, "nTask":Lcom/smartisanos/home/net/NetworkHandler$Task;
    sget-object v13, Lcom/smartisanos/home/net/NetworkHandler$Action;->DL_ICON:Lcom/smartisanos/home/net/NetworkHandler$Action;

    iput-object v13, v10, Lcom/smartisanos/home/net/NetworkHandler$Task;->act:Lcom/smartisanos/home/net/NetworkHandler$Action;

    .line 170
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v9, "list":Ljava/util/List;
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iput-object v9, v10, Lcom/smartisanos/home/net/NetworkHandler$Task;->params:Ljava/util/List;

    .line 174
    invoke-static {v10}, Lcom/smartisanos/home/net/NetworkHandler;->postTask(Lcom/smartisanos/home/net/NetworkHandler$Task;)V

    goto :goto_1

    .line 176
    .end local v2    # "icon":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .end local v4    # "id":Ljava/lang/String;
    .end local v7    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v9    # "list":Ljava/util/List;
    .end local v10    # "nTask":Lcom/smartisanos/home/net/NetworkHandler$Task;
    :cond_1
    new-instance v1, Lcom/smartisanos/home/net/NetworkHandler$Task;

    invoke-direct {v1}, Lcom/smartisanos/home/net/NetworkHandler$Task;-><init>()V

    .line 177
    .local v1, "fetchEndTask":Lcom/smartisanos/home/net/NetworkHandler$Task;
    sget-object v12, Lcom/smartisanos/home/net/NetworkHandler$Action;->FETCH_ICON_END:Lcom/smartisanos/home/net/NetworkHandler$Action;

    iput-object v12, v1, Lcom/smartisanos/home/net/NetworkHandler$Task;->act:Lcom/smartisanos/home/net/NetworkHandler$Action;

    .line 178
    invoke-static {v1}, Lcom/smartisanos/home/net/NetworkHandler;->postTask(Lcom/smartisanos/home/net/NetworkHandler$Task;)V

    goto/16 :goto_0
.end method

.method private static handleFETCH_ICON_END(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p1, "params"    # Ljava/util/List;
    .annotation runtime Lcom/smartisanos/home/net/ActionType;
        name = "FETCH_ICON_END"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v2, 0x0

    sput-boolean v2, Lcom/smartisanos/launcher/data/DatabaseHandler;->FETCH_ICON_RUNNING:Z

    .line 224
    sget-boolean v2, Lcom/smartisanos/home/net/NetworkHandler;->BE_INTERRUPTED:Z

    if-nez v2, :cond_0

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 227
    .local v0, "time":J
    const-string v2, "last_icon_sync_time"

    invoke-static {v2, v0, v1}, Lcom/smartisanos/launcher/data/LauncherSettings;->updateSetting(Ljava/lang/String;J)V

    .line 229
    .end local v0    # "time":J
    :cond_0
    return-void
.end method

.method private static handleGET_APP_DL_INFO(Ljava/util/List;Ljava/util/List;)V
    .locals 19
    .param p1, "params"    # Ljava/util/List;
    .annotation runtime Lcom/smartisanos/home/net/ActionType;
        name = "GET_APP_DL_INFO"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .prologue
    .line 234
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v8, 0x0

    .line 236
    .local v8, "app":Lcom/smartisanos/home/apps/EmbeddedApp;
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/smartisanos/home/apps/EmbeddedApp;

    move-object v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    if-nez v8, :cond_0

    .line 281
    :goto_1
    return-void

    .line 237
    :catch_0
    move-exception v14

    .line 238
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 243
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v10

    .line 244
    .local v10, "application":Lcom/smartisanos/launcher/LauncherApplication;
    const/4 v6, 0x2

    .line 245
    .local v6, "downloadType":I
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->isNetworkConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->isWifiConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 247
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->isEnableCellularDownload()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 248
    or-int/lit8 v6, v6, 0x1

    .line 252
    :cond_1
    invoke-virtual {v8}, Lcom/smartisanos/home/apps/EmbeddedApp;->pkg()Ljava/lang/String;

    move-result-object v16

    .line 254
    .local v16, "pkg":Ljava/lang/String;
    sget-object v2, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->DOWNLOADING:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/data/Utils;->updateDownloadCellsState(Ljava/lang/String;Lcom/smartisanos/launcher/view/DownloadView$DownloadState;)V

    .line 255
    invoke-virtual {v8, v10}, Lcom/smartisanos/home/apps/EmbeddedApp;->name(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 256
    .local v9, "appName":Ljava/lang/String;
    iget-object v2, v8, Lcom/smartisanos/home/apps/EmbeddedApp;->appPrivateName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/data/Utils;->appDownloadInfos(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    .line 257
    .local v11, "downloadInfos":[Ljava/lang/String;
    if-eqz v11, :cond_2

    array-length v2, v11

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 258
    :cond_2
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v2

    const v3, 0x7f080049

    invoke-virtual {v2, v3}, Lcom/smartisanos/home/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 259
    .local v15, "msg":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    invoke-static {v15, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 260
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v15, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    .line 261
    .local v17, "toast":Landroid/widget/Toast;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 262
    sget-object v2, Lcom/smartisanos/home/net/NetworkHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "DEBUG"

    const-string v18, "appDownloadInfos return data is err"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    sget-object v2, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->NEED_DOWNLOAD:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/data/Utils;->updateDownloadCellsState(Ljava/lang/String;Lcom/smartisanos/launcher/view/DownloadView$DownloadState;)V

    goto :goto_1

    .line 266
    .end local v15    # "msg":Ljava/lang/String;
    .end local v17    # "toast":Landroid/widget/Toast;
    :cond_3
    const/4 v2, 0x0

    aget-object v7, v11, v2

    .line 267
    .local v7, "fileMd5":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v5, v11, v2

    .line 268
    .local v5, "downloadUrl":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 270
    .local v4, "fileName":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {v8}, Lcom/smartisanos/home/apps/EmbeddedApp;->taskName()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v2 .. v7}, Lcom/smartisanos/home/net/DownloadSupervisor;->requestDownload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v12

    .line 271
    .local v12, "downloadId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-gtz v2, :cond_4

    .line 273
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v2

    const v3, 0x7f080049

    invoke-virtual {v2, v3}, Lcom/smartisanos/home/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 274
    .restart local v15    # "msg":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    invoke-static {v15, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 275
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v15, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    .line 276
    .restart local v17    # "toast":Landroid/widget/Toast;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 277
    sget-object v2, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->NEED_DOWNLOAD:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/data/Utils;->updateDownloadCellsState(Ljava/lang/String;Lcom/smartisanos/launcher/view/DownloadView$DownloadState;)V

    goto/16 :goto_1

    .line 279
    .end local v15    # "msg":Ljava/lang/String;
    .end local v17    # "toast":Landroid/widget/Toast;
    :cond_4
    sget-object v2, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->DOWNLOADING:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/data/Utils;->updateDownloadCellsState(Ljava/lang/String;Lcom/smartisanos/launcher/view/DownloadView$DownloadState;)V

    goto/16 :goto_1
.end method

.method private static handleGET_THEME_DL_INFO(Ljava/util/List;Ljava/util/List;)V
    .locals 16
    .param p1, "params"    # Ljava/util/List;
    .annotation runtime Lcom/smartisanos/home/net/ActionType;
        name = "GET_THEME_DL_INFO"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v3, 0x0

    .line 289
    .local v3, "themeId":Ljava/lang/String;
    const/4 v12, 0x0

    .line 291
    .local v12, "pkg":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 292
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v12, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 295
    :cond_0
    sget-object v2, Lcom/smartisanos/home/net/NetworkHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v13, "DEBUG"

    const-string v14, "handleGET_THEME_DL_INFO return by themeId is null"

    invoke-virtual {v2, v13, v14}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_1
    :goto_1
    return-void

    .line 298
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, ".apk"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 299
    .local v4, "themeApkName":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-static {v12, v2}, Lcom/smartisanos/launcher/data/Utils;->appDownloadInfos(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 300
    .local v10, "downloadInfos":[Ljava/lang/String;
    if-eqz v10, :cond_3

    array-length v2, v10

    const/4 v13, 0x2

    if-eq v2, v13, :cond_4

    .line 301
    :cond_3
    sget-object v2, Lcom/smartisanos/home/net/NetworkHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v13, "DEBUG"

    const-string v14, "handleGET_THEME_DL_INFO return by downloadInfos is error"

    invoke-virtual {v2, v13, v14}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v2, "com.smartisanos.home.THEME_DOWNLOAD_FAILED"

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/actions/DownloadReceiver;->noticeTheme(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 305
    :cond_4
    const/4 v6, 0x2

    .line 306
    .local v6, "downloadType":I
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->isWifiConnected()Z

    move-result v11

    .line 307
    .local v11, "isWifiOk":Z
    if-nez v11, :cond_5

    .line 308
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->isNetworkConnected()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 309
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->isEnableCellularDownload()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 310
    const/4 v6, 0x1

    .line 314
    :cond_5
    const/4 v2, 0x0

    aget-object v7, v10, v2

    .line 315
    .local v7, "fileMd5":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v5, v10, v2

    .line 316
    .local v5, "downloadUrl":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-static/range {v2 .. v7}, Lcom/smartisanos/home/net/DownloadSupervisor;->requestDownload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v8

    .line 317
    .local v8, "downloadId":J
    sget-object v2, Lcom/smartisanos/home/net/NetworkHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v13, "DEBUG"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MSG_REQUEST_DOWNLOAD_THEME id "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-wide/16 v14, 0x0

    cmp-long v2, v8, v14

    if-gtz v2, :cond_1

    .line 319
    sget-object v2, Lcom/smartisanos/home/net/NetworkHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v13, "DEBUG"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleGET_THEME_DL_INFO download theme ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] failed, by url ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v2, "com.smartisanos.home.THEME_DOWNLOAD_FAILED"

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/actions/DownloadReceiver;->noticeTheme(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 293
    .end local v4    # "themeApkName":Ljava/lang/String;
    .end local v5    # "downloadUrl":Ljava/lang/String;
    .end local v6    # "downloadType":I
    .end local v7    # "fileMd5":Ljava/lang/String;
    .end local v8    # "downloadId":J
    .end local v10    # "downloadInfos":[Ljava/lang/String;
    .end local v11    # "isWifiOk":Z
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method public static postTask(Lcom/smartisanos/home/net/NetworkHandler$Task;)V
    .locals 5
    .param p0, "task"    # Lcom/smartisanos/home/net/NetworkHandler$Task;

    .prologue
    .line 64
    if-nez p0, :cond_0

    .line 65
    sget-object v1, Lcom/smartisanos/home/net/NetworkHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "postTask return by task is null"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    sget-object v1, Lcom/smartisanos/home/net/NetworkHandler;->mWorker:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 69
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Lcom/smartisanos/home/net/NetworkHandler;->mWorker:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 70
    sget-object v1, Lcom/smartisanos/home/net/NetworkHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "A140"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "postTask ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/home/net/NetworkHandler$Task;->act:Lcom/smartisanos/home/net/NetworkHandler$Action;

    invoke-virtual {v4}, Lcom/smartisanos/home/net/NetworkHandler$Action;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
