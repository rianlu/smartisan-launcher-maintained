.class public Lcom/smartisanos/launcher/theme/ChangeThemeHandler;
.super Ljava/lang/Object;
.source "ChangeThemeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;,
        Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;
    }
.end annotation


# static fields
.field public static final BACK_HIDE:I = 0x1

.field public static final BACK_SHOW:I = 0x0

.field private static final THEME_SHADOW_PREFIX:Ljava/lang/String; = "theme"

.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static sChangeThemeHandler:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;


# instance fields
.field final TIMES:F

.field private mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

.field private mBackgroundGaussianScale:[Lcom/smartisanos/smengine/RectNode;

.field private mChangeFromTheme:Lcom/smartisanos/launcher/theme/Theme;

.field private mChangeToTheme:Lcom/smartisanos/launcher/theme/Theme;

.field public mGaussianBackAnimHide:Lcom/smartisanos/smengine/AnimationTimeLine;

.field public mGaussianBackAnimShow:Lcom/smartisanos/smengine/AnimationTimeLine;

.field private volatile mIsChangeThemeAnimating:Z

.field public mIsForceFinishThemeAnim:Z

.field private mIsIconTextureDataReady:Z

.field private mIsReloadIcon:Z

.field private mIsShadowTextureReady:Z

.field private mIsThemeIconDataReady:Z

.field private mIsThemeTextureReady:Z

.field private mNeedLoadShadowInMainGL:Z

.field private mRequireChangeFrom:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

.field private volatile mRequireChangeThemeAnim:Z

.field private mShadowTextureRunnable:Ljava/lang/Runnable;

.field public mThemeCover:Lcom/smartisanos/smengine/RectNode;

.field public mThemeCoverAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

.field public mThemeCubeAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

.field private mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

.field public mThemeShadowAnim:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;

.field mThemeTextureLoader:Lcom/smartisanos/launcher/theme/ThemeTextureLoader;

.field private mTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mRequireChangeThemeAnim:Z

    .line 79
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsChangeThemeAnimating:Z

    .line 80
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsThemeTextureReady:Z

    .line 81
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsShadowTextureReady:Z

    .line 82
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsThemeIconDataReady:Z

    .line 83
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsIconTextureDataReady:Z

    .line 84
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsReloadIcon:Z

    .line 85
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mNeedLoadShadowInMainGL:Z

    .line 86
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsForceFinishThemeAnim:Z

    .line 88
    sget-object v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->FOUR_FINGER_RIGHT:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mRequireChangeFrom:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    .line 89
    iput-object v2, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mChangeFromTheme:Lcom/smartisanos/launcher/theme/Theme;

    .line 90
    iput-object v2, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mChangeToTheme:Lcom/smartisanos/launcher/theme/Theme;

    .line 92
    new-array v0, v1, [Lcom/smartisanos/smengine/RectNode;

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianScale:[Lcom/smartisanos/smengine/RectNode;

    .line 93
    new-array v0, v1, [Lcom/smartisanos/smengine/RectNode;

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    .line 110
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/smartisanos/smengine/RectNode;

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    .line 114
    new-instance v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$1;-><init>(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mShadowTextureRunnable:Ljava/lang/Runnable;

    .line 1280
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->TIMES:F

    .line 1574
    new-instance v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$10;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$10;-><init>(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 129
    new-instance v0, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;

    invoke-direct {v0}, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeTextureLoader:Lcom/smartisanos/launcher/theme/ThemeTextureLoader;

    .line 130
    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->startChangeThemeAnim()V

    return-void
.end method

.method static synthetic access$1002(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsReloadIcon:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->setChangeThemeAnimComplete()V

    return-void
.end method

.method static synthetic access$1200(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;)[Lcom/smartisanos/smengine/RectNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;)[Lcom/smartisanos/smengine/RectNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;)[Lcom/smartisanos/smengine/RectNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianScale:[Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;Lcom/smartisanos/launcher/theme/Theme;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler;
    .param p1, "x1"    # Lcom/smartisanos/launcher/theme/Theme;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->loadBackgroundForNewTheme(Lcom/smartisanos/launcher/theme/Theme;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsChangeThemeAnimating:Z

    return v0
.end method

.method static synthetic access$200(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->createThemeCoverAnim()V

    return-void
.end method

.method static synthetic access$300(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->adjustBackgroundForChangeTheme(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;Lcom/smartisanos/launcher/theme/Theme;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler;
    .param p1, "x1"    # Lcom/smartisanos/launcher/theme/Theme;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->applyTheme(Lcom/smartisanos/launcher/theme/Theme;)V

    return-void
.end method

.method static synthetic access$502(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsThemeTextureReady:Z

    return p1
.end method

.method static synthetic access$600(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsShadowTextureReady:Z

    return v0
.end method

.method static synthetic access$602(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsShadowTextureReady:Z

    return p1
.end method

.method static synthetic access$702(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsThemeIconDataReady:Z

    return p1
.end method

.method static synthetic access$802(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsIconTextureDataReady:Z

    return p1
.end method

.method static synthetic access$902(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mNeedLoadShadowInMainGL:Z

    return p1
.end method

.method private adjustBackgroundForChangeTheme(Z)V
    .locals 15
    .param p1, "zoom"    # Z

    .prologue
    .line 653
    if-eqz p1, :cond_0

    .line 654
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/CameraManager;->getMainCamera()Lcom/smartisanos/smengine/Camera;

    move-result-object v6

    .line 655
    .local v6, "currentMainCamera":Lcom/smartisanos/smengine/Camera;
    sget v11, Lcom/smartisanos/launcher/data/Constants;->theme_camera_fov:I

    int-to-float v8, v11

    .line 656
    .local v8, "fov":F
    const v11, 0x3c8efa35

    mul-float/2addr v11, v8

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    invoke-static {v11}, Lcom/smartisanos/smengine/math/FastMath;->tan(F)F

    move-result v9

    .line 657
    .local v9, "tan":F
    invoke-virtual {v6}, Lcom/smartisanos/smengine/Camera;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    div-float v7, v11, v9

    .line 658
    .local v7, "distance":F
    sget v11, Lcom/smartisanos/launcher/data/Constants;->bgZ:I

    int-to-float v11, v11

    add-float/2addr v11, v7

    div-float v10, v11, v7

    .line 659
    .local v10, "u":F
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v11

    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    mul-float/2addr v12, v10

    sget v13, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    mul-float/2addr v13, v10

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12, v13, v14}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 660
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/smartisanos/smengine/RectNode;->setIsEnableDepthTest(Z)V

    .line 677
    .end local v6    # "currentMainCamera":Lcom/smartisanos/smengine/Camera;
    .end local v7    # "distance":F
    .end local v8    # "fov":F
    .end local v9    # "tan":F
    .end local v10    # "u":F
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 678
    return-void

    .line 668
    :cond_0
    sget v11, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v2, v11

    .line 669
    .local v2, "bgWidth":F
    sget v11, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v0, v11

    .line 670
    .local v0, "bgHeight":F
    sget v11, Lcom/smartisanos/launcher/data/Constants;->bgZ:I

    int-to-float v4, v11

    .line 671
    .local v4, "bgZ":F
    sget v11, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v5, v11

    .line 672
    .local v5, "cameraZ":F
    add-float v11, v4, v5

    mul-float/2addr v11, v2

    div-float v3, v11, v5

    .line 673
    .local v3, "bgWidthNew":F
    add-float v11, v4, v5

    mul-float/2addr v11, v0

    div-float v1, v11, v5

    .line 674
    .local v1, "bgHeightNew":F
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v3, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v1, v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12, v13, v14}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 675
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/smartisanos/smengine/RectNode;->setIsEnableDepthTest(Z)V

    goto :goto_0
.end method

.method private applyTheme(Lcom/smartisanos/launcher/theme/Theme;)V
    .locals 14
    .param p1, "theme"    # Lcom/smartisanos/launcher/theme/Theme;

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1334
    iput-object v13, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mGaussianBackAnimShow:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 1335
    iput-object v13, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mGaussianBackAnimHide:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 1336
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v9

    invoke-virtual {v9, v12, v12, v12, v12}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 1337
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v9

    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 1338
    iget-object v9, p1, Lcom/smartisanos/launcher/theme/Theme;->mPath:Ljava/lang/String;

    sput-object v9, Lcom/smartisanos/launcher/data/Constants;->THEME_PATH:Ljava/lang/String;

    .line 1339
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v9

    iget-object v12, p1, Lcom/smartisanos/launcher/theme/Theme;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v12}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/smartisanos/smengine/World;->setAssetManager(Landroid/content/res/AssetManager;)V

    .line 1340
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v9

    invoke-static {v9}, Lcom/smartisanos/launcher/data/Constants;->initByTheme(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/smartisanos/launcher/data/Utils;->getLockscreenWallpaper(Lcom/smartisanos/launcher/theme/Theme;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/smartisanos/launcher/data/Utils;->syncSystemWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    invoke-static {v9}, Lcom/smartisanos/launcher/data/Utils;->updateWallpaperSyncState(Landroid/content/Context;)V

    .line 1341
    iget-boolean v8, p1, Lcom/smartisanos/launcher/theme/Theme;->useIconLightShadow:Z

    .line 1342
    .local v8, "useLightIcon":Z
    sget-object v9, Lcom/smartisanos/launcher/data/Constants;->ICON_TYPE:Lcom/smartisanos/launcher/data/Constants$IconType;

    sget-object v12, Lcom/smartisanos/launcher/data/Constants$IconType;->Light:Lcom/smartisanos/launcher/data/Constants$IconType;

    if-ne v9, v12, :cond_1

    move v9, v10

    :goto_0
    if-eq v8, v9, :cond_0

    .line 1343
    if-eqz v8, :cond_2

    .line 1344
    sget-object v9, Lcom/smartisanos/launcher/data/Constants$IconType;->Light:Lcom/smartisanos/launcher/data/Constants$IconType;

    sput-object v9, Lcom/smartisanos/launcher/data/Constants;->ICON_TYPE:Lcom/smartisanos/launcher/data/Constants$IconType;

    .line 1349
    :cond_0
    :goto_1
    invoke-static {}, Lcom/smartisanos/launcher/view/TextView;->applyTheme()V

    .line 1350
    invoke-direct {p0, p1, v11}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->loadTextureForThemeChange(Lcom/smartisanos/launcher/theme/Theme;Z)V

    .line 1351
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/PageView;->getCurrentPageInWindowForSinglePageMode()Lcom/smartisanos/launcher/view/Page;

    move-result-object v6

    .line 1352
    .local v6, "pagec":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v6, v10}, Lcom/smartisanos/launcher/view/Page;->setDrawWithBatch(Z)V

    .line 1353
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Page;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 1354
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/PageView;->getAllPages()Ljava/util/ArrayList;

    move-result-object v5

    .line 1355
    .local v5, "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Page;

    .line 1356
    .local v4, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->applyTheme()V

    goto :goto_2

    .end local v4    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v5    # "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .end local v6    # "pagec":Lcom/smartisanos/launcher/view/Page;
    :cond_1
    move v9, v11

    .line 1342
    goto :goto_0

    .line 1346
    :cond_2
    sget-object v9, Lcom/smartisanos/launcher/data/Constants$IconType;->Dark:Lcom/smartisanos/launcher/data/Constants$IconType;

    sput-object v9, Lcom/smartisanos/launcher/data/Constants;->ICON_TYPE:Lcom/smartisanos/launcher/data/Constants$IconType;

    goto :goto_1

    .line 1358
    .restart local v5    # "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .restart local v6    # "pagec":Lcom/smartisanos/launcher/view/Page;
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v1

    .line 1359
    .local v1, "dock":Lcom/smartisanos/launcher/view/DockView;
    if-eqz v1, :cond_4

    .line 1360
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->applyTheme()V

    .line 1362
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    .line 1363
    .local v0, "background":Lcom/smartisanos/smengine/RectNode;
    sget-boolean v9, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v9, :cond_6

    .line 1364
    const-string v9, "TexturePreColorMaterial"

    invoke-static {v9}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v3

    .line 1365
    .local v3, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    const-string v9, "background.png"

    invoke-static {v9}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v11, v9}, Lcom/smartisanos/smengine/RectNode;->setTextureName(ILjava/lang/String;)V

    .line 1366
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/smartisanos/launcher/view/MainView;->setBackgroundMaskColor(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 1367
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 1368
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/MainView;->getStatusBar()Lcom/smartisanos/launcher/view/StatusBar;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/StatusBar;->applyTheme()V

    .line 1371
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v9

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/view/PageView;->showOrHideGaussianBatchBackground(Z)V

    .line 1380
    :goto_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    iget-object v9, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    array-length v9, v9

    if-ge v2, v9, :cond_7

    .line 1381
    iget-object v9, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    aget-object v9, v9, v2

    if-eqz v9, :cond_5

    .line 1382
    iget-object v9, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 1383
    iget-object v9, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    aget-object v9, v9, v2

    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 1384
    iget-object v9, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    aput-object v13, v9, v2

    .line 1380
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1374
    .end local v2    # "i":I
    .end local v3    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    :cond_6
    const-string v9, "TextureModularColorMaterial"

    invoke-static {v9}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v3

    .line 1375
    .restart local v3    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 1376
    const-string v9, "background.png"

    invoke-static {v9}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v11, v9}, Lcom/smartisanos/smengine/RectNode;->setTextureName(ILjava/lang/String;)V

    .line 1377
    invoke-virtual {v0, v10, v13}, Lcom/smartisanos/smengine/RectNode;->setTextureName(ILjava/lang/String;)V

    .line 1378
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v9

    const-string v11, "t_blur_background"

    invoke-virtual {v9, v11}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    goto :goto_3

    .line 1387
    .restart local v2    # "i":I
    :cond_7
    iget-object v9, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeTextureLoader:Lcom/smartisanos/launcher/theme/ThemeTextureLoader;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->clear()V

    .line 1388
    iput-object v13, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mChangeToTheme:Lcom/smartisanos/launcher/theme/Theme;

    .line 1390
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex()I

    move-result v7

    .line 1391
    .local v7, "screen":I
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v9

    invoke-virtual {v9, v7, v10}, Lcom/smartisanos/launcher/view/PageView;->initOrReleaseScreen(IZ)V

    .line 1392
    return-void
.end method

.method private createCameraForChangeTheme()V
    .locals 25

    .prologue
    .line 377
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/smengine/CameraManager;->getMainCamera()Lcom/smartisanos/smengine/Camera;

    move-result-object v12

    .line 378
    .local v12, "currentMainCamera":Lcom/smartisanos/smengine/Camera;
    sget v22, Lcom/smartisanos/launcher/data/Constants;->theme_camera_fov:I

    move/from16 v0, v22

    int-to-float v14, v0

    .line 379
    .local v14, "fov":F
    const v22, 0x3c8efa35

    mul-float v22, v22, v14

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/smengine/math/FastMath;->tan(F)F

    move-result v17

    .line 380
    .local v17, "tan":F
    invoke-virtual {v12}, Lcom/smartisanos/smengine/Camera;->getHeight()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v13, v22, v17

    .line 382
    .local v13, "distance":F
    invoke-virtual {v12}, Lcom/smartisanos/smengine/Camera;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v19, v0

    .line 383
    .local v19, "width":F
    invoke-virtual {v12}, Lcom/smartisanos/smengine/Camera;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v15, v0

    .line 385
    .local v15, "height":F
    const/high16 v5, 0x42480000    # 50.0f

    .line 386
    .local v5, "near":F
    const v6, 0x48006b00    # 131500.0f

    .line 387
    .local v6, "far":F
    const/high16 v22, 0x3f000000    # 0.5f

    mul-float v22, v22, v5

    mul-float v22, v22, v19

    div-float v16, v22, v13

    .line 388
    .local v16, "k":F
    move/from16 v0, v16

    neg-float v7, v0

    .line 389
    .local v7, "left":F
    move/from16 v8, v16

    .line 398
    .local v8, "right":F
    const/high16 v22, 0x3f000000    # 0.5f

    mul-float v22, v22, v5

    mul-float v22, v22, v15

    div-float v9, v22, v13

    .line 399
    .local v9, "top":F
    neg-float v10, v9

    .line 400
    .local v10, "bottom":F
    new-instance v4, Lcom/smartisanos/smengine/Camera;

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v22, v0

    float-to-int v0, v15

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v4, v0, v1}, Lcom/smartisanos/smengine/Camera;-><init>(II)V

    .line 402
    .local v4, "newC":Lcom/smartisanos/smengine/Camera;
    invoke-virtual/range {v4 .. v10}, Lcom/smartisanos/smengine/Camera;->setFrustum(FFFFFF)V

    .line 403
    new-instance v18, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct/range {v18 .. v18}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    .line 404
    .local v18, "v":Lcom/smartisanos/smengine/math/Vector2f;
    const/16 v20, 0x0

    .line 407
    .local v20, "x":F
    const/16 v20, 0x0

    .line 408
    const/16 v21, 0x0

    .line 411
    .local v21, "y":F
    new-instance v22, Lcom/smartisanos/smengine/math/Vector3f;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v13}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/Camera;->setLocation(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 412
    new-instance v22, Lcom/smartisanos/smengine/math/Vector3f;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    sget-object v23, Lcom/smartisanos/smengine/math/Vector3f;->UNIT_Y:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Lcom/smartisanos/smengine/Camera;->lookAt(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 417
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v11

    .line 418
    .local v11, "cm":Lcom/smartisanos/smengine/CameraManager;
    const-string v22, "mainCamera"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0, v4}, Lcom/smartisanos/smengine/CameraManager;->setCamera(Ljava/lang/String;Lcom/smartisanos/smengine/Camera;)V

    .line 419
    invoke-virtual {v11, v4}, Lcom/smartisanos/smengine/CameraManager;->setCurrentCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 420
    return-void
.end method

.method private createThemeCover()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 1071
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCover:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 1073
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCover:Lcom/smartisanos/smengine/RectNode;

    .line 1075
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$11;->$SwitchMap$com$smartisanos$launcher$theme$ChangeThemeHandler$RequireChangeFrom:[I

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mRequireChangeFrom:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1090
    const-string v0, "themeCover"

    sget v1, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v1, v1

    sget v2, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v2, v2

    new-instance v4, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v4, v3, v3, v3, v10}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    new-instance v5, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v5, v3, v3, v3, v10}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    new-instance v6, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v6, v3, v3, v3, v10}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    new-instance v7, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v7, v3, v3, v3, v10}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    invoke-static/range {v0 .. v7}, Lcom/smartisanos/smengine/RectNode;->createColorRect(Ljava/lang/String;FFFLcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCover:Lcom/smartisanos/smengine/RectNode;

    .line 1094
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v12}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 1098
    :goto_0
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneManager;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    .line 1099
    .local v8, "rootNode":Lcom/smartisanos/smengine/SceneNode;
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v8, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1100
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCover:Lcom/smartisanos/smengine/RectNode;

    const/16 v1, 0xc7

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 1101
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 1102
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 1103
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 1104
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/smartisanos/smengine/RenderState;->setIsPostRender(Z)V

    .line 1105
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v11}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 1106
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 1107
    return-void

    .line 1077
    .end local v8    # "rootNode":Lcom/smartisanos/smengine/SceneNode;
    :pswitch_0
    const-string v0, "themeCover"

    sget v1, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v1, v1

    sget v2, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2, v3, v11}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCover:Lcom/smartisanos/smengine/RectNode;

    .line 1079
    const/high16 v9, 0x3f800000    # 1.0f

    .line 1080
    .local v9, "w":F
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCover:Lcom/smartisanos/smengine/RectNode;

    const/16 v1, 0x8

    new-array v1, v1, [F

    aput v3, v1, v12

    aput v3, v1, v11

    const/4 v2, 0x2

    aput v9, v1, v2

    const/4 v2, 0x3

    aput v3, v1, v2

    const/4 v2, 0x4

    aput v9, v1, v2

    const/4 v2, 0x5

    aput v10, v1, v2

    const/4 v2, 0x6

    aput v3, v1, v2

    const/4 v2, 0x7

    aput v10, v1, v2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setUV([F)V

    .line 1083
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCover:Lcom/smartisanos/smengine/RectNode;

    const-string v1, "t_theme_screenshot_loading"

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1075
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private createThemeCoverAnim()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1110
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->createThemeCover()V

    .line 1111
    new-instance v1, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCoverAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 1113
    sget-object v1, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$11;->$SwitchMap$com$smartisanos$launcher$theme$ChangeThemeHandler$RequireChangeFrom:[I

    iget-object v3, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mRequireChangeFrom:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 1129
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCoverAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    new-instance v2, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$9;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$9;-><init>(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 1148
    return-void

    .line 1116
    :pswitch_0
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1117
    .local v0, "upToDown":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 1118
    const/4 v1, 0x0

    sget v3, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    neg-int v3, v3

    int-to-float v6, v3

    move v3, v2

    move v4, v2

    move v5, v2

    move v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 1120
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCoverAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto :goto_0

    .line 1113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private createThemeShadowAnim()V
    .locals 26

    .prologue
    .line 1151
    sget v20, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static/range {v20 .. v20}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v15

    .line 1152
    .local v15, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    sget v20, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v19, v0

    .line 1153
    .local v19, "width":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v7, v0, [F

    .line 1154
    .local v7, "height":[F
    const/16 v20, 0x0

    sget v21, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    aput v21, v7, v20

    .line 1155
    const/16 v20, 0x1

    iget v0, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    move/from16 v21, v0

    aput v21, v7, v20

    .line 1156
    const/16 v20, 0x2

    iget v0, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    move/from16 v21, v0

    aput v21, v7, v20

    .line 1157
    const/16 v20, 0x3

    iget v0, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    move/from16 v21, v0

    aput v21, v7, v20

    .line 1158
    const/16 v20, 0x4

    iget v0, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    move/from16 v21, v0

    aput v21, v7, v20

    .line 1159
    const/16 v20, 0x5

    iget v0, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    move/from16 v21, v0

    aput v21, v7, v20

    .line 1160
    const/16 v20, 0x1

    sget v21, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 1161
    const/16 v20, 0x4

    const/16 v21, 0x0

    aput v21, v7, v20

    .line 1163
    :cond_0
    sget v20, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v13, v20, v21

    .line 1164
    .local v13, "posTop":F
    const/16 v18, 0x0

    .line 1165
    .local v18, "upH":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_2

    .line 1166
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1167
    .local v8, "hi":F
    const/16 v20, 0x4

    move/from16 v0, v20

    if-ne v0, v9, :cond_1

    const/16 v20, 0x1

    sget v21, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "theme"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v8, v2, v3}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v21

    aput-object v21, v20, v9

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v20, v0

    aget-object v20, v20, v9

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 1175
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v20, v0

    aget-object v20, v20, v9

    const/16 v21, 0x0

    aget v22, v7, v9

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v22, v22, v18

    sub-float v22, v13, v22

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 1176
    aget v20, v7, v9

    add-float v18, v18, v20

    .line 1165
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1172
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "theme"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aget v22, v7, v9

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v21

    aput-object v21, v20, v9

    goto :goto_1

    .line 1179
    .end local v8    # "hi":F
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->updateThemeShadowUV()V

    .line 1181
    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_4

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v20, v0

    aget-object v20, v20, v9

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 1183
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/SceneManager;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v16

    .line 1184
    .local v16, "rootNode":Lcom/smartisanos/smengine/SceneNode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v20, v0

    aget-object v20, v20, v9

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1185
    const-string v20, "TextureModularColorMaterial"

    invoke-static/range {v20 .. v20}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v12

    .line 1186
    .local v12, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v20, v0

    aget-object v20, v20, v9

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v20, v0

    aget-object v20, v20, v9

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v23, 0x3f800000    # 1.0f

    const/high16 v24, 0x3f800000    # 1.0f

    invoke-virtual/range {v20 .. v24}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v20, v0

    aget-object v20, v20, v9

    const/16 v21, 0xc7

    invoke-virtual/range {v20 .. v21}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v20, v0

    aget-object v20, v20, v9

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v20, v0

    aget-object v20, v20, v9

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v20

    const/high16 v21, -0x40800000    # -1.0f

    const/high16 v22, -0x40000000    # -2.0f

    invoke-virtual/range {v20 .. v22}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 1191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v20, v0

    aget-object v20, v20, v9

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v20, v0

    aget-object v20, v20, v9

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/smartisanos/smengine/RenderState;->setIsPostRender(Z)V

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v20, v0

    aget-object v20, v20, v9

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v20

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v20, v0

    aget-object v20, v20, v9

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 1195
    sget-object v20, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->FOUR_FINGER_LEFT:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mRequireChangeFrom:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v20, v0

    aget-object v20, v20, v9

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/smartisanos/smengine/RenderState;->setIsCullFaceEnable(Z)V

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v20, v0

    aget-object v20, v20, v9

    const v21, 0x40490fdb    # (float)Math.PI

    new-instance v22, Lcom/smartisanos/smengine/math/Vector3f;

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x0

    invoke-direct/range {v22 .. v25}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual/range {v20 .. v22}, Lcom/smartisanos/smengine/RectNode;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 1199
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v20, v0

    aget-object v20, v20, v9

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 1181
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 1201
    .end local v12    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v16    # "rootNode":Lcom/smartisanos/smengine/SceneNode;
    :cond_4
    new-instance v20, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;-><init>(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;[Lcom/smartisanos/smengine/SceneNode;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadowAnim:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;

    .line 1202
    const-string v20, "theme-anim"

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 1203
    .local v5, "base_path":Ljava/lang/String;
    const-string v14, "theme_00"

    .line 1204
    .local v14, "prefix":Ljava/lang/String;
    const-string v17, ".png"

    .line 1205
    .local v17, "suffix":Ljava/lang/String;
    const/16 v6, 0x3e

    .line 1206
    .local v6, "count":I
    const/16 v20, 0x2

    sget v21, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 1207
    const/16 v6, 0x3f

    .line 1209
    :cond_5
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1210
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_3
    if-ge v10, v6, :cond_7

    .line 1211
    const/16 v20, 0xa

    move/from16 v0, v20

    if-ge v10, v0, :cond_6

    .line 1212
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "0"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1210
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1214
    :cond_6
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1217
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadowAnim:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->setFolderPath(Ljava/lang/String;)V

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadowAnim:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->setFrameImageList(Ljava/util/ArrayList;)V

    .line 1219
    return-void
.end method

.method private getGaussianBackgroundAnim(ZFFLcom/smartisanos/launcher/theme/Theme;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 34
    .param p1, "show"    # Z
    .param p2, "duration"    # F
    .param p3, "delay"    # F
    .param p4, "theme"    # Lcom/smartisanos/launcher/theme/Theme;

    .prologue
    .line 798
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/CameraManager;->getMainCamera()Lcom/smartisanos/smengine/Camera;

    move-result-object v16

    .line 799
    .local v16, "currentMainCamera":Lcom/smartisanos/smengine/Camera;
    sget v7, Lcom/smartisanos/launcher/data/Constants;->theme_camera_fov:I

    int-to-float v0, v7

    move/from16 v18, v0

    .line 800
    .local v18, "fov":F
    const v7, 0x3c8efa35

    mul-float v7, v7, v18

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Lcom/smartisanos/smengine/math/FastMath;->tan(F)F

    move-result v28

    .line 801
    .local v28, "tan":F
    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/smengine/Camera;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    div-float v17, v7, v28

    .line 802
    .local v17, "distance":F
    sget v7, Lcom/smartisanos/launcher/data/Constants;->bgZ:I

    int-to-float v7, v7

    add-float v7, v7, v17

    div-float v33, v7, v17

    .line 803
    .local v33, "u":F
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/SceneManager;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v26

    .line 804
    .local v26, "rootNode":Lcom/smartisanos/smengine/SceneNode;
    const-string v7, "TextureModularColorMaterial"

    invoke-static {v7}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v23

    .line 805
    .local v23, "mc":Lcom/smartisanos/smengine/mymaterial/Material;
    const/16 v22, 0x0

    .line 806
    .local v22, "indexa":I
    if-nez p1, :cond_0

    .line 807
    const/16 v22, 0x1

    .line 809
    :cond_0
    move/from16 v21, v22

    .line 810
    .local v21, "index":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianScale:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    if-eqz v7, :cond_1

    .line 811
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianScale:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 812
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianScale:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 813
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianScale:[Lcom/smartisanos/smengine/RectNode;

    const/4 v8, 0x0

    aput-object v8, v7, v21

    .line 816
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianScale:[Lcom/smartisanos/smengine/RectNode;

    const-string v8, "backgroundscale"

    sget v9, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v9, v9

    mul-float v9, v9, v33

    sget v10, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v10, v10

    mul-float v10, v10, v33

    sget v12, Lcom/smartisanos/launcher/data/Constants;->bgZ:I

    neg-int v12, v12

    int-to-float v12, v12

    const/4 v13, 0x1

    invoke-static {v8, v9, v10, v12, v13}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v8

    aput-object v8, v7, v21

    .line 818
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianScale:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    const-string v8, "t_blur_anim_background"

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 819
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianScale:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 820
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianScale:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 821
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianScale:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 822
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianScale:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v7

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, -0x40000000    # -2.0f

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 823
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianScale:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 824
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianScale:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 825
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianScale:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 826
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianScale:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 827
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianScale:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 828
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianScale:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 830
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    const-string v8, "backgroundcover"

    sget v9, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v9, v9

    mul-float v9, v9, v33

    sget v10, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v10, v10

    mul-float v10, v10, v33

    sget v12, Lcom/smartisanos/launcher/data/Constants;->bgZ:I

    neg-int v12, v12

    int-to-float v12, v12

    const/4 v13, 0x1

    invoke-static {v8, v9, v10, v12, v13}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v8

    aput-object v8, v7, v21

    .line 832
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    const-string v8, "t_blur_background"

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 833
    const-string v7, "TextureModularColorMaterial"

    invoke-static {v7}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v24

    .line 834
    .local v24, "mc1":Lcom/smartisanos/smengine/mymaterial/Material;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 835
    if-eqz p1, :cond_3

    .line 836
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7, v8, v9, v10, v12}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 837
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 842
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 843
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 844
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 845
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v7

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, -0x40000000    # -2.0f

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 846
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 847
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 848
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 849
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 850
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 851
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 853
    new-instance v29, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct/range {v29 .. v29}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 856
    .local v29, "timeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    const v27, 0x3f666666    # 0.9f

    .line 857
    .local v27, "scaleF":F
    if-eqz p1, :cond_4

    .line 858
    new-instance v19, Lcom/smartisanos/smengine/math/Vector4f;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    .line 859
    .local v19, "fromC":Lcom/smartisanos/smengine/math/Vector4f;
    new-instance v30, Lcom/smartisanos/smengine/math/Vector4f;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    move-object/from16 v0, v30

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    .line 860
    .local v30, "toC":Lcom/smartisanos/smengine/math/Vector4f;
    new-instance v20, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, v20

    invoke-direct {v0, v7, v8, v9}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 861
    .local v20, "fromS":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v32, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v7, 0x3f800000    # 1.0f

    div-float v7, v7, v27

    const/high16 v8, 0x3f800000    # 1.0f

    div-float v8, v8, v27

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, v32

    invoke-direct {v0, v7, v8, v9}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 862
    .local v32, "toS":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianScale:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7, v8, v9, v10, v12}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 863
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianScale:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 864
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianScale:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    sget v8, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v8, v8

    const/high16 v9, 0x43480000    # 200.0f

    add-float/2addr v8, v9

    mul-float v8, v8, v27

    mul-float v8, v8, v33

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sget v9, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v9, v9

    const/high16 v10, 0x43480000    # 200.0f

    add-float/2addr v9, v10

    mul-float v9, v9, v27

    mul-float v9, v9, v33

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8, v9, v10}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 866
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    sget v8, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v8, v8

    mul-float v8, v8, v27

    mul-float v8, v8, v33

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sget v9, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v9, v9

    mul-float v9, v9, v27

    mul-float v9, v9, v33

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8, v9, v10}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 867
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianScale:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 868
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 881
    :goto_1
    const/16 v25, 0xe

    .line 882
    .local v25, "qu":I
    if-nez p1, :cond_2

    .line 883
    const/16 v25, 0xd

    .line 886
    :cond_2
    if-eqz p1, :cond_5

    .line 887
    new-instance v31, Lcom/smartisanos/smengine/math/Vector4f;

    const v7, 0x3f666666    # 0.9f

    const v8, 0x3f666666    # 0.9f

    const v9, 0x3f666666    # 0.9f

    const v10, 0x3f666666    # 0.9f

    move-object/from16 v0, v31

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    .line 891
    .local v31, "toCs":Lcom/smartisanos/smengine/math/Vector4f;
    :goto_2
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianScale:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    invoke-direct {v3, v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 892
    .local v3, "colorAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v7, v7, p2

    invoke-virtual {v3, v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 893
    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 894
    const/4 v4, 0x3

    move-object/from16 v0, v19

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, v19

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, v19

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move-object/from16 v0, v19

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    move-object/from16 v0, v31

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, v31

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, v31

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move-object/from16 v0, v31

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual/range {v3 .. v12}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 896
    move-object/from16 v0, v29

    move/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 898
    new-instance v4, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianScale:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    invoke-direct {v4, v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 899
    .local v4, "scaleAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 900
    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 901
    const/4 v5, 0x1

    move-object/from16 v0, v20

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v20

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v20

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v32

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v32

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v32

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v4 .. v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 902
    move-object/from16 v0, v29

    move/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 903
    if-eqz p1, :cond_6

    .line 904
    new-instance v5, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    invoke-direct {v5, v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 905
    .local v5, "scaleAnimCover":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 906
    move/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 907
    const/4 v6, 0x1

    move-object/from16 v0, v20

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v20

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v20

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v32

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v32

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v32

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v5 .. v12}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 908
    move-object/from16 v0, v29

    move/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 909
    new-instance v6, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    invoke-direct {v6, v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 910
    .local v6, "colorAnimCover":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v7, 0x3ecccccd    # 0.4f

    mul-float v7, v7, p2

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 911
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 912
    const/4 v7, 0x3

    move-object/from16 v0, v19

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, v19

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, v19

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move-object/from16 v0, v19

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    move-object/from16 v0, v30

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, v30

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, v30

    iget v14, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move-object/from16 v0, v30

    iget v15, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual/range {v6 .. v15}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 914
    new-instance v7, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$6;

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v7, v0, v1}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$6;-><init>(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;I)V

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 919
    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v7, v7, p2

    move-object/from16 v0, v29

    invoke-virtual {v0, v7, v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 933
    :goto_3
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/PageView;->getCurrentPageInWindowForSinglePageMode()Lcom/smartisanos/launcher/view/Page;

    move-result-object v11

    .line 934
    .local v11, "page":Lcom/smartisanos/launcher/view/Page;
    new-instance v7, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$7;

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, v21

    move-object/from16 v12, p4

    invoke-direct/range {v7 .. v12}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$7;-><init>(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;ZILcom/smartisanos/launcher/view/Page;Lcom/smartisanos/launcher/theme/Theme;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 971
    return-object v29

    .line 839
    .end local v3    # "colorAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v4    # "scaleAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v5    # "scaleAnimCover":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v6    # "colorAnimCover":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v11    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v19    # "fromC":Lcom/smartisanos/smengine/math/Vector4f;
    .end local v20    # "fromS":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v25    # "qu":I
    .end local v27    # "scaleF":F
    .end local v29    # "timeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v30    # "toC":Lcom/smartisanos/smengine/math/Vector4f;
    .end local v31    # "toCs":Lcom/smartisanos/smengine/math/Vector4f;
    .end local v32    # "toS":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8, v9, v10, v12}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 840
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    goto/16 :goto_0

    .line 870
    .restart local v27    # "scaleF":F
    .restart local v29    # "timeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    :cond_4
    new-instance v30, Lcom/smartisanos/smengine/math/Vector4f;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v30

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    .line 871
    .restart local v30    # "toC":Lcom/smartisanos/smengine/math/Vector4f;
    new-instance v19, Lcom/smartisanos/smengine/math/Vector4f;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    move-object/from16 v0, v19

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    .line 872
    .restart local v19    # "fromC":Lcom/smartisanos/smengine/math/Vector4f;
    new-instance v32, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, v32

    move/from16 v1, v27

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 873
    .restart local v32    # "toS":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v20, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, v20

    invoke-direct {v0, v7, v8, v9}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 874
    .restart local v20    # "fromS":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianScale:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8, v9, v10, v12}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 875
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianScale:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    sget v8, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v8, v8

    const/high16 v9, 0x43480000    # 200.0f

    add-float/2addr v8, v9

    mul-float v8, v8, v33

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sget v9, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v9, v9

    const/high16 v10, 0x43480000    # 200.0f

    add-float/2addr v9, v10

    mul-float v9, v9, v33

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8, v9, v10}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 877
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    sget v8, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v8, v8

    mul-float v8, v8, v33

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sget v9, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v9, v9

    mul-float v9, v9, v33

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8, v9, v10}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 878
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianScale:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 879
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    goto/16 :goto_1

    .line 889
    .restart local v25    # "qu":I
    :cond_5
    new-instance v31, Lcom/smartisanos/smengine/math/Vector4f;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v31

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    .restart local v31    # "toCs":Lcom/smartisanos/smengine/math/Vector4f;
    goto/16 :goto_2

    .line 921
    .restart local v3    # "colorAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .restart local v4    # "scaleAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_6
    new-instance v5, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    invoke-direct {v5, v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 922
    .restart local v5    # "scaleAnimCover":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 923
    move/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 924
    const/4 v8, 0x1

    move-object/from16 v0, v20

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v20

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v20

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v32

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v32

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v32

    iget v14, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object v7, v5

    invoke-virtual/range {v7 .. v14}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 925
    move-object/from16 v0, v29

    move/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 926
    new-instance v6, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mBackgroundGaussianCover:[Lcom/smartisanos/smengine/RectNode;

    aget-object v7, v7, v21

    invoke-direct {v6, v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 927
    .restart local v6    # "colorAnimCover":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v7, v7, p2

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 928
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 929
    const/4 v7, 0x3

    move-object/from16 v0, v19

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, v19

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, v19

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move-object/from16 v0, v19

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    move-object/from16 v0, v30

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, v30

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, v30

    iget v14, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move-object/from16 v0, v30

    iget v15, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual/range {v6 .. v15}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 931
    const/4 v7, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v7, v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto/16 :goto_3
.end method

.method public static getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->sChangeThemeHandler:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    return-object v0
.end method

.method private loadBackgroundForNewTheme(Lcom/smartisanos/launcher/theme/Theme;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "theme"    # Lcom/smartisanos/launcher/theme/Theme;

    .prologue
    .line 708
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v7

    .line 709
    .local v7, "tm":Lcom/smartisanos/smengine/TextureManager;
    const-string v8, "background.png"

    invoke-static {v8}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, "backPath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 711
    .local v1, "bt":Landroid/graphics/Bitmap;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "lbt,"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 712
    .local v5, "logbulder":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/smartisanos/launcher/theme/Theme;->getPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    sget-boolean v8, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v8, :cond_1

    .line 719
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Utils;->getLockscreenWallpaper(Lcom/smartisanos/launcher/theme/Theme;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 720
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeManager;->getPreviousTheme()Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v8

    invoke-static {v8}, Lcom/smartisanos/launcher/theme/ThemeManager;->isGaussianTheme(Lcom/smartisanos/launcher/theme/Theme;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v2, v1

    .line 773
    .end local v1    # "bt":Landroid/graphics/Bitmap;
    .local v2, "bt":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 723
    .end local v2    # "bt":Landroid/graphics/Bitmap;
    .restart local v1    # "bt":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "1bt = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    invoke-virtual {v7, v0}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 725
    new-instance v6, Lcom/smartisanos/smengine/Texture;

    invoke-direct {v6, v1}, Lcom/smartisanos/smengine/Texture;-><init>(Landroid/graphics/Bitmap;)V

    .line 726
    .local v6, "t":Lcom/smartisanos/smengine/Texture;
    invoke-virtual {v7, v0, v6}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    .line 727
    invoke-virtual {v6}, Lcom/smartisanos/smengine/Texture;->bind()Z

    .line 728
    new-instance v8, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$5;

    const/16 v9, 0x64

    invoke-direct {v8, p0, v9, v6, v7}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$5;-><init>(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;ILcom/smartisanos/smengine/Texture;Lcom/smartisanos/smengine/TextureManager;)V

    const/4 v9, 0x0

    .line 751
    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$5;->send(F)V

    .line 770
    :goto_1
    if-nez v1, :cond_2

    .line 771
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 754
    .end local v6    # "t":Lcom/smartisanos/smengine/Texture;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "2pa="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/smartisanos/launcher/theme/Theme;->mPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    :try_start_0
    iget-object v8, p1, Lcom/smartisanos/launcher/theme/Theme;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p1, Lcom/smartisanos/launcher/theme/Theme;->mPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 757
    .local v4, "in":Ljava/io/InputStream;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 758
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "in = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dec bt = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    .end local v4    # "in":Ljava/io/InputStream;
    :goto_2
    invoke-virtual {v7, v0}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 766
    new-instance v6, Lcom/smartisanos/smengine/Texture;

    invoke-direct {v6, v1}, Lcom/smartisanos/smengine/Texture;-><init>(Landroid/graphics/Bitmap;)V

    .line 767
    .restart local v6    # "t":Lcom/smartisanos/smengine/Texture;
    invoke-virtual {v7, v0, v6}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    .line 768
    invoke-virtual {v6}, Lcom/smartisanos/smengine/Texture;->bind()Z

    goto/16 :goto_1

    .line 760
    .end local v6    # "t":Lcom/smartisanos/smengine/Texture;
    :catch_0
    move-exception v3

    .line 762
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 763
    const-string v8, "ioe"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .end local v3    # "e":Ljava/io/IOException;
    .restart local v6    # "t":Lcom/smartisanos/smengine/Texture;
    :cond_2
    move-object v2, v1

    .line 773
    .end local v1    # "bt":Landroid/graphics/Bitmap;
    .restart local v2    # "bt":Landroid/graphics/Bitmap;
    goto/16 :goto_0
.end method

.method private loadIconForThemeChange()V
    .locals 22

    .prologue
    .line 423
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v15

    .line 424
    .local v15, "tm":Lcom/smartisanos/smengine/TextureManager;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/launcher/view/PageView;->getAllPages()Ljava/util/ArrayList;

    move-result-object v11

    .line 425
    .local v11, "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/Page;

    .line 426
    .local v10, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/PageView;->getCurrentPageInWindowForSinglePageMode()Lcom/smartisanos/launcher/view/Page;

    move-result-object v7

    .line 427
    .local v7, "current":Lcom/smartisanos/launcher/view/Page;
    const-string v14, ""

    .line 428
    .local v14, "texPre":Ljava/lang/String;
    if-ne v10, v7, :cond_1

    .line 429
    const-string v14, "target/--/"

    .line 431
    :cond_1
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v6

    .line 432
    .local v6, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_2
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Cell;

    .line 433
    .local v5, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->isEmptyCell()Z

    move-result v18

    if-nez v18, :cond_2

    .line 434
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v9

    .line 435
    .local v9, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-wide v0, v9, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_fore"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 436
    .local v13, "texName":Ljava/lang/String;
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 437
    invoke-virtual {v15, v13}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 439
    :cond_3
    iget-object v0, v9, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/smartisanos/launcher/data/Utils;->iconDataToBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 440
    .local v4, "bmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_2

    .line 442
    new-instance v12, Lcom/smartisanos/smengine/Texture;

    invoke-direct {v12, v4}, Lcom/smartisanos/smengine/Texture;-><init>(Landroid/graphics/Bitmap;)V

    .line 443
    .local v12, "t":Lcom/smartisanos/smengine/Texture;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/smartisanos/smengine/Texture;->setIsUseMipmap(Z)V

    .line 444
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/smartisanos/smengine/Texture;->setCanRecycle(Z)V

    .line 445
    invoke-virtual {v12}, Lcom/smartisanos/smengine/Texture;->bind()Z

    .line 446
    invoke-virtual {v15, v13, v12}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    goto :goto_0

    .line 451
    .end local v4    # "bmap":Landroid/graphics/Bitmap;
    .end local v5    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v6    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v7    # "current":Lcom/smartisanos/launcher/view/Page;
    .end local v9    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v10    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v12    # "t":Lcom/smartisanos/smengine/Texture;
    .end local v13    # "texName":Ljava/lang/String;
    .end local v14    # "texPre":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v8

    .line 452
    .local v8, "dock":Lcom/smartisanos/launcher/view/DockView;
    if-eqz v8, :cond_6

    .line 453
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v6

    .line 454
    .restart local v6    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    const-string v14, "target/--/"

    .line 455
    .restart local v14    # "texPre":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_5
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Cell;

    .line 456
    .restart local v5    # "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->isEmptyCell()Z

    move-result v17

    if-nez v17, :cond_5

    .line 457
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v9

    .line 458
    .restart local v9    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-wide v0, v9, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_fore"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 459
    .restart local v13    # "texName":Ljava/lang/String;
    iget-object v0, v9, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/smartisanos/launcher/data/Utils;->iconDataToBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 460
    .restart local v4    # "bmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_5

    .line 462
    new-instance v12, Lcom/smartisanos/smengine/Texture;

    invoke-direct {v12, v4}, Lcom/smartisanos/smengine/Texture;-><init>(Landroid/graphics/Bitmap;)V

    .line 463
    .restart local v12    # "t":Lcom/smartisanos/smengine/Texture;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/smartisanos/smengine/Texture;->setIsUseMipmap(Z)V

    .line 464
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/smartisanos/smengine/Texture;->setCanRecycle(Z)V

    .line 465
    invoke-virtual {v12}, Lcom/smartisanos/smengine/Texture;->bind()Z

    .line 466
    invoke-virtual {v15, v13, v12}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    goto :goto_1

    .line 471
    .end local v4    # "bmap":Landroid/graphics/Bitmap;
    .end local v5    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v6    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v9    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v12    # "t":Lcom/smartisanos/smengine/Texture;
    .end local v13    # "texName":Ljava/lang/String;
    .end local v14    # "texPre":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private loadTextureForThemeChange(Lcom/smartisanos/launcher/theme/Theme;Z)V
    .locals 29
    .param p1, "theme"    # Lcom/smartisanos/launcher/theme/Theme;
    .param p2, "isAnimNeed"    # Z

    .prologue
    .line 1399
    sget v24, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static/range {v24 .. v24}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v14

    .line 1400
    .local v14, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v22

    .line 1401
    .local v22, "tm":Lcom/smartisanos/smengine/TextureManager;
    if-eqz p2, :cond_5

    .line 1403
    iget v4, v14, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 1404
    .local v4, "col":I
    iget v15, v14, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    .line 1405
    .local v15, "row":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v15, :cond_2

    .line 1406
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v4, :cond_1

    .line 1407
    invoke-static {v8, v9}, Lcom/smartisanos/launcher/view/Page;->getBackgroundImageName(II)Ljava/lang/String;

    move-result-object v10

    .line 1408
    .local v10, "name":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mPath:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1409
    .local v11, "path":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "target/--/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1410
    invoke-virtual/range {v24 .. v25}, Lcom/smartisanos/smengine/TextureManager;->getTexture(Ljava/lang/String;)Lcom/smartisanos/smengine/Texture;

    move-result-object v20

    .line 1411
    .local v20, "texture":Lcom/smartisanos/smengine/Texture;
    if-nez v20, :cond_0

    .line 1413
    const/4 v3, 0x0

    .line 1414
    .local v3, "bt":Landroid/graphics/Bitmap;
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1415
    new-instance v21, Lcom/smartisanos/smengine/Texture;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lcom/smartisanos/smengine/Texture;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1416
    .end local v20    # "texture":Lcom/smartisanos/smengine/Texture;
    .local v21, "texture":Lcom/smartisanos/smengine/Texture;
    const/16 v24, 0x1

    :try_start_1
    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Texture;->setCanRecycle(Z)V

    .line 1417
    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/smengine/Texture;->bind()Z

    .line 1418
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "target/--/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-object/from16 v20, v21

    .line 1406
    .end local v3    # "bt":Landroid/graphics/Bitmap;
    .end local v21    # "texture":Lcom/smartisanos/smengine/Texture;
    .restart local v20    # "texture":Lcom/smartisanos/smengine/Texture;
    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1419
    .restart local v3    # "bt":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v5

    .line 1420
    .local v5, "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1405
    .end local v3    # "bt":Landroid/graphics/Bitmap;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "path":Ljava/lang/String;
    .end local v20    # "texture":Lcom/smartisanos/smengine/Texture;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1426
    .end local v9    # "j":I
    :cond_2
    const-string v24, "dock_back.png"

    const/16 v25, 0x1

    invoke-static/range {v24 .. v25}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 1427
    .restart local v10    # "name":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mPath:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1428
    .restart local v11    # "path":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "target/--/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TextureManager;->getTexture(Ljava/lang/String;)Lcom/smartisanos/smengine/Texture;

    move-result-object v20

    .line 1429
    .restart local v20    # "texture":Lcom/smartisanos/smengine/Texture;
    if-nez v20, :cond_3

    .line 1431
    const/4 v3, 0x0

    .line 1432
    .restart local v3    # "bt":Landroid/graphics/Bitmap;
    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1433
    new-instance v21, Lcom/smartisanos/smengine/Texture;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lcom/smartisanos/smengine/Texture;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1434
    .end local v20    # "texture":Lcom/smartisanos/smengine/Texture;
    .restart local v21    # "texture":Lcom/smartisanos/smengine/Texture;
    const/16 v24, 0x1

    :try_start_3
    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Texture;->setCanRecycle(Z)V

    .line 1435
    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/smengine/Texture;->bind()Z

    .line 1436
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "target/--/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-object/from16 v20, v21

    .line 1443
    .end local v3    # "bt":Landroid/graphics/Bitmap;
    .end local v21    # "texture":Lcom/smartisanos/smengine/Texture;
    .restart local v20    # "texture":Lcom/smartisanos/smengine/Texture;
    :cond_3
    :goto_4
    const-string v24, "status_bar.png"

    invoke-static/range {v24 .. v24}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1444
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mPath:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1445
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "target/--/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TextureManager;->getTexture(Ljava/lang/String;)Lcom/smartisanos/smengine/Texture;

    move-result-object v20

    .line 1446
    if-nez v20, :cond_4

    .line 1448
    const/4 v3, 0x0

    .line 1449
    .restart local v3    # "bt":Landroid/graphics/Bitmap;
    :try_start_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1450
    new-instance v21, Lcom/smartisanos/smengine/Texture;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lcom/smartisanos/smengine/Texture;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1451
    .end local v20    # "texture":Lcom/smartisanos/smengine/Texture;
    .restart local v21    # "texture":Lcom/smartisanos/smengine/Texture;
    const/16 v24, 0x1

    :try_start_5
    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Texture;->setCanRecycle(Z)V

    .line 1452
    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/smengine/Texture;->bind()Z

    .line 1453
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "target/--/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-object/from16 v20, v21

    .line 1561
    .end local v3    # "bt":Landroid/graphics/Bitmap;
    .end local v4    # "col":I
    .end local v8    # "i":I
    .end local v10    # "name":Ljava/lang/String;
    .end local v15    # "row":I
    .end local v21    # "texture":Lcom/smartisanos/smengine/Texture;
    :cond_4
    :goto_5
    return-void

    .line 1437
    .restart local v3    # "bt":Landroid/graphics/Bitmap;
    .restart local v4    # "col":I
    .restart local v8    # "i":I
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v15    # "row":I
    .restart local v20    # "texture":Lcom/smartisanos/smengine/Texture;
    :catch_1
    move-exception v5

    .line 1438
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_6
    sget-object v24, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "load "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " error"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1454
    .end local v5    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 1455
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_7
    sget-object v24, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "load "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " error"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_5

    .line 1459
    .end local v3    # "bt":Landroid/graphics/Bitmap;
    .end local v4    # "col":I
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "i":I
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "path":Ljava/lang/String;
    .end local v15    # "row":I
    .end local v20    # "texture":Lcom/smartisanos/smengine/Texture;
    :cond_5
    const/4 v11, 0x0

    .line 1463
    .restart local v11    # "path":Ljava/lang/String;
    :try_start_6
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Textures/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1464
    invoke-static {}, Lcom/smartisanos/launcher/ResourceValue;->getResolution()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "setting_button"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1466
    .local v12, "pathSetting":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mPath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1467
    .local v17, "sets":[Ljava/lang/String;
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_8
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v8, v0, :cond_7

    .line 1468
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    aget-object v25, v17, v8

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1469
    .local v23, "tpath":Ljava/lang/String;
    invoke-virtual/range {v22 .. v23}, Lcom/smartisanos/smengine/TextureManager;->getTexture(Ljava/lang/String;)Lcom/smartisanos/smengine/Texture;

    move-result-object v19

    .line 1470
    .local v19, "temp":Lcom/smartisanos/smengine/Texture;
    if-eqz v19, :cond_6

    .line 1471
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mPath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    aget-object v26, v17, v8

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1473
    .restart local v3    # "bt":Landroid/graphics/Bitmap;
    new-instance v18, Lcom/smartisanos/smengine/Texture;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/smartisanos/smengine/Texture;-><init>(Landroid/graphics/Bitmap;)V

    .line 1474
    .local v18, "t":Lcom/smartisanos/smengine/Texture;
    const/16 v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Texture;->setCanRecycle(Z)V

    .line 1475
    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/Texture;->bind()Z

    .line 1476
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    aget-object v25, v17, v8

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 1477
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    aget-object v25, v17, v8

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    .line 1467
    .end local v3    # "bt":Landroid/graphics/Bitmap;
    .end local v18    # "t":Lcom/smartisanos/smengine/Texture;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_8

    .line 1482
    .end local v19    # "temp":Lcom/smartisanos/smengine/Texture;
    .end local v23    # "tpath":Ljava/lang/String;
    :cond_7
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Textures/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1483
    invoke-static {}, Lcom/smartisanos/launcher/ResourceValue;->getResolution()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1484
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mPath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1485
    const/4 v8, 0x0

    :goto_9
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v8, v0, :cond_a

    .line 1486
    aget-object v24, v17, v8

    const-string v25, ".png"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_9

    .line 1485
    :cond_8
    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 1489
    :cond_9
    aget-object v24, v17, v8

    const-string v25, "status_bar.png"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_8

    .line 1492
    aget-object v24, v17, v8

    const-string v25, "background.png"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_8

    .line 1495
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    aget-object v25, v17, v8

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1496
    .restart local v23    # "tpath":Ljava/lang/String;
    invoke-virtual/range {v22 .. v23}, Lcom/smartisanos/smengine/TextureManager;->getTexture(Ljava/lang/String;)Lcom/smartisanos/smengine/Texture;

    move-result-object v19

    .line 1497
    .restart local v19    # "temp":Lcom/smartisanos/smengine/Texture;
    if-eqz v19, :cond_8

    .line 1498
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mPath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    aget-object v26, v17, v8

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1500
    .restart local v3    # "bt":Landroid/graphics/Bitmap;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    aget-object v25, v17, v8

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 1501
    new-instance v18, Lcom/smartisanos/smengine/Texture;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/smartisanos/smengine/Texture;-><init>(Landroid/graphics/Bitmap;)V

    .line 1502
    .restart local v18    # "t":Lcom/smartisanos/smengine/Texture;
    const/16 v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Texture;->setCanRecycle(Z)V

    .line 1503
    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/Texture;->bind()Z

    .line 1504
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    aget-object v25, v17, v8

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_a

    .line 1557
    .end local v3    # "bt":Landroid/graphics/Bitmap;
    .end local v8    # "i":I
    .end local v12    # "pathSetting":Ljava/lang/String;
    .end local v17    # "sets":[Ljava/lang/String;
    .end local v18    # "t":Lcom/smartisanos/smengine/Texture;
    .end local v19    # "temp":Lcom/smartisanos/smengine/Texture;
    .end local v23    # "tpath":Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 1558
    .local v6, "e1":Ljava/io/IOException;
    sget-object v24, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "load "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " error"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1508
    .end local v6    # "e1":Ljava/io/IOException;
    .restart local v8    # "i":I
    .restart local v12    # "pathSetting":Ljava/lang/String;
    .restart local v17    # "sets":[Ljava/lang/String;
    :cond_a
    :try_start_7
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Textures/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1509
    invoke-static {}, Lcom/smartisanos/launcher/ResourceValue;->getResolution()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Lcom/smartisanos/launcher/ResourceValue;->getMode()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1510
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mPath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1511
    const/4 v8, 0x0

    :goto_b
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v8, v0, :cond_4

    .line 1513
    aget-object v24, v17, v8

    const-string v25, "^back([0-9]|[0-9]{2}).png"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 1511
    :cond_b
    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 1517
    :cond_c
    aget-object v24, v17, v8

    const-string v25, "dock_back.png"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_b

    .line 1520
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    aget-object v25, v17, v8

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1521
    .local v13, "pf":Ljava/lang/String;
    aget-object v24, v17, v8

    const-string v25, ".png"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_f

    .line 1523
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mPath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1525
    .local v16, "setSubs":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v25, v0

    const/16 v24, 0x0

    :goto_d
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_b

    aget-object v7, v16, v24

    .line 1526
    .local v7, "file":Ljava/lang/String;
    const-string v26, ".png"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_e

    .line 1525
    :cond_d
    :goto_e
    add-int/lit8 v24, v24, 0x1

    goto :goto_d

    .line 1529
    :cond_e
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1530
    .restart local v23    # "tpath":Ljava/lang/String;
    invoke-virtual/range {v22 .. v23}, Lcom/smartisanos/smengine/TextureManager;->getTexture(Ljava/lang/String;)Lcom/smartisanos/smengine/Texture;

    move-result-object v19

    .line 1531
    .restart local v19    # "temp":Lcom/smartisanos/smengine/Texture;
    if-eqz v19, :cond_d

    .line 1532
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mResources:Landroid/content/res/Resources;

    move-object/from16 v26, v0

    .line 1533
    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mPath:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1535
    .restart local v3    # "bt":Landroid/graphics/Bitmap;
    invoke-virtual/range {v22 .. v23}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 1536
    new-instance v18, Lcom/smartisanos/smengine/Texture;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/smartisanos/smengine/Texture;-><init>(Landroid/graphics/Bitmap;)V

    .line 1537
    .restart local v18    # "t":Lcom/smartisanos/smengine/Texture;
    const/16 v26, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Texture;->setCanRecycle(Z)V

    .line 1538
    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/Texture;->bind()Z

    .line 1539
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    goto :goto_e

    .line 1544
    .end local v3    # "bt":Landroid/graphics/Bitmap;
    .end local v7    # "file":Ljava/lang/String;
    .end local v16    # "setSubs":[Ljava/lang/String;
    .end local v18    # "t":Lcom/smartisanos/smengine/Texture;
    .end local v19    # "temp":Lcom/smartisanos/smengine/Texture;
    .end local v23    # "tpath":Ljava/lang/String;
    :cond_f
    move-object/from16 v23, v13

    .line 1545
    .restart local v23    # "tpath":Ljava/lang/String;
    invoke-virtual/range {v22 .. v23}, Lcom/smartisanos/smengine/TextureManager;->getTexture(Ljava/lang/String;)Lcom/smartisanos/smengine/Texture;

    move-result-object v19

    .line 1546
    .restart local v19    # "temp":Lcom/smartisanos/smengine/Texture;
    if-eqz v19, :cond_b

    .line 1547
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mPath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1549
    .restart local v3    # "bt":Landroid/graphics/Bitmap;
    invoke-virtual/range {v22 .. v23}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 1550
    new-instance v18, Lcom/smartisanos/smengine/Texture;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/smartisanos/smengine/Texture;-><init>(Landroid/graphics/Bitmap;)V

    .line 1551
    .restart local v18    # "t":Lcom/smartisanos/smengine/Texture;
    const/16 v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Texture;->setCanRecycle(Z)V

    .line 1552
    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/Texture;->bind()Z

    .line 1553
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_c

    .line 1454
    .end local v12    # "pathSetting":Ljava/lang/String;
    .end local v13    # "pf":Ljava/lang/String;
    .end local v17    # "sets":[Ljava/lang/String;
    .end local v18    # "t":Lcom/smartisanos/smengine/Texture;
    .end local v19    # "temp":Lcom/smartisanos/smengine/Texture;
    .end local v23    # "tpath":Ljava/lang/String;
    .restart local v4    # "col":I
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v15    # "row":I
    .restart local v21    # "texture":Lcom/smartisanos/smengine/Texture;
    :catch_4
    move-exception v5

    move-object/from16 v20, v21

    .end local v21    # "texture":Lcom/smartisanos/smengine/Texture;
    .restart local v20    # "texture":Lcom/smartisanos/smengine/Texture;
    goto/16 :goto_7

    .line 1437
    .end local v20    # "texture":Lcom/smartisanos/smengine/Texture;
    .restart local v21    # "texture":Lcom/smartisanos/smengine/Texture;
    :catch_5
    move-exception v5

    move-object/from16 v20, v21

    .end local v21    # "texture":Lcom/smartisanos/smengine/Texture;
    .restart local v20    # "texture":Lcom/smartisanos/smengine/Texture;
    goto/16 :goto_6

    .line 1419
    .end local v20    # "texture":Lcom/smartisanos/smengine/Texture;
    .restart local v9    # "j":I
    .restart local v21    # "texture":Lcom/smartisanos/smengine/Texture;
    :catch_6
    move-exception v5

    move-object/from16 v20, v21

    .end local v21    # "texture":Lcom/smartisanos/smengine/Texture;
    .restart local v20    # "texture":Lcom/smartisanos/smengine/Texture;
    goto/16 :goto_3
.end method

.method private loadUnlockAnimationForThemeChange(Lcom/smartisanos/launcher/theme/Theme;)V
    .locals 3
    .param p1, "theme"    # Lcom/smartisanos/launcher/theme/Theme;

    .prologue
    .line 1564
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/AnimationController;->forceFinishUnlockAnimation()V

    .line 1565
    new-instance v1, Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    const-string v2, "unlock9.xml"

    invoke-direct {v1, p1, v2}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;-><init>(Lcom/smartisanos/launcher/theme/Theme;Ljava/lang/String;)V

    .line 1566
    .local v1, "unlock9":Lcom/smartisanos/launcher/view/UnlockAnimationXML;
    new-instance v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    const-string v2, "unlock16.xml"

    invoke-direct {v0, p1, v2}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;-><init>(Lcom/smartisanos/launcher/theme/Theme;Ljava/lang/String;)V

    .line 1567
    .local v0, "unlock16":Lcom/smartisanos/launcher/view/UnlockAnimationXML;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/smartisanos/launcher/view/AnimationController;->changeUnlockAnimationEffect(Lcom/smartisanos/launcher/view/UnlockAnimationXML;Lcom/smartisanos/launcher/view/UnlockAnimationXML;)V

    .line 1568
    return-void
.end method

.method private prepareToChangeTheme()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 313
    sget-boolean v9, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v9, :cond_0

    .line 314
    sget-object v9, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v12, "prepareToChangeTheme"

    invoke-virtual {v9, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 316
    :cond_0
    iget-object v6, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mChangeToTheme:Lcom/smartisanos/launcher/theme/Theme;

    .line 317
    .local v6, "theme":Lcom/smartisanos/launcher/theme/Theme;
    const-string v9, "smartisan_theme_aero,smartisan_theme_mist"

    invoke-virtual {v6}, Lcom/smartisanos/launcher/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 318
    sput-boolean v10, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    .line 322
    :goto_0
    sget-object v7, Lcom/smartisanos/launcher/data/Constants;->ICON_TYPE:Lcom/smartisanos/launcher/data/Constants$IconType;

    .line 324
    .local v7, "type":Lcom/smartisanos/launcher/data/Constants$IconType;
    iget-boolean v8, v6, Lcom/smartisanos/launcher/theme/Theme;->useIconLightShadow:Z

    .line 325
    .local v8, "useLightIcon":Z
    sget-object v9, Lcom/smartisanos/launcher/data/Constants;->ICON_TYPE:Lcom/smartisanos/launcher/data/Constants$IconType;

    sget-object v12, Lcom/smartisanos/launcher/data/Constants$IconType;->Light:Lcom/smartisanos/launcher/data/Constants$IconType;

    if-ne v9, v12, :cond_3

    move v9, v10

    :goto_1
    if-eq v8, v9, :cond_8

    .line 326
    if-eqz v8, :cond_4

    .line 327
    sget-object v9, Lcom/smartisanos/launcher/data/Constants$IconType;->Light:Lcom/smartisanos/launcher/data/Constants$IconType;

    sput-object v9, Lcom/smartisanos/launcher/data/Constants;->ICON_TYPE:Lcom/smartisanos/launcher/data/Constants$IconType;

    .line 332
    :goto_2
    invoke-static {}, Lcom/smartisanos/launcher/LauncherModel;->getItemMap()Ljava/util/HashMap;

    move-result-object v4

    .line 333
    .local v4, "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 334
    .local v0, "activeAppPkgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 335
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 336
    .local v1, "id":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/smartisanos/launcher/LauncherModel;->getItemInfo(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    .line 337
    .local v3, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v3, :cond_1

    .line 338
    iget-object v12, v3, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v12}, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->isActiveIconApp(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 339
    iget-object v12, v3, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 320
    .end local v0    # "activeAppPkgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v1    # "id":Ljava/lang/Long;
    .end local v2    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v3    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v4    # "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v7    # "type":Lcom/smartisanos/launcher/data/Constants$IconType;
    .end local v8    # "useLightIcon":Z
    :cond_2
    sput-boolean v11, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    goto :goto_0

    .restart local v7    # "type":Lcom/smartisanos/launcher/data/Constants$IconType;
    .restart local v8    # "useLightIcon":Z
    :cond_3
    move v9, v11

    .line 325
    goto :goto_1

    .line 329
    :cond_4
    sget-object v9, Lcom/smartisanos/launcher/data/Constants$IconType;->Dark:Lcom/smartisanos/launcher/data/Constants$IconType;

    sput-object v9, Lcom/smartisanos/launcher/data/Constants;->ICON_TYPE:Lcom/smartisanos/launcher/data/Constants$IconType;

    goto :goto_2

    .line 343
    .restart local v0    # "activeAppPkgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v2    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v4    # "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v5, "params":Ljava/util/ArrayList;
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    sget-object v9, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_RELOAD_ICONS:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v12, 0x0

    invoke-static {v9, v12, v5}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 351
    .end local v0    # "activeAppPkgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v2    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v4    # "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v5    # "params":Ljava/util/ArrayList;
    :goto_4
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v9

    iget-object v9, v9, Lcom/smartisanos/launcher/view/MainView;->mCellClickShadowRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v9, :cond_6

    .line 352
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v9

    iget-object v9, v9, Lcom/smartisanos/launcher/view/MainView;->mCellClickShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v9, v11}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 355
    :cond_6
    invoke-direct {p0, v6}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->loadUnlockAnimationForThemeChange(Lcom/smartisanos/launcher/theme/Theme;)V

    .line 356
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->createCameraForChangeTheme()V

    .line 357
    invoke-direct {p0, v6, v10}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->loadTextureForThemeChange(Lcom/smartisanos/launcher/theme/Theme;Z)V

    .line 359
    iget-boolean v9, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mNeedLoadShadowInMainGL:Z

    if-eqz v9, :cond_7

    .line 360
    invoke-virtual {p0, v11}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->loadThemeShadowTexture(Z)V

    .line 361
    iput-boolean v10, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsShadowTextureReady:Z

    .line 362
    iput-boolean v11, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mNeedLoadShadowInMainGL:Z

    .line 364
    :cond_7
    invoke-static {v6}, Lcom/smartisanos/launcher/view/TextView;->createTempPaintForTheme(Lcom/smartisanos/launcher/theme/Theme;)V

    .line 367
    iput-boolean v10, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsThemeTextureReady:Z

    .line 368
    sput-object v7, Lcom/smartisanos/launcher/data/Constants;->ICON_TYPE:Lcom/smartisanos/launcher/data/Constants$IconType;

    .line 369
    return-void

    .line 347
    :cond_8
    iput-boolean v10, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsThemeIconDataReady:Z

    .line 348
    iput-boolean v11, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsReloadIcon:Z

    goto :goto_4
.end method

.method private declared-synchronized setChangeThemeAnimComplete()V
    .locals 3

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 169
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsChangeThemeAnimating:Z

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mRequireChangeThemeAnim:Z

    .line 172
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/LauncherApplication;->getProxy()Lcom/smartisanos/launcher/ApplicationProxy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ApplicationProxy;->setEnableStatusbarMessage(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static setInstance(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;)V
    .locals 0
    .param p0, "cth"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    .prologue
    .line 137
    sput-object p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->sChangeThemeHandler:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    .line 138
    return-void
.end method

.method private startChangeThemeAnim()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 681
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/home/Launcher;->showDialog(ZLjava/lang/String;)V

    .line 682
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCoverAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v1, :cond_2

    .line 683
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCoverAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 695
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsForceFinishThemeAnim:Z

    if-eqz v1, :cond_5

    .line 696
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCover:Lcom/smartisanos/smengine/RectNode;

    if-eqz v1, :cond_1

    .line 697
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 699
    :cond_1
    iget-object v3, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_4

    aget-object v0, v3, v1

    .line 700
    .local v0, "shadow":Lcom/smartisanos/smengine/RectNode;
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 699
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 685
    .end local v0    # "shadow":Lcom/smartisanos/smengine/RectNode;
    :cond_2
    iget-object v3, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    array-length v4, v3

    move v1, v2

    :goto_2
    if-ge v1, v4, :cond_3

    aget-object v0, v3, v1

    .line 686
    .restart local v0    # "shadow":Lcom/smartisanos/smengine/RectNode;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 685
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 688
    .end local v0    # "shadow":Lcom/smartisanos/smengine/RectNode;
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCubeAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 689
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadowAnim:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$ShadowAnimation;->start()V

    .line 690
    iget-boolean v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsForceFinishThemeAnim:Z

    if-eqz v1, :cond_0

    .line 691
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getAnimationManager()Lcom/smartisanos/smengine/AnimationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/AnimationManager;->forceFinishAllAnimation()V

    .line 692
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->updateGLView()V

    goto :goto_0

    .line 702
    :cond_4
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getAnimationManager()Lcom/smartisanos/smengine/AnimationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/AnimationManager;->forceFinishAllAnimation()V

    .line 703
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 705
    :cond_5
    return-void
.end method

.method private updateThemeShadowUV()V
    .locals 13

    .prologue
    .line 1222
    const/high16 v6, 0x44f00000    # 1920.0f

    .line 1223
    .local v6, "screenHeight":F
    iget-object v11, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    array-length v11, v11

    new-array v1, v11, [F

    .line 1224
    .local v1, "height":[F
    const/4 v11, 0x0

    const/high16 v12, 0x429e0000    # 79.0f

    aput v12, v1, v11

    .line 1225
    const/4 v11, 0x1

    const/high16 v12, 0x43b70000    # 366.0f

    aput v12, v1, v11

    .line 1226
    const/4 v11, 0x2

    const/high16 v12, 0x43b70000    # 366.0f

    aput v12, v1, v11

    .line 1227
    const/4 v11, 0x3

    const/high16 v12, 0x43b70000    # 366.0f

    aput v12, v1, v11

    .line 1228
    const/4 v11, 0x4

    const/high16 v12, 0x43b70000    # 366.0f

    aput v12, v1, v11

    .line 1229
    const/4 v11, 0x5

    const v12, 0x43bc8000    # 377.0f

    aput v12, v1, v11

    .line 1230
    const/4 v11, 0x1

    sget v12, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    if-ne v11, v12, :cond_0

    .line 1231
    const/4 v11, 0x0

    const/high16 v12, 0x429e0000    # 79.0f

    aput v12, v1, v11

    .line 1232
    const/4 v11, 0x1

    const/high16 v12, 0x43e60000    # 460.0f

    aput v12, v1, v11

    .line 1233
    const/4 v11, 0x2

    const/high16 v12, 0x43e60000    # 460.0f

    aput v12, v1, v11

    .line 1234
    const/4 v11, 0x3

    const/high16 v12, 0x43e60000    # 460.0f

    aput v12, v1, v11

    .line 1235
    const/4 v11, 0x4

    const/4 v12, 0x0

    aput v12, v1, v11

    .line 1236
    const/4 v11, 0x4

    const/4 v12, 0x0

    aput v12, v1, v11

    .line 1237
    const/4 v11, 0x5

    const v12, 0x43e68000    # 461.0f

    aput v12, v1, v11

    .line 1239
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v4

    .line 1240
    .local v4, "meshManager":Lcom/smartisanos/smengine/MeshManager;
    iget-object v11, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    array-length v11, v11

    new-array v10, v11, [F

    .line 1241
    .local v10, "uvh":[F
    const/4 v0, 0x0

    .line 1243
    .local v0, "downH":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v11, v1

    if-ge v2, v11, :cond_1

    .line 1244
    array-length v11, v1

    sub-int/2addr v11, v2

    add-int/lit8 v3, v11, -0x1

    .line 1245
    .local v3, "index":I
    aget v11, v1, v3

    add-float/2addr v11, v0

    div-float/2addr v11, v6

    aput v11, v10, v3

    .line 1246
    aget v11, v1, v3

    add-float/2addr v0, v11

    .line 1243
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1248
    .end local v3    # "index":I
    :cond_1
    const/4 v2, 0x0

    :goto_1
    array-length v11, v10

    if-ge v2, v11, :cond_4

    .line 1249
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "theme"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/smartisanos/smengine/MeshManager;->getMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;

    move-result-object v5

    .line 1250
    .local v5, "meshStatus":Lcom/smartisanos/smengine/Mesh;
    if-nez v5, :cond_3

    .line 1251
    iget-object v11, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    aget-object v11, v11, v2

    invoke-virtual {v11}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/Mesh;->clone()Lcom/smartisanos/smengine/Mesh;

    move-result-object v5

    .line 1252
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "theme"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/smartisanos/smengine/Mesh;->setName(Ljava/lang/String;)V

    .line 1253
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "theme"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11, v5}, Lcom/smartisanos/smengine/MeshManager;->addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;

    .line 1254
    const/16 v11, 0x8

    new-array v9, v11, [F

    .line 1256
    .local v9, "uvStatus":[F
    const/4 v7, 0x0

    .line 1258
    .local v7, "uv0":F
    aget v8, v10, v2

    .line 1259
    .local v8, "uv1":F
    array-length v11, v10

    add-int/lit8 v11, v11, -0x1

    if-eq v11, v2, :cond_2

    .line 1260
    add-int/lit8 v11, v2, 0x1

    aget v7, v10, v11

    .line 1262
    :cond_2
    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v9, v11

    .line 1263
    const/4 v11, 0x1

    aput v7, v9, v11

    .line 1265
    const/4 v11, 0x2

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v9, v11

    .line 1266
    const/4 v11, 0x3

    aput v7, v9, v11

    .line 1268
    const/4 v11, 0x4

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v9, v11

    .line 1269
    const/4 v11, 0x5

    aput v8, v9, v11

    .line 1271
    const/4 v11, 0x6

    const/4 v12, 0x0

    aput v12, v9, v11

    .line 1272
    const/4 v11, 0x7

    aput v8, v9, v11

    .line 1273
    const/4 v11, 0x0

    invoke-virtual {v5, v11, v9}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 1275
    .end local v7    # "uv0":F
    .end local v8    # "uv1":F
    .end local v9    # "uvStatus":[F
    :cond_3
    iget-object v11, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    aget-object v11, v11, v2

    invoke-virtual {v11, v5}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 1248
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1277
    .end local v5    # "meshStatus":Lcom/smartisanos/smengine/Mesh;
    :cond_4
    return-void
.end method


# virtual methods
.method public changeTheme(Lcom/smartisanos/launcher/theme/Theme;)V
    .locals 5
    .param p1, "theme"    # Lcom/smartisanos/launcher/theme/Theme;

    .prologue
    const/4 v4, 0x0

    .line 275
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    .line 276
    sget-object v2, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "changeTheme"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 281
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getStatusBar()Lcom/smartisanos/launcher/view/StatusBar;

    move-result-object v2

    .line 282
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/StatusBar;->getStatusBar()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v2

    instance-of v0, v2, Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexCoordMaterial;

    .line 283
    .local v0, "isOldThemeGaussian":Z
    if-eqz v0, :cond_1

    .line 284
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/PageView;->showOrHideGaussianBatchBackground(Z)V

    .line 288
    :cond_1
    sget v2, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    if-eq v2, v3, :cond_2

    .line 289
    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->forceCompleteChangeTheme()V

    .line 310
    :goto_0
    return-void

    .line 292
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->getCurrentPageInWindowForSinglePageMode()Lcom/smartisanos/launcher/view/Page;

    move-result-object v1

    .line 293
    .local v1, "page":Lcom/smartisanos/launcher/view/Page;
    if-nez v1, :cond_3

    .line 294
    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->forceCompleteChangeTheme()V

    goto :goto_0

    .line 297
    :cond_3
    iput-boolean v4, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsThemeTextureReady:Z

    .line 298
    iput-boolean v4, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsShadowTextureReady:Z

    .line 299
    iput-boolean v4, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsThemeIconDataReady:Z

    .line 300
    iput-boolean v4, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsIconTextureDataReady:Z

    .line 301
    iput-boolean v4, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsReloadIcon:Z

    .line 302
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 303
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->lockTouchEvent()V

    .line 304
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mChangeToTheme:Lcom/smartisanos/launcher/theme/Theme;

    .line 305
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->prepareToChangeTheme()V

    .line 306
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->createThemeShadowAnim()V

    .line 307
    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->createThemeCubeAnim()V

    .line 308
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    const/high16 v3, 0x41c80000    # 25.0f

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/MainView;->setFrameDeltaTime(F)V

    .line 309
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DragLayer;->onThemeChanged()V

    goto :goto_0
.end method

.method public clearThemeCover()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 241
    iput-object v3, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCoverAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 242
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCover:Lcom/smartisanos/smengine/RectNode;

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCover:Lcom/smartisanos/smengine/RectNode;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 244
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 245
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCover:Lcom/smartisanos/smengine/RectNode;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 246
    iput-object v3, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCover:Lcom/smartisanos/smengine/RectNode;

    .line 248
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v0

    .line 249
    .local v0, "tm":Lcom/smartisanos/smengine/TextureManager;
    const-string v1, "t_theme_screenshot_loading"

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public createThemeCubeAnim()V
    .locals 41

    .prologue
    .line 474
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_0

    .line 475
    sget-object v4, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "createThemeCubeAnim"

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 477
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mChangeToTheme:Lcom/smartisanos/launcher/theme/Theme;

    move-object/from16 v35, v0

    .line 478
    .local v35, "theme":Lcom/smartisanos/launcher/theme/Theme;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsThemeTextureReady:Z

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsThemeIconDataReady:Z

    if-eqz v4, :cond_e

    .line 479
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsReloadIcon:Z

    if-eqz v4, :cond_1

    .line 480
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->loadIconForThemeChange()V

    .line 483
    :cond_1
    const v18, 0x3fcccccd    # 1.6f

    .line 484
    .local v18, "count":F
    const v21, 0x3edb8bad    # 0.42880002f

    .line 485
    .local v21, "dockStabDelay":F
    const v14, 0x3da3d70b    # 0.080000006f

    .line 486
    .local v14, "cellDelay":F
    const v22, 0x3fe66667    # 1.8000001f

    .line 487
    .local v22, "dockStabTime":F
    const v15, 0x3fe66667    # 1.8000001f

    .line 488
    .local v15, "cellRotateTime":F
    const v36, 0x3ea3d70b    # 0.32000002f

    .line 489
    .local v36, "themeAlphaTime":F
    const/high16 v33, 0x3f000000    # 0.5f

    .line 490
    .local v33, "shadowAlphaTime":F
    const/4 v4, 0x2

    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    if-ne v4, v5, :cond_2

    .line 491
    const v21, 0x3da3d70b    # 0.080000006f

    .line 492
    const v14, 0x3d23d70b    # 0.040000003f

    .line 494
    :cond_2
    const v24, 0x3fa3d70b    # 1.2800001f

    .line 495
    .local v24, "gaussianBackTime":F
    add-float v23, v22, v21

    .line 497
    .local v23, "gaussianBackDelay":F
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getCurrentPageInWindowForSinglePageMode()Lcom/smartisanos/launcher/view/Page;

    move-result-object v27

    .line 498
    .local v27, "page":Lcom/smartisanos/launcher/view/Page;
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v4, :cond_6

    .line 501
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->loadBackgroundForNewTheme(Lcom/smartisanos/launcher/theme/Theme;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 502
    .local v13, "bt":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->loadGaussianAnimBackTexture(Landroid/graphics/Bitmap;)V

    .line 503
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 504
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v35

    invoke-direct {v0, v4, v1, v5, v2}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getGaussianBackgroundAnim(ZFFLcom/smartisanos/launcher/theme/Theme;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mGaussianBackAnimShow:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 506
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeManager;->getPreviousTheme()Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisanos/launcher/theme/ThemeManager;->isGaussianTheme(Lcom/smartisanos/launcher/theme/Theme;)Z

    move-result v26

    .line 507
    .local v26, "isOldThemeGaussian":Z
    if-eqz v26, :cond_3

    .line 508
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v35

    invoke-direct {v0, v4, v1, v5, v2}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getGaussianBackgroundAnim(ZFFLcom/smartisanos/launcher/theme/Theme;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mGaussianBackAnimHide:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 533
    :cond_3
    :goto_0
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/Page;->setDrawWithBatch(Z)V

    .line 534
    new-instance v4, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v4}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCubeAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 536
    invoke-virtual/range {v27 .. v27}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v29

    .line 537
    .local v29, "pcArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    const/16 v37, 0x0

    .line 538
    .local v37, "totalDelay":F
    sget v4, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v30

    .line 539
    .local v30, "property":Lcom/smartisanos/launcher/data/LayoutProperty;
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_1
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v25

    if-ge v0, v4, :cond_8

    .line 540
    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/smartisanos/launcher/view/Cell;

    .line 541
    .local v28, "pc":Lcom/smartisanos/launcher/view/Cell;
    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v15}, Lcom/smartisanos/launcher/view/Cell;->getCellChangeThemeAnimation(ZF)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v16

    .line 542
    .local v16, "cellTimeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    if-eqz v16, :cond_5

    .line 543
    move/from16 v19, v25

    .line 544
    .local v19, "delayIndex":I
    sget-object v4, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->FOUR_FINGER_LEFT:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mRequireChangeFrom:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    if-ne v4, v5, :cond_4

    .line 545
    move-object/from16 v0, v30

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    rem-int v17, v25, v4

    .line 546
    .local v17, "column":I
    move-object/from16 v0, v30

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    div-int v31, v25, v4

    .line 547
    .local v31, "row":I
    move-object/from16 v0, v30

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int v4, v4, v31

    move-object/from16 v0, v30

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    sub-int v5, v5, v17

    add-int/lit8 v5, v5, -0x1

    add-int v19, v4, v5

    .line 549
    .end local v17    # "column":I
    .end local v31    # "row":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCubeAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    move/from16 v0, v19

    int-to-float v5, v0

    mul-float/2addr v5, v14

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 551
    .end local v19    # "delayIndex":I
    :cond_5
    move/from16 v0, v25

    int-to-float v4, v0

    mul-float v37, v14, v4

    .line 539
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 515
    .end local v13    # "bt":Landroid/graphics/Bitmap;
    .end local v16    # "cellTimeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v25    # "i":I
    .end local v26    # "isOldThemeGaussian":Z
    .end local v28    # "pc":Lcom/smartisanos/launcher/view/Cell;
    .end local v29    # "pcArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v30    # "property":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v37    # "totalDelay":F
    :cond_6
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeManager;->getPreviousTheme()Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisanos/launcher/theme/ThemeManager;->isGaussianTheme(Lcom/smartisanos/launcher/theme/Theme;)Z

    move-result v26

    .line 516
    .restart local v26    # "isOldThemeGaussian":Z
    if-eqz v26, :cond_7

    .line 518
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Utils;->getLockscreenWallpaper(Lcom/smartisanos/launcher/theme/Theme;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 519
    .restart local v13    # "bt":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->loadGaussianAnimBackTexture(Landroid/graphics/Bitmap;)V

    .line 520
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v35

    invoke-direct {v0, v4, v1, v5, v2}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getGaussianBackgroundAnim(ZFFLcom/smartisanos/launcher/theme/Theme;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mGaussianBackAnimHide:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 521
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 522
    move-object/from16 v0, v27

    instance-of v4, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    if-eqz v4, :cond_3

    move-object/from16 v4, v27

    .line 523
    check-cast v4, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setUseStaticGaussian(Z)V

    .line 524
    invoke-virtual/range {v27 .. v27}, Lcom/smartisanos/launcher/view/Page;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    goto/16 :goto_0

    .line 527
    .end local v13    # "bt":Landroid/graphics/Bitmap;
    :cond_7
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->adjustBackgroundForChangeTheme(Z)V

    .line 528
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->loadBackgroundForNewTheme(Lcom/smartisanos/launcher/theme/Theme;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 529
    .restart local v13    # "bt":Landroid/graphics/Bitmap;
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 554
    .restart local v25    # "i":I
    .restart local v29    # "pcArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .restart local v30    # "property":Lcom/smartisanos/launcher/data/LayoutProperty;
    .restart local v37    # "totalDelay":F
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v4

    const/4 v5, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Lcom/smartisanos/launcher/view/DockView;->getCellChangeThemeAnimation(ZF)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v20

    .line 555
    .local v20, "dockAnim":Lcom/smartisanos/smengine/AnimationTimeLine;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCubeAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 557
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getStatusBar()Lcom/smartisanos/launcher/view/StatusBar;

    move-result-object v4

    const/4 v5, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Lcom/smartisanos/launcher/view/StatusBar;->getChangeThemeAnim(ZF)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v34

    .line 558
    .local v34, "statusbarAnim":Lcom/smartisanos/smengine/AnimationTimeLine;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCubeAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    move/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v40, v0

    const/4 v4, 0x0

    move/from16 v38, v4

    :goto_2
    move/from16 v0, v38

    move/from16 v1, v40

    if-ge v0, v1, :cond_9

    aget-object v32, v39, v38

    .line 561
    .local v32, "shadow":Lcom/smartisanos/smengine/RectNode;
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, v32

    invoke-direct {v3, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 562
    .local v3, "shadowAlphaAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, v33

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 563
    const/4 v4, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v3 .. v12}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 565
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCubeAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v4, v15, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 560
    add-int/lit8 v4, v38, 0x1

    move/from16 v38, v4

    goto :goto_2

    .line 568
    .end local v3    # "shadowAlphaAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v32    # "shadow":Lcom/smartisanos/smengine/RectNode;
    :cond_9
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mGaussianBackAnimShow:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v4, :cond_a

    .line 569
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCubeAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mGaussianBackAnimShow:Lcom/smartisanos/smengine/AnimationTimeLine;

    move/from16 v0, v23

    invoke-virtual {v4, v0, v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 572
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCubeAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    new-instance v5, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v5, v0, v1}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;-><init>(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;Lcom/smartisanos/launcher/theme/Theme;)V

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 629
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsForceFinishThemeAnim:Z

    if-eqz v4, :cond_c

    .line 630
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCover:Lcom/smartisanos/smengine/RectNode;

    if-eqz v4, :cond_b

    .line 631
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCover:Lcom/smartisanos/smengine/RectNode;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 633
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_c

    aget-object v32, v5, v4

    .line 634
    .restart local v32    # "shadow":Lcom/smartisanos/smengine/RectNode;
    const/4 v7, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 633
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 637
    .end local v32    # "shadow":Lcom/smartisanos/smengine/RectNode;
    :cond_c
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsIconTextureDataReady:Z

    .line 638
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsThemeTextureReady:Z

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsThemeIconDataReady:Z

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsShadowTextureReady:Z

    if-eqz v4, :cond_e

    .line 639
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_d

    .line 640
    sget-object v4, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "createThemeCubeAnim startChangeThemeAnim"

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 642
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->startChangeThemeAnim()V

    .line 645
    .end local v13    # "bt":Landroid/graphics/Bitmap;
    .end local v14    # "cellDelay":F
    .end local v15    # "cellRotateTime":F
    .end local v18    # "count":F
    .end local v20    # "dockAnim":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v21    # "dockStabDelay":F
    .end local v22    # "dockStabTime":F
    .end local v23    # "gaussianBackDelay":F
    .end local v24    # "gaussianBackTime":F
    .end local v25    # "i":I
    .end local v26    # "isOldThemeGaussian":Z
    .end local v27    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v29    # "pcArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v30    # "property":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v33    # "shadowAlphaTime":F
    .end local v34    # "statusbarAnim":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v36    # "themeAlphaTime":F
    .end local v37    # "totalDelay":F
    :cond_e
    return-void
.end method

.method public forceCompleteChangeTheme()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 180
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/home/Launcher;->showDialog(ZLjava/lang/String;)V

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->clearThemeCover()V

    .line 184
    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->loadThemeShadowTexture(Z)V

    .line 185
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 186
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/MainView;->setEnableStatusbarMessage(Z)V

    .line 188
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->setChangeThemeAnimComplete()V

    .line 189
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DragLayer;->onThemeChanged()V

    .line 190
    return-void
.end method

.method public declared-synchronized getRequireChangeFrom()Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;
    .locals 1

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mRequireChangeFrom:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getThemeToChange()Lcom/smartisanos/launcher/theme/Theme;
    .locals 1

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mChangeToTheme:Lcom/smartisanos/launcher/theme/Theme;

    return-object v0
.end method

.method public handlePauseOnChangeTheme()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 253
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsForceFinishThemeAnim:Z

    .line 254
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/home/Launcher;->showDialog(ZLjava/lang/String;)V

    .line 255
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCover:Lcom/smartisanos/smengine/RectNode;

    if-eqz v2, :cond_0

    .line 256
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 258
    :cond_0
    iget-object v4, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeShadow:[Lcom/smartisanos/smengine/RectNode;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v1, v4, v2

    .line 259
    .local v1, "shadow":Lcom/smartisanos/smengine/RectNode;
    if-eqz v1, :cond_1

    .line 260
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 258
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    .end local v1    # "shadow":Lcom/smartisanos/smengine/RectNode;
    :cond_2
    new-instance v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$3;

    const/16 v2, 0x64

    invoke-direct {v0, p0, v2}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$3;-><init>(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;I)V

    .line 270
    .local v0, "event":Lcom/smartisanos/smengine/Event;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/Event;->send(F)V

    .line 271
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 272
    return-void
.end method

.method public declared-synchronized isChangeThemeAnimating()Z
    .locals 1

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsChangeThemeAnimating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRequireChangeThemeAnim()Z
    .locals 1

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mRequireChangeThemeAnim:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadGaussianAnimBackTexture(Landroid/graphics/Bitmap;)V
    .locals 14
    .param p1, "bt"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v12, 0x0

    const v13, 0x40d55555

    .line 777
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v8

    .line 779
    .local v8, "tm":Lcom/smartisanos/smengine/TextureManager;
    const/16 v6, 0x64

    .line 780
    .local v6, "radius":I
    const/16 v1, 0xf

    .line 781
    .local v1, "bmScale":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    add-int/lit16 v9, v9, 0xc8

    div-int/lit8 v5, v9, 0xf

    .line 782
    .local v5, "gaussianW":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/lit16 v9, v9, 0xc8

    div-int/lit8 v4, v9, 0xf

    .line 783
    .local v4, "gaussianH":I
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 784
    .local v3, "gaussianBack":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 785
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v9, v12, v12, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/RectF;

    int-to-float v11, v5

    sub-float/2addr v11, v13

    int-to-float v12, v4

    sub-float/2addr v12, v13

    invoke-direct {v10, v13, v13, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v11, 0x0

    invoke-virtual {v2, p1, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 788
    const/4 v9, 0x4

    const/4 v10, 0x2

    invoke-static {v3, v9, v10}, Lcom/smartisanos/launcher/data/Utils;->BoxBlurFilter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 789
    .local v0, "blurBt":Landroid/graphics/Bitmap;
    new-instance v7, Lcom/smartisanos/smengine/Texture;

    invoke-direct {v7, v0}, Lcom/smartisanos/smengine/Texture;-><init>(Landroid/graphics/Bitmap;)V

    .line 790
    .local v7, "texture":Lcom/smartisanos/smengine/Texture;
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/smartisanos/smengine/Texture;->setCanRecycle(Z)V

    .line 791
    const-string v9, "t_blur_anim_background"

    invoke-virtual {v8, v9, v7}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    .line 792
    invoke-virtual {v7}, Lcom/smartisanos/smengine/Texture;->bind()Z

    .line 793
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 794
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 795
    return-void
.end method

.method public loadThemeShadowTexture(Z)V
    .locals 22
    .param p1, "delete"    # Z

    .prologue
    .line 975
    const-string v14, "theme_00"

    .line 976
    .local v14, "prefix":Ljava/lang/String;
    const-string v15, ".png"

    .line 977
    .local v15, "suffix":Ljava/lang/String;
    const/16 v6, 0x3e

    .line 978
    .local v6, "count":I
    const/16 v20, 0x2

    sget v21, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 979
    const/16 v6, 0x3f

    .line 981
    :cond_0
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 982
    .local v17, "texs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/smartisanos/smengine/Texture;>;"
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v19

    .line 983
    .local v19, "tm":Lcom/smartisanos/smengine/TextureManager;
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_0
    if-ge v9, v6, :cond_4

    .line 984
    const/4 v12, 0x0

    .line 985
    .local v12, "name":Ljava/lang/String;
    const/16 v20, 0xa

    move/from16 v0, v20

    if-ge v9, v0, :cond_2

    .line 986
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "theme-anim"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "0"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    .line 992
    :goto_1
    if-eqz p1, :cond_3

    .line 994
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 983
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 989
    :cond_2
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "theme-anim"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 996
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsShadowTextureReady:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 1000
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/MainView;->getContext()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 999
    invoke-static/range {v20 .. v20}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1001
    .local v5, "bt":Landroid/graphics/Bitmap;
    new-instance v18, Lcom/smartisanos/smengine/Texture;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lcom/smartisanos/smengine/Texture;-><init>(Landroid/graphics/Bitmap;)V

    .line 1002
    .local v18, "texture":Lcom/smartisanos/smengine/Texture;
    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Texture;->setCanRecycle(Z)V

    .line 1003
    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/Texture;->bind()Z

    .line 1004
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1005
    .end local v5    # "bt":Landroid/graphics/Bitmap;
    .end local v18    # "texture":Lcom/smartisanos/smengine/Texture;
    :catch_0
    move-exception v8

    .line 1007
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1012
    .end local v8    # "e":Ljava/io/IOException;
    .end local v12    # "name":Ljava/lang/String;
    :cond_4
    if-nez p1, :cond_5

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    move-result v20

    if-lez v20, :cond_5

    .line 1013
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mNeedLoadShadowInMainGL:Z

    move/from16 v20, v0

    if-nez v20, :cond_6

    .line 1014
    new-instance v20, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$8;

    const/16 v21, 0x64

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    move-object/from16 v3, v17

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$8;-><init>(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;ILjava/util/HashMap;Lcom/smartisanos/smengine/TextureManager;)V

    const/16 v21, 0x0

    .line 1034
    invoke-virtual/range {v20 .. v21}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$8;->send(F)V

    .line 1054
    :cond_5
    :goto_3
    return-void

    .line 1036
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsShadowTextureReady:Z

    move/from16 v20, v0

    if-nez v20, :cond_5

    .line 1037
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1038
    .local v10, "iter":Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1039
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 1040
    .local v13, "netry":Ljava/util/Map$Entry;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1042
    .local v11, "na":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/smartisanos/smengine/TextureManager;->getTexture(Ljava/lang/String;)Lcom/smartisanos/smengine/Texture;

    move-result-object v16

    .line 1043
    .local v16, "tem":Lcom/smartisanos/smengine/Texture;
    if-nez v16, :cond_7

    .line 1044
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/smengine/Texture;

    .line 1045
    .local v7, "currT":Lcom/smartisanos/smengine/Texture;
    if-eqz v7, :cond_7

    .line 1046
    move-object/from16 v0, v19

    invoke-virtual {v0, v11, v7}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    goto :goto_4

    .line 1050
    .end local v7    # "currT":Lcom/smartisanos/smengine/Texture;
    .end local v11    # "na":Ljava/lang/String;
    .end local v13    # "netry":Ljava/util/Map$Entry;
    .end local v16    # "tem":Lcom/smartisanos/smengine/Texture;
    :cond_8
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->clear()V

    goto :goto_3
.end method

.method public prepareChangeThemeCover(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 197
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/home/Launcher;->restoreAnimationScale(I)V

    .line 199
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/home/Launcher;->disableAnimationScale(I)V

    .line 201
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/MainView;->setEnableStatusbarMessage(Z)V

    .line 203
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->hideStatusBarWithoutAnim()V

    .line 204
    new-instance v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$2;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1, p1}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$2;-><init>(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;ILandroid/graphics/Bitmap;)V

    .line 236
    .local v0, "event":Lcom/smartisanos/smengine/Event;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Event;->send(F)V

    .line 237
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 238
    return-void
.end method

.method public declared-synchronized requireChangeThemeAnim(Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;)V
    .locals 1
    .param p1, "from"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    .prologue
    .line 141
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mRequireChangeThemeAnim:Z

    .line 142
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mRequireChangeFrom:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setChangeThemeAnimStart()V
    .locals 4

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mNeedLoadShadowInMainGL:Z

    .line 160
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 161
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeTextureLoader:Lcom/smartisanos/launcher/theme/ThemeTextureLoader;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->loadThemeShadowTexture()V

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsChangeThemeAnimating:Z

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mRequireChangeThemeAnim:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLoadThemeShadowComplete()V
    .locals 2

    .prologue
    .line 1057
    iget-boolean v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsShadowTextureReady:Z

    if-nez v0, :cond_0

    .line 1058
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsShadowTextureReady:Z

    .line 1059
    iget-boolean v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsThemeTextureReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsIconTextureDataReady:Z

    if-eqz v0, :cond_0

    .line 1060
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mShadowTextureRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1061
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mShadowTextureRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1064
    :cond_0
    return-void
.end method

.method public setNeedLoadShadowInMainGL()V
    .locals 1

    .prologue
    .line 1067
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mNeedLoadShadowInMainGL:Z

    .line 1068
    return-void
.end method

.method public setReloadIcon()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 372
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsThemeIconDataReady:Z

    .line 373
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsReloadIcon:Z

    .line 374
    return-void
.end method

.method public setTextureLoaderContext(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 1
    .param p1, "textureContext"    # Ljavax/microedition/khronos/egl/EGLContext;

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeTextureLoader:Lcom/smartisanos/launcher/theme/ThemeTextureLoader;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/theme/ThemeTextureLoader;->setTextureContext(Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 1572
    return-void
.end method

.method public declared-synchronized shouldDoChangeThemeAnim()Z
    .locals 1

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mRequireChangeThemeAnim:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsChangeThemeAnimating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
