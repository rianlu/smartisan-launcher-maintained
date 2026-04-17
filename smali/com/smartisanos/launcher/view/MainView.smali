.class public Lcom/smartisanos/launcher/view/MainView;
.super Ljava/lang/Object;
.source "MainView.java"

# interfaces
.implements Lcom/smartisanos/smengine/InputManager$TouchListener;
.implements Lcom/smartisanos/smengine/World$FrameListener;
.implements Lcom/smartisanos/smengine/NotificationManager$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/MainView$PageTitleEditRunnable;,
        Lcom/smartisanos/launcher/view/MainView$MyTimerTask;,
        Lcom/smartisanos/launcher/view/MainView$TouchViewSwitchData;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final BACK_TO_PAGE:I = 0x1

.field public static final CANCEL_CHANGE_SCREEN_NOTIFY:Ljava/lang/String; = "cancelChangeScreen"

.field public static final CELL_COLLIDE_ENTER:Ljava/lang/String; = "cellCollideEnter"

.field public static final CELL_COLLIDE_EXIT:Ljava/lang/String; = "cellCollideExit"

.field public static final CELL_EXIT_PAGE_NOTIFY:Ljava/lang/String; = "cellExitPage"

.field public static final CELL_UP_ON_PAGE_PAGE_CELL:Ljava/lang/String; = "cellUpOnPagePageCell"

.field public static final CHANGE_SCREEN_NOTIFY:Ljava/lang/String; = "changeScreen"

.field public static final COVER_PAGE_CLICKED:Ljava/lang/String; = "CoverPageClicked"

.field private static final DOWN:I = 0x2

.field private static final INVALID_STATE:I = 0x0

.field private static final INVISIBLE_PAGE_INIT_POSITION:F = -1080.0f

.field private static final MOVE:I = 0x4

.field public static final MULTI_SELECT_CELL_UP:Ljava/lang/String; = "multiSelectCellUp"

.field public static final RELAYOUT_BY_UNINSTALL:Ljava/lang/String; = "relayoutByUninstall"

.field public static final REMOVE_FROM_PAGE:I = 0x2

.field private static final SAMPLE_FACTOR:F = 0.083333336f

.field private static final SAMPLE_PERIOD_FRAMES:I = 0xc

.field public static final SETTING_BUTTON_STATUS:Ljava/lang/String; = "settingButtonStatus"

.field protected static final STATUS_CANDRAW:I = 0x1

.field protected static final STATUS_INITFINISH:I = 0x2

.field private static final SWEEP:I = 0x3

.field public static final TARGET_THEME_PREF:Ljava/lang/String; = "target/--/"

.field public static final TIME_CHANGE_NOTIFY:Ljava/lang/String; = "timeChangeNotify"

.field public static final TITLE_VIEW_LONG_PRESS:Ljava/lang/String; = "titleViewLongPress"

.field public static final TITLE_VIEW_UP:Ljava/lang/String; = "titleViewUp"

.field public static final TOUCH_SWEEP_SIZE:F = 0.3f

.field public static final TOUCH_VIEW_CHANGE_NOTIFY:Ljava/lang/String; = "touchViewSwitch"

.field private static volatile UI_ACTION_COUNT:I = 0x0

.field private static final UP:I = 0x1

.field private static gMainView:Lcom/smartisanos/launcher/view/MainView;

.field private static final log:Lcom/smartisanos/launcher/LOG;


# instance fields
.field public final DOCK_VIEW_NAME:Ljava/lang/String;

.field public volatile DUMP_DB_FRAME_AFTER:Z

.field public volatile DUMP_DB_FRAME_BEFORE:Z

.field public volatile DUMP_FPS:Z

.field public volatile DUMP_LAYER_FRAME_AFTER:Z

.field public volatile DUMP_LAYER_FRAME_BEFORE:Z

.field public volatile DUMP_SCENE_FRAME_AFTER:Z

.field public volatile DUMP_SCENE_FRAME_BEFORE:Z

.field public volatile DUMP_UI_FRAME_AFTER:Z

.field public volatile DUMP_UI_FRAME_BEFORE:Z

.field private isLoadingConfig:Z

.field private isVerifyPasswordRunning:Z

.field private longPressAndPointerMove:Z

.field private mAllCellsWorldTranslateMultiPageMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field private mAllCellsWorldTranslateSinglePageMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field private mBackground:Lcom/smartisanos/smengine/RectNode;

.field private mBackgroundGaussianUnlockRect:Lcom/smartisanos/smengine/RectNode;

.field private mCanInToHoverMode:Z

.field private mCellBackgroundBackupMesh:Lcom/smartisanos/smengine/Mesh;

.field public mCellClickShadowRect:Lcom/smartisanos/smengine/RectNode;

.field private mChangePostEffectEvent:Lcom/smartisanos/smengine/Event;

.field private mChangeThemeHandler:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

.field private mChangeWallpaperEvent:Lcom/smartisanos/smengine/Event;

.field private mClickCell:Lcom/smartisanos/launcher/view/Cell;

.field private mContext:Landroid/app/Activity;

.field private mCurrentPointer0State:I

.field private mCurrentTouchView:Lcom/smartisanos/smengine/SceneNode;

.field private mDockView:Lcom/smartisanos/launcher/view/DockView;

.field private mFirstBackDown:Z

.field private mFirstDownTouchView:Lcom/smartisanos/smengine/SceneNode;

.field private mFirstMenuDown:Z

.field private mFloatPageNode:Lcom/smartisanos/launcher/view/FloatPageNode;

.field private mFolderPageView:Lcom/smartisanos/launcher/view/FolderPageView;

.field private mFrameDeltaTime:F

.field private mFrames:I

.field private mGotTouch:Z

.field private mHasVerifyPassword:Z

.field private mHideCellClickShadowRectAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

.field public mIsBatchMode:Z

.field private mIsHardKeyLocked:Z

.field private mIsTouchLocked:Z

.field private mLeftBottomCorner:Lcom/smartisanos/smengine/RectNode;

.field private mLeftTopCorner:Lcom/smartisanos/smengine/RectNode;

.field private mMainCamera:Lcom/smartisanos/smengine/Camera;

.field private mMainCameraH:I

.field private mMainCameraW:I

.field private mMsPerFrame:I

.field private mNotificationManager:Lcom/smartisanos/smengine/NotificationManager;

.field private mOShapeRect:Lcom/smartisanos/smengine/RectNode;

.field private mOnPlayFlagDismissAnimation:Z

.field private mPageView:Lcom/smartisanos/launcher/view/PageView;

.field private mPostEffectRect:Lcom/smartisanos/smengine/RectNode;

.field private mRightBottomCorner:Lcom/smartisanos/smengine/RectNode;

.field private mRightTopCorner:Lcom/smartisanos/smengine/RectNode;

.field private mScreenXYForFastUp:Lcom/smartisanos/smengine/math/Vector2f;

.field private mScrollCamera:Lcom/smartisanos/smengine/Camera;

.field private mScrollCameraH:I

.field private mScrollCameraW:I

.field private mStartTime:J

.field private mStartTimeForFps:J

.field private mStatusBar:Lcom/smartisanos/launcher/view/StatusBar;

.field private mStatusFlag:I

.field private mTestCurveNode:Lcom/smartisanos/smengine/CurveNode;

.field private mTestRect:Lcom/smartisanos/smengine/RectNode;

.field private mTitleView:Lcom/smartisanos/launcher/view/TitleView;

.field private mTmpVec31:Lcom/smartisanos/smengine/math/Vector3f;

.field private mTmpVec32:Lcom/smartisanos/smengine/math/Vector3f;

.field private mTouchLockRequestedTime:J

.field private mTouchLockTimeOut:J

.field private mTouchSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    const-class v0, Lcom/smartisanos/launcher/view/MainView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/smartisanos/launcher/view/MainView;->$assertionsDisabled:Z

    .line 90
    const-class v0, Lcom/smartisanos/launcher/view/MainView;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    .line 92
    sput v1, Lcom/smartisanos/launcher/view/MainView;->UI_ACTION_COUNT:I

    return-void

    :cond_0
    move v0, v1

    .line 89
    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 8
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/MainView;->DUMP_FPS:Z

    .line 138
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/smartisanos/launcher/view/MainView;->mFrameDeltaTime:F

    .line 141
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/MainView;->longPressAndPointerMove:Z

    .line 142
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/MainView;->mHasVerifyPassword:Z

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mAllCellsWorldTranslateSinglePageMode:Ljava/util/ArrayList;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mAllCellsWorldTranslateMultiPageMode:Ljava/util/ArrayList;

    .line 147
    new-instance v0, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mScreenXYForFastUp:Lcom/smartisanos/smengine/math/Vector2f;

    .line 150
    iput-object v4, p0, Lcom/smartisanos/launcher/view/MainView;->mCellBackgroundBackupMesh:Lcom/smartisanos/smengine/Mesh;

    .line 170
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/MainView;->isVerifyPasswordRunning:Z

    .line 200
    iput-object v4, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/launcher/view/MainView;->mTouchSize:F

    .line 223
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/MainView;->mIsHardKeyLocked:Z

    .line 224
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/MainView;->mIsTouchLocked:Z

    .line 227
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/MainView;->mCanInToHoverMode:Z

    .line 262
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/MainView;->mIsBatchMode:Z

    .line 265
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/MainView;->isLoadingConfig:Z

    .line 287
    iput v1, p0, Lcom/smartisanos/launcher/view/MainView;->mStatusFlag:I

    .line 294
    const-string v0, "dock-view"

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->DOCK_VIEW_NAME:Ljava/lang/String;

    .line 486
    iput v3, p0, Lcom/smartisanos/launcher/view/MainView;->mMainCameraW:I

    .line 487
    iput v3, p0, Lcom/smartisanos/launcher/view/MainView;->mMainCameraH:I

    .line 508
    iput v3, p0, Lcom/smartisanos/launcher/view/MainView;->mScrollCameraW:I

    .line 509
    iput v3, p0, Lcom/smartisanos/launcher/view/MainView;->mScrollCameraH:I

    .line 1718
    iput-wide v6, p0, Lcom/smartisanos/launcher/view/MainView;->mTouchLockRequestedTime:J

    .line 1719
    iput-wide v6, p0, Lcom/smartisanos/launcher/view/MainView;->mTouchLockTimeOut:J

    .line 2053
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/MainView;->mOnPlayFlagDismissAnimation:Z

    .line 2198
    iput v2, p0, Lcom/smartisanos/launcher/view/MainView;->mCurrentPointer0State:I

    .line 2305
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mTmpVec31:Lcom/smartisanos/smengine/math/Vector3f;

    .line 2306
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mTmpVec32:Lcom/smartisanos/smengine/math/Vector3f;

    .line 2776
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/MainView;->mGotTouch:Z

    .line 2822
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/MainView;->mFirstMenuDown:Z

    .line 2823
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/MainView;->mFirstBackDown:Z

    .line 314
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    const-string v2, "MainView init !"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MainView;->mContext:Landroid/app/Activity;

    .line 316
    new-instance v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-direct {v0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mChangeThemeHandler:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    .line 317
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mChangeThemeHandler:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->setInstance(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;)V

    .line 318
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/launcher/view/MainView;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MainView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/view/MainView;FFZ)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MainView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/launcher/view/MainView;->hideCellClickShadow(FFZ)V

    return-void
.end method

.method static synthetic access$202(Lcom/smartisanos/launcher/view/MainView;Lcom/smartisanos/launcher/view/Cell;)Lcom/smartisanos/launcher/view/Cell;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MainView;
    .param p1, "x1"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MainView;->mClickCell:Lcom/smartisanos/launcher/view/Cell;

    return-object p1
.end method

.method static synthetic access$302(Lcom/smartisanos/launcher/view/MainView;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MainView;
    .param p1, "x1"    # Lcom/smartisanos/smengine/AnimationTimeLine;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MainView;->mHideCellClickShadowRectAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object p1
.end method

.method static synthetic access$400(Lcom/smartisanos/launcher/view/MainView;)Lcom/smartisanos/smengine/RectNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MainView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method static synthetic access$500(Lcom/smartisanos/launcher/view/MainView;)Lcom/smartisanos/launcher/theme/ChangeThemeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MainView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mChangeThemeHandler:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/smartisanos/launcher/view/MainView;)Lcom/smartisanos/smengine/Event;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MainView;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mChangePostEffectEvent:Lcom/smartisanos/smengine/Event;

    return-object v0
.end method

.method static synthetic access$602(Lcom/smartisanos/launcher/view/MainView;Lcom/smartisanos/smengine/Event;)Lcom/smartisanos/smengine/Event;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MainView;
    .param p1, "x1"    # Lcom/smartisanos/smengine/Event;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MainView;->mChangePostEffectEvent:Lcom/smartisanos/smengine/Event;

    return-object p1
.end method

.method static synthetic access$700(Lcom/smartisanos/launcher/view/MainView;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MainView;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MainView;->clearMessageAndNewlyInstall()V

    return-void
.end method

.method static synthetic access$800(Lcom/smartisanos/launcher/view/MainView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MainView;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/MainView;->mOnPlayFlagDismissAnimation:Z

    return v0
.end method

.method static synthetic access$802(Lcom/smartisanos/launcher/view/MainView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MainView;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/MainView;->mOnPlayFlagDismissAnimation:Z

    return p1
.end method

.method static synthetic access$900(Lcom/smartisanos/launcher/view/MainView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MainView;
    .param p1, "x1"    # F

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/MainView;->clearMessageAndNewlyInstall(F)V

    return-void
.end method

.method private addSceneNode(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 2
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 1242
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneManager;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 1243
    .local v0, "rootNode":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1244
    return-void
.end method

.method private changeSweepTouchState(Lcom/smartisanos/smengine/TouchEvent;)Z
    .locals 7
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v1, 0x1

    .line 2200
    iget v3, p0, Lcom/smartisanos/launcher/view/MainView;->mCurrentPointer0State:I

    if-ne v3, v5, :cond_0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getType()I

    move-result v3

    if-eq v3, v5, :cond_0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getType()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    .line 2303
    :goto_0
    :pswitch_0
    return v1

    .line 2204
    :cond_0
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sweep_threshold:I

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v0, v3, v4

    .line 2206
    .local v0, "SWEEP_THRESHOLD":F
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getPointerNum()I

    move-result v3

    if-gt v3, v1, :cond_1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getPointerId()I

    move-result v3

    if-eqz v3, :cond_2

    .line 2207
    :cond_1
    iput v1, p0, Lcom/smartisanos/launcher/view/MainView;->mCurrentPointer0State:I

    move v1, v2

    .line 2208
    goto :goto_0

    .line 2210
    :cond_2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getType()I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 2211
    iget v3, p0, Lcom/smartisanos/launcher/view/MainView;->mCurrentPointer0State:I

    packed-switch v3, :pswitch_data_0

    :goto_1
    :pswitch_1
    move v1, v2

    .line 2303
    goto :goto_0

    .line 2219
    :pswitch_2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getSize()F

    move-result v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_3

    .line 2220
    iput v5, p0, Lcom/smartisanos/launcher/view/MainView;->mCurrentPointer0State:I

    goto :goto_0

    .line 2223
    :cond_3
    iput v6, p0, Lcom/smartisanos/launcher/view/MainView;->mCurrentPointer0State:I

    goto :goto_1

    .line 2231
    :pswitch_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current state error DOWN : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/launcher/view/MainView;->mCurrentPointer0State:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2234
    :cond_4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getType()I

    move-result v3

    if-ne v3, v5, :cond_8

    .line 2235
    iget v3, p0, Lcom/smartisanos/launcher/view/MainView;->mCurrentPointer0State:I

    packed-switch v3, :pswitch_data_1

    goto :goto_1

    .line 2238
    :pswitch_4
    iput v1, p0, Lcom/smartisanos/launcher/view/MainView;->mCurrentPointer0State:I

    goto :goto_1

    .line 2248
    :pswitch_5
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getSize()F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_6

    .line 2250
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "sweep flag"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2251
    :cond_5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->playCellFlagDismissAnimation()V

    .line 2253
    :cond_6
    iput v1, p0, Lcom/smartisanos/launcher/view/MainView;->mCurrentPointer0State:I

    goto :goto_0

    .line 2259
    :pswitch_6
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_7

    sget-object v2, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "sweep flag"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2260
    :cond_7
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->playCellFlagDismissAnimation()V

    .line 2261
    iput v1, p0, Lcom/smartisanos/launcher/view/MainView;->mCurrentPointer0State:I

    goto/16 :goto_0

    .line 2266
    :pswitch_7
    iput v1, p0, Lcom/smartisanos/launcher/view/MainView;->mCurrentPointer0State:I

    goto :goto_1

    .line 2270
    :cond_8
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getType()I

    move-result v3

    if-ne v3, v6, :cond_a

    .line 2271
    iget v3, p0, Lcom/smartisanos/launcher/view/MainView;->mCurrentPointer0State:I

    packed-switch v3, :pswitch_data_2

    goto :goto_1

    .line 2284
    :pswitch_8
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getSize()F

    move-result v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_9

    .line 2285
    iput v5, p0, Lcom/smartisanos/launcher/view/MainView;->mCurrentPointer0State:I

    goto/16 :goto_0

    .line 2288
    :cond_9
    const/4 v1, 0x4

    iput v1, p0, Lcom/smartisanos/launcher/view/MainView;->mCurrentPointer0State:I

    goto/16 :goto_1

    .line 2301
    :cond_a
    iput v1, p0, Lcom/smartisanos/launcher/view/MainView;->mCurrentPointer0State:I

    goto/16 :goto_1

    .line 2211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 2235
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 2271
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method

.method private clearMessageAndNewlyInstall()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 2136
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2137
    .local v4, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/PageView;->getCurrentPageInWindowForSinglePageMode()Lcom/smartisanos/launcher/view/Page;

    move-result-object v7

    .line 2138
    .local v7, "page":Lcom/smartisanos/launcher/view/Page;
    if-eqz v7, :cond_1

    .line 2139
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Page;->getAllNonEmptyCellList()Ljava/util/ArrayList;

    move-result-object v5

    .line 2140
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_1

    .line 2141
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    .line 2142
    .local v3, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v3, :cond_0

    .line 2143
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2140
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2147
    .end local v2    # "i":I
    .end local v3    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v1

    .line 2148
    .local v1, "dock":Lcom/smartisanos/launcher/view/DockView;
    if-eqz v1, :cond_3

    .line 2149
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v5

    .line 2150
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_3

    .line 2151
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    .line 2152
    .restart local v3    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v3, :cond_2

    .line 2153
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2150
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2158
    .end local v2    # "i":I
    .end local v3    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2188
    :cond_4
    :goto_2
    return-void

    .line 2162
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2163
    .local v0, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2164
    .local v6, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 2167
    .restart local v3    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-object v10, v3, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2169
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 2170
    .local v8, "values":Landroid/content/ContentValues;
    const-string v10, "_id"

    iget-wide v12, v3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2171
    const-string v10, "messagesNumber"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2174
    iget-wide v10, v3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v10, v11}, Lcom/smartisanos/launcher/LauncherModel;->getItemInfo(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v10

    iget-boolean v10, v10, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    if-eqz v10, :cond_6

    .line 2175
    const-string v10, "newlyInstalled"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2177
    :cond_6
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2180
    .end local v3    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    .line 2181
    sget-object v9, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UPDATE_ITEM_TABLE:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v9, v0}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;)V

    .line 2184
    :cond_8
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 2186
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MainView;->mContext:Landroid/app/Activity;

    invoke-static {v9, v6}, Lcom/smartisanos/launcher/data/Utils;->clearMessageByPackageName(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_2
.end method

.method private clearMessageAndNewlyInstall(F)V
    .locals 2
    .param p1, "delay"    # F

    .prologue
    .line 2118
    const/4 v1, 0x0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    .line 2119
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MainView;->clearMessageAndNewlyInstall()V

    .line 2120
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/MainView;->mOnPlayFlagDismissAnimation:Z

    .line 2133
    :goto_0
    return-void

    .line 2123
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/view/MainView$13;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/view/MainView$13;-><init>(Lcom/smartisanos/launcher/view/MainView;I)V

    .line 2132
    .local v0, "clearMessageEvent":Lcom/smartisanos/smengine/Event;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/smartisanos/smengine/EventManager;->sendEvent(Lcom/smartisanos/smengine/Event;F)V

    goto :goto_0
.end method

.method private createBezierSeg()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/math/Vector3f;",
            ">;>;"
        }
    .end annotation

    .prologue
    const v9, 0x3e90a3d7    # 0.2825f

    const v8, 0x3e8c49ba    # 0.274f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 1270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1271
    .local v0, "seg1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector3f;>;"
    new-instance v3, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v3, v6, v6, v6}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1272
    new-instance v3, Lcom/smartisanos/smengine/math/Vector3f;

    const v4, 0x3e28c155    # 0.1648f

    invoke-direct {v3, v4, v6, v6}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1273
    new-instance v3, Lcom/smartisanos/smengine/math/Vector3f;

    const v4, 0x3e3d3c36    # 0.1848f

    const v5, 0x3d2e147b    # 0.0425f

    invoke-direct {v3, v4, v5, v6}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1274
    new-instance v3, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v3, v9, v8, v6}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1275
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1276
    .local v1, "seg2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector3f;>;"
    new-instance v3, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v3, v9, v8, v6}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1277
    new-instance v3, Lcom/smartisanos/smengine/math/Vector3f;

    const v4, 0x3eca3055    # 0.3949f

    const v5, 0x3f0a43fe    # 0.5401f

    invoke-direct {v3, v4, v5, v6}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1278
    new-instance v3, Lcom/smartisanos/smengine/math/Vector3f;

    const v4, 0x3f18793e    # 0.5956f

    invoke-direct {v3, v4, v7, v6}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1279
    new-instance v3, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v3, v7, v7, v6}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1281
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1282
    .local v2, "segments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector3f;>;>;"
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1283
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1284
    return-object v2
.end method

.method private createBg()V
    .locals 18

    .prologue
    .line 842
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/MainView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    if-eqz v13, :cond_0

    .line 890
    :goto_0
    return-void

    .line 845
    :cond_0
    sget v13, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v3, v13

    .line 846
    .local v3, "bgWidth":F
    sget v13, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v1, v13

    .line 847
    .local v1, "bgHeight":F
    sget v13, Lcom/smartisanos/launcher/data/Constants;->bgZ:I

    int-to-float v5, v13

    .line 848
    .local v5, "bgZ":F
    sget v13, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v7, v13

    .line 849
    .local v7, "cameraZ":F
    add-float v13, v5, v7

    mul-float/2addr v13, v3

    div-float v4, v13, v7

    .line 850
    .local v4, "bgWidthNew":F
    add-float v13, v5, v7

    mul-float/2addr v13, v1

    div-float v2, v13, v7

    .line 851
    .local v2, "bgHeightNew":F
    const-string v13, "background"

    neg-float v14, v5

    const/4 v15, 0x1

    invoke-static {v13, v4, v2, v14, v15}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/smartisanos/launcher/view/MainView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    .line 852
    const-string v13, "TextureModularColorMaterial"

    invoke-static {v13}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v8

    .line 853
    .local v8, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    sget-boolean v13, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v13, :cond_1

    .line 854
    const-string v13, "TexturePreColorMaterial"

    invoke-static {v13}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v8

    .line 855
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/MainView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    const/4 v14, 0x0

    const-string v15, "background.png"

    invoke-static {v15}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/smartisanos/smengine/RectNode;->setTextureName(ILjava/lang/String;)V

    .line 856
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/smartisanos/launcher/view/MainView;->setBackgroundMaskColor(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 859
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/smartisanos/launcher/data/Utils;->getLockscreenWallpaper(Lcom/smartisanos/launcher/theme/Theme;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 860
    .local v6, "bmap":Landroid/graphics/Bitmap;
    const-string v13, "background.png"

    invoke-static {v13}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 868
    .local v9, "path":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v13

    invoke-virtual {v13}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v12

    .line 869
    .local v12, "tm":Lcom/smartisanos/smengine/TextureManager;
    new-instance v11, Lcom/smartisanos/smengine/Texture;

    invoke-direct {v11, v6}, Lcom/smartisanos/smengine/Texture;-><init>(Landroid/graphics/Bitmap;)V

    .line 870
    .local v11, "texture":Lcom/smartisanos/smengine/Texture;
    invoke-virtual {v12, v9, v11}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    .line 871
    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lcom/smartisanos/smengine/Texture;->setCanRecycle(Z)V

    .line 878
    invoke-virtual {v11}, Lcom/smartisanos/smengine/Texture;->bind()Z

    .line 882
    .end local v6    # "bmap":Landroid/graphics/Bitmap;
    .end local v9    # "path":Ljava/lang/String;
    .end local v11    # "texture":Lcom/smartisanos/smengine/Texture;
    .end local v12    # "tm":Lcom/smartisanos/smengine/TextureManager;
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/MainView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v13, v8}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 883
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/MainView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {v13 .. v17}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 884
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v13

    invoke-virtual {v13}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/smartisanos/smengine/SceneManager;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v10

    .line 885
    .local v10, "rootNode":Lcom/smartisanos/smengine/SceneNode;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/MainView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v10, v13}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 886
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/MainView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v13}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 887
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/MainView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 888
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/MainView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 889
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/MainView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v13}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    goto/16 :goto_0

    .line 880
    .end local v10    # "rootNode":Lcom/smartisanos/smengine/SceneNode;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/MainView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    const-string v14, "background.png"

    invoke-static {v14}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createDock()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/high16 v10, 0x40000000    # 2.0f

    .line 748
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    if-eqz v6, :cond_0

    .line 772
    :goto_0
    return-void

    .line 751
    :cond_0
    sget v6, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v6}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    .line 752
    .local v3, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v0, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    .line 753
    .local v0, "dockHeight":F
    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v1, v6

    .line 754
    .local v1, "dockWidth":F
    new-instance v6, Lcom/smartisanos/launcher/view/DockView;

    const-string v7, "dock-view"

    invoke-direct {v6, v7}, Lcom/smartisanos/launcher/view/DockView;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    .line 755
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/DockView;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 756
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/DockView;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 757
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/DockView;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, -0x40000000    # -2.0f

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 758
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/DockView;->create()V

    .line 760
    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v6, v6

    sub-float/2addr v6, v1

    div-float v4, v6, v10

    .line 761
    .local v4, "x":F
    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v6, v6

    sub-float v5, v6, v0

    .line 762
    .local v5, "y":F
    new-instance v2, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    .line 763
    .local v2, "newP":Lcom/smartisanos/smengine/math/Vector2f;
    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v6, v6

    sget v7, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v7, v7

    invoke-static {v4, v5, v6, v7, v2}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;

    .line 764
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    iget v7, v2, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    div-float v8, v1, v10

    add-float/2addr v7, v8

    iget v8, v2, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    div-float v9, v0, v10

    sub-float/2addr v8, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/smartisanos/launcher/view/DockView;->setTranslate(FFF)V

    .line 767
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    neg-float v7, v1

    div-float/2addr v7, v10

    neg-float v8, v0

    div-float v9, v1, v10

    div-float v10, v0, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/smartisanos/launcher/view/DockView;->setLocalBoundingVolume(FFFF)V

    .line 768
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-direct {p0, v6}, Lcom/smartisanos/launcher/view/MainView;->addSceneNode(Lcom/smartisanos/smengine/SceneNode;)V

    .line 769
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/DockView;->updateGeometricState()V

    .line 771
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/DockView;->getWorldTransform()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v6

    sput-object v6, Lcom/smartisanos/launcher/data/Constants;->DOCK_VIEW_TRANSFORM:Lcom/smartisanos/smengine/math/Transform;

    goto :goto_0
.end method

.method private createPostEffectNode()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1351
    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sCurrentRenderTarget:Ljava/lang/String;

    sget v2, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v2, v2

    sget v3, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPostEffectRect:Lcom/smartisanos/smengine/RectNode;

    .line 1353
    const-string v1, "TextureModularColorMaterial"

    invoke-static {v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 1354
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPostEffectRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 1355
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPostEffectRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 1367
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPostEffectRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 1368
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPostEffectRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 1369
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPostEffectRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40000000    # -2.0f

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 1370
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPostEffectRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 1371
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPostEffectRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 1372
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPostEffectRect:Lcom/smartisanos/smengine/RectNode;

    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->sCurrentRenderTarget:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 1377
    return-void
.end method

.method private createStatusBar()V
    .locals 11

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 775
    new-instance v7, Lcom/smartisanos/launcher/view/StatusBar;

    const-string v8, "StatusBar"

    invoke-direct {v7, v8}, Lcom/smartisanos/launcher/view/StatusBar;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/smartisanos/launcher/view/MainView;->mStatusBar:Lcom/smartisanos/launcher/view/StatusBar;

    .line 776
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/SceneManager;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v7

    iget-object v8, p0, Lcom/smartisanos/launcher/view/MainView;->mStatusBar:Lcom/smartisanos/launcher/view/StatusBar;

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 777
    sget v7, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v0, v7

    .line 778
    .local v0, "height":F
    sget v7, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v4, v7

    .line 779
    .local v4, "width":F
    sget v7, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v1, v7

    .line 780
    .local v1, "screenH":F
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v2

    .line 781
    .local v2, "tmpVar":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v3, v2, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    .line 782
    .local v3, "v":Lcom/smartisanos/smengine/math/Vector3f;
    div-float v5, v4, v9

    .line 783
    .local v5, "x":F
    div-float v6, v0, v9

    .line 784
    .local v6, "y":F
    invoke-static {v5, v6, v4, v1, v3}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 785
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MainView;->mStatusBar:Lcom/smartisanos/launcher/view/StatusBar;

    iget v8, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v9, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/smartisanos/launcher/view/StatusBar;->setTranslate(FFF)V

    .line 786
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MainView;->mStatusBar:Lcom/smartisanos/launcher/view/StatusBar;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/StatusBar;->updateGeometricState()V

    .line 787
    invoke-virtual {v2}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 788
    return-void
.end method

.method private drawMsPF()V
    .locals 8

    .prologue
    .line 472
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 473
    .local v2, "time":J
    iget-wide v4, p0, Lcom/smartisanos/launcher/view/MainView;->mStartTimeForFps:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 474
    iput-wide v2, p0, Lcom/smartisanos/launcher/view/MainView;->mStartTimeForFps:J

    .line 476
    :cond_0
    iget v4, p0, Lcom/smartisanos/launcher/view/MainView;->mFrames:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/smartisanos/launcher/view/MainView;->mFrames:I

    .line 477
    iget v4, p0, Lcom/smartisanos/launcher/view/MainView;->mFrames:I

    const/16 v5, 0xc

    if-ne v4, v5, :cond_1

    .line 478
    const/4 v4, 0x0

    iput v4, p0, Lcom/smartisanos/launcher/view/MainView;->mFrames:I

    .line 479
    iget-wide v4, p0, Lcom/smartisanos/launcher/view/MainView;->mStartTimeForFps:J

    sub-long v0, v2, v4

    .line 480
    .local v0, "delta":J
    iput-wide v2, p0, Lcom/smartisanos/launcher/view/MainView;->mStartTimeForFps:J

    .line 481
    long-to-float v4, v0

    const v5, 0x3daaaaab

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/smartisanos/launcher/view/MainView;->mMsPerFrame:I

    .line 483
    .end local v0    # "delta":J
    :cond_1
    return-void
.end method

.method private dumpAllSceneNode(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 7
    .param p1, "parent"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 2757
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v1

    .line 2758
    .local v1, "children":I
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "### parent name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2759
    :cond_0
    new-instance v3, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 2760
    .local v3, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_6

    .line 2761
    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 2762
    .local v0, "c":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 2763
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "-----------------------"

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2764
    :cond_1
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#### child name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  child ."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " getName() ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2765
    :cond_2
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#### c.visible = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->isVisible()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2766
    :cond_3
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#### sceneNode.pos.x = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pos.y = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pos.z = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2767
    :cond_4
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "-----------------------"

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2760
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2770
    .end local v0    # "c":Lcom/smartisanos/smengine/SceneNode;
    :cond_6
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_7

    .line 2771
    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 2772
    .restart local v0    # "c":Lcom/smartisanos/smengine/SceneNode;
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/MainView;->dumpAllSceneNode(Lcom/smartisanos/smengine/SceneNode;)V

    .line 2770
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2774
    .end local v0    # "c":Lcom/smartisanos/smengine/SceneNode;
    :cond_7
    return-void
.end method

.method private generateScreenCorner()V
    .locals 14

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v12, -0x40000000    # -2.0f

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2992
    const/high16 v0, 0x40000000    # 2.0f

    .line 2993
    .local v0, "delta":F
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneManager;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    .line 2994
    .local v5, "rootNode":Lcom/smartisanos/smengine/SceneNode;
    const-string v6, "screen_leftTop_corner"

    sget v7, Lcom/smartisanos/launcher/data/Constants;->screen_corner_width:F

    sget v8, Lcom/smartisanos/launcher/data/Constants;->screen_corner_height:F

    invoke-static {v6, v7, v8, v10, v9}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v6

    iput-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftTopCorner:Lcom/smartisanos/smengine/RectNode;

    .line 2997
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftTopCorner:Lcom/smartisanos/smengine/RectNode;

    const/16 v7, 0x103

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 2998
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftTopCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 2999
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftTopCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 3000
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftTopCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 3001
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftTopCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 3002
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftTopCorner:Lcom/smartisanos/smengine/RectNode;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/RectNode;->setDepthTestFunc(I)V

    .line 3003
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftTopCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 3004
    const-string v6, "TextureModularColorMaterial"

    invoke-static {v6}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v2

    .line 3005
    .local v2, "mlt":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftTopCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6, v2}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 3006
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftTopCorner:Lcom/smartisanos/smengine/RectNode;

    const-string v7, "rectangle.png"

    invoke-static {v7}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 3007
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftTopCorner:Lcom/smartisanos/smengine/RectNode;

    sget v7, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v7, v0

    sget v8, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v8, v0

    invoke-virtual {v6, v7, v8, v10}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 3008
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftTopCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 3011
    const-string v6, "screen_leftBottom_corner"

    sget v7, Lcom/smartisanos/launcher/data/Constants;->screen_corner_width:F

    sget v8, Lcom/smartisanos/launcher/data/Constants;->screen_corner_height:F

    invoke-static {v6, v7, v8, v10, v9}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v6

    iput-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftBottomCorner:Lcom/smartisanos/smengine/RectNode;

    .line 3014
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftBottomCorner:Lcom/smartisanos/smengine/RectNode;

    const/16 v7, 0x103

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 3015
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftBottomCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 3016
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftBottomCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 3017
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftBottomCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 3018
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftBottomCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 3019
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftBottomCorner:Lcom/smartisanos/smengine/RectNode;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/RectNode;->setDepthTestFunc(I)V

    .line 3020
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftBottomCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 3021
    const-string v6, "TextureModularColorMaterial"

    invoke-static {v6}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v1

    .line 3022
    .local v1, "mlb":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftBottomCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6, v1}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 3023
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftBottomCorner:Lcom/smartisanos/smengine/RectNode;

    const-string v7, "rectangle.png"

    invoke-static {v7}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 3024
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftBottomCorner:Lcom/smartisanos/smengine/RectNode;

    sget v7, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v7, v0

    sget v8, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v8, v0

    invoke-virtual {v6, v7, v8, v10}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 3025
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftBottomCorner:Lcom/smartisanos/smengine/RectNode;

    const v7, 0x40490fdb    # (float)Math.PI

    new-instance v8, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v8, v13, v10, v10}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/smengine/RectNode;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 3026
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftBottomCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/RenderState;->setIsCullFaceEnable(Z)V

    .line 3027
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftBottomCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 3030
    const-string v6, "screen_rightTop_corner"

    sget v7, Lcom/smartisanos/launcher/data/Constants;->screen_corner_width:F

    sget v8, Lcom/smartisanos/launcher/data/Constants;->screen_corner_height:F

    invoke-static {v6, v7, v8, v10, v9}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v6

    iput-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mRightTopCorner:Lcom/smartisanos/smengine/RectNode;

    .line 3033
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mRightTopCorner:Lcom/smartisanos/smengine/RectNode;

    const/16 v7, 0x103

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 3034
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mRightTopCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 3035
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mRightTopCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 3036
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mRightTopCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 3037
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mRightTopCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 3038
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mRightTopCorner:Lcom/smartisanos/smengine/RectNode;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/RectNode;->setDepthTestFunc(I)V

    .line 3039
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mRightTopCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 3040
    const-string v6, "TextureModularColorMaterial"

    invoke-static {v6}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v4

    .line 3041
    .local v4, "mrt":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mRightTopCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6, v4}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 3042
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mRightTopCorner:Lcom/smartisanos/smengine/RectNode;

    const-string v7, "rectangle.png"

    invoke-static {v7}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 3043
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mRightTopCorner:Lcom/smartisanos/smengine/RectNode;

    const v7, 0x40490fdb    # (float)Math.PI

    new-instance v8, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v8, v10, v13, v10}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/smengine/RectNode;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 3044
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mRightTopCorner:Lcom/smartisanos/smengine/RectNode;

    sget v7, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v7, v0

    sget v8, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v8, v0

    invoke-virtual {v6, v7, v8, v10}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 3045
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mRightTopCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/RenderState;->setIsCullFaceEnable(Z)V

    .line 3046
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mRightTopCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 3049
    const-string v6, "screen_rightBottom_corner"

    sget v7, Lcom/smartisanos/launcher/data/Constants;->screen_corner_width:F

    sget v8, Lcom/smartisanos/launcher/data/Constants;->screen_corner_height:F

    invoke-static {v6, v7, v8, v10, v9}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v6

    iput-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mRightBottomCorner:Lcom/smartisanos/smengine/RectNode;

    .line 3052
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mRightBottomCorner:Lcom/smartisanos/smengine/RectNode;

    const/16 v7, 0x103

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 3053
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mRightBottomCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 3054
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mRightBottomCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 3055
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mRightBottomCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 3056
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mRightBottomCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 3057
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mRightBottomCorner:Lcom/smartisanos/smengine/RectNode;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/RectNode;->setDepthTestFunc(I)V

    .line 3058
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mRightBottomCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 3059
    const-string v6, "TextureModularColorMaterial"

    invoke-static {v6}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v3

    .line 3060
    .local v3, "mrb":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mRightBottomCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6, v3}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 3061
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mRightBottomCorner:Lcom/smartisanos/smengine/RectNode;

    const-string v7, "rectangle.png"

    invoke-static {v7}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 3062
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mRightBottomCorner:Lcom/smartisanos/smengine/RectNode;

    const v7, 0x40490fdb    # (float)Math.PI

    new-instance v8, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v8, v13, v13, v10}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/smengine/RectNode;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 3063
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mRightBottomCorner:Lcom/smartisanos/smengine/RectNode;

    sget v7, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v7, v0

    sget v8, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v8, v0

    invoke-virtual {v6, v7, v8, v10}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 3064
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mRightBottomCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/RenderState;->setIsCullFaceEnable(Z)V

    .line 3065
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mRightBottomCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 3067
    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 3068
    return-void
.end method

.method private getEnableDrawStatus()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 366
    iget v1, p0, Lcom/smartisanos/launcher/view/MainView;->mStatusFlag:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/smartisanos/launcher/view/MainView;
    .locals 1

    .prologue
    .line 305
    sget-object v0, Lcom/smartisanos/launcher/view/MainView;->gMainView:Lcom/smartisanos/launcher/view/MainView;

    return-object v0
.end method

.method public static getMaxPageCount(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    const/16 v0, 0x24

    .line 1037
    packed-switch p0, :pswitch_data_0

    .line 1046
    :goto_0
    :pswitch_0
    return v0

    .line 1044
    :pswitch_1
    const/16 v0, 0x14

    goto :goto_0

    .line 1037
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getNormalDistribute(F)F
    .locals 7
    .param p1, "x"    # F

    .prologue
    .line 1414
    const/4 v4, 0x0

    .line 1415
    .local v4, "u":F
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 1416
    .local v3, "t":F
    const v5, 0x40c90fda

    invoke-static {v5}, Lcom/smartisanos/smengine/math/FastMath;->sqrt(F)F

    move-result v5

    mul-float v1, v3, v5

    .line 1417
    .local v1, "m":F
    sub-float v5, p1, v4

    neg-float v5, v5

    sub-float v6, p1, v4

    mul-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v3

    mul-float/2addr v6, v3

    div-float v0, v5, v6

    .line 1418
    .local v0, "k":F
    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->exp(F)F

    move-result v5

    div-float v2, v5, v1

    .line 1419
    .local v2, "result":F
    return v2
.end method

.method private getNormalDistribute(FFF)F
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "t"    # F

    .prologue
    .line 1422
    mul-float v2, p1, p1

    mul-float v3, p2, p2

    add-float/2addr v2, v3

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, p3

    mul-float/2addr v3, p3

    div-float v0, v2, v3

    .line 1423
    .local v0, "m":F
    invoke-static {v0}, Lcom/smartisanos/smengine/math/FastMath;->exp(F)F

    move-result v2

    const v3, 0x40c90fdb

    mul-float/2addr v3, p3

    mul-float/2addr v3, p3

    div-float v1, v2, v3

    .line 1424
    .local v1, "result":F
    return v1
.end method

.method private handleBackKey()V
    .locals 3

    .prologue
    .line 2933
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 2934
    sget-object v0, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    const-string v2, "handle BACK KEY UP"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2935
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mFolderPageView:Lcom/smartisanos/launcher/view/FolderPageView;

    if-eqz v0, :cond_2

    .line 2936
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->onCloseFolder()V

    .line 2953
    :cond_1
    :goto_0
    return-void

    .line 2939
    :cond_2
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v1, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v0, v1, :cond_3

    .line 2940
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2941
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2942
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mFloatPageNode:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/FloatPageNode;->handleTap()V

    goto :goto_0

    .line 2946
    :cond_3
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v1, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v0, v1, :cond_1

    .line 2947
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2948
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->getSettingButton()Lcom/smartisanos/launcher/view/SettingButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/SettingButton;->handleTap(Z)V

    goto :goto_0

    .line 2951
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/PageView;->switchPageMode(Lcom/smartisanos/launcher/view/Page;)Z

    goto :goto_0
.end method

.method public handleBackKeyFromActivity()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MainView;->handleBackKey()V

    return-void
.end method

.method private handleKey(Lcom/smartisanos/smengine/TouchEvent;F)V
    .locals 7
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;
    .param p2, "deltaT"    # F

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x52

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 1962
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/MainView;->isLoadingConfig:Z

    if-eqz v1, :cond_1

    .line 2024
    :cond_0
    :goto_0
    return-void

    .line 1965
    :cond_1
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/MainView;->mIsHardKeyLocked:Z

    if-eqz v1, :cond_2

    .line 1966
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "handleKey Hard Key is locked !"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1969
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    if-nez v1, :cond_3

    .line 1970
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "handleKey mPageView is null !"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1973
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    .line 1974
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mFolderPageView:Lcom/smartisanos/launcher/view/FolderPageView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mFolderPageView:Lcom/smartisanos/launcher/view/FolderPageView;

    .line 1975
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/FolderPageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1976
    :cond_4
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "handleKey getSelectedCell is not null !"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1979
    :cond_5
    const/4 v0, 0x0

    .line 1980
    .local v0, "onKeyDown":Z
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getType()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_6

    .line 1981
    const/4 v0, 0x1

    .line 1985
    :cond_6
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getKeyCode()I

    move-result v1

    if-eq v1, v3, :cond_7

    .line 1986
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v5, :cond_8

    :cond_7
    if-eqz v0, :cond_8

    .line 1987
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v2, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v1, v2, :cond_8

    .line 1988
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1989
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1990
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mFloatPageNode:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->handleTap()V

    goto/16 :goto_0

    .line 1996
    :cond_8
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v5, :cond_b

    if-eqz v0, :cond_b

    .line 1997
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_9

    sget-object v1, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "handle MENU KEY DOWN"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    :cond_9
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v2, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v1, v2, :cond_a

    .line 2000
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2001
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getSettingButton()Lcom/smartisanos/launcher/view/SettingButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/SettingButton;->handleTap(Z)V

    goto/16 :goto_0

    .line 2006
    :cond_a
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v1, v6}, Lcom/smartisanos/launcher/view/PageView;->switchPageMode(Lcom/smartisanos/launcher/view/Page;)Z

    goto/16 :goto_0

    .line 2009
    :cond_b
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v3, :cond_0

    if-eqz v0, :cond_0

    .line 2010
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_c

    sget-object v1, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "handle BACK KEY UP"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    :cond_c
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mFolderPageView:Lcom/smartisanos/launcher/view/FolderPageView;

    if-eqz v1, :cond_d

    .line 2012
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->onCloseFolder()V

    goto/16 :goto_0

    .line 2015
    :cond_d
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v2, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v1, v2, :cond_0

    .line 2016
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2017
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getSettingButton()Lcom/smartisanos/launcher/view/SettingButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/SettingButton;->handleTap(Z)V

    goto/16 :goto_0

    .line 2020
    :cond_e
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v1, v6}, Lcom/smartisanos/launcher/view/PageView;->switchPageMode(Lcom/smartisanos/launcher/view/Page;)Z

    goto/16 :goto_0
.end method

.method private handleMenuKey()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2886
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    .line 2887
    sget-object v1, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "handle MENU KEY DOWN"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2888
    :cond_0
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v2, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v1, v2, :cond_2

    .line 2889
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2890
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2891
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mFloatPageNode:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->handleTap()V

    .line 2930
    :cond_1
    :goto_0
    return-void

    .line 2896
    :cond_2
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v2, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v1, v2, :cond_1

    .line 2897
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2899
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/PageView;->mMultiSelectNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 2900
    :goto_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/PageView;->mMultiSelectNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2901
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/PageView;->mMultiSelectNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 2902
    .local v0, "c":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->clearCellSelected()I

    goto :goto_1

    .line 2906
    .end local v0    # "c":Lcom/smartisanos/launcher/view/Cell;
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getSettingButton()Lcom/smartisanos/launcher/view/SettingButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/SettingButton;->handleTap(Z)V

    goto :goto_0
.end method

.method private hideCellClickShadow(FFZ)V
    .locals 10
    .param p1, "delay"    # F
    .param p2, "time"    # F
    .param p3, "force"    # Z

    .prologue
    const/4 v9, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 709
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mClickCell:Lcom/smartisanos/launcher/view/Cell;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mHideCellClickShadowRectAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-nez v1, :cond_0

    .line 710
    new-instance v1, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mHideCellClickShadowRectAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 711
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mClickCell:Lcom/smartisanos/launcher/view/Cell;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/MainView;->mHideCellClickShadowRectAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1, v3, p2}, Lcom/smartisanos/launcher/view/Cell;->setUpInOtherAnimation(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    .line 712
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mCellClickShadowRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 713
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mCellClickShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 714
    .local v0, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 715
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 716
    const/4 v1, 0x3

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 717
    new-instance v1, Lcom/smartisanos/launcher/view/MainView$5;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/MainView$5;-><init>(Lcom/smartisanos/launcher/view/MainView;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 730
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mHideCellClickShadowRectAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1, v9, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 731
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mHideCellClickShadowRectAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setDelay(F)V

    .line 732
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mHideCellClickShadowRectAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 733
    if-eqz p3, :cond_0

    .line 734
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mHideCellClickShadowRectAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 737
    .end local v0    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_0
    return-void
.end method

.method private isMainViewCreateOK()Z
    .locals 1

    .prologue
    .line 1227
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->CONSTANTS_INIT_DONE:Z

    return v0
.end method

.method private printD()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1427
    const/4 v0, -0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, v7, :cond_1

    .line 1428
    const/4 v1, -0x1

    .local v1, "j":I
    :goto_1
    if-gt v1, v7, :cond_0

    .line 1429
    int-to-float v3, v1

    int-to-float v4, v0

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-direct {p0, v3, v4, v5}, Lcom/smartisanos/launcher/view/MainView;->getNormalDistribute(FFF)F

    move-result v2

    .line 1430
    .local v2, "m":F
    sget-object v3, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "x = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , y = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1427
    .end local v2    # "m":F
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1433
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method private setEnableDraw(Z)V
    .locals 1
    .param p1, "en"    # Z

    .prologue
    .line 358
    if-eqz p1, :cond_0

    .line 359
    iget v0, p0, Lcom/smartisanos/launcher/view/MainView;->mStatusFlag:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/smartisanos/launcher/view/MainView;->mStatusFlag:I

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    iget v0, p0, Lcom/smartisanos/launcher/view/MainView;->mStatusFlag:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/smartisanos/launcher/view/MainView;->mStatusFlag:I

    goto :goto_0
.end method

.method public static setInstance(Lcom/smartisanos/launcher/view/MainView;)V
    .locals 1
    .param p0, "mv"    # Lcom/smartisanos/launcher/view/MainView;

    .prologue
    .line 309
    sput-object p0, Lcom/smartisanos/launcher/view/MainView;->gMainView:Lcom/smartisanos/launcher/view/MainView;

    .line 310
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/StatusManager;->reset()V

    .line 311
    return-void
.end method

.method private setScreenCornerUsePostEffect(Z)V
    .locals 3
    .param p1, "use"    # Z

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 3071
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftTopCorner:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftBottomCorner:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mRightTopCorner:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mRightBottomCorner:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 3072
    if-eqz p1, :cond_1

    .line 3073
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftTopCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 3074
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftBottomCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 3075
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mRightTopCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 3076
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mRightBottomCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 3084
    :cond_0
    :goto_0
    return-void

    .line 3078
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftTopCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 3079
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mLeftBottomCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 3080
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mRightTopCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 3081
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mRightBottomCorner:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    goto :goto_0
.end method

.method private showFloatPageNode(Lcom/smartisanos/launcher/view/Page;)V
    .locals 5
    .param p1, "floatPage"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v0

    .line 576
    .local v0, "pageIndex":I
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "###showFloatPageNode###page index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", page = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pre-floating page = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/launcher/view/MainView;->mFloatPageNode:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    :cond_0
    new-instance v1, Lcom/smartisanos/launcher/view/FloatPageNode;

    const-string v2, "Float_Page_Node"

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lcom/smartisanos/launcher/view/FloatPageNode;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/Page;Lcom/smartisanos/launcher/view/PageView;)V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mFloatPageNode:Lcom/smartisanos/launcher/view/FloatPageNode;

    .line 578
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mFloatPageNode:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->initFloatPageNode()V

    .line 579
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/MainView;->mFloatPageNode:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/PageView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 580
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/smartisanos/launcher/view/PageView;->mIsInFloatPageMode:Z

    .line 581
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->sendInvisiblePageIntent()V

    .line 582
    return-void
.end method

.method private testBlurImage()V
    .locals 7

    .prologue
    .line 1436
    const/4 v0, 0x0

    .line 1437
    .local v0, "bmap":Landroid/graphics/Bitmap;
    const-string v5, "background.png"

    invoke-static {v5}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1439
    .local v4, "path":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Lcom/smartisanos/launcher/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 1440
    .local v2, "is":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1444
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->getContext()Landroid/app/Activity;

    move-result-object v5

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v5, v0, v6}, Lcom/smartisanos/launcher/data/Utils;->blurBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1445
    .local v3, "newImage":Landroid/graphics/Bitmap;
    const-string v5, "blurtest.png"

    invoke-static {v5, v3}, Lcom/smartisanos/smengine/Image;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1446
    return-void

    .line 1441
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "newImage":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 1442
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "load image error"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private testCurveNode()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 1287
    new-instance v6, Lcom/smartisanos/smengine/CurveNode;

    const-string v7, "curveNode"

    invoke-direct {v6, v7}, Lcom/smartisanos/smengine/CurveNode;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mTestCurveNode:Lcom/smartisanos/smengine/CurveNode;

    .line 1288
    new-instance v4, Lcom/smartisanos/smengine/math/Vector3f;

    const v6, 0x3e2ab368    # 0.1667f

    const v7, 0x3f333333    # 0.7f

    invoke-direct {v4, v6, v7, v9}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 1289
    .local v4, "startVector":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    const v6, 0x3f12339c    # 0.5711f

    const v7, 0x3f757a78    # 0.9589f

    invoke-direct {v0, v6, v7, v9}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 1291
    .local v0, "endVector":Lcom/smartisanos/smengine/math/Vector3f;
    const/16 v2, 0x3e8

    .line 1294
    .local v2, "num":I
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MainView;->createBezierSeg()Ljava/util/ArrayList;

    move-result-object v3

    .line 1295
    .local v3, "segments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector3f;>;>;"
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mTestCurveNode:Lcom/smartisanos/smengine/CurveNode;

    const/16 v7, 0x3e8

    new-instance v8, Lcom/smartisanos/smengine/math/Vector4f;

    invoke-direct {v8, v10, v9, v9, v10}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    invoke-virtual {v6, v7, v3, v8}, Lcom/smartisanos/smengine/CurveNode;->createBezier(ILjava/util/ArrayList;Lcom/smartisanos/smengine/math/Vector4f;)V

    .line 1296
    const/high16 v5, 0x43c80000    # 400.0f

    .line 1297
    .local v5, "width":F
    const/high16 v1, 0x43960000    # 300.0f

    .line 1298
    .local v1, "height":F
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mTestCurveNode:Lcom/smartisanos/smengine/CurveNode;

    invoke-virtual {v6, v5, v1, v10}, Lcom/smartisanos/smengine/CurveNode;->setScale(FFF)V

    .line 1300
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mTestCurveNode:Lcom/smartisanos/smengine/CurveNode;

    const v7, 0x3fc90fdb

    new-instance v8, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v8, v9, v9, v10}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/smengine/CurveNode;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 1301
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mTestCurveNode:Lcom/smartisanos/smengine/CurveNode;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/CurveNode;->setRenderQueue(I)V

    .line 1303
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mTestCurveNode:Lcom/smartisanos/smengine/CurveNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/CurveNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 1304
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mTestCurveNode:Lcom/smartisanos/smengine/CurveNode;

    invoke-direct {p0, v6}, Lcom/smartisanos/launcher/view/MainView;->addSceneNode(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1305
    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mTestCurveNode:Lcom/smartisanos/smengine/CurveNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/CurveNode;->updateGeometricState()V

    .line 1306
    return-void
.end method

.method private testOShape()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1246
    const-string v0, "oshape"

    const/high16 v1, 0x436e0000    # 238.0f

    const/high16 v2, 0x43980000    # 304.0f

    const/high16 v3, 0x43c80000    # 400.0f

    const/high16 v4, 0x43fa0000    # 500.0f

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static/range {v0 .. v6}, Lcom/smartisanos/smengine/RectNode;->createOShapeSimpleTextureRect(Ljava/lang/String;FFFFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mOShapeRect:Lcom/smartisanos/smengine/RectNode;

    .line 1247
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mOShapeRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v6, v6}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(IZ)V

    .line 1248
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mOShapeRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 1249
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mOShapeRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setShowInnerRect(Z)V

    .line 1250
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mOShapeRect:Lcom/smartisanos/smengine/RectNode;

    const-string v1, "back1.png"

    invoke-static {v1}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 1251
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mOShapeRect:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/MainView;->addSceneNode(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1252
    return-void
.end method

.method private testUtil()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 1231
    new-instance v0, Ljava/lang/Float;

    const-wide v2, 0x3fb999999999999aL    # 0.1

    invoke-direct {v0, v2, v3}, Ljava/lang/Float;-><init>(D)V

    .line 1232
    .local v0, "f":Ljava/lang/Float;
    invoke-static {v0, v4}, Lcom/smartisanos/smengine/util/StringUtil;->floatToStringWithFactorLength(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v1

    .line 1233
    .local v1, "str":Ljava/lang/String;
    sget-boolean v2, Lcom/smartisanos/launcher/view/MainView;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const-string v2, "0.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1234
    :cond_0
    new-instance v0, Ljava/lang/Float;

    .end local v0    # "f":Ljava/lang/Float;
    const-wide v2, 0x405ed33333333333L    # 123.3

    invoke-direct {v0, v2, v3}, Ljava/lang/Float;-><init>(D)V

    .line 1235
    .restart local v0    # "f":Ljava/lang/Float;
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/smartisanos/smengine/util/StringUtil;->floatToStringWithFactorLength(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v1

    .line 1236
    sget-boolean v2, Lcom/smartisanos/launcher/view/MainView;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    const-string v2, "123.3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1237
    :cond_1
    new-instance v0, Ljava/lang/Float;

    .end local v0    # "f":Ljava/lang/Float;
    const-wide v2, 0x3fd6147ae147ae14L    # 0.345

    invoke-direct {v0, v2, v3}, Ljava/lang/Float;-><init>(D)V

    .line 1238
    .restart local v0    # "f":Ljava/lang/Float;
    invoke-static {v0, v4}, Lcom/smartisanos/smengine/util/StringUtil;->floatToStringWithFactorLength(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v1

    .line 1239
    sget-boolean v2, Lcom/smartisanos/launcher/view/MainView;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    const-string v2, "0.34"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1240
    :cond_2
    return-void
.end method


# virtual methods
.method public canIntoHoverMode()Z
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/MainView;->mCanInToHoverMode:Z

    return v0
.end method

.method public changeWallpaper()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 893
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mChangeWallpaperEvent:Lcom/smartisanos/smengine/Event;

    if-eqz v0, :cond_0

    .line 894
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mChangeWallpaperEvent:Lcom/smartisanos/smengine/Event;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/EventManager;->removeEvent(Lcom/smartisanos/smengine/Event;)V

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mChangePostEffectEvent:Lcom/smartisanos/smengine/Event;

    if-eqz v0, :cond_1

    .line 897
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mChangePostEffectEvent:Lcom/smartisanos/smengine/Event;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/EventManager;->removeEvent(Lcom/smartisanos/smengine/Event;)V

    .line 899
    :cond_1
    iput-object v2, p0, Lcom/smartisanos/launcher/view/MainView;->mChangeWallpaperEvent:Lcom/smartisanos/smengine/Event;

    .line 900
    iput-object v2, p0, Lcom/smartisanos/launcher/view/MainView;->mChangePostEffectEvent:Lcom/smartisanos/smengine/Event;

    .line 901
    new-instance v0, Lcom/smartisanos/launcher/view/MainView$7;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/view/MainView$7;-><init>(Lcom/smartisanos/launcher/view/MainView;I)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mChangeWallpaperEvent:Lcom/smartisanos/smengine/Event;

    .line 1001
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mChangeWallpaperEvent:Lcom/smartisanos/smengine/Event;

    if-eqz v0, :cond_2

    .line 1002
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mChangeWallpaperEvent:Lcom/smartisanos/smengine/Event;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Event;->send(F)V

    .line 1004
    :cond_2
    return-void
.end method

.method public clearExtraMesh()V
    .locals 2

    .prologue
    .line 1007
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v0

    .line 1008
    .local v0, "mm":Lcom/smartisanos/smengine/MeshManager;
    const-string v1, "multigaussian_"

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/MeshManager;->clearMeshContainsName(Ljava/lang/String;)V

    .line 1009
    return-void
.end method

.method public create(III)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 568
    sput p1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    .line 569
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MainView create : mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->getModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", w "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", h "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/smartisanos/launcher/view/MainView;->createCamera(II)V

    .line 571
    return-void
.end method

.method public createBlurRect()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1396
    const-string v4, "testBlur"

    const/high16 v5, 0x44870000    # 1080.0f

    const/high16 v6, 0x44f00000    # 1920.0f

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7, v9}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    iput-object v4, p0, Lcom/smartisanos/launcher/view/MainView;->mTestRect:Lcom/smartisanos/smengine/RectNode;

    .line 1397
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MainView;->mTestRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 1398
    const/16 v1, 0x14

    .line 1399
    .local v1, "blurSize":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1400
    .local v0, "aaa":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1401
    const-string v4, "GaussianBlurEffectMaterial"

    invoke-static {v4, v1, v0}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;ILjava/util/ArrayList;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;

    .line 1402
    .local v2, "m":Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;
    const/16 v4, 0x438

    const/16 v5, 0x780

    invoke-virtual {v2, v4, v5}, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->setSize(II)V

    .line 1403
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MainView;->mTestRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 1404
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MainView;->mTestRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 1405
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MainView;->mTestRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 1406
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MainView;->mTestRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 1407
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneManager;->getPostEffectRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    .line 1408
    .local v3, "root":Lcom/smartisanos/smengine/SceneNode;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MainView;->mTestRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1409
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 1410
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/World;->getRenderManager()Lcom/smartisanos/smengine/RenderManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/RenderManager;->setUsePostEffect(Z)V

    .line 1411
    return-void
.end method

.method public createCamera(II)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v9, 0x0

    .line 490
    iget v5, p0, Lcom/smartisanos/launcher/view/MainView;->mMainCameraW:I

    if-ne v5, p1, :cond_0

    iget v5, p0, Lcom/smartisanos/launcher/view/MainView;->mMainCameraH:I

    if-eq v5, p2, :cond_1

    .line 491
    :cond_0
    iput p1, p0, Lcom/smartisanos/launcher/view/MainView;->mMainCameraW:I

    .line 492
    iput p2, p0, Lcom/smartisanos/launcher/view/MainView;->mMainCameraH:I

    .line 493
    new-instance v5, Lcom/smartisanos/smengine/Camera;

    invoke-direct {v5, p1, p2}, Lcom/smartisanos/smengine/Camera;-><init>(II)V

    iput-object v5, p0, Lcom/smartisanos/launcher/view/MainView;->mMainCamera:Lcom/smartisanos/smengine/Camera;

    .line 494
    sget v5, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v1, v5

    .line 495
    .local v1, "distance":F
    sget v5, Lcom/smartisanos/launcher/data/Constants;->mainCameraNear:I

    int-to-float v3, v5

    .line 496
    .local v3, "near":F
    sget v5, Lcom/smartisanos/launcher/data/Constants;->mainCameraFar:I

    int-to-float v2, v5

    .line 497
    .local v2, "far":F
    const v5, 0x42652ee0

    int-to-float v6, p2

    div-float/2addr v6, v7

    invoke-static {v6, v1}, Lcom/smartisanos/smengine/math/FastMath;->atan2(FF)F

    move-result v6

    mul-float v4, v5, v6

    .line 498
    .local v4, "theta":F
    iget-object v5, p0, Lcom/smartisanos/launcher/view/MainView;->mMainCamera:Lcom/smartisanos/smengine/Camera;

    mul-float v6, v4, v7

    iget-object v7, p0, Lcom/smartisanos/launcher/view/MainView;->mMainCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/Camera;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/smartisanos/launcher/view/MainView;->mMainCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v8}, Lcom/smartisanos/smengine/Camera;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v5, v6, v7, v3, v2}, Lcom/smartisanos/smengine/Camera;->setFrustumPerspective(FFFF)V

    .line 499
    iget-object v5, p0, Lcom/smartisanos/launcher/view/MainView;->mMainCamera:Lcom/smartisanos/smengine/Camera;

    new-instance v6, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v6, v9, v9, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/Camera;->setLocation(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 500
    iget-object v5, p0, Lcom/smartisanos/launcher/view/MainView;->mMainCamera:Lcom/smartisanos/smengine/Camera;

    new-instance v6, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v6, v9, v9, v9}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    sget-object v7, Lcom/smartisanos/smengine/math/Vector3f;->UNIT_Y:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/smengine/Camera;->lookAt(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 502
    .end local v1    # "distance":F
    .end local v2    # "far":F
    .end local v3    # "near":F
    .end local v4    # "theta":F
    :cond_1
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v0

    .line 503
    .local v0, "cm":Lcom/smartisanos/smengine/CameraManager;
    const-string v5, "mainCamera"

    iget-object v6, p0, Lcom/smartisanos/launcher/view/MainView;->mMainCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, v5, v6}, Lcom/smartisanos/smengine/CameraManager;->setCamera(Ljava/lang/String;Lcom/smartisanos/smengine/Camera;)V

    .line 504
    iget-object v5, p0, Lcom/smartisanos/launcher/view/MainView;->mMainCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/CameraManager;->setCurrentCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 505
    return-void
.end method

.method public createPages()V
    .locals 53

    .prologue
    .line 1051
    sget-boolean v49, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v49, :cond_0

    sget-object v49, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v50, "DEBUG"

    const-string v51, "MainView createPages begin !"

    invoke-virtual/range {v49 .. v51}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v40

    .line 1053
    .local v40, "sm":Lcom/smartisanos/smengine/SceneManager;
    invoke-virtual/range {v40 .. v40}, Lcom/smartisanos/smengine/SceneManager;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v38

    .line 1055
    .local v38, "root":Lcom/smartisanos/smengine/SceneNode;
    sget v49, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static/range {v49 .. v49}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v34

    .line 1056
    .local v34, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    move/from16 v31, v0

    .line 1057
    .local v31, "pageViewWidth":F
    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    move/from16 v30, v0

    .line 1058
    .local v30, "pageViewHeight":F
    new-instance v23, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct/range {v23 .. v23}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    .line 1059
    .local v23, "p":Lcom/smartisanos/smengine/math/Vector2f;
    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    move/from16 v17, v0

    .line 1060
    .local v17, "leftBottomX":F
    sget v49, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    move/from16 v50, v0

    add-float v49, v49, v50

    add-float v18, v49, v30

    .line 1061
    .local v18, "leftBottomY":F
    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    move/from16 v49, v0

    add-float v36, v49, v31

    .line 1062
    .local v36, "rightTopX":F
    sget v49, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    move/from16 v50, v0

    add-float v37, v49, v50

    .line 1063
    .local v37, "rightTopY":F
    sget v49, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    sget v50, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v49

    move/from16 v3, v50

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;

    .line 1064
    move-object/from16 v0, v23

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v17, v0

    .line 1065
    move-object/from16 v0, v23

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    move/from16 v18, v0

    .line 1066
    sget v49, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    sget v50, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    move/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v49

    move/from16 v3, v50

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;

    .line 1067
    move-object/from16 v0, v23

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v36, v0

    .line 1068
    move-object/from16 v0, v23

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    move/from16 v37, v0

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v49, v0

    new-instance v50, Lcom/smartisanos/smengine/math/Vector2f;

    sget v51, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    move/from16 v0, v51

    neg-int v0, v0

    move/from16 v51, v0

    div-int/lit8 v51, v51, 0x2

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    move-object/from16 v0, v50

    move/from16 v1, v51

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    new-instance v51, Lcom/smartisanos/smengine/math/Vector2f;

    sget v52, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    div-int/lit8 v52, v52, 0x2

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    move-object/from16 v0, v51

    move/from16 v1, v52

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    invoke-virtual/range {v49 .. v51}, Lcom/smartisanos/launcher/view/PageView;->setBoundingRect(Lcom/smartisanos/smengine/math/Vector2f;Lcom/smartisanos/smengine/math/Vector2f;)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v49, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1072
    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    move/from16 v49, v0

    const/high16 v50, 0x3f000000    # 0.5f

    mul-float v50, v50, v31

    add-float v47, v49, v50

    .line 1073
    .local v47, "x":F
    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    move/from16 v49, v0

    sget v50, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    add-float v49, v49, v50

    const/high16 v50, 0x3f000000    # 0.5f

    mul-float v50, v50, v30

    add-float v48, v49, v50

    .line 1075
    .local v48, "y":F
    sget v49, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    sget v50, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    move/from16 v0, v47

    move/from16 v1, v48

    move/from16 v2, v49

    move/from16 v3, v50

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;

    .line 1076
    move-object/from16 v0, v23

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v47, v0

    .line 1077
    move-object/from16 v0, v23

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    move/from16 v48, v0

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/smartisanos/launcher/view/PageView;->updateGeometricState()V

    .line 1079
    const/4 v13, 0x0

    .line 1081
    .local v13, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    sget v49, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static/range {v49 .. v49}, Lcom/smartisanos/launcher/view/MainView;->getMaxPageCount(I)I

    move-result v20

    .line 1082
    .local v20, "maxPageCount":I
    const/16 v22, 0x0

    .line 1083
    .local v22, "overPageCountLimitedList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    sget-object v49, Lcom/smartisanos/launcher/LauncherModel;->pageInfoListWhenStartUp:Ljava/util/List;

    invoke-interface/range {v49 .. v49}, Ljava/util/List;->size()I

    move-result v29

    .line 1084
    .local v29, "pageTotalCount":I
    move/from16 v0, v29

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    .line 1085
    sget-object v49, Lcom/smartisanos/launcher/LauncherModel;->pageInfoListWhenStartUp:Ljava/util/List;

    const/16 v50, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v50

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v13

    .line 1086
    sget-object v49, Lcom/smartisanos/launcher/LauncherModel;->pageInfoListWhenStartUp:Ljava/util/List;

    move-object/from16 v0, v49

    move/from16 v1, v20

    move/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v22

    .line 1090
    :goto_0
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 1091
    .local v27, "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 1092
    .local v28, "pageObjectNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1095
    .local v19, "lockPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v46, Lcom/smartisanos/launcher/data/PageInfo;

    invoke-direct/range {v46 .. v46}, Lcom/smartisanos/launcher/data/PageInfo;-><init>()V

    .line 1096
    .local v46, "wpinfo":Lcom/smartisanos/launcher/data/PageInfo;
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v49

    move/from16 v0, v49

    move-object/from16 v1, v46

    iput v0, v1, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    .line 1097
    const/16 v49, 0x1

    move/from16 v0, v49

    move-object/from16 v1, v46

    iput v0, v1, Lcom/smartisanos/launcher/data/PageInfo;->pageType:I

    .line 1099
    const/4 v9, 0x0

    .line 1100
    .local v9, "count":I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1101
    .local v15, "invisiblePages":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v49

    move/from16 v0, v49

    if-ge v11, v0, :cond_7

    .line 1102
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/launcher/data/PageInfo;

    .line 1103
    .local v12, "info":Lcom/smartisanos/launcher/data/PageInfo;
    iget v0, v12, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    move/from16 v25, v0

    .line 1104
    .local v25, "pageIndex":I
    sget-boolean v49, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v49, :cond_1

    sget-object v49, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v50, "DEBUG"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "load page id ["

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    iget v0, v12, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    move/from16 v52, v0

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string v52, "], index ["

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string v52, "], title ["

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    .line 1105
    invoke-virtual {v12}, Lcom/smartisanos/launcher/data/PageInfo;->getPageName()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string v52, "], status ["

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    iget v0, v12, Lcom/smartisanos/launcher/data/PageInfo;->status:I

    move/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/smartisanos/launcher/view/Page;->getStatusName(I)Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string v52, "]"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    .line 1104
    invoke-virtual/range {v49 .. v51}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    :cond_1
    if-gez v25, :cond_3

    .line 1107
    sget-object v49, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v50, "DEBUG"

    const-string v51, "pageIndex < 0 return !"

    invoke-virtual/range {v49 .. v51}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1088
    .end local v9    # "count":I
    .end local v11    # "i":I
    .end local v12    # "info":Lcom/smartisanos/launcher/data/PageInfo;
    .end local v15    # "invisiblePages":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Page;>;"
    .end local v19    # "lockPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "pageIndex":I
    .end local v27    # "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .end local v28    # "pageObjectNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v46    # "wpinfo":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_2
    sget-object v13, Lcom/smartisanos/launcher/LauncherModel;->pageInfoListWhenStartUp:Ljava/util/List;

    goto/16 :goto_0

    .line 1110
    .restart local v9    # "count":I
    .restart local v11    # "i":I
    .restart local v12    # "info":Lcom/smartisanos/launcher/data/PageInfo;
    .restart local v15    # "invisiblePages":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Page;>;"
    .restart local v19    # "lockPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "pageIndex":I
    .restart local v27    # "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .restart local v28    # "pageObjectNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v46    # "wpinfo":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v49, v0

    invoke-virtual {v12}, Lcom/smartisanos/launcher/data/PageInfo;->getPageName()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v49

    move/from16 v1, v25

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2, v12}, Lcom/smartisanos/launcher/view/PageView;->createPage(ILjava/lang/String;Lcom/smartisanos/launcher/data/PageInfo;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v24

    .line 1111
    .local v24, "page":Lcom/smartisanos/launcher/view/Page;
    iget v0, v12, Lcom/smartisanos/launcher/data/PageInfo;->status:I

    move/from16 v49, v0

    move-object/from16 v0, v24

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Page;->setPageStatus(I)V

    .line 1112
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/view/Page;->getAppsPackageNameList()Ljava/util/ArrayList;

    move-result-object v32

    .line 1113
    .local v32, "pkgNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v0, v12, Lcom/smartisanos/launcher/data/PageInfo;->status:I

    move/from16 v41, v0

    .line 1114
    .local v41, "status":I
    const/16 v49, 0x2

    move/from16 v0, v41

    move/from16 v1, v49

    if-ne v0, v1, :cond_4

    .line 1115
    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1117
    :cond_4
    const/16 v49, 0x2

    move/from16 v0, v49

    if-le v0, v9, :cond_6

    if-nez v41, :cond_6

    .line 1118
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/view/Page;->initPageContent()V

    .line 1119
    const/16 v49, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 1120
    add-int/lit8 v9, v9, 0x1

    .line 1124
    :goto_3
    const/16 v49, 0x1

    move/from16 v0, v41

    move/from16 v1, v49

    if-ne v0, v1, :cond_5

    .line 1125
    move-object/from16 v0, v24

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1127
    :cond_5
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v28

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1122
    :cond_6
    const/16 v49, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    goto :goto_3

    .line 1131
    .end local v12    # "info":Lcom/smartisanos/launcher/data/PageInfo;
    .end local v24    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v25    # "pageIndex":I
    .end local v32    # "pkgNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v41    # "status":I
    :cond_7
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v5

    .line 1132
    .local v5, "activity":Lcom/smartisanos/home/Launcher;
    invoke-static {v15, v5}, Lcom/smartisanos/launcher/data/Utils;->sendInvisiblePageIntent(Ljava/util/List;Lcom/smartisanos/home/Launcher;)V

    .line 1133
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v49

    if-lez v49, :cond_8

    .line 1134
    const/16 v49, 0x1

    move/from16 v0, v49

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/smartisanos/home/Launcher;->setPackageLockStatus(ZLjava/util/List;)V

    .line 1137
    :cond_8
    if-eqz v22, :cond_b

    .line 1138
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v39

    .line 1139
    .local v39, "size":I
    if-lez v39, :cond_b

    .line 1140
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 1141
    .local v33, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    :goto_4
    move/from16 v0, v39

    if-ge v11, v0, :cond_a

    .line 1142
    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/smartisanos/launcher/data/PageInfo;

    .line 1143
    .local v26, "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    move-object/from16 v0, v26

    iget v0, v0, Lcom/smartisanos/launcher/data/PageInfo;->status:I

    move/from16 v49, v0

    const/16 v50, 0x2

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_9

    .line 1144
    move-object/from16 v0, v26

    iget v0, v0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    move/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/smartisanos/launcher/LauncherModel;->getAppInfos(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 1145
    .local v7, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v49

    if-lez v49, :cond_9

    .line 1146
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v49

    :goto_5
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_9

    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1147
    .local v12, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-object v0, v12, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1141
    .end local v7    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v12    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1152
    .end local v26    # "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_a
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v49

    if-lez v49, :cond_b

    .line 1153
    const/16 v49, 0x1

    move/from16 v0, v49

    move-object/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Lcom/smartisanos/home/Launcher;->setPackageLockStatus(ZLjava/util/List;)V

    .line 1158
    .end local v33    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v39    # "size":I
    :cond_b
    sget-object v49, Lcom/smartisanos/launcher/LauncherModel;->pageInfoListWhenStartUp:Ljava/util/List;

    invoke-interface/range {v49 .. v49}, Ljava/util/List;->clear()V

    .line 1160
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1161
    .local v14, "invisiblePageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v11, 0x0

    :goto_6
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v49

    move/from16 v0, v49

    if-ge v11, v0, :cond_d

    .line 1162
    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/smartisanos/launcher/view/Page;

    .line 1163
    .restart local v24    # "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v49

    if-nez v49, :cond_c

    .line 1164
    const/16 v49, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v47

    move/from16 v2, v48

    move/from16 v3, v49

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 1165
    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    move/from16 v49, v0

    add-float v47, v47, v49

    .line 1166
    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    move/from16 v49, v0

    add-float v47, v47, v49

    .line 1167
    move-object/from16 v0, v34

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_right:F

    move/from16 v49, v0

    add-float v47, v47, v49

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/PageView;->addPage(Lcom/smartisanos/launcher/view/Page;)V

    .line 1169
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/view/Page;->forceUpdateWorldTransforms()V

    .line 1170
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/view/Page;->updateWorldBoundingVolume()V

    .line 1161
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 1172
    :cond_c
    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1174
    const/high16 v49, -0x3b790000    # -1080.0f

    const/16 v50, 0x0

    const/16 v51, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v49

    move/from16 v2, v50

    move/from16 v3, v51

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 1175
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/view/Page;->forceUpdateWorldTransforms()V

    goto :goto_7

    .line 1178
    .end local v24    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_d
    sget-boolean v49, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v49, :cond_e

    sget-object v49, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v50, "DEBUG"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "mPageList size         ==> "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/smartisanos/launcher/view/PageView;->getVisiblePageCount()I

    move-result v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v49 .. v51}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    :cond_e
    sget-boolean v49, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v49, :cond_f

    sget-object v49, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v50, "DEBUG"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "invisiblePageList size ==> "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v49 .. v51}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/PageView;->createPageNameMap(Ljava/util/List;)V

    .line 1181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v0, v14}, Lcom/smartisanos/launcher/view/PageView;->addToInvisiblePageList(Ljava/util/ArrayList;)V

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v49

    if-nez v49, :cond_12

    .line 1184
    const/16 v16, 0x0

    .line 1185
    .local v16, "isReadOnly":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/smartisanos/launcher/view/PageView;->getPageCount()I

    move-result v49

    sget v50, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static/range {v50 .. v50}, Lcom/smartisanos/launcher/view/MainView;->getMaxPageCount(I)I

    move-result v50

    move/from16 v0, v49

    move/from16 v1, v50

    if-lt v0, v1, :cond_10

    .line 1186
    const/16 v16, 0x1

    .line 1188
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/smartisanos/launcher/view/PageView;->getPageCount()I

    move-result v21

    .line 1189
    .local v21, "newIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/PageView;->createEmptyPage(Z)Lcom/smartisanos/launcher/view/Page;

    move-result-object v24

    .line 1190
    .restart local v24    # "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/view/Page;->initPageContent()V

    .line 1191
    const/16 v49, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 1192
    if-nez v16, :cond_11

    .line 1193
    move/from16 v0, v21

    move-object/from16 v1, v24

    iput v0, v1, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    .line 1195
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/smartisanos/launcher/view/PageView;->getPageParentForTranslate()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v42

    .line 1196
    .local v42, "t":Lcom/smartisanos/smengine/math/Transform;
    invoke-virtual/range {v42 .. v42}, Lcom/smartisanos/smengine/math/Transform;->inverse()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v44

    .line 1197
    .local v44, "tinv":Lcom/smartisanos/smengine/math/Transform;
    new-instance v35, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v35 .. v35}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1198
    .local v35, "result":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v43, Lcom/smartisanos/smengine/math/Vector3f;

    const/16 v49, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v47

    move/from16 v2, v48

    move/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 1199
    .local v43, "targetLoc":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v44

    move-object/from16 v1, v43

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/math/Transform;->transformVector(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v35

    .line 1200
    move-object/from16 v0, v35

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v49, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v50, v0

    const/16 v51, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v49

    move/from16 v2, v50

    move/from16 v3, v51

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 1202
    .end local v16    # "isReadOnly":Z
    .end local v21    # "newIndex":I
    .end local v24    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v35    # "result":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v42    # "t":Lcom/smartisanos/smengine/math/Transform;
    .end local v43    # "targetLoc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v44    # "tinv":Lcom/smartisanos/smengine/math/Transform;
    :cond_12
    sget-boolean v49, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v49, :cond_13

    sget-object v49, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v50, "A140"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "########## "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/smartisanos/launcher/view/PageView;->getPageCount()I

    move-result v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v49 .. v51}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/smartisanos/launcher/view/PageView;->updateGeometricState()V

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    invoke-virtual/range {v49 .. v50}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v10

    .line 1207
    .local v10, "firstpage":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v6

    .line 1208
    .local v6, "allcells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView;->mAllCellsWorldTranslateSinglePageMode:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->clear()V

    .line 1209
    sget-boolean v49, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v49, :cond_14

    sget-object v49, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "### update cellworldTranslateSinglePageMode data, cell size = "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 1210
    :cond_14
    const/4 v11, 0x0

    :goto_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v49

    move/from16 v0, v49

    if-ge v11, v0, :cond_15

    .line 1211
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/Cell;

    .line 1212
    .local v8, "c":Lcom/smartisanos/launcher/view/Cell;
    new-instance v45, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v45 .. v45}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1213
    .local v45, "worldPos":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v45

    invoke-virtual {v8, v0}, Lcom/smartisanos/launcher/view/Cell;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MainView;->mAllCellsWorldTranslateSinglePageMode:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1210
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 1216
    .end local v8    # "c":Lcom/smartisanos/launcher/view/Cell;
    .end local v45    # "worldPos":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_15
    return-void
.end method

.method public createTestRect([BLcom/smartisanos/smengine/math/Vector3f;FF)V
    .locals 10
    .param p1, "bitmap"    # [B
    .param p2, "position"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p3, "w"    # F
    .param p4, "h"    # F

    .prologue
    const/4 v9, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1770
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MainView;->mTestRect:Lcom/smartisanos/smengine/RectNode;

    if-nez v4, :cond_0

    .line 1771
    const-string v4, "testRect"

    invoke-static {v4, v5, v5, v8, v7}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    iput-object v4, p0, Lcom/smartisanos/launcher/view/MainView;->mTestRect:Lcom/smartisanos/smengine/RectNode;

    .line 1772
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MainView;->mTestRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 1774
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MainView;->mTestRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 1775
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MainView;->mTestRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40000000    # -2.0f

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 1776
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MainView;->mTestRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 1777
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MainView;->mTestRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 1778
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneManager;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 1779
    .local v1, "rootNode":Lcom/smartisanos/smengine/SceneNode;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MainView;->mTestRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1781
    .end local v1    # "rootNode":Lcom/smartisanos/smengine/SceneNode;
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1782
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v4

    const-string v5, "testRect"

    .line 1783
    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/TextureManager;->getTexture(Ljava/lang/String;)Lcom/smartisanos/smengine/Texture;

    move-result-object v2

    .line 1784
    .local v2, "texture":Lcom/smartisanos/smengine/Texture;
    if-eqz v2, :cond_1

    .line 1785
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v4

    const-string v5, "testRect"

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 1787
    :cond_1
    array-length v4, p1

    invoke-static {p1, v9, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1788
    .local v0, "bt":Landroid/graphics/Bitmap;
    new-instance v2, Lcom/smartisanos/smengine/Texture;

    .end local v2    # "texture":Lcom/smartisanos/smengine/Texture;
    invoke-direct {v2, v0}, Lcom/smartisanos/smengine/Texture;-><init>(Landroid/graphics/Bitmap;)V

    .line 1789
    .restart local v2    # "texture":Lcom/smartisanos/smengine/Texture;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v3

    .line 1790
    .local v3, "tm":Lcom/smartisanos/smengine/TextureManager;
    const-string v4, "testRect"

    invoke-virtual {v3, v4, v2}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    .line 1791
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MainView;->mTestRect:Lcom/smartisanos/smengine/RectNode;

    const-string v5, "testRect"

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 1792
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MainView;->mTestRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, p3, p4, v8}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 1793
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MainView;->mTestRect:Lcom/smartisanos/smengine/RectNode;

    iget v5, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v6, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v7, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v4, v5, v6, v7}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 1794
    iget-object v4, p0, Lcom/smartisanos/launcher/view/MainView;->mTestRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 1796
    .end local v0    # "bt":Landroid/graphics/Bitmap;
    .end local v2    # "texture":Lcom/smartisanos/smengine/Texture;
    .end local v3    # "tm":Lcom/smartisanos/smengine/TextureManager;
    :cond_2
    return-void
.end method

.method public disableBatchPageLightEffect()V
    .locals 4

    .prologue
    .line 2980
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2981
    .local v0, "allpages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2982
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    .line 2983
    .local v2, "p":Lcom/smartisanos/launcher/view/Page;
    instance-of v3, v2, Lcom/smartisanos/launcher/view/WidgetPage;

    if-eqz v3, :cond_0

    .line 2981
    .end local v2    # "p":Lcom/smartisanos/launcher/view/Page;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2986
    .restart local v2    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    check-cast v2, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    .end local v2    # "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->disableLightEffect()V

    goto :goto_1

    .line 2989
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Lcom/smartisanos/smengine/TKeyEvent;)Z
    .locals 6
    .param p1, "event"    # Lcom/smartisanos/smengine/TKeyEvent;

    .prologue
    const/4 v2, 0x0

    const/16 v5, 0x52

    const/4 v3, 0x4

    const/4 v4, 0x1

    .line 2827
    sget v1, Lcom/smartisanos/launcher/data/Constants;->VOICE_ASSIT_BY_MENU:I

    if-nez v1, :cond_3

    .line 2828
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TKeyEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 2829
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TKeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 2830
    iput-boolean v4, p0, Lcom/smartisanos/launcher/view/MainView;->mFirstMenuDown:Z

    .line 2882
    :cond_0
    :goto_0
    return v4

    .line 2831
    :cond_1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TKeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 2832
    iput-boolean v4, p0, Lcom/smartisanos/launcher/view/MainView;->mFirstBackDown:Z

    goto :goto_0

    .line 2835
    :cond_2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TKeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    .line 2836
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TKeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 2837
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/MainView;->mFirstMenuDown:Z

    if-eqz v1, :cond_0

    .line 2840
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/MainView;->mFirstMenuDown:Z

    .line 2851
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/MainView;->mIsHardKeyLocked:Z

    if-nez v1, :cond_4

    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2852
    :cond_4
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "Hard Key is locked !"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2842
    :cond_5
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TKeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 2843
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/MainView;->mFirstBackDown:Z

    if-eqz v1, :cond_0

    .line 2846
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/MainView;->mFirstBackDown:Z

    goto :goto_1

    .line 2855
    :cond_6
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/MainView;->isLoadingConfig:Z

    if-nez v1, :cond_0

    .line 2858
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/MainView;->mIsHardKeyLocked:Z

    if-eqz v1, :cond_7

    .line 2859
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "Hard Key is locked !"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2862
    :cond_7
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    if-eqz v1, :cond_0

    .line 2865
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2869
    const/4 v0, 0x0

    .line 2870
    .local v0, "enable":Z
    sget v1, Lcom/smartisanos/launcher/data/Constants;->VOICE_ASSIT_BY_MENU:I

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TKeyEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_9

    sget v1, Lcom/smartisanos/launcher/data/Constants;->VOICE_ASSIT_BY_MENU:I

    if-eqz v1, :cond_9

    .line 2871
    :cond_8
    const/4 v0, 0x1

    .line 2874
    :cond_9
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TKeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v5, :cond_a

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->getLauncherActivity()Lcom/smartisanos/home/Launcher;

    move-result-object v1

    iget-boolean v1, v1, Lcom/smartisanos/home/Launcher;->isResumed:Z

    if-eqz v1, :cond_a

    .line 2875
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MainView;->handleMenuKey()V

    goto/16 :goto_0

    .line 2878
    :cond_a
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TKeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->getLauncherActivity()Lcom/smartisanos/home/Launcher;

    move-result-object v1

    iget-boolean v1, v1, Lcom/smartisanos/home/Launcher;->isResumed:Z

    if-eqz v1, :cond_0

    .line 2879
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MainView;->handleBackKey()V

    goto/16 :goto_0
.end method

.method public dispatchTouchEvent(Lcom/smartisanos/smengine/TMotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 2788
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/MainView;->mGotTouch:Z

    if-nez v1, :cond_1

    .line 2818
    :cond_0
    :goto_0
    return v0

    .line 2791
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    if-eqz v1, :cond_0

    .line 2796
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_8

    .line 2797
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/MainView;->mGotTouch:Z

    if-eqz v1, :cond_3

    .line 2798
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "### cancel previous uncompleted touch event###"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2799
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->forceCancelMotionEvent()V

    goto :goto_0

    .line 2802
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/StatusManager;->canHandleTouchDown()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2803
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/MainView;->mGotTouch:Z

    .line 2804
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "###got touch down failed due to status is wrong###"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2805
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/StatusManager;->dumpStatus()V

    goto :goto_0

    .line 2808
    :cond_5
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/MainView;->mIsTouchLocked:Z

    if-eqz v1, :cond_6

    iget-wide v2, p0, Lcom/smartisanos/launcher/view/MainView;->mTouchLockRequestedTime:J

    iget-wide v4, p0, Lcom/smartisanos/launcher/view/MainView;->mTouchLockTimeOut:J

    add-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_6

    .line 2809
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/MainView;->mGotTouch:Z

    goto :goto_0

    .line 2812
    :cond_6
    iput-boolean v6, p0, Lcom/smartisanos/launcher/view/MainView;->mGotTouch:Z

    .line 2813
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    const-string v2, "###got touch down success ###"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2818
    :cond_7
    :goto_1
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/DragLayer;->dispatchTouchEvent(Lcom/smartisanos/smengine/TMotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 2814
    :cond_8
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v1

    if-eq v1, v6, :cond_9

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    .line 2815
    :cond_9
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/MainView;->mGotTouch:Z

    .line 2816
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    const-string v2, "###got touch up or cancel success ###"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public dumpAllScene()V
    .locals 8

    .prologue
    .line 2727
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "### current statusManager.status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2729
    :cond_0
    iget-object v5, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v3

    .line 2730
    .local v3, "pageinpagelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    new-instance v4, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 2731
    .local v4, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 2732
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Page;

    .line 2733
    .local v1, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/Page;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 2734
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "### p in pagelist name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ##index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ##Page.pageIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2735
    :cond_1
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "-----------------------"

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2736
    :cond_2
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#### p.visible = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->isVisible()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2737
    :cond_3
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_4

    sget-object v5, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#### sceneNode.pos.x = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pos.y = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pos.z = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2738
    :cond_4
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_5

    sget-object v5, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "-----------------------"

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2731
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2741
    .end local v1    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_6
    iget-object v5, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getInvisiblePageList()Ljava/util/ArrayList;

    move-result-object v2

    .line 2742
    .local v2, "pageinInvisiblelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_c

    .line 2743
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Page;

    .line 2744
    .restart local v1    # "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/Page;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 2745
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_7

    sget-object v5, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "### p in InvisiblePagelist name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Page.pageIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2746
    :cond_7
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_8

    sget-object v5, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "-----------------------"

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2747
    :cond_8
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_9

    sget-object v5, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#### p.visible = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->isVisible()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2748
    :cond_9
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_a

    sget-object v5, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#### sceneNode.pos.x = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pos.y = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pos.z = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2749
    :cond_a
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_b

    sget-object v5, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "-----------------------"

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2742
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 2752
    .end local v1    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_c
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/smartisanos/launcher/view/MainView;->dumpAllSceneNode(Lcom/smartisanos/smengine/SceneNode;)V

    .line 2753
    return-void
.end method

.method public enableBatchPageLightEffect(FFF)V
    .locals 4
    .param p1, "lightDirInWorldSpaceX"    # F
    .param p2, "lightDirInWorldSpaceY"    # F
    .param p3, "lightDirInWorldSpaceZ"    # F

    .prologue
    .line 2969
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2970
    .local v0, "allpages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2971
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    .line 2972
    .local v2, "p":Lcom/smartisanos/launcher/view/Page;
    instance-of v3, v2, Lcom/smartisanos/launcher/view/WidgetPage;

    if-eqz v3, :cond_0

    .line 2970
    .end local v2    # "p":Lcom/smartisanos/launcher/view/Page;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2975
    .restart local v2    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    check-cast v2, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    .end local v2    # "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v2, p1, p2, p3}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->enableLightEffect(FFF)V

    goto :goto_1

    .line 2978
    :cond_1
    return-void
.end method

.method public forceCancelMotionEvent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2779
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getInputManager()Lcom/smartisanos/smengine/InputManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/InputManager;->removeTouchEventQueue()V

    .line 2780
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/MainView;->mGotTouch:Z

    if-eqz v1, :cond_0

    .line 2781
    const/4 v1, 0x3

    invoke-static {v1, v2, v2}, Lcom/smartisanos/smengine/TMotionEvent;->obtain(IFF)Lcom/smartisanos/smengine/TMotionEvent;

    move-result-object v0

    .line 2782
    .local v0, "tMotionEvent":Lcom/smartisanos/smengine/TMotionEvent;
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/DragLayer;->dispatchTouchEvent(Lcom/smartisanos/smengine/TMotionEvent;)Z

    .line 2783
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/MainView;->mGotTouch:Z

    .line 2785
    .end local v0    # "tMotionEvent":Lcom/smartisanos/smengine/TMotionEvent;
    :cond_0
    return-void
.end method

.method public forceFinishDismissAnimation()V
    .locals 2

    .prologue
    .line 2096
    new-instance v0, Lcom/smartisanos/launcher/view/MainView$12;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/view/MainView$12;-><init>(Lcom/smartisanos/launcher/view/MainView;I)V

    const/4 v1, 0x0

    .line 2109
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/MainView$12;->send(F)V

    .line 2110
    return-void
.end method

.method public forceHideCellClickShadow()V
    .locals 3

    .prologue
    .line 740
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mHideCellClickShadowRectAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mHideCellClickShadowRectAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 745
    :goto_0
    return-void

    .line 743
    :cond_0
    const/4 v0, 0x0

    const v1, 0x3dcccccd    # 0.1f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/smartisanos/launcher/view/MainView;->hideCellClickShadow(FFZ)V

    goto :goto_0
.end method

.method public frameAfterRender(F)V
    .locals 4
    .param p1, "deltaT"    # F

    .prologue
    const/4 v3, 0x0

    .line 1662
    iget-boolean v2, p0, Lcom/smartisanos/launcher/view/MainView;->DUMP_FPS:Z

    if-eqz v2, :cond_0

    .line 1663
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MainView;->drawMsPF()V

    .line 1664
    iget v2, p0, Lcom/smartisanos/launcher/view/MainView;->mMsPerFrame:I

    int-to-float v0, v2

    .line 1665
    .local v0, "msPerFrame":F
    iget v2, p0, Lcom/smartisanos/launcher/view/MainView;->mFrames:I

    if-nez v2, :cond_0

    .line 1666
    const/high16 v2, 0x447a0000    # 1000.0f

    div-float v1, v2, v0

    .line 1667
    .local v1, "t":F
    float-to-int v2, v1

    .line 1688
    .end local v0    # "msPerFrame":F
    .end local v1    # "t":F
    :cond_0
    iget-boolean v2, p0, Lcom/smartisanos/launcher/view/MainView;->DUMP_SCENE_FRAME_AFTER:Z

    if-eqz v2, :cond_1

    .line 1689
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->dumpAllScene()V

    .line 1691
    :cond_1
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/MainView;->DUMP_SCENE_FRAME_BEFORE:Z

    .line 1692
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/MainView;->DUMP_DB_FRAME_BEFORE:Z

    .line 1693
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/MainView;->DUMP_UI_FRAME_BEFORE:Z

    .line 1694
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/MainView;->DUMP_LAYER_FRAME_BEFORE:Z

    .line 1696
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/MainView;->DUMP_SCENE_FRAME_AFTER:Z

    .line 1697
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/MainView;->DUMP_DB_FRAME_AFTER:Z

    .line 1698
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/MainView;->DUMP_UI_FRAME_AFTER:Z

    .line 1699
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/MainView;->DUMP_LAYER_FRAME_AFTER:Z

    .line 1700
    return-void
.end method

.method public frameBeforeRender(F)V
    .locals 1
    .param p1, "deltaT"    # F

    .prologue
    .line 1647
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/MainView;->DUMP_SCENE_FRAME_BEFORE:Z

    if-eqz v0, :cond_0

    .line 1648
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->dumpAllScene()V

    .line 1650
    :cond_0
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/MainView;->DUMP_DB_FRAME_BEFORE:Z

    if-eqz v0, :cond_1

    .line 1653
    :cond_1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/MainView;->DUMP_LAYER_FRAME_BEFORE:Z

    if-eqz v0, :cond_2

    .line 1656
    :cond_2
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/MainView;->DUMP_UI_FRAME_BEFORE:Z

    if-eqz v0, :cond_3

    .line 1659
    :cond_3
    return-void
.end method

.method public generateBackgroundGaussianTexture()Lcom/smartisanos/smengine/RectNode;
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x40400000    # 3.0f

    const/high16 v10, 0x3f000000    # 0.5f

    .line 1626
    const-string v5, "gaussianback"

    sget v6, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v6, v6

    sget v7, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    .line 1628
    .local v1, "gaussianRect":Lcom/smartisanos/smengine/RectNode;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1629
    .local v3, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/16 v0, 0x14

    .line 1630
    .local v0, "blurSize":I
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1631
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v4

    .line 1632
    .local v4, "tm":Lcom/smartisanos/smengine/TextureManager;
    const-string v5, "t_blur_background"

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 1633
    const-string v5, "GaussianBlurEffectMaterial"

    invoke-static {v5, v0, v3}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;ILjava/util/ArrayList;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;

    .line 1635
    .local v2, "material":Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;
    const-string v5, "t_blur_background"

    invoke-virtual {v2, v12, v5}, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->setRenderTargetName(ILjava/lang/String;)V

    .line 1636
    const-string v5, "background.png"

    invoke-static {v5}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->setTargetTexture(Ljava/lang/String;)V

    .line 1637
    sget v5, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v5, v5

    mul-float/2addr v5, v10

    div-float/2addr v5, v11

    float-to-int v5, v5

    sget v6, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v6, v6

    mul-float/2addr v6, v10

    div-float/2addr v6, v11

    float-to-int v6, v6

    invoke-virtual {v2, v5, v6}, Lcom/smartisanos/smengine/mymaterial/GaussianBlurEffectMaterial;->setSize(II)V

    .line 1638
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 1639
    invoke-virtual {v1, v12}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 1640
    const v5, 0x461c3c00    # 9999.0f

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/RectNode;->setTranslateX(F)V

    .line 1641
    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 1642
    return-object v1
.end method

.method public getActiveIconCell(Ljava/lang/String;)Lcom/smartisanos/launcher/view/Cell;
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3102
    if-eqz p1, :cond_5

    .line 3103
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    if-eqz v8, :cond_2

    .line 3104
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v1

    .line 3105
    .local v1, "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    if-eqz v1, :cond_2

    .line 3106
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/Cell;

    .line 3107
    .local v7, "pc":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v7, :cond_0

    .line 3108
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Cell;->getActiveIconView()Lcom/smartisanos/launcher/view/ActiveIconView;

    move-result-object v3

    .line 3109
    .local v3, "iconView":Lcom/smartisanos/launcher/view/ActiveIconView;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/ActiveIconView;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3137
    .end local v1    # "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v3    # "iconView":Lcom/smartisanos/launcher/view/ActiveIconView;
    .end local v7    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    :goto_0
    return-object v7

    .line 3116
    :cond_2
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    if-eqz v8, :cond_5

    .line 3117
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/PageView;->getAllPages()Ljava/util/ArrayList;

    move-result-object v6

    .line 3118
    .local v6, "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_5

    .line 3119
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Page;

    .line 3120
    .local v5, "p":Lcom/smartisanos/launcher/view/Page;
    if-eqz v5, :cond_4

    .line 3121
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Page;->getChildCount()I

    move-result v8

    if-ge v4, v8, :cond_4

    .line 3122
    invoke-virtual {v5, v4}, Lcom/smartisanos/launcher/view/Page;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 3123
    .local v0, "c":Lcom/smartisanos/smengine/SceneNode;
    if-eqz v0, :cond_3

    .line 3124
    invoke-static {v0}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v7, v0

    .line 3125
    check-cast v7, Lcom/smartisanos/launcher/view/Cell;

    .line 3126
    .restart local v7    # "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Cell;->getActiveIconView()Lcom/smartisanos/launcher/view/ActiveIconView;

    move-result-object v3

    .line 3127
    .restart local v3    # "iconView":Lcom/smartisanos/launcher/view/ActiveIconView;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/ActiveIconView;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 3121
    .end local v3    # "iconView":Lcom/smartisanos/launcher/view/ActiveIconView;
    .end local v7    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3118
    .end local v0    # "c":Lcom/smartisanos/smengine/SceneNode;
    .end local v4    # "j":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3137
    .end local v2    # "i":I
    .end local v5    # "p":Lcom/smartisanos/launcher/view/Page;
    .end local v6    # "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    :cond_5
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public getActiveIconView(Ljava/lang/String;)Lcom/smartisanos/launcher/view/ActiveIconView;
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2610
    if-eqz p1, :cond_5

    .line 2611
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    if-eqz v8, :cond_2

    .line 2612
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v1

    .line 2613
    .local v1, "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    if-eqz v1, :cond_2

    .line 2614
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/Cell;

    .line 2615
    .local v7, "pc":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v7, :cond_0

    .line 2616
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Cell;->getActiveIconView()Lcom/smartisanos/launcher/view/ActiveIconView;

    move-result-object v3

    .line 2617
    .local v3, "iconView":Lcom/smartisanos/launcher/view/ActiveIconView;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/ActiveIconView;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2645
    .end local v1    # "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v3    # "iconView":Lcom/smartisanos/launcher/view/ActiveIconView;
    .end local v7    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    :goto_0
    return-object v3

    .line 2624
    :cond_2
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    if-eqz v8, :cond_5

    .line 2625
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/PageView;->getAllPages()Ljava/util/ArrayList;

    move-result-object v6

    .line 2626
    .local v6, "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_5

    .line 2627
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Page;

    .line 2628
    .local v5, "p":Lcom/smartisanos/launcher/view/Page;
    if-eqz v5, :cond_4

    .line 2629
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Page;->getChildCount()I

    move-result v8

    if-ge v4, v8, :cond_4

    .line 2630
    invoke-virtual {v5, v4}, Lcom/smartisanos/launcher/view/Page;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 2631
    .local v0, "c":Lcom/smartisanos/smengine/SceneNode;
    if-eqz v0, :cond_3

    .line 2632
    invoke-static {v0}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v7, v0

    .line 2633
    check-cast v7, Lcom/smartisanos/launcher/view/Cell;

    .line 2634
    .restart local v7    # "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Cell;->getActiveIconView()Lcom/smartisanos/launcher/view/ActiveIconView;

    move-result-object v3

    .line 2635
    .restart local v3    # "iconView":Lcom/smartisanos/launcher/view/ActiveIconView;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/ActiveIconView;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2629
    .end local v3    # "iconView":Lcom/smartisanos/launcher/view/ActiveIconView;
    .end local v7    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2626
    .end local v0    # "c":Lcom/smartisanos/smengine/SceneNode;
    .end local v4    # "j":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2645
    .end local v2    # "i":I
    .end local v5    # "p":Lcom/smartisanos/launcher/view/Page;
    .end local v6    # "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getAllCellsWorldTranslateMultiPageMode()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/math/Vector3f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mAllCellsWorldTranslateMultiPageMode:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAllCellsWorldTranslateSinglePageMode()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/math/Vector3f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mAllCellsWorldTranslateSinglePageMode:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBackground()Lcom/smartisanos/smengine/RectNode;
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method public getBackgroundUnlockAnim(Lcom/smartisanos/smengine/AnimationTimeLine;FF)V
    .locals 44
    .param p1, "timeline"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p2, "duration"    # F
    .param p3, "delay"    # F

    .prologue
    .line 1807
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/smartisanos/launcher/view/MainView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 1808
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/smartisanos/launcher/data/Utils;->getLockscreenWallpaper(Lcom/smartisanos/launcher/theme/Theme;)Landroid/graphics/Bitmap;

    move-result-object v30

    .line 1809
    .local v30, "bt":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/smartisanos/launcher/view/MainView;->mChangeThemeHandler:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->loadGaussianAnimBackTexture(Landroid/graphics/Bitmap;)V

    .line 1810
    sget v9, Lcom/smartisanos/launcher/data/Constants;->bgZ:I

    int-to-float v0, v9

    move/from16 v29, v0

    .line 1811
    .local v29, "bgZ":F
    sget v9, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v0, v9

    move/from16 v31, v0

    .line 1812
    .local v31, "cameraZ":F
    const/high16 v32, 0x3f800000    # 1.0f

    .line 1813
    .local v32, "factor":F
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneManager;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v39

    .line 1814
    .local v39, "rootNode":Lcom/smartisanos/smengine/SceneNode;
    const-string v9, "TextureModularColorMaterial"

    invoke-static {v9}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v36

    .line 1815
    .local v36, "mc":Lcom/smartisanos/smengine/mymaterial/Material;
    sget v9, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v9, v9

    const/high16 v10, 0x43480000    # 200.0f

    add-float v27, v9, v10

    .line 1816
    .local v27, "bgWidthScale":F
    sget v9, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v9, v9

    const/high16 v10, 0x43480000    # 200.0f

    add-float v23, v9, v10

    .line 1817
    .local v23, "bgHeightScale":F
    add-float v9, v29, v31

    mul-float v9, v9, v27

    div-float v28, v9, v31

    .line 1818
    .local v28, "bgWidthScaleCamera":F
    add-float v9, v29, v31

    mul-float v9, v9, v23

    div-float v24, v9, v31

    .line 1820
    .local v24, "bgHeightScaleCamera":F
    const-string v9, "backgroundscale"

    sget v10, Lcom/smartisanos/launcher/data/Constants;->bgZ:I

    neg-int v10, v10

    int-to-float v10, v10

    const/4 v11, 0x1

    move/from16 v0, v28

    move/from16 v1, v24

    invoke-static {v9, v0, v1, v10, v11}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v20

    .line 1822
    .local v20, "backgroundGaussianScale":Lcom/smartisanos/smengine/RectNode;
    const-string v9, "t_blur_anim_background"

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 1823
    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 1824
    move-object/from16 v0, v39

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1825
    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 1826
    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 1827
    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v9

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v11, -0x40000000    # -2.0f

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 1828
    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 1829
    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 1830
    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 1831
    const/4 v9, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 1832
    const/4 v9, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 1833
    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 1835
    sget v9, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v0, v9

    move/from16 v25, v0

    .line 1836
    .local v25, "bgWidthCover":F
    sget v9, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v0, v9

    move/from16 v21, v0

    .line 1837
    .local v21, "bgHeightCover":F
    add-float v9, v29, v31

    mul-float v9, v9, v25

    div-float v26, v9, v31

    .line 1838
    .local v26, "bgWidthCoverCamera":F
    add-float v9, v29, v31

    mul-float v9, v9, v21

    div-float v22, v9, v31

    .line 1840
    .local v22, "bgHeightCoverCamera":F
    const-string v9, "backgroundcover"

    sget v10, Lcom/smartisanos/launcher/data/Constants;->bgZ:I

    neg-int v10, v10

    int-to-float v10, v10

    const/4 v11, 0x1

    move/from16 v0, v26

    move/from16 v1, v22

    invoke-static {v9, v0, v1, v10, v11}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v19

    .line 1842
    .local v19, "backgroundGaussianCover":Lcom/smartisanos/smengine/RectNode;
    const-string v9, "TextureModularColorMaterial"

    invoke-static {v9}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v37

    .line 1843
    .local v37, "mc1":Lcom/smartisanos/smengine/mymaterial/Material;
    const-string v9, "t_blur_background"

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 1844
    move-object/from16 v0, v19

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 1845
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v10, v11, v12}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 1846
    move-object/from16 v0, v39

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1847
    const/4 v9, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 1848
    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 1849
    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v9

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v11, -0x40000000    # -2.0f

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 1850
    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 1851
    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 1852
    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 1853
    const/4 v9, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 1854
    const/4 v9, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 1855
    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 1858
    const-string v9, "backgroundForGaussianThemeUnlock"

    sget v10, Lcom/smartisanos/launcher/data/Constants;->bgZ:I

    neg-int v10, v10

    int-to-float v10, v10

    const/4 v11, 0x1

    move/from16 v0, v26

    move/from16 v1, v22

    invoke-static {v9, v0, v1, v10, v11}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v18

    .line 1860
    .local v18, "backgroundForGaussianThemeUnlock":Lcom/smartisanos/smengine/RectNode;
    const-string v9, "TextureModularColorMaterial"

    invoke-static {v9}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v35

    .line 1861
    .local v35, "mForUnlockGaussianbackground":Lcom/smartisanos/smengine/mymaterial/Material;
    const-string v9, "t_blur_background"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 1862
    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 1863
    const v9, 0x3e4ccccd    # 0.2f

    const v10, 0x3e4ccccd    # 0.2f

    const v11, 0x3e4ccccd    # 0.2f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10, v11, v12}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 1864
    move-object/from16 v0, v39

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1865
    const/4 v9, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 1866
    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 1867
    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v9

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v11, -0x40000000    # -2.0f

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 1868
    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 1869
    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 1870
    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 1871
    const/4 v9, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 1872
    const/4 v9, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 1873
    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 1875
    new-instance v41, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct/range {v41 .. v41}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 1878
    .local v41, "timel":Lcom/smartisanos/smengine/AnimationTimeLine;
    const v40, 0x3f4ccccd    # 0.8f

    .line 1879
    .local v40, "scaleF":F
    new-instance v33, Lcom/smartisanos/smengine/math/Vector4f;

    const v9, 0x3d4ccccd    # 0.05f

    const v10, 0x3d4ccccd    # 0.05f

    const v11, 0x3d4ccccd    # 0.05f

    const v12, 0x3d4ccccd    # 0.05f

    move-object/from16 v0, v33

    invoke-direct {v0, v9, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    .line 1880
    .local v33, "fromC":Lcom/smartisanos/smengine/math/Vector4f;
    new-instance v42, Lcom/smartisanos/smengine/math/Vector4f;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, v42

    invoke-direct {v0, v9, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    .line 1881
    .local v42, "toC":Lcom/smartisanos/smengine/math/Vector4f;
    new-instance v34, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v0, v34

    invoke-direct {v0, v9, v10, v11}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 1882
    .local v34, "fromS":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v43, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v9, v9, v40

    const/high16 v10, 0x3f800000    # 1.0f

    div-float v10, v10, v40

    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v0, v43

    invoke-direct {v0, v9, v10, v11}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 1883
    .local v43, "toS":Lcom/smartisanos/smengine/math/Vector3f;
    const v9, 0x3e99999a    # 0.3f

    const v10, 0x3e99999a    # 0.3f

    const v11, 0x3e99999a    # 0.3f

    const v12, 0x3e99999a    # 0.3f

    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v10, v11, v12}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 1884
    const/4 v9, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 1885
    mul-float v9, v40, v28

    mul-float v9, v9, v32

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    mul-float v10, v40, v24

    mul-float v10, v10, v32

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v10, v11}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 1886
    mul-float v9, v40, v26

    mul-float v9, v9, v32

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    mul-float v10, v40, v22

    mul-float v10, v10, v32

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v10, v11}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 1887
    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 1888
    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 1889
    const/16 v38, 0xe

    .line 1890
    .local v38, "qu":I
    new-instance v4, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1891
    .local v4, "colorAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v9, 0x3f19999a    # 0.6f

    mul-float v9, v9, p2

    invoke-virtual {v4, v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 1892
    move/from16 v0, v38

    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 1893
    const/4 v5, 0x3

    const v6, 0x3e99999a    # 0.3f

    const v7, 0x3e99999a    # 0.3f

    const v8, 0x3e99999a    # 0.3f

    const v9, 0x3e99999a    # 0.3f

    move-object/from16 v0, v42

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, v42

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, v42

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move-object/from16 v0, v42

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual/range {v4 .. v13}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 1895
    const/4 v9, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v9, v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1897
    new-instance v5, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1898
    .local v5, "scaleAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 1899
    move/from16 v0, v38

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 1900
    const/4 v6, 0x1

    move-object/from16 v0, v34

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v34

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v34

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v43

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v43

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v43

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v5 .. v12}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 1901
    const/4 v9, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v9, v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1903
    new-instance v6, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1904
    .local v6, "scaleAnimCover":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 1905
    const/16 v9, 0xe

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 1906
    const/4 v7, 0x1

    move-object/from16 v0, v34

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v34

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v34

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v43

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v43

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v43

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v6 .. v13}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 1907
    const/4 v9, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v9, v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1910
    new-instance v7, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1911
    .local v7, "colorAnimBG":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v8, 0x3

    const v9, 0x3e4ccccd    # 0.2f

    const v10, 0x3e4ccccd    # 0.2f

    const v11, 0x3e4ccccd    # 0.2f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, v42

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, v42

    iget v14, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, v42

    iget v15, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move-object/from16 v0, v42

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    move/from16 v16, v0

    invoke-virtual/range {v7 .. v16}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 1913
    const v9, 0x3f4ccccd    # 0.8f

    mul-float v9, v9, p2

    invoke-virtual {v7, v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 1914
    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v7}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1917
    new-instance v8, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1918
    .local v8, "colorAnimCover":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v9, 0x3

    move-object/from16 v0, v33

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, v33

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, v33

    iget v12, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move-object/from16 v0, v33

    iget v13, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    move-object/from16 v0, v42

    iget v14, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    move-object/from16 v0, v42

    iget v15, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    move-object/from16 v0, v42

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    move/from16 v16, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    move/from16 v17, v0

    invoke-virtual/range {v8 .. v17}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 1920
    const v9, 0x3f19999a    # 0.6f

    mul-float v9, v9, p2

    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 1921
    new-instance v9, Lcom/smartisanos/launcher/view/MainView$9;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v9, v0, v1}, Lcom/smartisanos/launcher/view/MainView$9;-><init>(Lcom/smartisanos/launcher/view/MainView;Lcom/smartisanos/smengine/RectNode;)V

    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 1926
    const v9, 0x3f19999a    # 0.6f

    mul-float v9, v9, p2

    move-object/from16 v0, v41

    invoke-virtual {v0, v9, v8}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1927
    new-instance v9, Lcom/smartisanos/launcher/view/MainView$10;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    move-object/from16 v3, v18

    invoke-direct {v9, v0, v1, v2, v3}, Lcom/smartisanos/launcher/view/MainView$10;-><init>(Lcom/smartisanos/launcher/view/MainView;Lcom/smartisanos/smengine/RectNode;Lcom/smartisanos/smengine/RectNode;Lcom/smartisanos/smengine/RectNode;)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v9}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 1950
    move-object/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1951
    return-void
.end method

.method public getCellBackMesh()Lcom/smartisanos/smengine/Mesh;
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mCellBackgroundBackupMesh:Lcom/smartisanos/smengine/Mesh;

    return-object v0
.end method

.method public getCellById(J)Lcom/smartisanos/launcher/view/Cell;
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 1708
    const/4 v0, 0x0

    .line 1709
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    if-eqz v1, :cond_0

    .line 1710
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v1, p1, p2}, Lcom/smartisanos/launcher/view/PageView;->getPageCellById(J)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    .line 1712
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    if-eqz v1, :cond_1

    .line 1713
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v1, p1, p2}, Lcom/smartisanos/launcher/view/DockView;->getDockCellById(J)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    .line 1715
    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method public getDockView()Lcom/smartisanos/launcher/view/DockView;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    return-object v0
.end method

.method public getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mFloatPageNode:Lcom/smartisanos/launcher/view/FloatPageNode;

    return-object v0
.end method

.method public getFolderPageView()Lcom/smartisanos/launcher/view/FolderPageView;
    .locals 1

    .prologue
    .line 3154
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mFolderPageView:Lcom/smartisanos/launcher/view/FolderPageView;

    return-object v0
.end method

.method public getFrameDeltaTime()F
    .locals 1

    .prologue
    .line 547
    iget v0, p0, Lcom/smartisanos/launcher/view/MainView;->mFrameDeltaTime:F

    return v0
.end method

.method public getIsLoadingConfig()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/MainView;->isLoadingConfig:Z

    return v0
.end method

.method public getLauncherActivity()Lcom/smartisanos/home/Launcher;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mContext:Landroid/app/Activity;

    check-cast v0, Lcom/smartisanos/home/Launcher;

    return-object v0
.end method

.method public getLauncherApplication()Lcom/smartisanos/launcher/LauncherApplication;
    .locals 1

    .prologue
    .line 324
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v0

    return-object v0
.end method

.method public getPageCellById(J)Lcom/smartisanos/launcher/view/Cell;
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    move-object v1, v0

    .line 465
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .local v1, "cell":Lcom/smartisanos/launcher/view/Cell;
    :goto_0
    return-object v1

    .line 461
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .restart local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v2, p1, p2}, Lcom/smartisanos/launcher/view/PageView;->getPageCellById(J)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    .line 462
    if-nez v0, :cond_1

    .line 463
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/smartisanos/launcher/view/DockView;->getDockCellById(J)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 465
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .restart local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    goto :goto_0
.end method

.method public getPageInitFinishStatus()Z
    .locals 2

    .prologue
    .line 469
    iget v0, p0, Lcom/smartisanos/launcher/view/MainView;->mStatusFlag:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPageView()Lcom/smartisanos/launcher/view/PageView;
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mFolderPageView:Lcom/smartisanos/launcher/view/FolderPageView;

    if-eqz v0, :cond_0

    .line 446
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mFolderPageView:Lcom/smartisanos/launcher/view/FolderPageView;

    .line 449
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    goto :goto_0
.end method

.method public getPostEffectRect()Lcom/smartisanos/smengine/RectNode;
    .locals 1

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mPostEffectRect:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method public getScreenXYForFastUp()Lcom/smartisanos/smengine/math/Vector2f;
    .locals 1

    .prologue
    .line 2960
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mScreenXYForFastUp:Lcom/smartisanos/smengine/math/Vector2f;

    return-object v0
.end method

.method public getScrollCamera(II)Lcom/smartisanos/smengine/Camera;
    .locals 22
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 512
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/MainView;->mScrollCamera:Lcom/smartisanos/smengine/Camera;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smartisanos/launcher/view/MainView;->mScrollCameraW:I

    move/from16 v0, p1

    if-ne v4, v0, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/smartisanos/launcher/view/MainView;->mScrollCameraH:I

    move/from16 v0, p2

    if-eq v4, v0, :cond_1

    .line 513
    :cond_0
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/launcher/view/MainView;->mScrollCameraW:I

    .line 514
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/launcher/view/MainView;->mScrollCameraH:I

    .line 515
    new-instance v4, Lcom/smartisanos/smengine/Camera;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v4, v0, v1}, Lcom/smartisanos/smengine/Camera;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/smartisanos/launcher/view/MainView;->mScrollCamera:Lcom/smartisanos/smengine/Camera;

    .line 516
    sget v4, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v12, v4

    .line 517
    .local v12, "distance":F
    sget v4, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/view/MainView;->mScrollCameraW:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    mul-float v19, v19, v20

    sub-float v5, v4, v19

    .line 518
    .local v5, "near":F
    sget v4, Lcom/smartisanos/launcher/data/Constants;->mainCameraFar:I

    int-to-float v6, v4

    .line 519
    .local v6, "far":F
    sget v4, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v14

    .line 520
    .local v14, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v0, v14, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    move/from16 v16, v0

    .line 521
    .local v16, "pageHeight":F
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v4, v4, v16

    sget v19, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v4, v4, v19

    iget v0, v14, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    move/from16 v19, v0

    add-float v18, v4, v19

    .line 522
    .local v18, "topLen":F
    mul-float v4, v18, v5

    div-float v9, v4, v12

    .line 523
    .local v9, "top":F
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v4, v4, v16

    iget v0, v14, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    move/from16 v19, v0

    add-float v4, v4, v19

    iget v0, v14, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_bottom:F

    move/from16 v19, v0

    add-float v11, v4, v19

    .line 524
    .local v11, "bottomLen":F
    neg-float v4, v11

    mul-float/2addr v4, v5

    div-float v10, v4, v12

    .line 525
    .local v10, "bottom":F
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v4, v4, v19

    div-float v13, v4, v12

    .line 526
    .local v13, "k":F
    neg-float v7, v13

    .line 527
    .local v7, "left":F
    move v8, v13

    .line 528
    .local v8, "right":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/MainView;->mScrollCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual/range {v4 .. v10}, Lcom/smartisanos/smengine/Camera;->setFrustum(FFFFFF)V

    .line 530
    new-instance v15, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {v15}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    .line 531
    .local v15, "p":Lcom/smartisanos/smengine/math/Vector2f;
    const/4 v4, 0x0

    sget v19, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sget v20, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v4, v0, v1, v2, v15}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;

    .line 532
    invoke-virtual {v15}, Lcom/smartisanos/smengine/math/Vector2f;->getY()F

    move-result v17

    .line 533
    .local v17, "pageY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/MainView;->mScrollCamera:Lcom/smartisanos/smengine/Camera;

    new-instance v19, Lcom/smartisanos/smengine/math/Vector3f;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v12}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/Camera;->setLocation(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 534
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/MainView;->mScrollCamera:Lcom/smartisanos/smengine/Camera;

    new-instance v19, Lcom/smartisanos/smengine/math/Vector3f;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v17

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    sget-object v20, Lcom/smartisanos/smengine/math/Vector3f;->UNIT_Y:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Lcom/smartisanos/smengine/Camera;->lookAt(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 536
    .end local v5    # "near":F
    .end local v6    # "far":F
    .end local v7    # "left":F
    .end local v8    # "right":F
    .end local v9    # "top":F
    .end local v10    # "bottom":F
    .end local v11    # "bottomLen":F
    .end local v12    # "distance":F
    .end local v13    # "k":F
    .end local v14    # "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v15    # "p":Lcom/smartisanos/smengine/math/Vector2f;
    .end local v16    # "pageHeight":F
    .end local v17    # "pageY":F
    .end local v18    # "topLen":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/MainView;->mScrollCamera:Lcom/smartisanos/smengine/Camera;

    return-object v4
.end method

.method public getStatusBar()Lcom/smartisanos/launcher/view/StatusBar;
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mStatusBar:Lcom/smartisanos/launcher/view/StatusBar;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "string_id"    # I

    .prologue
    .line 795
    const/4 v0, 0x0

    .line 796
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mContext:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 797
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 799
    :cond_0
    return-object v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 5
    .param p1, "string_id"    # I
    .param p2, "num"    # I

    .prologue
    .line 803
    const/4 v0, 0x0

    .line 804
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mContext:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 805
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mContext:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 807
    :cond_0
    return-object v0
.end method

.method public handleNotification(Ljava/lang/String;Lcom/smartisanos/smengine/Notification;)V
    .locals 3
    .param p1, "notificationName"    # Ljava/lang/String;
    .param p2, "notification"    # Lcom/smartisanos/smengine/Notification;

    .prologue
    .line 155
    const-string v2, "CoverPageClicked"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/PageView;->mSwitchPageNode:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/SwitchPageNode;->isSwitchPageAnimationFinish()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/PageView;->mSwitchPageNode:Lcom/smartisanos/launcher/view/SwitchPageNode;

    .line 157
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/SwitchPageNode;->isPageBackToCenterAnimationFinish()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/MainView;->mFloatPageNode:Lcom/smartisanos/launcher/view/FloatPageNode;

    if-nez v2, :cond_0

    .line 159
    invoke-virtual {p2}, Lcom/smartisanos/smengine/Notification;->getData()Ljava/util/ArrayList;

    move-result-object v0

    .line 160
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 161
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Page;

    .line 162
    .local v1, "floatPage":Lcom/smartisanos/launcher/view/Page;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/MainView;->showFloatPageNode(Lcom/smartisanos/launcher/view/Page;)V

    .line 168
    .end local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v1    # "floatPage":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    return-void
.end method

.method public hideBackground()V
    .locals 2

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 1029
    :cond_0
    return-void
.end method

.method public hideCellClickShadow()V
    .locals 2

    .prologue
    .line 696
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mClickCell:Lcom/smartisanos/launcher/view/Cell;

    if-eqz v1, :cond_0

    .line 697
    new-instance v0, Lcom/smartisanos/launcher/view/MainView$4;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/view/MainView$4;-><init>(Lcom/smartisanos/launcher/view/MainView;I)V

    .line 703
    .local v0, "e":Lcom/smartisanos/smengine/Event;
    const-string v1, "hideCell"

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Event;->setName(Ljava/lang/String;)V

    .line 704
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Event;->send(F)V

    .line 706
    .end local v0    # "e":Lcom/smartisanos/smengine/Event;
    :cond_0
    return-void
.end method

.method public hideFloatPageNode()V
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mFloatPageNode:Lcom/smartisanos/launcher/view/FloatPageNode;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mFloatPageNode:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/FloatPageNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 586
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mFloatPageNode:Lcom/smartisanos/launcher/view/FloatPageNode;

    .line 588
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->sendInvisiblePageIntent()V

    .line 589
    return-void
.end method

.method public hideStatusBar()V
    .locals 2

    .prologue
    .line 421
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/Launcher;->restoreAnimationScale(I)V

    .line 422
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/smartisanos/launcher/view/MainView$2;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/MainView$2;-><init>(Lcom/smartisanos/launcher/view/MainView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 430
    return-void
.end method

.method public hideStatusBarText(Lcom/smartisanos/smengine/AnimationTimeLine;F)V
    .locals 1
    .param p1, "timeline"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p2, "duration"    # F

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mStatusBar:Lcom/smartisanos/launcher/view/StatusBar;

    invoke-virtual {v0, p1, p2}, Lcom/smartisanos/launcher/view/StatusBar;->hideStatusBarText(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    .line 1313
    return-void
.end method

.method public hideStatusBarWithoutAnim()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/smartisanos/launcher/view/MainView$1;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/MainView$1;-><init>(Lcom/smartisanos/launcher/view/MainView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 418
    return-void
.end method

.method public isEditMode()Z
    .locals 2

    .prologue
    .line 1799
    const/4 v0, 0x0

    .line 1800
    .local v0, "isEdit":Z
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getSettingButton()Lcom/smartisanos/launcher/view/SettingButton;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1801
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getSettingButton()Lcom/smartisanos/launcher/view/SettingButton;

    move-result-object v1

    iget-boolean v0, v1, Lcom/smartisanos/launcher/view/SettingButton;->buttonAlreadyDown:Z

    .line 1803
    :cond_0
    return v0
.end method

.method public isInHoverMode()Z
    .locals 1

    .prologue
    .line 2191
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/MainView;->longPressAndPointerMove:Z

    return v0
.end method

.method public isVerifyPassword()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/MainView;->mHasVerifyPassword:Z

    return v0
.end method

.method public isVerifyPasswordRunning()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/MainView;->isVerifyPasswordRunning:Z

    return v0
.end method

.method public isViewAvailable()Z
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    if-nez v0, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 300
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadPage()V
    .locals 15

    .prologue
    .line 1530
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MainView;->isMainViewCreateOK()Z

    move-result v12

    if-nez v12, :cond_1

    .line 1623
    :cond_0
    :goto_0
    return-void

    .line 1533
    :cond_1
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 1534
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v12

    iget-boolean v12, v12, Lcom/smartisanos/home/Launcher;->DATA_INIT_RUNNING:Z

    if-nez v12, :cond_0

    .line 1541
    iget-object v12, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    if-nez v12, :cond_0

    .line 1544
    new-instance v12, Lcom/smartisanos/launcher/view/PageView;

    const-string v13, "PageView"

    invoke-direct {v12, v13}, Lcom/smartisanos/launcher/view/PageView;-><init>(Ljava/lang/String;)V

    iput-object v12, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    .line 1545
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MainView;->createStatusBar()V

    .line 1546
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MainView;->createBg()V

    .line 1548
    sget-boolean v12, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v12, :cond_2

    sget-object v12, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v13, "unlock all package !"

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 1549
    :cond_2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1550
    .local v11, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/smartisanos/launcher/LauncherModel;->getItemMap()Ljava/util/HashMap;

    move-result-object v9

    .line 1551
    .local v9, "itemMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1552
    .local v7, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 1553
    .local v6, "id":Ljava/lang/Long;
    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1554
    .local v8, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v8, :cond_3

    iget-object v13, v8, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    if-eqz v13, :cond_3

    .line 1555
    iget-object v13, v8, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v11, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 1556
    iget-object v13, v8, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1538
    .end local v6    # "id":Ljava/lang/Long;
    .end local v7    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v8    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v9    # "itemMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v11    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    sget-object v12, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v13, "DEBUG"

    const-string v14, "loadPage return by Launcher is null"

    invoke-virtual {v12, v13, v14}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1560
    .restart local v7    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v9    # "itemMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .restart local v11    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v11}, Lcom/smartisanos/home/Launcher;->setPackageLockStatus(ZLjava/util/List;)V

    .line 1562
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->createPages()V

    .line 1563
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MainView;->createDock()V

    .line 1564
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MainView;->createPostEffectNode()V

    .line 1565
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/smartisanos/launcher/view/MainView;->setPageInitFinish(Z)V

    .line 1566
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v12

    iget-object v13, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/view/DragLayer;->setScrollPage(Lcom/smartisanos/launcher/view/PageView;)V

    .line 1567
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v12

    iget-object v13, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/view/DragLayer;->setDockPage(Lcom/smartisanos/launcher/view/DockView;)V

    .line 1570
    iget-object v12, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/PageView;->forceUpdateGeometricState()V

    .line 1576
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v2

    .line 1577
    .local v2, "cm":Lcom/smartisanos/smengine/CameraManager;
    invoke-virtual {v2}, Lcom/smartisanos/smengine/CameraManager;->getCurrentCamera()Lcom/smartisanos/smengine/Camera;

    move-result-object v3

    .line 1579
    .local v3, "currentCamera":Lcom/smartisanos/smengine/Camera;
    sget-boolean v12, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v12, :cond_6

    .line 1581
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->generateBackgroundGaussianTexture()Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    .line 1582
    .local v4, "gaussianRect":Lcom/smartisanos/smengine/RectNode;
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Lcom/smartisanos/smengine/RectNode;->setSceneNodeForceRender(Z)V

    .line 1583
    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/RectNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 1584
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lcom/smartisanos/smengine/RectNode;->setSceneNodeForceRender(Z)V

    .line 1585
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 1586
    new-instance v12, Lcom/smartisanos/launcher/view/MainView$8;

    const/16 v13, 0x64

    invoke-direct {v12, p0, v13, v4}, Lcom/smartisanos/launcher/view/MainView$8;-><init>(Lcom/smartisanos/launcher/view/MainView;ILcom/smartisanos/smengine/RectNode;)V

    const/4 v13, 0x0

    .line 1597
    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/view/MainView$8;->send(F)V

    .line 1600
    .end local v4    # "gaussianRect":Lcom/smartisanos/smengine/RectNode;
    :cond_6
    iget-object v12, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1601
    .local v1, "allpage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_7

    .line 1602
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/Page;

    .line 1603
    .local v10, "p":Lcom/smartisanos/launcher/view/Page;
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/smartisanos/launcher/view/Page;->setSceneNodeForceRender(Z)V

    .line 1604
    invoke-virtual {v10, v3}, Lcom/smartisanos/launcher/view/Page;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 1605
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/smartisanos/launcher/view/Page;->setSceneNodeForceRender(Z)V

    .line 1601
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1609
    .end local v10    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_7
    iget-object v12, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/PageView;->getAllInvisiblePageList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1610
    .local v0, "allInvisiblePages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_8

    .line 1611
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/Page;

    .line 1612
    .restart local v10    # "p":Lcom/smartisanos/launcher/view/Page;
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/smartisanos/launcher/view/Page;->setSceneNodeForceRender(Z)V

    .line 1613
    invoke-virtual {v10, v3}, Lcom/smartisanos/launcher/view/Page;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 1614
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/smartisanos/launcher/view/Page;->setSceneNodeForceRender(Z)V

    .line 1610
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1619
    .end local v10    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_8
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MainView;->generateScreenCorner()V

    .line 1621
    invoke-static {}, Lcom/smartisanos/launcher/LauncherTracker;->getInstance()Lcom/smartisanos/launcher/LauncherTracker;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/LauncherTracker;->flushAllStatusWhenAppStart()V

    goto/16 :goto_0
.end method

.method public lockHardKey()V
    .locals 3

    .prologue
    .line 1756
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "A140"

    const-string v2, " hard key lock"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/MainView;->mIsHardKeyLocked:Z

    .line 1759
    return-void
.end method

.method public lockTouchEvent()V
    .locals 4

    .prologue
    .line 1732
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "A140"

    const-string v2, " touch key lock"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    :cond_0
    const/4 v0, 0x1

    const-wide/16 v2, 0x7530

    invoke-virtual {p0, v0, v2, v3}, Lcom/smartisanos/launcher/view/MainView;->requestLockTouch(ZJ)V

    .line 1734
    return-void
.end method

.method public lockTouchEventForOneSecond()V
    .locals 4

    .prologue
    .line 1722
    const/4 v0, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/smartisanos/launcher/view/MainView;->requestLockTouch(ZJ)V

    .line 1723
    return-void
.end method

.method public onCloseFolder()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3158
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mFolderPageView:Lcom/smartisanos/launcher/view/FolderPageView;

    if-eqz v0, :cond_0

    .line 3159
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mFolderPageView:Lcom/smartisanos/launcher/view/FolderPageView;

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/FolderPageView;->setVisibility(Z)V

    .line 3160
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mFolderPageView:Lcom/smartisanos/launcher/view/FolderPageView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/FolderPageView;->onClose()V

    .line 3161
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mFolderPageView:Lcom/smartisanos/launcher/view/FolderPageView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/FolderPageView;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 3162
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mFolderPageView:Lcom/smartisanos/launcher/view/FolderPageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/FolderPageView;->clear(Z)V

    .line 3164
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mFolderPageView:Lcom/smartisanos/launcher/view/FolderPageView;

    .line 3166
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/PageView;->setObserver(Lcom/smartisanos/launcher/view/PageView;Lcom/smartisanos/launcher/view/AnimationController;)V

    .line 3167
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/DragLayer;->setScrollPage(Lcom/smartisanos/launcher/view/PageView;)V

    .line 3168
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->updateGeometricState()V

    .line 3169
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 3170
    return-void
.end method

.method public onOpenFolder(Lcom/smartisanos/launcher/view/FolderPageView;)V
    .locals 4
    .param p1, "view"    # Lcom/smartisanos/launcher/view/FolderPageView;

    .prologue
    .line 3141
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mFolderPageView:Lcom/smartisanos/launcher/view/FolderPageView;

    if-eqz v1, :cond_0

    .line 3142
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Folder exist, can not open another one!!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3145
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MainView;->mFolderPageView:Lcom/smartisanos/launcher/view/FolderPageView;

    .line 3146
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/MainView;->mFolderPageView:Lcom/smartisanos/launcher/view/FolderPageView;

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/DragLayer;->setScrollPage(Lcom/smartisanos/launcher/view/PageView;)V

    .line 3147
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneManager;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 3148
    .local v0, "root":Lcom/smartisanos/smengine/SceneNode;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mFolderPageView:Lcom/smartisanos/launcher/view/FolderPageView;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 3149
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mFolderPageView:Lcom/smartisanos/launcher/view/FolderPageView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/FolderPageView;->updateGeometricState()V

    .line 3150
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v1

    const/high16 v2, 0x1000000

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 3151
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->getDotView()Lcom/smartisanos/launcher/view/DotView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->getDotView()Lcom/smartisanos/launcher/view/DotView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/DotView;->setVisibility(Z)V

    .line 344
    :cond_0
    return-void
.end method

.method public onRemove(Ljava/lang/String;)V
    .locals 0
    .param p1, "notificationName"    # Ljava/lang/String;

    .prologue
    .line 184
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/MainView;->setEnableDraw(Z)V

    .line 354
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 355
    return-void
.end method

.method public onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;F)V
    .locals 14
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;
    .param p2, "deltaT"    # F

    .prologue
    .line 2329
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mTmpVec31:Lcom/smartisanos/smengine/math/Vector3f;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 2330
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mTmpVec32:Lcom/smartisanos/smengine/math/Vector3f;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 2331
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getX()F

    move-result v8

    .line 2332
    .local v8, "x":F
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getY()F

    move-result v9

    .line 2333
    .local v9, "y":F
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 2334
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mNotificationManager:Lcom/smartisanos/smengine/NotificationManager;

    if-nez v10, :cond_0

    .line 2335
    invoke-static {}, Lcom/smartisanos/smengine/NotificationManager;->getCurrentNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v10

    iput-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mNotificationManager:Lcom/smartisanos/smengine/NotificationManager;

    .line 2338
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getType()I

    move-result v1

    .line 2339
    .local v1, "eventType":I
    const/16 v10, 0xe

    if-eq v1, v10, :cond_1

    const/16 v10, 0xf

    if-ne v1, v10, :cond_3

    .line 2340
    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/smartisanos/launcher/view/MainView;->handleKey(Lcom/smartisanos/smengine/TouchEvent;F)V

    .line 2606
    :cond_2
    :goto_0
    return-void

    .line 2345
    :cond_3
    const/16 v10, 0xc

    if-eq v1, v10, :cond_4

    const/4 v10, 0x3

    if-eq v1, v10, :cond_4

    .line 2346
    iget-boolean v10, p0, Lcom/smartisanos/launcher/view/MainView;->mIsTouchLocked:Z

    if-eqz v10, :cond_4

    .line 2347
    sget-boolean v10, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v10, :cond_2

    sget-object v10, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "mIsTouchLocked is true"

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 2354
    :cond_4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MainView;->mTmpVec31:Lcom/smartisanos/smengine/math/Vector3f;

    .line 2355
    .local v2, "newP":Lcom/smartisanos/smengine/math/Vector3f;
    sget v10, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v10, v10

    sget v11, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v11, v11

    invoke-static {v8, v9, v10, v11, v2}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftBottomPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 2356
    iget v10, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v11, v2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-virtual {p1, v10, v11}, Lcom/smartisanos/smengine/TouchEvent;->setWorldCoordinate(FF)V

    .line 2357
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getPointerNum()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_5

    .line 2358
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MainView;->mTmpVec32:Lcom/smartisanos/smengine/math/Vector3f;

    .line 2359
    .local v3, "newP2":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getX1()F

    move-result v10

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getY1()F

    move-result v11

    sget v12, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v12, v12

    sget v13, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v13, v13

    invoke-static {v10, v11, v12, v13, v3}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftBottomPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 2360
    iget v10, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v11, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-virtual {p1, v10, v11}, Lcom/smartisanos/smengine/TouchEvent;->setWorldCoordinate1(FF)V

    .line 2363
    .end local v3    # "newP2":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_5
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    if-eqz v10, :cond_2

    .line 2366
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getType()I

    move-result v10

    const/16 v11, 0x10

    if-ne v10, v11, :cond_7

    .line 2367
    sget-boolean v10, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v10, :cond_6

    sget-object v10, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "DEBUG"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "## start sweep : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-boolean v13, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SWEEP_MESSAGE_FLAG:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-boolean v13, Lcom/smartisanos/launcher/data/Constants;->SHOW_MESSAGE_FLAG:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2368
    :cond_6
    sget v10, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v11, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v10, v11, :cond_2

    sget-boolean v10, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SWEEP_MESSAGE_FLAG:Z

    if-eqz v10, :cond_2

    sget-boolean v10, Lcom/smartisanos/launcher/data/Constants;->SHOW_MESSAGE_FLAG:Z

    if-eqz v10, :cond_2

    .line 2371
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->playCellFlagDismissAnimation()V

    goto/16 :goto_0

    .line 2382
    :cond_7
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_8

    .line 2390
    :cond_8
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getType()I

    move-result v10

    const/16 v11, 0xb

    if-ne v10, v11, :cond_c

    .line 2391
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v10

    if-nez v10, :cond_c

    .line 2392
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v10

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v10

    if-nez v10, :cond_c

    .line 2393
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->canIntoHoverMode()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 2394
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getPointerId()I

    move-result v4

    .line 2395
    .local v4, "pointId":I
    const/4 v10, 0x1

    if-ne v4, v10, :cond_c

    .line 2396
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v10

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/DockView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v10

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-boolean v10, v10, Lcom/smartisanos/launcher/view/PageView;->mIsInMultiSelectMode:Z

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-boolean v10, v10, Lcom/smartisanos/launcher/view/PageView;->mIsInPageSwitchMode:Z

    if-eqz v10, :cond_2

    .line 2399
    :cond_9
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 2401
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->forceFinishCellLongPressAnimation()V

    .line 2404
    :cond_a
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/DockView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 2406
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/DockView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->forceFinishCellLongPressAnimation()V

    .line 2409
    :cond_b
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/smartisanos/launcher/view/MainView;->longPressAndPointerMove:Z

    .line 2416
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 2417
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v10

    iget-object v11, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/view/Cell;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 2424
    .end local v4    # "pointId":I
    :cond_c
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 2425
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v10

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v10

    if-nez v10, :cond_d

    .line 2427
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mFloatPageNode:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-virtual {v10, p1}, Lcom/smartisanos/launcher/view/FloatPageNode;->onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    goto/16 :goto_0

    .line 2429
    :cond_d
    iget-boolean v10, p0, Lcom/smartisanos/launcher/view/MainView;->longPressAndPointerMove:Z

    if-eqz v10, :cond_1a

    .line 2431
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getType()I

    move-result v10

    const/16 v11, 0xc

    if-ne v10, v11, :cond_11

    .line 2437
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getPointerId()I

    move-result v4

    .line 2439
    .restart local v4    # "pointId":I
    if-nez v4, :cond_10

    .line 2445
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v10

    if-eqz v10, :cond_e

    .line 2447
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/smartisanos/launcher/view/Cell;->onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    .line 2465
    :goto_1
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/smartisanos/launcher/view/MainView;->longPressAndPointerMove:Z

    .line 2466
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mFirstDownTouchView:Lcom/smartisanos/smengine/SceneNode;

    goto/16 :goto_0

    .line 2449
    :cond_e
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/DockView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v10

    if-eqz v10, :cond_f

    .line 2451
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/DockView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/smartisanos/launcher/view/Cell;->onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    goto :goto_1

    .line 2455
    :cond_f
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10, p1}, Lcom/smartisanos/launcher/view/PageView;->dispatchTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    goto :goto_1

    .line 2461
    :cond_10
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10, p1}, Lcom/smartisanos/launcher/view/PageView;->onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    goto :goto_1

    .line 2471
    .end local v4    # "pointId":I
    :cond_11
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getPointerId()I

    move-result v4

    .line 2472
    .restart local v4    # "pointId":I
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getPointerId1()I

    move-result v5

    .line 2474
    .local v5, "pointId1":I
    if-nez v4, :cond_14

    .line 2476
    sget-boolean v10, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v10, :cond_12

    sget-object v10, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "pointId = 0"

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2477
    :cond_12
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v10

    if-eqz v10, :cond_16

    .line 2478
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v6

    .line 2479
    .local v6, "selectPageCell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->isPageCellEnableCollided()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 2484
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v10, v6}, Lcom/smartisanos/launcher/view/DockView;->collideWith(Lcom/smartisanos/smengine/SceneNode;)I

    move-result v0

    .line 2485
    .local v0, "dockResult":I
    if-nez v0, :cond_13

    .line 2486
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->isCellOnPage()Z

    move-result v10

    if-eqz v10, :cond_13

    if-eqz v6, :cond_13

    .line 2487
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/AnimationController;->clearAllAnimationEventInQueue()V

    .line 2488
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/smartisanos/launcher/view/Cell;->convertToPageCell(Z)V

    .line 2492
    .end local v0    # "dockResult":I
    :cond_13
    invoke-virtual {v6, p1}, Lcom/smartisanos/launcher/view/Cell;->onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    .line 2510
    .end local v6    # "selectPageCell":Lcom/smartisanos/launcher/view/Cell;
    :cond_14
    :goto_2
    const/4 v10, 0x1

    if-ne v5, v10, :cond_2

    .line 2513
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getType()I

    move-result v10

    const/16 v11, 0xd

    if-ne v10, v11, :cond_2

    .line 2514
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v10

    if-eqz v10, :cond_15

    .line 2515
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v10

    iget-object v11, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/view/Cell;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 2517
    :cond_15
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10, p1}, Lcom/smartisanos/launcher/view/PageView;->onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    goto/16 :goto_0

    .line 2493
    :cond_16
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/DockView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v10

    if-eqz v10, :cond_19

    .line 2494
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/DockView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v7

    .line 2495
    .local v7, "selectedDockCell":Lcom/smartisanos/launcher/view/Cell;
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10, v7}, Lcom/smartisanos/launcher/view/PageView;->isCollidedWith(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 2497
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lcom/smartisanos/launcher/view/Cell;->convertToPageCell(Z)V

    .line 2502
    :cond_17
    :goto_3
    invoke-virtual {v7, p1}, Lcom/smartisanos/launcher/view/Cell;->onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    goto :goto_2

    .line 2498
    :cond_18
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v10, v7}, Lcom/smartisanos/launcher/view/DockView;->isCollidedWith(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 2500
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v10, v7}, Lcom/smartisanos/launcher/view/DockView;->collideWith(Lcom/smartisanos/smengine/SceneNode;)I

    goto :goto_3

    .line 2507
    .end local v7    # "selectedDockCell":Lcom/smartisanos/launcher/view/Cell;
    :cond_19
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10, p1}, Lcom/smartisanos/launcher/view/PageView;->dispatchTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    goto :goto_2

    .line 2521
    .end local v4    # "pointId":I
    .end local v5    # "pointId1":I
    :cond_1a
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getPointerId()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1b

    .line 2525
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10, p1}, Lcom/smartisanos/launcher/view/PageView;->onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    goto/16 :goto_0

    .line 2527
    :cond_1b
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-boolean v10, v10, Lcom/smartisanos/launcher/view/PageView;->mIsInMultiSelectMode:Z

    if-nez v10, :cond_1c

    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-boolean v10, v10, Lcom/smartisanos/launcher/view/PageView;->mIsInPageSwitchMode:Z

    if-eqz v10, :cond_1e

    .line 2530
    :cond_1c
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1d

    .line 2531
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iput-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mFirstDownTouchView:Lcom/smartisanos/smengine/SceneNode;

    .line 2533
    :cond_1d
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10, p1}, Lcom/smartisanos/launcher/view/PageView;->dispatchTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    goto/16 :goto_0

    .line 2535
    :cond_1e
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v10

    if-eqz v10, :cond_20

    iget-boolean v10, p0, Lcom/smartisanos/launcher/view/MainView;->longPressAndPointerMove:Z

    if-nez v10, :cond_20

    .line 2536
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mFirstDownTouchView:Lcom/smartisanos/smengine/SceneNode;

    .line 2537
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v6

    .line 2538
    .restart local v6    # "selectPageCell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->isPageCellEnableCollided()Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 2541
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10, v6}, Lcom/smartisanos/launcher/view/PageView;->collideWith(Lcom/smartisanos/smengine/SceneNode;)I

    .line 2543
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v10, v6}, Lcom/smartisanos/launcher/view/DockView;->collideWith(Lcom/smartisanos/smengine/SceneNode;)I

    move-result v0

    .line 2544
    .restart local v0    # "dockResult":I
    if-nez v0, :cond_1f

    .line 2545
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->isCellOnPage()Z

    move-result v10

    if-eqz v10, :cond_1f

    if-eqz v6, :cond_1f

    .line 2546
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/AnimationController;->clearAllAnimationEventInQueue()V

    .line 2547
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/smartisanos/launcher/view/Cell;->convertToPageCell(Z)V

    .line 2551
    .end local v0    # "dockResult":I
    :cond_1f
    invoke-virtual {v6, p1}, Lcom/smartisanos/launcher/view/Cell;->onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    goto/16 :goto_0

    .line 2552
    .end local v6    # "selectPageCell":Lcom/smartisanos/launcher/view/Cell;
    :cond_20
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/DockView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v10

    if-eqz v10, :cond_23

    iget-boolean v10, p0, Lcom/smartisanos/launcher/view/MainView;->longPressAndPointerMove:Z

    if-nez v10, :cond_23

    .line 2553
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mFirstDownTouchView:Lcom/smartisanos/smengine/SceneNode;

    .line 2556
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/DockView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v7

    .line 2557
    .restart local v7    # "selectedDockCell":Lcom/smartisanos/launcher/view/Cell;
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10, v7}, Lcom/smartisanos/launcher/view/PageView;->isCollidedWith(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v10

    if-eqz v10, :cond_22

    .line 2559
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lcom/smartisanos/launcher/view/Cell;->convertToPageCell(Z)V

    .line 2564
    :cond_21
    :goto_4
    invoke-virtual {v7, p1}, Lcom/smartisanos/launcher/view/Cell;->onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    goto/16 :goto_0

    .line 2560
    :cond_22
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v10, v7}, Lcom/smartisanos/launcher/view/DockView;->isCollidedWith(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 2562
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v10, v7}, Lcom/smartisanos/launcher/view/DockView;->collideWith(Lcom/smartisanos/smengine/SceneNode;)I

    goto :goto_4

    .line 2565
    .end local v7    # "selectedDockCell":Lcom/smartisanos/launcher/view/Cell;
    :cond_23
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getType()I

    move-result v10

    const/16 v11, 0xc

    if-eq v10, v11, :cond_24

    .line 2566
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getType()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_24

    .line 2567
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getType()I

    move-result v10

    const/4 v11, 0x5

    if-eq v10, v11, :cond_24

    .line 2568
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getType()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_28

    .line 2570
    :cond_24
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mFirstDownTouchView:Lcom/smartisanos/smengine/SceneNode;

    iget-object v11, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    if-eq v10, v11, :cond_25

    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-boolean v10, v10, Lcom/smartisanos/launcher/view/PageView;->mIsInPageSwitchMode:Z

    if-eqz v10, :cond_27

    .line 2571
    :cond_25
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10, p1}, Lcom/smartisanos/launcher/view/PageView;->dispatchTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    .line 2575
    :cond_26
    :goto_5
    iget v10, p1, Lcom/smartisanos/smengine/TouchEvent;->mUpType:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    .line 2576
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mFirstDownTouchView:Lcom/smartisanos/smengine/SceneNode;

    goto/16 :goto_0

    .line 2572
    :cond_27
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mFirstDownTouchView:Lcom/smartisanos/smengine/SceneNode;

    iget-object v11, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    if-ne v10, v11, :cond_26

    .line 2573
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v10, p1}, Lcom/smartisanos/launcher/view/DockView;->dispatchTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    goto :goto_5

    .line 2577
    :cond_28
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mFirstDownTouchView:Lcom/smartisanos/smengine/SceneNode;

    if-nez v10, :cond_2b

    .line 2579
    sget-boolean v10, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v10, :cond_29

    const-string v10, "mFirstDownTouchView == null"

    invoke-static {v10}, Lcom/smartisanos/launcher/LOG;->i(Ljava/lang/String;)V

    .line 2580
    :cond_29
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10, v2}, Lcom/smartisanos/launcher/view/PageView;->isPointInBoundingVolume(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 2581
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iput-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mFirstDownTouchView:Lcom/smartisanos/smengine/SceneNode;

    .line 2582
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10, p1}, Lcom/smartisanos/launcher/view/PageView;->dispatchTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    goto/16 :goto_0

    .line 2583
    :cond_2a
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v10, v2}, Lcom/smartisanos/launcher/view/DockView;->isPointInBoundingVolume(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2584
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    iput-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mFirstDownTouchView:Lcom/smartisanos/smengine/SceneNode;

    .line 2585
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v10, p1}, Lcom/smartisanos/launcher/view/DockView;->dispatchTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    goto/16 :goto_0

    .line 2588
    :cond_2b
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mFirstDownTouchView:Lcom/smartisanos/smengine/SceneNode;

    iget-object v11, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    if-eq v10, v11, :cond_2c

    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-boolean v10, v10, Lcom/smartisanos/launcher/view/PageView;->mIsInMultiSelectMode:Z

    if-nez v10, :cond_2c

    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-boolean v10, v10, Lcom/smartisanos/launcher/view/PageView;->mIsInPageSwitchMode:Z

    if-eqz v10, :cond_2e

    .line 2591
    :cond_2c
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2d

    .line 2592
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iput-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mFirstDownTouchView:Lcom/smartisanos/smengine/SceneNode;

    .line 2594
    :cond_2d
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10, p1}, Lcom/smartisanos/launcher/view/PageView;->dispatchTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    goto/16 :goto_0

    .line 2596
    :cond_2e
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mFirstDownTouchView:Lcom/smartisanos/smengine/SceneNode;

    iget-object v11, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    if-ne v10, v11, :cond_2f

    .line 2599
    iget-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v10, p1}, Lcom/smartisanos/launcher/view/DockView;->dispatchTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    goto/16 :goto_0

    .line 2603
    :cond_2f
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/smartisanos/launcher/view/MainView;->mFirstDownTouchView:Lcom/smartisanos/smengine/SceneNode;

    goto/16 :goto_0
.end method

.method public playCellFlagDismissAnimation()V
    .locals 4

    .prologue
    .line 2056
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SWEEP_MESSAGE_FLAG:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->SHOW_MESSAGE_FLAG:Z

    if-nez v3, :cond_1

    .line 2093
    :cond_0
    :goto_0
    return-void

    .line 2059
    :cond_1
    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/MainView;->mOnPlayFlagDismissAnimation:Z

    if-nez v3, :cond_0

    .line 2062
    invoke-static {}, Lcom/smartisanos/launcher/LauncherTracker;->getInstance()Lcom/smartisanos/launcher/LauncherTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/LauncherTracker;->onEventClearBadge()V

    .line 2063
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/MainView;->mOnPlayFlagDismissAnimation:Z

    .line 2064
    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v3

    invoke-virtual {v3}, Laurelienribon/tweenengine/Timeline;->beginParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v2

    .line 2065
    .local v2, "timeline":Laurelienribon/tweenengine/Timeline;
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->getCurrentPageInWindowForSinglePageMode()Lcom/smartisanos/launcher/view/Page;

    move-result-object v1

    .line 2066
    .local v1, "page":Lcom/smartisanos/launcher/view/Page;
    if-eqz v1, :cond_2

    .line 2067
    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Page;->playCellFlagDismissAnimation(Laurelienribon/tweenengine/Timeline;)V

    .line 2069
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    .line 2070
    .local v0, "dock":Lcom/smartisanos/launcher/view/DockView;
    if-eqz v0, :cond_3

    .line 2071
    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/DockView;->playCellFlagDismissAnimation(Laurelienribon/tweenengine/Timeline;)V

    .line 2073
    :cond_3
    invoke-virtual {v2}, Laurelienribon/tweenengine/Timeline;->getChildren()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Laurelienribon/tweenengine/Timeline;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 2074
    invoke-virtual {v2}, Laurelienribon/tweenengine/Timeline;->end()Laurelienribon/tweenengine/Timeline;

    .line 2075
    new-instance v3, Lcom/smartisanos/launcher/view/MainView$11;

    invoke-direct {v3, p0}, Lcom/smartisanos/launcher/view/MainView$11;-><init>(Lcom/smartisanos/launcher/view/MainView;)V

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    .line 2088
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getAnimationManager()Lcom/smartisanos/smengine/AnimationManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/AnimationManager;->startTimeLine(Laurelienribon/tweenengine/Timeline;)V

    goto :goto_0

    .line 2090
    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/MainView;->mOnPlayFlagDismissAnimation:Z

    goto :goto_0
.end method

.method public preparePowerOff()V
    .locals 7

    .prologue
    .line 2649
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "### preparePowerOff."

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 2650
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    .line 2652
    .local v1, "mainView":Lcom/smartisanos/launcher/view/MainView;
    if-eqz v1, :cond_1

    .line 2653
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    .line 2654
    .local v4, "pv":Lcom/smartisanos/launcher/view/PageView;
    if-eqz v4, :cond_1

    .line 2655
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getPageViewAnimation()Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-result-object v3

    .line 2656
    .local v3, "pageViewAnimation":Lcom/smartisanos/launcher/animations/PageViewAnimation;
    if-eqz v3, :cond_1

    .line 2657
    invoke-virtual {v3}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->forceFinishSwitchModeAnimation()V

    .line 2662
    .end local v3    # "pageViewAnimation":Lcom/smartisanos/launcher/animations/PageViewAnimation;
    .end local v4    # "pv":Lcom/smartisanos/launcher/view/PageView;
    :cond_1
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 2664
    iget-object v5, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    if-eqz v5, :cond_2

    .line 2665
    iget-object v5, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->forceFinishSlideAndSinkAnimation()V

    .line 2666
    iget-object v5, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/AnimationController;->allAnimationForceFinish()V

    .line 2669
    :cond_2
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v2

    .line 2670
    .local v2, "pageSelected":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v2, :cond_4

    .line 2671
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "#### prepare poweroff 1"

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2672
    :cond_3
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getCellPageStatus()Lcom/smartisanos/launcher/view/CellStatusForPage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/CellStatusForPage;->forceInvokeUp()V

    .line 2673
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getCellPageStatus()Lcom/smartisanos/launcher/view/CellStatusForPage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/CellStatusForPage;->forceFinishCellUpAnim()V

    .line 2676
    :cond_4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/DockView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    .line 2677
    .local v0, "dockSelected":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v0, :cond_5

    .line 2678
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getCellDockStatus()Lcom/smartisanos/launcher/view/CellStatusForDock;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/CellStatusForDock;->forceInvokeUp()V

    .line 2679
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getCellDockStatus()Lcom/smartisanos/launcher/view/CellStatusForDock;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/CellStatusForDock;->forceFinishCellUpAnim()V

    .line 2685
    .end local v0    # "dockSelected":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "pageSelected":Lcom/smartisanos/launcher/view/Cell;
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2686
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2687
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/FloatPageNode;->resetPageNoAnimation()V

    .line 2689
    :cond_6
    return-void
.end method

.method public removeBackgroundUnlockRect()V
    .locals 2

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mBackgroundGaussianUnlockRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 1955
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mBackgroundGaussianUnlockRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 1956
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mBackgroundGaussianUnlockRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 1957
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mBackgroundGaussianUnlockRect:Lcom/smartisanos/smengine/RectNode;

    .line 1959
    :cond_0
    return-void
.end method

.method public requestLockTouch(ZJ)V
    .locals 6
    .param p1, "locked"    # Z
    .param p2, "timeOut"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 1742
    if-eqz p1, :cond_1

    .line 1743
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1744
    .local v0, "touchLockRequestedTime":J
    iget-wide v2, p0, Lcom/smartisanos/launcher/view/MainView;->mTouchLockRequestedTime:J

    iget-wide v4, p0, Lcom/smartisanos/launcher/view/MainView;->mTouchLockTimeOut:J

    add-long/2addr v2, v4

    add-long v4, v0, p2

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1745
    iput-wide v0, p0, Lcom/smartisanos/launcher/view/MainView;->mTouchLockRequestedTime:J

    .line 1746
    iput-wide p2, p0, Lcom/smartisanos/launcher/view/MainView;->mTouchLockTimeOut:J

    .line 1752
    .end local v0    # "touchLockRequestedTime":J
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/MainView;->mIsTouchLocked:Z

    .line 1753
    return-void

    .line 1749
    :cond_1
    iput-wide v2, p0, Lcom/smartisanos/launcher/view/MainView;->mTouchLockRequestedTime:J

    .line 1750
    iput-wide v2, p0, Lcom/smartisanos/launcher/view/MainView;->mTouchLockTimeOut:J

    goto :goto_0
.end method

.method public setBackgroundMaskColor(Lcom/smartisanos/smengine/mymaterial/Material;)V
    .locals 4
    .param p1, "m"    # Lcom/smartisanos/smengine/mymaterial/Material;

    .prologue
    const/4 v2, 0x0

    .line 3173
    const-string v0, "smartisan_theme_aero"

    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/smartisanos/launcher/theme/ThemeManager;->getCurrentTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v1

    iget-object v1, v1, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3174
    check-cast p1, Lcom/smartisanos/smengine/mymaterial/TexturePreColorMaterial;

    .end local p1    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sGaussianBackGray:F

    invoke-virtual {p1, v2, v2, v2, v0}, Lcom/smartisanos/smengine/mymaterial/TexturePreColorMaterial;->setBlendColor(FFFF)V

    .line 3180
    :goto_0
    return-void

    .line 3177
    .restart local p1    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    :cond_0
    check-cast p1, Lcom/smartisanos/smengine/mymaterial/TexturePreColorMaterial;

    .end local p1    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    sget-object v0, Lcom/smartisanos/launcher/data/Constants;->MIST_BACK_MASK:Lcom/smartisanos/smengine/math/Vector4f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->MIST_BACK_MASK:Lcom/smartisanos/smengine/math/Vector4f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->MIST_BACK_MASK:Lcom/smartisanos/smengine/math/Vector4f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    sget-object v3, Lcom/smartisanos/launcher/data/Constants;->MIST_BACK_MASK:Lcom/smartisanos/smengine/math/Vector4f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/smartisanos/smengine/mymaterial/TexturePreColorMaterial;->setBlendColor(FFFF)V

    goto :goto_0
.end method

.method public setCanInToHoverMode(Z)V
    .locals 0
    .param p1, "can"    # Z

    .prologue
    .line 378
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/MainView;->mCanInToHoverMode:Z

    .line 379
    return-void
.end method

.method public setCellBackMesh(Lcom/smartisanos/smengine/Mesh;)V
    .locals 1
    .param p1, "mesh"    # Lcom/smartisanos/smengine/Mesh;

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mCellBackgroundBackupMesh:Lcom/smartisanos/smengine/Mesh;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1013
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MainView;->mCellBackgroundBackupMesh:Lcom/smartisanos/smengine/Mesh;

    .line 1015
    :cond_0
    return-void
.end method

.method public setEnableStatusbarMessage(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 407
    return-void
.end method

.method public setFrameDeltaTime(F)V
    .locals 0
    .param p1, "t"    # F

    .prologue
    .line 544
    iput p1, p0, Lcom/smartisanos/launcher/view/MainView;->mFrameDeltaTime:F

    .line 545
    return-void
.end method

.method public setHasVerifyPassword(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 335
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/MainView;->mHasVerifyPassword:Z

    .line 336
    return-void
.end method

.method public setLoadingConfigStatus(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 270
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/MainView;->isLoadingConfig:Z

    .line 271
    return-void
.end method

.method public setModeToSingleForChangeTheme()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2693
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2694
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2695
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/FloatPageNode;->resetPageNoAnimation()V

    .line 2697
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2698
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->forceHideCellClickShadow()V

    .line 2701
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/AnimationController;->forceFinishUnlockAnimation()V

    .line 2702
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v1, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v0, v1, :cond_4

    .line 2703
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2704
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->getSettingButton()Lcom/smartisanos/launcher/view/SettingButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/SettingButton;->handleTap(Z)V

    .line 2707
    :cond_2
    invoke-static {v2}, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->setTaskPauseStatus(Z)V

    .line 2708
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2710
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TrashView;->forceFinishTrashAnim()V

    .line 2715
    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/PageView;->switchPageMode(Lcom/smartisanos/launcher/view/Page;I)Z

    .line 2716
    invoke-static {v3}, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->setTaskPauseStatus(Z)V

    .line 2717
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getPageViewAnimation()Lcom/smartisanos/launcher/animations/PageViewAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->forceFinishSwitchModeAnimation()V

    .line 2719
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mCellClickShadowRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_5

    .line 2720
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mCellClickShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 2722
    :cond_5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->preparePowerOff()V

    .line 2723
    return-void
.end method

.method public setPageInitFinish(Z)V
    .locals 1
    .param p1, "en"    # Z

    .prologue
    .line 370
    if-eqz p1, :cond_0

    .line 371
    iget v0, p0, Lcom/smartisanos/launcher/view/MainView;->mStatusFlag:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/smartisanos/launcher/view/MainView;->mStatusFlag:I

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_0
    iget v0, p0, Lcom/smartisanos/launcher/view/MainView;->mStatusFlag:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/smartisanos/launcher/view/MainView;->mStatusFlag:I

    goto :goto_0
.end method

.method public setScreenXYForFastUp(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2956
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mScreenXYForFastUp:Lcom/smartisanos/smengine/math/Vector2f;

    invoke-virtual {v0, p1, p2}, Lcom/smartisanos/smengine/math/Vector2f;->set(FF)Lcom/smartisanos/smengine/math/Vector2f;

    .line 2957
    return-void
.end method

.method public setUsePostEffect(Z)V
    .locals 2
    .param p1, "use"    # Z

    .prologue
    .line 1380
    if-eqz p1, :cond_1

    .line 1381
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPostEffectRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPostEffectRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1382
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneManager;->getPostEffectRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 1383
    .local v0, "rootNode":Lcom/smartisanos/smengine/SceneNode;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPostEffectRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1384
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 1391
    .end local v0    # "rootNode":Lcom/smartisanos/smengine/SceneNode;
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/MainView;->setScreenCornerUsePostEffect(Z)V

    .line 1392
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getRenderManager()Lcom/smartisanos/smengine/RenderManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/RenderManager;->setUsePostEffect(Z)V

    .line 1393
    return-void

    .line 1387
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPostEffectRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPostEffectRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1388
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MainView;->mPostEffectRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    goto :goto_0
.end method

.method public setVerifyPasswordRunningStatus(Z)V
    .locals 2
    .param p1, "status"    # Z

    .prologue
    .line 177
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->GL:Lcom/smartisanos/home/Launcher$RUNNING_ENV;

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/Launcher;->verifyThread(Lcom/smartisanos/home/Launcher$RUNNING_ENV;)V

    .line 178
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/MainView;->isVerifyPasswordRunning:Z

    .line 179
    return-void
.end method

.method public showBackground()V
    .locals 2

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mBackground:Lcom/smartisanos/smengine/RectNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 1034
    :cond_0
    return-void
.end method

.method public showCellClickShadow(Lcom/smartisanos/launcher/view/Cell;ZLjava/lang/Runnable;)V
    .locals 12
    .param p1, "cell"    # Lcom/smartisanos/launcher/view/Cell;
    .param p2, "showShadowRect"    # Z
    .param p3, "finish"    # Ljava/lang/Runnable;

    .prologue
    .line 597
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MainView;->mHideCellClickShadowRectAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v7, :cond_0

    .line 598
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MainView;->mHideCellClickShadowRectAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 600
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MainView;->mClickCell:Lcom/smartisanos/launcher/view/Cell;

    .line 601
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MainView;->mCellClickShadowRect:Lcom/smartisanos/smengine/RectNode;

    if-nez v7, :cond_1

    .line 602
    const-string v7, "cell_click_shadow"

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v7, v8, v9, v10, v11}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v7

    iput-object v7, p0, Lcom/smartisanos/launcher/view/MainView;->mCellClickShadowRect:Lcom/smartisanos/smengine/RectNode;

    .line 605
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MainView;->mCellClickShadowRect:Lcom/smartisanos/smengine/RectNode;

    const/16 v8, 0xe1

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 606
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MainView;->mCellClickShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 607
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MainView;->mCellClickShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v7

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, -0x40000000    # -2.0f

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 608
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MainView;->mCellClickShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 609
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MainView;->mCellClickShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 610
    const-string v7, "TextureModularColorMaterial"

    invoke-static {v7}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v4

    .line 611
    .local v4, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MainView;->mCellClickShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v7, v4}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 613
    .end local v4    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    :cond_1
    sget-boolean v7, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 614
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MainView;->mCellClickShadowRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 618
    :goto_0
    if-eqz p1, :cond_3

    .line 619
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->disableUnpressedAnimation()V

    .line 620
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/DockView;->getDotView()Lcom/smartisanos/launcher/view/DotView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/DotView;->forceKillAllDotAnimation()V

    .line 621
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/DockView;->getDotView()Lcom/smartisanos/launcher/view/DotView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/view/DotView;->setVisibility(Z)V

    .line 622
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/PageView;->forceFinishSlideAndSinkAnimation()V

    .line 623
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v7

    const/16 v8, 0x2000

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 624
    const/4 v2, 0x0

    .line 625
    .local v2, "destBackw":F
    const/4 v1, 0x0

    .line 626
    .local v1, "destBackh":F
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MainView;->mCellClickShadowRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 627
    if-nez p2, :cond_2

    .line 629
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MainView;->mCellClickShadowRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 631
    :cond_2
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/SceneManager;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    .line 632
    .local v6, "rootNode":Lcom/smartisanos/smengine/SceneNode;
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MainView;->mCellClickShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 633
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 634
    .local v0, "cellSize":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/Cell;->getSize(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 635
    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 636
    iget v1, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 637
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/data/ItemInfo;->isDockItem()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 638
    sget v7, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v7}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    .line 639
    .local v3, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v2, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    .line 640
    iget v1, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    .line 642
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MainView;->mCellClickShadowRect:Lcom/smartisanos/smengine/RectNode;

    const-string v8, "openapp_shadow.png"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 643
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MainView;->mCellClickShadowRect:Lcom/smartisanos/smengine/RectNode;

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v2, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v1, v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 644
    new-instance v5, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v5}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 645
    .local v5, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {p1, v5}, Lcom/smartisanos/launcher/view/Cell;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 646
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MainView;->mCellClickShadowRect:Lcom/smartisanos/smengine/RectNode;

    iget v8, v5, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v9, v5, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 675
    .end local v3    # "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    :goto_1
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MainView;->mCellClickShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 676
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MainView;->mCellClickShadowRect:Lcom/smartisanos/smengine/RectNode;

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 677
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 691
    .end local v0    # "cellSize":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v1    # "destBackh":F
    .end local v2    # "destBackw":F
    .end local v5    # "pos":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v6    # "rootNode":Lcom/smartisanos/smengine/SceneNode;
    :cond_3
    return-void

    .line 616
    :cond_4
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MainView;->mCellClickShadowRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    goto/16 :goto_0

    .line 668
    .restart local v0    # "cellSize":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v1    # "destBackh":F
    .restart local v2    # "destBackw":F
    .restart local v6    # "rootNode":Lcom/smartisanos/smengine/SceneNode;
    :cond_5
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MainView;->mCellClickShadowRect:Lcom/smartisanos/smengine/RectNode;

    const-string v8, "openapp_shadow.png"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 669
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MainView;->mCellClickShadowRect:Lcom/smartisanos/smengine/RectNode;

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v2, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v1, v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 670
    new-instance v5, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v5}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 671
    .restart local v5    # "pos":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {p1, v5}, Lcom/smartisanos/launcher/view/Cell;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 672
    iget-object v7, p0, Lcom/smartisanos/launcher/view/MainView;->mCellClickShadowRect:Lcom/smartisanos/smengine/RectNode;

    iget v8, v5, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v9, v5, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    goto :goto_1
.end method

.method public showEditPageTitleNameDialog(Lcom/smartisanos/launcher/view/Page;)V
    .locals 2
    .param p1, "page"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 829
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mContext:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 839
    :goto_0
    return-void

    .line 832
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "show edit page title name dialog begin"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 833
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/smartisanos/launcher/view/MainView$6;

    invoke-direct {v1, p0, p1}, Lcom/smartisanos/launcher/view/MainView$6;-><init>(Lcom/smartisanos/launcher/view/MainView;Lcom/smartisanos/launcher/view/Page;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showStatusBar()V
    .locals 2

    .prologue
    .line 433
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/Launcher;->restoreAnimationScale(I)V

    .line 434
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/smartisanos/launcher/view/MainView$3;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/MainView$3;-><init>(Lcom/smartisanos/launcher/view/MainView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 442
    return-void
.end method

.method public showStatusBarText(Lcom/smartisanos/smengine/AnimationTimeLine;FI)V
    .locals 1
    .param p1, "timeline"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p2, "duration"    # F
    .param p3, "selectedAppCount"    # I

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mStatusBar:Lcom/smartisanos/launcher/view/StatusBar;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/launcher/view/StatusBar;->showStatusBarText(Lcom/smartisanos/smengine/AnimationTimeLine;FI)V

    .line 1310
    return-void
.end method

.method public unLockHardKey()V
    .locals 3

    .prologue
    .line 1762
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "A140"

    const-string v2, " hard key unlock"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/MainView;->mIsHardKeyLocked:Z

    .line 1765
    return-void
.end method

.method public unLockTouchEvent()V
    .locals 4

    .prologue
    .line 1726
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/MainView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "A140"

    const-string v2, " touch key unlock"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    :cond_0
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/smartisanos/launcher/view/MainView;->requestLockTouch(ZJ)V

    .line 1729
    return-void
.end method

.method public update()V
    .locals 8

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MainView;->getEnableDrawStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 554
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 555
    .local v2, "time":J
    iget-wide v4, p0, Lcom/smartisanos/launcher/view/MainView;->mStartTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 556
    iput-wide v2, p0, Lcom/smartisanos/launcher/view/MainView;->mStartTime:J

    .line 558
    :cond_0
    iget-wide v4, p0, Lcom/smartisanos/launcher/view/MainView;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v0, v4

    .line 559
    .local v0, "delta":F
    iput-wide v2, p0, Lcom/smartisanos/launcher/view/MainView;->mStartTime:J

    .line 560
    iget v0, p0, Lcom/smartisanos/launcher/view/MainView;->mFrameDeltaTime:F

    .line 561
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/World;->runOneFrame(F)V

    .line 565
    .end local v0    # "delta":F
    .end local v2    # "time":J
    :goto_0
    return-void

    .line 563
    :cond_1
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->updateGLView()V

    goto :goto_0
.end method

.method public updateEasterDay()V
    .locals 2

    .prologue
    .line 3087
    new-instance v0, Lcom/smartisanos/launcher/view/MainView$14;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/view/MainView$14;-><init>(Lcom/smartisanos/launcher/view/MainView;I)V

    const/4 v1, 0x0

    .line 3098
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/MainView$14;->send(F)V

    .line 3099
    return-void
.end method

.method public updateFlagVisibility()V
    .locals 2

    .prologue
    .line 2043
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v1

    .line 2044
    .local v1, "pageView":Lcom/smartisanos/launcher/view/PageView;
    if-eqz v1, :cond_0

    .line 2045
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->updateFlagVisibility()V

    .line 2047
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    .line 2048
    .local v0, "dock":Lcom/smartisanos/launcher/view/DockView;
    if-eqz v0, :cond_1

    .line 2049
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->updateFlagVisibility()V

    .line 2051
    :cond_1
    return-void
.end method

.method public updateFlagVisibilityForAllPage()V
    .locals 6

    .prologue
    .line 2027
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v2

    .line 2028
    .local v2, "pageView":Lcom/smartisanos/launcher/view/PageView;
    if-eqz v2, :cond_1

    .line 2029
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->getAllPages()Ljava/util/ArrayList;

    move-result-object v3

    .line 2030
    .local v3, "pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Page;

    .line 2031
    .local v1, "page":Lcom/smartisanos/launcher/view/Page;
    if-eqz v1, :cond_0

    .line 2032
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->updateFlagVisibility()V

    goto :goto_0

    .line 2036
    .end local v1    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v3    # "pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    .line 2037
    .local v0, "dock":Lcom/smartisanos/launcher/view/DockView;
    if-eqz v0, :cond_2

    .line 2038
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->updateFlagVisibility()V

    .line 2040
    :cond_2
    return-void
.end method

.method public updateStatusBarText(I)V
    .locals 1
    .param p1, "selectedAppCount"    # I

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mStatusBar:Lcom/smartisanos/launcher/view/StatusBar;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/StatusBar;->updateStatusBarText(I)V

    .line 1316
    return-void
.end method

.method public updateStatusBarTextToLongPressText()V
    .locals 1

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView;->mStatusBar:Lcom/smartisanos/launcher/view/StatusBar;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/StatusBar;->changeToLongPressText()V

    .line 1320
    return-void
.end method

.method public writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V
    .locals 6
    .param p1, "parent"    # Lorg/w3c/dom/Element;
    .param p2, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 1322
    const-string v3, "MainView"

    invoke-interface {p2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 1323
    .local v0, "element":Lorg/w3c/dom/Element;
    const-string v3, "longPressAndPointerMove"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/smartisanos/launcher/view/MainView;->longPressAndPointerMove:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    const-string v3, "mHasVerifyPassword"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/smartisanos/launcher/view/MainView;->mHasVerifyPassword:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    const-string v3, "mFrameDeltaTime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/smartisanos/launcher/view/MainView;->mFrameDeltaTime:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    const-string v3, "mAllCellsWorldTranslateSinglePageModeCount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/smartisanos/launcher/view/MainView;->mAllCellsWorldTranslateSinglePageMode:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    const-string v3, "mAllCellsWorldTranslateMultiPageModeCount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/smartisanos/launcher/view/MainView;->mAllCellsWorldTranslateMultiPageMode:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    const-string v3, "isVerifyPasswordRunning"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/smartisanos/launcher/view/MainView;->isVerifyPasswordRunning:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    const-string v3, "mCellClickShadowRect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/smartisanos/launcher/view/MainView;->mCellClickShadowRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    const-string v3, "mIsHardKeyLocked"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/smartisanos/launcher/view/MainView;->mIsHardKeyLocked:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    const-string v3, "mIsTouchLocked"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/smartisanos/launcher/view/MainView;->mIsTouchLocked:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    const-string v3, "mCanInToHoverMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/smartisanos/launcher/view/MainView;->mCanInToHoverMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    const-string v3, "mIsBatchMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/smartisanos/launcher/view/MainView;->mIsBatchMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    const-string v3, "isLoadingConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/smartisanos/launcher/view/MainView;->isLoadingConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    const-string v3, "mStatusFlag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/smartisanos/launcher/view/MainView;->mStatusFlag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MainView;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v3, v0, p2}, Lcom/smartisanos/launcher/view/PageView;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 1337
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MainView;->mDockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v3, v0, p2}, Lcom/smartisanos/launcher/view/DockView;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 1338
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1340
    const-string v3, "rootView"

    invoke-interface {p2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 1341
    .local v2, "rootView":Lorg/w3c/dom/Element;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneManager;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 1342
    .local v1, "root":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v1, v2, p2}, Lcom/smartisanos/smengine/SceneNode;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 1343
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1344
    return-void
.end method
