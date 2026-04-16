.class public Lcom/smartisanos/launcher/theme/ThemeItemActivity;
.super Landroid/app/Activity;
.source "ThemeItemActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/theme/ThemeItemActivity$ViewHolder;,
        Lcom/smartisanos/launcher/theme/ThemeItemActivity$ResourceLoader;,
        Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;
    }
.end annotation


# static fields
.field private static final FILE_TYPE_APK:Ljava/lang/String; = "application/vnd.android.package-archive"

.field public static final MSG_NETWORK_STATUS_CHANGED:I = 0x5

.field public static final MSG_START_CHANGE_THEME:I = 0x1

.field public static final MSG_THEME_STATUS_CHANGED:I = 0x2

.field private static TEXT_COLOR_NORMAL:I

.field private static TEXT_COLOR_SELECTED:I

.field private static TEXT_COLOR_USED:I

.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static volatile self:Lcom/smartisanos/launcher/theme/ThemeItemActivity;


# instance fields
.field private backButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private colorDotOnClickListener:Landroid/view/View$OnClickListener;

.field private connectionReceiver:Landroid/content/BroadcastReceiver;

.field private downloadThemeOnClickListener:Landroid/view/View$OnClickListener;

.field private downloadingButtonClicked:Z

.field private downloadingOnClickListener:Landroid/view/View$OnClickListener;

.field private holderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/smartisanos/launcher/theme/ThemeItemActivity$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private installOnClickListener:Landroid/view/View$OnClickListener;

.field private mDisplayedTheme:Lcom/smartisanos/launcher/theme/Theme;

.field private mDrawableCache:Lcom/smartisanos/launcher/theme/DrawableCache;

.field private mHandler:Landroid/os/Handler;

.field private mHorizontalLinearLayout:Landroid/widget/LinearLayout;

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mIsBackClicked:Z

.field private mIsButtonClicked:Z

.field private mNetworkClosed:Z

.field private mPreviewImgLarge:Landroid/widget/ImageView;

.field private mResourceLoader:Lcom/smartisanos/launcher/theme/ThemeItemActivity$ResourceLoader;

.field private mTitle:Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;

.field private mUsedTheme:Lcom/smartisanos/launcher/theme/Theme;

.field private noNetToast:Landroid/widget/Toast;

.field private packageStatusReceiver:Landroid/content/BroadcastReceiver;

.field private setupThemeOnClickListener:Landroid/view/View$OnClickListener;

.field private viewMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    const-class v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->log:Lcom/smartisanos/launcher/LOG;

    .line 189
    const/4 v0, 0x0

    sput-object v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->self:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    .line 267
    sput v1, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->TEXT_COLOR_NORMAL:I

    .line 268
    sput v1, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->TEXT_COLOR_USED:I

    .line 269
    sput v1, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->TEXT_COLOR_SELECTED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 172
    iput-boolean v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mIsButtonClicked:Z

    .line 173
    iput-boolean v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mIsBackClicked:Z

    .line 195
    iput-boolean v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mNetworkClosed:Z

    .line 211
    new-instance v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$1;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->packageStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 246
    new-instance v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$2;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$2;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->connectionReceiver:Landroid/content/BroadcastReceiver;

    .line 334
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->holderMap:Ljava/util/Map;

    .line 465
    iput-boolean v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->downloadingButtonClicked:Z

    .line 467
    new-instance v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$4;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$4;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->installOnClickListener:Landroid/view/View$OnClickListener;

    .line 475
    new-instance v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$5;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$5;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->downloadingOnClickListener:Landroid/view/View$OnClickListener;

    .line 514
    new-instance v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$6;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$6;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->backButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 529
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->noNetToast:Landroid/widget/Toast;

    .line 531
    new-instance v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->downloadThemeOnClickListener:Landroid/view/View$OnClickListener;

    .line 623
    new-instance v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$8;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$8;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->setupThemeOnClickListener:Landroid/view/View$OnClickListener;

    .line 760
    new-instance v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$9;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$9;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mHandler:Landroid/os/Handler;

    .line 862
    new-instance v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$10;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$10;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->colorDotOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->isDisplayTheme(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->downloadingButtonClicked:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->downloadingButtonClicked:Z

    return p1
.end method

.method static synthetic access$1100()Lcom/smartisanos/launcher/theme/ThemeItemActivity;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->self:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mIsBackClicked:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mIsButtonClicked:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->finishSelf()V

    return-void
.end method

.method static synthetic access$1500(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->noNetToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->noNetToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->removeExistDLRecord(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->onClickSettingToChangeTheme()V

    return-void
.end method

.method static synthetic access$1800(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->refreshHorizontalScrollView()V

    return-void
.end method

.method static synthetic access$1900(III)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 70
    invoke-static {p0, p1, p2}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->getBitmapByColor(III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mTitle:Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/Theme;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mUsedTheme:Lcom/smartisanos/launcher/theme/Theme;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->updateLargePreviewImg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Lcom/smartisanos/launcher/theme/Theme;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;
    .param p1, "x1"    # Lcom/smartisanos/launcher/theme/Theme;
    .param p2, "x2"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->updateBottomTitleByHandler(Lcom/smartisanos/launcher/theme/Theme;Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/DrawableCache;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDrawableCache:Lcom/smartisanos/launcher/theme/DrawableCache;

    return-object v0
.end method

.method static synthetic access$2400()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->TEXT_COLOR_NORMAL:I

    return v0
.end method

.method static synthetic access$2500()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->TEXT_COLOR_SELECTED:I

    return v0
.end method

.method static synthetic access$2600()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->TEXT_COLOR_USED:I

    return v0
.end method

.method static synthetic access$302(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mNetworkClosed:Z

    return p1
.end method

.method static synthetic access$400(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/Theme;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDisplayedTheme:Lcom/smartisanos/launcher/theme/Theme;

    return-object v0
.end method

.method static synthetic access$802(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Lcom/smartisanos/launcher/theme/Theme;)Lcom/smartisanos/launcher/theme/Theme;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;
    .param p1, "x1"    # Lcom/smartisanos/launcher/theme/Theme;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDisplayedTheme:Lcom/smartisanos/launcher/theme/Theme;

    return-object p1
.end method

.method static synthetic access$900(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->requestInstallTheme(Ljava/lang/String;)V

    return-void
.end method

.method private adjustPreviewPos()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 411
    const v7, 0x7f0f0065

    invoke-virtual {p0, v7}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 412
    .local v5, "previewDetailRoot":Landroid/widget/FrameLayout;
    const v7, 0x7f0f0067

    invoke-virtual {p0, v7}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 413
    .local v2, "imageView":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mTitle:Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;

    iget-object v7, v7, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->title:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v6, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 414
    .local v6, "titlebar_height":I
    iget-object v7, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v7}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 415
    .local v0, "bottom_height":I
    sget v7, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    sub-int/2addr v7, v6

    sub-int v1, v7, v0

    .line 416
    .local v1, "content_height":I
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v7, v1, v7

    div-int/lit8 v3, v7, 0x2

    .line 417
    .local v3, "marginTop":I
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 418
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v8, v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 419
    return-void
.end method

.method private finishSelf()V
    .locals 2

    .prologue
    .line 842
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->setResult(I)V

    .line 843
    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->finish()V

    .line 844
    sget v0, Lcom/smartisanos/launcher/ResIds$anim;->slide_in_from_left:I

    sget v1, Lcom/smartisanos/launcher/ResIds$anim;->slide_out_to_right:I

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->overridePendingTransition(II)V

    .line 845
    return-void
.end method

.method private static getBitmapByColor(III)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "color"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1021
    shr-int/lit8 v7, p0, 0x18

    and-int/lit16 v0, v7, 0xff

    .line 1022
    .local v0, "a":I
    shr-int/lit8 v7, p0, 0x10

    and-int/lit16 v6, v7, 0xff

    .line 1023
    .local v6, "r":I
    shr-int/lit8 v7, p0, 0x8

    and-int/lit16 v4, v7, 0xff

    .line 1024
    .local v4, "g":I
    and-int/lit16 v1, p0, 0xff

    .line 1025
    .local v1, "b":I
    invoke-static {v0, v6, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 1026
    .local v2, "c":I
    mul-int v7, p1, p2

    new-array v3, v7, [I

    .line 1027
    .local v3, "colors":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v7, v3

    if-ge v5, v7, :cond_0

    .line 1028
    aput v2, v3, v5

    .line 1027
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1030
    :cond_0
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, p1, p2, v7}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    return-object v7
.end method

.method public static getInstance()Lcom/smartisanos/launcher/theme/ThemeItemActivity;
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->self:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    return-object v0
.end method

.method private initView()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 337
    iget-object v8, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDrawableCache:Lcom/smartisanos/launcher/theme/DrawableCache;

    if-eqz v8, :cond_0

    .line 338
    iget-object v8, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDrawableCache:Lcom/smartisanos/launcher/theme/DrawableCache;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/theme/DrawableCache;->clear()V

    .line 340
    :cond_0
    sget v8, Lcom/smartisanos/launcher/ResIds$id;->theme_preview_img_large:I

    invoke-virtual {p0, v8}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mPreviewImgLarge:Landroid/widget/ImageView;

    .line 341
    new-instance v8, Lcom/smartisanos/launcher/theme/DrawableCache;

    invoke-direct {v8}, Lcom/smartisanos/launcher/theme/DrawableCache;-><init>()V

    iput-object v8, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDrawableCache:Lcom/smartisanos/launcher/theme/DrawableCache;

    .line 342
    new-instance v8, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;

    invoke-direct {v8, v10}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity$1;)V

    iput-object v8, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mTitle:Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;

    .line 343
    iget-object v9, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mTitle:Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;

    sget v8, Lcom/smartisanos/launcher/ResIds$id;->view_title:I

    invoke-virtual {p0, v8}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, v9, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->title:Landroid/widget/LinearLayout;

    .line 344
    iget-object v9, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mTitle:Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;

    sget v8, Lcom/smartisanos/launcher/ResIds$id;->btn_back:I

    invoke-virtual {p0, v8}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v9, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->backButton:Landroid/widget/TextView;

    .line 345
    iget-object v9, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mTitle:Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;

    sget v8, Lcom/smartisanos/launcher/ResIds$id;->btn_ok:I

    invoke-virtual {p0, v8}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v9, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->applyButton:Landroid/widget/TextView;

    .line 346
    iget-object v9, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mTitle:Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;

    sget v8, Lcom/smartisanos/launcher/ResIds$id;->btn_download:I

    invoke-virtual {p0, v8}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, v9, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->downloadButton:Landroid/widget/LinearLayout;

    .line 348
    iget-object v9, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mTitle:Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;

    sget v8, Lcom/smartisanos/launcher/ResIds$id;->status_icon_view:I

    invoke-virtual {p0, v8}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/widget/StatusIconView;

    iput-object v8, v9, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->statusIconView:Lcom/smartisanos/launcher/widget/StatusIconView;

    .line 351
    iget-object v8, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mTitle:Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;

    iget-object v9, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->backButtonOnClickListener:Landroid/view/View$OnClickListener;

    iput-object v9, v8, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->backBtnListener:Landroid/view/View$OnClickListener;

    .line 352
    iget-object v8, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mTitle:Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;

    iget-object v9, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->setupThemeOnClickListener:Landroid/view/View$OnClickListener;

    iput-object v9, v8, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->setupBtnListener:Landroid/view/View$OnClickListener;

    .line 353
    iget-object v8, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mTitle:Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;

    iget-object v9, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->downloadThemeOnClickListener:Landroid/view/View$OnClickListener;

    iput-object v9, v8, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->downloadBtnListener:Landroid/view/View$OnClickListener;

    .line 354
    iget-object v8, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mTitle:Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;

    iget-object v9, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->downloadingOnClickListener:Landroid/view/View$OnClickListener;

    iput-object v9, v8, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->downloadingBtnListener:Landroid/view/View$OnClickListener;

    .line 355
    iget-object v8, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mTitle:Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;

    iget-object v9, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->installOnClickListener:Landroid/view/View$OnClickListener;

    iput-object v9, v8, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->installBtnListener:Landroid/view/View$OnClickListener;

    .line 356
    iget-object v8, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mTitle:Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;

    iget-object v8, v8, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->backButton:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->backButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iget-object v8, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDisplayedTheme:Lcom/smartisanos/launcher/theme/Theme;

    iget-object v0, v8, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    .line 359
    .local v0, "displayThemeId":Ljava/lang/String;
    sget v8, Lcom/smartisanos/launcher/ResIds$id;->theme_color_dot_list:I

    invoke-virtual {p0, v8}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/HorizontalScrollView;

    iput-object v8, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 360
    sget v8, Lcom/smartisanos/launcher/ResIds$id;->horizontal_linear_layout:I

    invoke-virtual {p0, v8}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    .line 361
    new-instance v6, Ljava/util/ArrayList;

    sget-object v8, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_ORDER:Ljava/util/List;

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v8, "smartisan_theme_copper_red"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_keep_copper

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_keep_copper
    const-string v8, "smartisan_theme_gintama"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_keep_gintama

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_keep_gintama
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 362
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_theme_strip_done

    .line 363
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 364
    .local v5, "themeId":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ViewHolder;

    invoke-direct {v1, p0, v10}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ViewHolder;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Lcom/smartisanos/launcher/theme/ThemeItemActivity$1;)V

    .line 365
    .local v1, "holder":Lcom/smartisanos/launcher/theme/ThemeItemActivity$ViewHolder;
    iput-object v5, v1, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ViewHolder;->themeId:Ljava/lang/String;

    .line 366
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Lcom/smartisanos/launcher/ResIds$layout;->theme_color_dot_item:I

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 367
    .local v7, "view":Landroid/view/View;
    iput-object v7, v1, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ViewHolder;->view:Landroid/view/View;

    .line 368
    sget v8, Lcom/smartisanos/launcher/ResIds$id;->theme_color_dot:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v1, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ViewHolder;->colorDot:Landroid/widget/ImageView;

    .line 369
    sget v8, Lcom/smartisanos/launcher/ResIds$id;->theme_color_dot_selected:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v1, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ViewHolder;->colorDotSelected:Landroid/widget/ImageView;

    .line 370
    sget v8, Lcom/smartisanos/launcher/ResIds$id;->theme_item_dot_name:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v1, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ViewHolder;->themeName:Landroid/widget/TextView;

    .line 371
    invoke-virtual {v7, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 372
    invoke-virtual {v7, v11}, Landroid/view/View;->setSelected(Z)V

    .line 373
    iget-object v8, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->colorDotOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v8, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 375
    iget-object v8, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->holderMap:Ljava/util/Map;

    invoke-interface {v8, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 377
    .end local v1    # "holder":Lcom/smartisanos/launcher/theme/ThemeItemActivity$ViewHolder;
    .end local v5    # "themeId":Ljava/lang/String;
    .end local v7    # "view":Landroid/view/View;
    :cond_theme_strip_done
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->refreshHorizontalScrollView()V

    .line 378
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 379
    .local v3, "selectedIndex":I
    iget-object v8, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v9, Lcom/smartisanos/launcher/theme/ThemeItemActivity$3;

    invoke-direct {v9, p0, v3}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$3;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;I)V

    invoke-virtual {v8, v9}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 397
    new-instance v8, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ResourceLoader;

    invoke-direct {v8, p0, p0, v6}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ResourceLoader;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v8, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mResourceLoader:Lcom/smartisanos/launcher/theme/ThemeItemActivity$ResourceLoader;

    .line 398
    iget-object v8, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mResourceLoader:Lcom/smartisanos/launcher/theme/ThemeItemActivity$ResourceLoader;

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/smartisanos/launcher/theme/DrawableCache;

    iget-object v10, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDrawableCache:Lcom/smartisanos/launcher/theme/DrawableCache;

    aput-object v10, v9, v11

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ResourceLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 400
    const/4 v6, 0x0

    .line 401
    .local v6, "used":Z
    iget-object v8, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mUsedTheme:Lcom/smartisanos/launcher/theme/Theme;

    iget-object v8, v8, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    iget-object v9, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDisplayedTheme:Lcom/smartisanos/launcher/theme/Theme;

    iget-object v9, v9, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 402
    const/4 v6, 0x1

    .line 404
    :cond_2
    iget-object v8, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDisplayedTheme:Lcom/smartisanos/launcher/theme/Theme;

    iget-object v8, v8, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->updateLargePreviewImg(Ljava/lang/String;)V

    .line 405
    iget-object v8, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDisplayedTheme:Lcom/smartisanos/launcher/theme/Theme;

    invoke-direct {p0, v8, v6}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->updateBottomTitleByHandler(Lcom/smartisanos/launcher/theme/Theme;Z)V

    .line 407
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->adjustPreviewPos()V

    .line 408
    return-void
.end method

.method private isDisplayTheme(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "themeId"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 452
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDisplayedTheme:Lcom/smartisanos/launcher/theme/Theme;

    if-nez v1, :cond_1

    .line 462
    :cond_0
    :goto_0
    return v0

    .line 455
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 458
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDisplayedTheme:Lcom/smartisanos/launcher/theme/Theme;

    iget-object v1, v1, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDisplayedTheme:Lcom/smartisanos/launcher/theme/Theme;

    iget-object v1, v1, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    .line 459
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onClickSettingToChangeTheme()V
    .locals 6

    .prologue
    .line 731
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mUsedTheme:Lcom/smartisanos/launcher/theme/Theme;

    iget-object v2, v2, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    iget-object v3, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDisplayedTheme:Lcom/smartisanos/launcher/theme/Theme;

    iget-object v3, v3, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 732
    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->finish()V

    .line 758
    :goto_0
    return-void

    .line 735
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDisplayedTheme:Lcom/smartisanos/launcher/theme/Theme;

    iget-object v2, v2, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/smartisanos/launcher/theme/ThemeManager;->getInstalledThemeByPkg(Landroid/content/Context;Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v1

    .line 736
    .local v1, "theme":Lcom/smartisanos/launcher/theme/Theme;
    if-nez v1, :cond_1

    .line 737
    sget-object v2, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "theme ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDisplayedTheme:Lcom/smartisanos/launcher/theme/Theme;

    iget-object v5, v5, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] not exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 741
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 742
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->isChangeThemeAnimating()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 744
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->finish()V

    goto :goto_0

    .line 748
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDisplayedTheme:Lcom/smartisanos/launcher/theme/Theme;

    iget-object v3, v3, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDisplayedTheme:Lcom/smartisanos/launcher/theme/Theme;

    iget-object v3, v3, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/smartisanos/launcher/theme/ThemeManager;->storeNewThemeToCurrent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 749
    .local v0, "store":Z
    if-nez v0, :cond_4

    .line 751
    sget-object v2, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "Store new theme to current failed"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 754
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v2

    sget-object v3, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->SETTING:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->requireChangeThemeAnim(Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;)V

    .line 755
    const-string v2, "launcher_theme"

    iget-object v3, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDisplayedTheme:Lcom/smartisanos/launcher/theme/Theme;

    iget-object v3, v3, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/data/LauncherSettings;->updateSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/LauncherApplication;->getProxy()Lcom/smartisanos/launcher/ApplicationProxy;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/ApplicationProxy;->setEnableStatusbarMessage(Z)V

    .line 757
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method private refreshHorizontalScrollView()V
    .locals 9

    .prologue
    .line 421
    new-instance v6, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->holderMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 422
    .local v6, "themeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 423
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_4

    .line 424
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 425
    .local v2, "id":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 423
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    :cond_1
    iget-object v8, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->holderMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ViewHolder;

    .line 429
    .local v0, "holder":Lcom/smartisanos/launcher/theme/ThemeItemActivity$ViewHolder;
    if-eqz v0, :cond_0

    .line 432
    const/4 v3, 0x0

    .line 433
    .local v3, "selected":Z
    const/4 v7, 0x0

    .line 434
    .local v7, "used":Z
    iget-object v8, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDisplayedTheme:Lcom/smartisanos/launcher/theme/Theme;

    iget-object v8, v8, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 435
    const/4 v3, 0x1

    .line 437
    :cond_2
    iget-object v8, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mUsedTheme:Lcom/smartisanos/launcher/theme/Theme;

    iget-object v8, v8, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 438
    const/4 v7, 0x1

    .line 440
    :cond_3
    invoke-static {v2}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeById(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v5

    .line 441
    .local v5, "theme":Lcom/smartisanos/launcher/theme/Theme;
    invoke-virtual {v0, v5, v3, v7, p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ViewHolder;->setTheme(Lcom/smartisanos/launcher/theme/Theme;ZZLandroid/content/Context;)V

    goto :goto_1

    .line 443
    .end local v0    # "holder":Lcom/smartisanos/launcher/theme/ThemeItemActivity$ViewHolder;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "selected":Z
    .end local v5    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    .end local v7    # "used":Z
    :cond_4
    return-void
.end method

.method private removeExistDLRecord(Ljava/lang/String;)V
    .locals 4
    .param p1, "themeId"    # Ljava/lang/String;

    .prologue
    .line 617
    invoke-static {p1}, Lcom/smartisanos/home/net/DownloadSupervisor;->getRecordByTaskName(Ljava/lang/String;)Lcom/smartisanos/launcher/data/handler/DLRecord;

    move-result-object v0

    .line 618
    .local v0, "dlRecord":Lcom/smartisanos/launcher/data/handler/DLRecord;
    if-eqz v0, :cond_0

    .line 619
    iget-wide v2, v0, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_id:J

    invoke-static {v2, v3}, Lcom/smartisanos/home/net/DownloadSupervisor;->cleanDownloadRecord(J)V

    .line 621
    :cond_0
    return-void
.end method

.method private requestInstallTheme(Ljava/lang/String;)V
    .locals 13
    .param p1, "themeId"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x0

    .line 1036
    if-nez p1, :cond_0

    .line 1072
    :goto_0
    return-void

    .line 1039
    :cond_0
    invoke-static {p1}, Lcom/smartisanos/home/net/DownloadSupervisor;->getRecordByTaskName(Ljava/lang/String;)Lcom/smartisanos/launcher/data/handler/DLRecord;

    move-result-object v0

    .line 1040
    .local v0, "dlRecord":Lcom/smartisanos/launcher/data/handler/DLRecord;
    const-wide/16 v2, -0x1

    .line 1041
    .local v2, "downloadId":J
    if-eqz v0, :cond_1

    .line 1042
    iget-wide v2, v0, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_id:J

    .line 1045
    :cond_1
    const/4 v8, 0x0

    .line 1046
    .local v8, "uri":Landroid/net/Uri;
    cmp-long v9, v2, v10

    if-lez v9, :cond_2

    .line 1047
    invoke-static {v2, v3}, Lcom/smartisanos/launcher/actions/DownloadReceiver;->getDownloadFileUri(J)Landroid/net/Uri;

    move-result-object v8

    .line 1050
    :cond_2
    if-nez v8, :cond_4

    .line 1051
    cmp-long v9, v2, v10

    if-lez v9, :cond_3

    .line 1052
    invoke-static {v2, v3}, Lcom/smartisanos/home/net/DownloadSupervisor;->cleanDownloadRecord(J)V

    .line 1054
    :cond_3
    iget-object v9, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mTitle:Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;

    const/16 v10, 0x65

    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->switchButtonStatus(IIZ)V

    goto :goto_0

    .line 1058
    :cond_4
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1059
    .local v6, "install_intent":Landroid/content/Intent;
    const-string v9, "application/vnd.android.package-archive"

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1060
    const/high16 v9, 0x10000000

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1061
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1062
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/smartisanos/launcher/LauncherApplication;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateBottomTitleByHandler(Lcom/smartisanos/launcher/theme/Theme;Z)V
    .locals 3
    .param p1, "theme"    # Lcom/smartisanos/launcher/theme/Theme;
    .param p2, "used"    # Z

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 209
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 203
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v1, "params":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 208
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private updateLargePreviewImg(Ljava/lang/String;)V
    .locals 3
    .param p1, "themeId"    # Ljava/lang/String;

    .prologue
    .line 446
    iget v2, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->viewMode:I

    invoke-static {p1, v2}, Lcom/smartisanos/launcher/theme/Theme;->largePreviewAssetsPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1, p0}, Lcom/smartisanos/launcher/theme/Theme;->readAssetsResource(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 448
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mPreviewImgLarge:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 449
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 849
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 850
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "finish"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 851
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 860
    :goto_0
    return-void

    .line 854
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->isRequireChangeThemeAnim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 855
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 856
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/Launcher;->disableAnimationScale(I)V

    .line 859
    :cond_1
    sget v0, Lcom/smartisanos/launcher/ResIds$anim;->slide_in_from_left:I

    sget v1, Lcom/smartisanos/launcher/ResIds$anim;->slide_out_to_right:I

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 273
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 274
    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 275
    .local v4, "resources":Landroid/content/res/Resources;
    sget v7, Lcom/smartisanos/launcher/ResIds$color;->theme_name_in_dot_normal:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    sput v7, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->TEXT_COLOR_NORMAL:I

    .line 276
    sget v7, Lcom/smartisanos/launcher/ResIds$color;->theme_name_in_dot_used:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    sput v7, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->TEXT_COLOR_USED:I

    .line 277
    sget v7, Lcom/smartisanos/launcher/ResIds$color;->theme_name_in_dot_selected:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    sput v7, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->TEXT_COLOR_SELECTED:I

    .line 279
    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/smartisanos/launcher/data/Utils;->applyTransparentStatusBar(Landroid/content/Context;Landroid/view/Window;)V

    .line 280
    invoke-static {p0, v12}, Lcom/smartisanos/launcher/data/Utils;->setMiuiStatusBarDarkMode(Landroid/app/Activity;Z)Z

    .line 282
    const-string v7, "launcher_mode"

    const/16 v8, 0x9

    invoke-static {v7, v8}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->viewMode:I

    .line 283
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeManager;->getCurrentTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v7

    iput-object v7, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mUsedTheme:Lcom/smartisanos/launcher/theme/Theme;

    .line 291
    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 292
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 293
    const-string v7, "extra_theme_package"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, "pkg":Ljava/lang/String;
    const-string v7, "extra_component_id"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 295
    .local v6, "themeId":Ljava/lang/String;
    invoke-static {v6}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeById(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v7

    iput-object v7, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDisplayedTheme:Lcom/smartisanos/launcher/theme/Theme;

    .line 296
    sget-boolean v7, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "DEBUG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "themeId ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "], themePackage ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v6    # "themeId":Ljava/lang/String;
    :cond_0
    sput-object p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->self:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    .line 299
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 300
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    const-string v7, "com.smartisanos.home.THEME_DOWNLOAD_FINISH"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    const-string v7, "package"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 304
    iget-object v7, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->packageStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 305
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 306
    .local v2, "netFilter":Landroid/content/IntentFilter;
    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    iget-object v7, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->connectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v2}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 308
    sget v7, Lcom/smartisanos/launcher/ResIds$layout;->activity_theme_item:I

    invoke-virtual {p0, v7}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->setContentView(I)V

    .line 309
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->initView()V

    .line 310
    iget-object v7, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDisplayedTheme:Lcom/smartisanos/launcher/theme/Theme;

    iget-object v6, v7, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    .line 311
    .restart local v6    # "themeId":Ljava/lang/String;
    iget-object v7, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDisplayedTheme:Lcom/smartisanos/launcher/theme/Theme;

    iget-object v3, v7, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    .line 312
    .restart local v3    # "pkg":Ljava/lang/String;
    invoke-static {v6, v3, p0}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeStatus(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)[I

    move-result-object v5

    .line 313
    .local v5, "statusArr":[I
    aget v7, v5, v11

    aget v8, v5, v12

    invoke-static {v6, v7, v8}, Lcom/smartisanos/launcher/theme/ThemeManager;->updateThemeStatus(Ljava/lang/String;II)V

    .line 314
    iput-boolean v11, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mIsButtonClicked:Z

    .line 315
    iput-boolean v11, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mIsBackClicked:Z

    .line 316
    return-void
.end method

.method protected onResume()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDisplayedTheme:Lcom/smartisanos/launcher/theme/Theme;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    iget-object v2, v0, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    invoke-static {v1, v2, p0}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeStatus(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v0, 0x1

    aget v0, v3, v0

    invoke-static {v1, v4, v0}, Lcom/smartisanos/launcher/theme/ThemeManager;->updateThemeStatus(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 320
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 321
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "onDestroy"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mResourceLoader:Lcom/smartisanos/launcher/theme/ThemeItemActivity$ResourceLoader;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mResourceLoader:Lcom/smartisanos/launcher/theme/ThemeItemActivity$ResourceLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ResourceLoader;->cancel(Z)Z

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDrawableCache:Lcom/smartisanos/launcher/theme/DrawableCache;

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDrawableCache:Lcom/smartisanos/launcher/theme/DrawableCache;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/DrawableCache;->clear()V

    .line 327
    iput-object v2, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDrawableCache:Lcom/smartisanos/launcher/theme/DrawableCache;

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->packageStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 330
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->connectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 331
    sput-object v2, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->self:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    .line 332
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x1

    .line 661
    iget-boolean v1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mIsButtonClicked:Z

    if-eqz v1, :cond_1

    if-eq p1, v2, :cond_0

    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 669
    :cond_0
    :goto_0
    return v0

    .line 666
    :cond_1
    if-ne p1, v2, :cond_2

    .line 667
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mIsBackClicked:Z

    .line 669
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public updateThemeStatus(Ljava/lang/String;)V
    .locals 2
    .param p1, "themeId"    # Ljava/lang/String;

    .prologue
    .line 1007
    if-nez p1, :cond_1

    .line 1017
    :cond_0
    :goto_0
    return-void

    .line 1010
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDisplayedTheme:Lcom/smartisanos/launcher/theme/Theme;

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDisplayedTheme:Lcom/smartisanos/launcher/theme/Theme;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mDisplayedTheme:Lcom/smartisanos/launcher/theme/Theme;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->updateBottomTitleByHandler(Lcom/smartisanos/launcher/theme/Theme;Z)V

    goto :goto_0
.end method
