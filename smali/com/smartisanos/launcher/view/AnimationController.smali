.class public Lcom/smartisanos/launcher/view/AnimationController;
.super Ljava/lang/Object;
.source "AnimationController.java"

# interfaces
.implements Lcom/smartisanos/smengine/NotificationManager$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/AnimationController$PushDown2AnimationListener;,
        Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:F = 0.4f

.field public static final CELL_BACK_APP_UP_ANIM_DELAY:F = 0.2f

.field public static final CELL_BACK_APP_UP_ANIM_DURATION:F = 0.2f

.field public static final CELL_CONVERT_TIME:F = 0.1f

.field public static final CELL_INTO_PAGE_EDIT_MODE_ANIM_DELAY:F = 0.0f

.field public static final CELL_INTO_PAGE_EDIT_MODE_ANIM_DURATION:F = 0.45f

.field public static final CELL_LONG_PRESSED_ANIM_DURATION:F = 0.2f

.field public static final CELL_LONG_PRESSED_END_ANIM_DURATION:F = 0.3f

.field public static final CELL_LONG_PRESSED_TITLE_DISAPPEAR_ANIM_DURATION:F = 0.1f

.field public static final CELL_LONG_PRESSED_TITLE_SHOW_ANIM_DURATION:F = 0.2f

.field public static final CELL_MOVE_TO_TRASH_DURATION:F = 0.2f

.field public static final CELL_OPEN_APP_DOWN_ANIM_DURATION:F = 0.1f

.field public static final CELL_PRESSED_SHADOW_DELAY:F = 0.05f

.field public static final CELL_UNINSTALL_CLEAN_EMPTY_PAGE_ANIM_DURATION:F = 0.3f

.field public static final CELL_UNINSTALL_END_ANIM_DURATION:F = 0.3f

.field public static final CELL_UNPRESSED_ANIM_DURATION:F = 0.1f

.field private static final CHANGE_SCREEN_ANIMATION_DURATION:F = 0.4f

.field public static final CHANGE_SCREEN_DELAY_DURATION:F = 0.6f

.field private static final CHANGE_SCREEN_RE_POST_DELAY_DURATION:F = 0.4f

.field public static final COLLIDED_POST_DELAY_DURATION:F = 0.2f

.field public static final CREATE_EMPTY_CELL_WHEN_COLLIDE_EMPTY_CELL_ANIM_DURATION:F = 0.1f

.field public static final CREATE_EMPTY_CELL_WHEN_COLLIDE_NOT_EMPTY_CELL_ANIM_DURATION:F = 0.2f

.field public static final DELAY:F = 0.35000002f

.field public static final DOCK_ICON_MOVE_TIME:F = 0.25f

.field public static final HOME_KEY_ANIM_DURATION:F = 0.36f

.field public static final ICON_SORT_FINISH_ROTATE_ANIM_DURATION:F = 1.0f

.field public static final ICON_SORT_PREPARE_ROTATE_ANIM_DURATION:F = 0.8f

.field public static final MULTI_SELECT_SPREADOUT_ANIM_TIME:F = 0.7f

.field public static final MUTI_SELECT_HIDE_SELECT_COVER_ANIM_TIME:F = 0.3f

.field public static final MUTI_SELECT_LONG_PRESSED_ANIM_TIME:F = 0.4f

.field public static final MUTI_SELECT_LONG_PRESSED_COVER_END_ANIM_DELAY_TIME:F = 0.25f

.field public static final MUTI_SELECT_LONG_PRESSED_COVER_END_ANIM_TIME:F = 0.15f

.field public static final MUTI_SELECT_LONG_PRESSED_END_ANIM_TIME:F = 0.4f

.field public static final MUTI_SELECT_SHOW_SELECT_COVER_ANIM_TIME:F = 0.3f

.field public static final MUTI_SELECT_SHOW_SELECT_COVER_DELAY_TIME:F = 0.1f

.field public static final PAGE_SINK_ANIM_DURATION:F = 0.1f

.field public static final PAGE_UNSINK_ANIM_DURATION:F = 0.2f

.field public static final PAGE_VIEW_SCROLL_DURATION:F = 0.3f

.field public static final REMOVE_EMPTY_CELL_ANIM_DURATION:F = 0.2f

.field public static final RESET_CELL_BACKGROUND_TIME:F = 0.3f

.field public static final SETTING_BUTTON_ANIM_TIME:F = 0.3f

.field public static final SETTING_INFO_BAR_ANIM_TIME:F = 0.45f

.field public static final SETTING_PAGE_TITLE_ANIM_TIME:F = 0.6f

.field public static final SLIDE_DOCK_PAGE_ZOOM_IN_ANIM_DURATION:F = 0.3f

.field public static final SLIDE_DOCK_PAGE_ZOOM_OUT_ANIM_DURATION:F = 0.1f

.field public static final SORT_BUBBLE_HIDE:F = 0.18f

.field public static final SORT_BUBBLE_SHOW:F = 0.2f

.field public static final SORT_BUTTON_MOVE_DELAY:F = 0.04f

.field public static final SORT_BUTTON_MOVE_TIME:F = 0.25f

.field public static final SORT_CONFIRM_BUTTON_TIME:F = 0.3f

.field public static final SPECIAL_HOME_KEY_PASS1_ANIM_DURATION:F = 0.1f

.field public static final SPECIAL_HOME_KEY_PASS1_ANIM_SCALE:F = 0.995f

.field public static final SPECIAL_HOME_KEY_PASS1_ANIM_TRANSLATE:F = 40.0f

.field public static final SPECIAL_HOME_KEY_PASS2_ANIM_DURATION:F = 0.3f

.field public static final SWITCH_PAGE_MODEL_ANIM_TIME:F = 0.28f

.field public static final SWITCH_PAGE_MODEL_HIDE_APP_FLAG_ANIM_TIME:F = 0.28f

.field public static final SWITCH_PAGE_MODEL_HIDE_APP_NAME_ANIM_TIME:F = 0.28f

.field public static final SWITCH_PAGE_MODEL_HIDE_PAGE_TITLE_ANIM_TIME:F = 0.28f

.field public static final SWITCH_PAGE_MODEL_SHOW_APP_FLAG_ANIM_TIME:F = 0.28f

.field public static final SWITCH_PAGE_MODEL_SHOW_APP_NAME_ANIM_TIME:F = 0.28f

.field public static final SWITCH_PAGE_MODEL_SHOW_PAGE_TITLE_ANIM_TIME:F = 0.28f

.field public static final TRASH_DOWN_ANIM_DURATION:F = 0.3f

.field public static final TRASH_UP_ANIM_DURATION:F = 0.3f

.field public static final UNLOCK16_XML_NAME:Ljava/lang/String; = "unlock16.xml"

.field public static final UNLOCK9_XML_NAME:Ljava/lang/String; = "unlock9.xml"

.field private static final log:Lcom/smartisanos/launcher/LOG;


# instance fields
.field private mChangeScreenAnimationEvent:Lcom/smartisanos/smengine/Event;

.field private mChangeScreenAnimationTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

.field private mChangeScreenToward:I

.field private mCurrentCollideData:Lcom/smartisanos/smengine/CollisionData;

.field public mCurrentCollidedCell:Lcom/smartisanos/launcher/view/Cell;

.field public mCurrentCollidedPage:Lcom/smartisanos/launcher/view/Page;

.field public mFirstEmptyCell:Lcom/smartisanos/launcher/view/Cell;

.field public mFirstGoNextTouchedPage:Lcom/smartisanos/launcher/view/Page;

.field public mFirstHasEmptyPage:Lcom/smartisanos/launcher/view/Page;

.field private mHandleMyNotifyAnimationEvent:Lcom/smartisanos/smengine/Event;

.field private mHasAnimationPlaying:Z

.field public mIsChangeScreen:Z

.field public mLastTimeCollidedCell:Lcom/smartisanos/launcher/view/Cell;

.field public mLastTimeCollidedPage:Lcom/smartisanos/launcher/view/Page;

.field private mLauncherAnimation16:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

.field private mLauncherAnimation9:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

.field private mMultiPageAnimation:Lcom/smartisanos/launcher/view/MultiPageAnimation;

.field public mMultiPageHasEmptyAnimationCellList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiPageHasEmptyPageAnimation:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;

.field private mMultiPageHasEmptyPageRevertAnimation:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

.field public mMultiPageHasEmptyRevertAnimationCellList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedForceRenderPageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;"
        }
    .end annotation
.end field

.field private mPageView:Lcom/smartisanos/launcher/view/PageView;

.field private mReceivedChangeScreen:Z

.field private mScrollTo:Lcom/smartisanos/smengine/AnimationTimeLine;

.field private mUnlockAnimationHasInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 179
    const-class v0, Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/launcher/view/PageView;)V
    .locals 8
    .param p1, "pw"    # Lcom/smartisanos/launcher/view/PageView;

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    const-string v1, "unlock16.xml"

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLauncherAnimation16:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    .line 186
    new-instance v0, Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    const-string v1, "unlock9.xml"

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLauncherAnimation9:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    .line 188
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mHasAnimationPlaying:Z

    .line 189
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mUnlockAnimationHasInit:Z

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mNeedForceRenderPageList:Ljava/util/ArrayList;

    .line 235
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mReceivedChangeScreen:Z

    .line 238
    new-instance v0, Lcom/smartisanos/launcher/view/Cell;

    const-string v1, "FirstEmptyCell"

    move v4, v3

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/launcher/view/Cell;-><init>(Ljava/lang/String;ZIIFLcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstEmptyCell:Lcom/smartisanos/launcher/view/Cell;

    .line 243
    new-instance v0, Lcom/smartisanos/launcher/view/Cell;

    const-string v1, "LastTimeCollidedCell"

    move v4, v3

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/launcher/view/Cell;-><init>(Ljava/lang/String;ZIIFLcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLastTimeCollidedCell:Lcom/smartisanos/launcher/view/Cell;

    .line 247
    new-instance v0, Lcom/smartisanos/launcher/view/Cell;

    const-string v1, "CurrentTouchedCell"

    move v4, v3

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/launcher/view/Cell;-><init>(Ljava/lang/String;ZIIFLcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mCurrentCollidedCell:Lcom/smartisanos/launcher/view/Cell;

    .line 250
    iput-object v6, p0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageHasEmptyAnimationCellList:Ljava/util/ArrayList;

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageHasEmptyRevertAnimationCellList:Ljava/util/ArrayList;

    .line 253
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mIsChangeScreen:Z

    .line 274
    iput-object v6, p0, Lcom/smartisanos/launcher/view/AnimationController;->mChangeScreenAnimationEvent:Lcom/smartisanos/smengine/Event;

    .line 289
    iput-object v6, p0, Lcom/smartisanos/launcher/view/AnimationController;->mHandleMyNotifyAnimationEvent:Lcom/smartisanos/smengine/Event;

    .line 260
    iput-object p1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    .line 261
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/launcher/view/AnimationController;)Lcom/smartisanos/launcher/view/PageView;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/AnimationController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/view/AnimationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/AnimationController;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/AnimationController;->beforeSwitchScreen()V

    return-void
.end method

.method static synthetic access$1000(Lcom/smartisanos/launcher/view/AnimationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/AnimationController;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/AnimationController;->cleanNeedForceRenderPageList()V

    return-void
.end method

.method static synthetic access$1100(Lcom/smartisanos/launcher/view/AnimationController;)Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/AnimationController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageHasEmptyPageAnimation:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/smartisanos/launcher/view/AnimationController;Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;)Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/AnimationController;
    .param p1, "x1"    # Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageHasEmptyPageAnimation:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/smartisanos/launcher/view/AnimationController;)Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/AnimationController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageHasEmptyPageRevertAnimation:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/smartisanos/launcher/view/AnimationController;Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;)Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/AnimationController;
    .param p1, "x1"    # Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageHasEmptyPageRevertAnimation:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    return-object p1
.end method

.method static synthetic access$200(Lcom/smartisanos/launcher/view/AnimationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/AnimationController;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/AnimationController;->changeScreenAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/smartisanos/launcher/view/AnimationController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/AnimationController;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/AnimationController;->handleMyAnimationNotify(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/smartisanos/launcher/view/AnimationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/AnimationController;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/AnimationController;->afterSwitchScreen()V

    return-void
.end method

.method static synthetic access$502(Lcom/smartisanos/launcher/view/AnimationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/AnimationController;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mReceivedChangeScreen:Z

    return p1
.end method

.method static synthetic access$602(Lcom/smartisanos/launcher/view/AnimationController;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/AnimationController;
    .param p1, "x1"    # Lcom/smartisanos/smengine/AnimationTimeLine;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mChangeScreenAnimationTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object p1
.end method

.method static synthetic access$700(Lcom/smartisanos/launcher/view/AnimationController;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/AnimationController;

    .prologue
    .line 29
    iget v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mChangeScreenToward:I

    return v0
.end method

.method static synthetic access$800(Lcom/smartisanos/launcher/view/AnimationController;)Lcom/smartisanos/launcher/view/MultiPageAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/AnimationController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageAnimation:Lcom/smartisanos/launcher/view/MultiPageAnimation;

    return-object v0
.end method

.method static synthetic access$802(Lcom/smartisanos/launcher/view/AnimationController;Lcom/smartisanos/launcher/view/MultiPageAnimation;)Lcom/smartisanos/launcher/view/MultiPageAnimation;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/AnimationController;
    .param p1, "x1"    # Lcom/smartisanos/launcher/view/MultiPageAnimation;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageAnimation:Lcom/smartisanos/launcher/view/MultiPageAnimation;

    return-object p1
.end method

.method static synthetic access$900(Lcom/smartisanos/launcher/view/AnimationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/AnimationController;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/AnimationController;->generateNeedForceRenderPageList()V

    return-void
.end method

.method private afterSwitchScreen()V
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->resetCollisionListenerForPageCell()V

    .line 754
    return-void
.end method

.method private beforeSwitchScreen()V
    .locals 2

    .prologue
    .line 738
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mIsChangeScreen:Z

    .line 739
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/AnimationController;->clearAllAnimationEventInQueue()V

    .line 742
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 745
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/AnimationController;->allAnimationForceFinish()V

    .line 746
    return-void
.end method

.method private cellLinkedAnimation()V
    .locals 21

    .prologue
    .line 1409
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/AnimationController;->mCurrentCollideData:Lcom/smartisanos/smengine/CollisionData;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/CollisionData;->getColliderNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v16

    check-cast v16, Lcom/smartisanos/launcher/view/Cell;

    .line 1410
    .local v16, "collider":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/AnimationController;->mCurrentCollideData:Lcom/smartisanos/smengine/CollisionData;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/CollisionData;->getCollidedNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v13

    check-cast v13, Lcom/smartisanos/launcher/view/Cell;

    .line 1412
    .local v13, "collided":Lcom/smartisanos/launcher/view/Cell;
    const/16 v19, 0x0

    .line 1415
    .local v19, "needChangeParentToPageView":Z
    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/launcher/view/PageView;->sIsInstanceFromPageView(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1416
    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Page;

    .line 1417
    .local v3, "colliderPage":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/Cell;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 1418
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->reSortChildren()V

    .line 1419
    const/16 v19, 0x1

    .line 1424
    :goto_0
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Page;

    .line 1426
    .local v4, "collidedPage":Lcom/smartisanos/launcher/view/Page;
    const/4 v15, -0x1

    .line 1427
    .local v15, "collidedCellRowIndex":I
    const/4 v14, -0x1

    .line 1429
    .local v14, "collidedCellColIndex":I
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/Cell;->isEmptyCell()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1430
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->getLastNonEmptyCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v17

    .line 1431
    .local v17, "firstNonEmptyCell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v15

    .line 1432
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v14

    .line 1440
    .end local v17    # "firstNonEmptyCell":Lcom/smartisanos/launcher/view/Cell;
    :goto_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1441
    .local v9, "pclist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1443
    .local v10, "pglist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/smartisanos/launcher/view/AnimationController;->getNeedLinkedAnimationDataList(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v11

    .line 1445
    .local v11, "toward":I
    if-eq v4, v3, :cond_0

    .line 1447
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 1450
    :cond_0
    new-instance v1, Lcom/smartisanos/launcher/view/MultiPageAnimation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    new-instance v12, Lcom/smartisanos/launcher/view/AnimationController$9;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/smartisanos/launcher/view/AnimationController$9;-><init>(Lcom/smartisanos/launcher/view/AnimationController;)V

    invoke-direct/range {v1 .. v12}, Lcom/smartisanos/launcher/view/MultiPageAnimation;-><init>(Lcom/smartisanos/launcher/view/PageView;Lcom/smartisanos/launcher/view/Page;Lcom/smartisanos/launcher/view/Page;IIIILjava/util/ArrayList;Ljava/util/ArrayList;ILcom/smartisanos/smengine/Animation$AnimationListener;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageAnimation:Lcom/smartisanos/launcher/view/MultiPageAnimation;

    .line 1520
    if-eq v4, v3, :cond_1

    .line 1521
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/Cell;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 1524
    :cond_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v15, v14}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 1526
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v0, v18

    if-ge v0, v1, :cond_4

    .line 1527
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/smartisanos/launcher/view/Page;

    .line 1528
    .local v20, "pg":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/Page;->reSortChildren()V

    .line 1526
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 1421
    .end local v3    # "colliderPage":Lcom/smartisanos/launcher/view/Page;
    .end local v4    # "collidedPage":Lcom/smartisanos/launcher/view/Page;
    .end local v9    # "pclist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v10    # "pglist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .end local v11    # "toward":I
    .end local v14    # "collidedCellColIndex":I
    .end local v15    # "collidedCellRowIndex":I
    .end local v18    # "i":I
    .end local v20    # "pg":Lcom/smartisanos/launcher/view/Page;
    :cond_2
    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Page;

    .restart local v3    # "colliderPage":Lcom/smartisanos/launcher/view/Page;
    goto :goto_0

    .line 1435
    .restart local v4    # "collidedPage":Lcom/smartisanos/launcher/view/Page;
    .restart local v14    # "collidedCellColIndex":I
    .restart local v15    # "collidedCellRowIndex":I
    :cond_3
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v15

    .line 1436
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v14

    goto :goto_1

    .line 1531
    .restart local v9    # "pclist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .restart local v10    # "pglist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .restart local v11    # "toward":I
    .restart local v18    # "i":I
    :cond_4
    return-void
.end method

.method private cellPullAnimation()V
    .locals 23

    .prologue
    .line 2201
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2202
    .local v9, "pclist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2204
    .local v10, "pglist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/smartisanos/launcher/view/AnimationController;->getNeedPullAnimationDataList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2206
    const/16 v19, -0x1

    .line 2207
    .local v19, "currentSelectCellRowIndex":I
    const/16 v18, -0x1

    .line 2211
    .local v18, "currentSelectCellColIndex":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v19

    .line 2212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v18

    .line 2214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/Cell;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 2217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mLastTimeCollidedPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v20, v0

    .line 2218
    .local v20, "headerPage":Lcom/smartisanos/launcher/view/Page;
    if-nez v20, :cond_0

    .line 2220
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "headerPage":Lcom/smartisanos/launcher/view/Page;
    check-cast v20, Lcom/smartisanos/launcher/view/Page;

    .line 2223
    .restart local v20    # "headerPage":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstHasEmptyPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    .line 2225
    .local v22, "tailPage":Lcom/smartisanos/launcher/view/Page;
    if-nez v22, :cond_1

    .line 2226
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "tailPage":Lcom/smartisanos/launcher/view/Page;
    check-cast v22, Lcom/smartisanos/launcher/view/Page;

    .line 2229
    .restart local v22    # "tailPage":Lcom/smartisanos/launcher/view/Page;
    :cond_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 2233
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v12

    .line 2234
    .local v12, "createEmptyCellRow":I
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v13

    .line 2236
    .local v13, "createEmptyCellCol":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v5

    .line 2238
    .local v5, "targetPageIndex":I
    new-instance v3, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    new-instance v11, Lcom/smartisanos/launcher/view/AnimationController$13;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/smartisanos/launcher/view/AnimationController$13;-><init>(Lcom/smartisanos/launcher/view/AnimationController;)V

    invoke-direct/range {v3 .. v11}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;-><init>(Lcom/smartisanos/launcher/view/PageView;IIIILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageHasEmptyPageRevertAnimation:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    .line 2307
    new-instance v17, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct/range {v17 .. v17}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 2308
    .local v17, "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, v22

    invoke-virtual/range {v11 .. v17}, Lcom/smartisanos/launcher/view/Page;->createEmptyCellReturnTimeLine(IIZFLcom/smartisanos/smengine/Animation$AnimationListener;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/launcher/view/Cell;

    .line 2310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageHasEmptyPageRevertAnimation:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v3

    const v4, 0x3e99999a    # 0.3f

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 2311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageHasEmptyPageRevertAnimation:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 2315
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/smartisanos/launcher/view/Page;

    .line 2316
    .local v21, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/Page;->reSortChildren()V

    goto :goto_0

    .line 2320
    .end local v5    # "targetPageIndex":I
    .end local v12    # "createEmptyCellRow":I
    .end local v13    # "createEmptyCellCol":I
    .end local v17    # "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v21    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_2
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/launcher/view/Page;->createEmptyCell(IIZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/launcher/view/Cell;

    .line 2321
    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/Page;->reSortChildren()V

    .line 2324
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstHasEmptyPage:Lcom/smartisanos/launcher/view/Page;

    .line 2325
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstEmptyCell:Lcom/smartisanos/launcher/view/Cell;

    const/4 v4, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v6}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 2327
    return-void
.end method

.method private cellPushAnimation()V
    .locals 19

    .prologue
    .line 1647
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/AnimationController;->mCurrentCollideData:Lcom/smartisanos/smengine/CollisionData;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/CollisionData;->getCollidedNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v13

    check-cast v13, Lcom/smartisanos/launcher/view/Page;

    .line 1648
    .local v13, "currentCollidedPage":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/AnimationController;->mCurrentCollideData:Lcom/smartisanos/smengine/CollisionData;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/CollisionData;->getCollidedNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/Cell;

    .line 1650
    .local v10, "collidedCell":Lcom/smartisanos/launcher/view/Cell;
    const/4 v12, -0x1

    .line 1651
    .local v12, "collidedCellRowIndex":I
    const/4 v11, -0x1

    .line 1653
    .local v11, "collidedCellColIndex":I
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->isEmptyCell()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1654
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/Page;->getFirstEmptyCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v14

    .line 1655
    .local v14, "firstEmptyCell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v12

    .line 1656
    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v11

    .line 1664
    .end local v14    # "firstEmptyCell":Lcom/smartisanos/launcher/view/Cell;
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v1, v13}, Lcom/smartisanos/launcher/view/PageView;->getFirstPageNotFullAfterCollidedPage(Lcom/smartisanos/launcher/view/Page;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstHasEmptyPage:Lcom/smartisanos/launcher/view/Page;

    .line 1665
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstHasEmptyPage:Lcom/smartisanos/launcher/view/Page;

    if-nez v1, :cond_0

    .line 1666
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->createEmptyScreen()V

    .line 1669
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v1, v13}, Lcom/smartisanos/launcher/view/PageView;->getFirstPageNotFullAfterCollidedPage(Lcom/smartisanos/launcher/view/Page;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstHasEmptyPage:Lcom/smartisanos/launcher/view/Page;

    .line 1670
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstHasEmptyPage:Lcom/smartisanos/launcher/view/Page;

    if-nez v1, :cond_2

    .line 1671
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "### createEmptyScreen fail.........."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1659
    :cond_1
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v12

    .line 1660
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v11

    goto :goto_0

    .line 1674
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstHasEmptyPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getFirstEmptyCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v14

    .line 1675
    .restart local v14    # "firstEmptyCell":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstEmptyCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v2

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 1678
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1679
    .local v7, "pclist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1681
    .local v8, "pglist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/smartisanos/launcher/view/AnimationController;->getNeedPushAnimationDataList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1684
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstEmptyCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v17

    .line 1685
    .local v17, "firstEmptyCellRowIndex":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstEmptyCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v15

    .line 1686
    .local v15, "firstEmptyCellColIndex":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstHasEmptyPage:Lcom/smartisanos/launcher/view/Page;

    move/from16 v0, v17

    invoke-virtual {v1, v0, v15}, Lcom/smartisanos/launcher/view/Page;->getIndex(II)I

    move-result v16

    .line 1688
    .local v16, "firstEmptyCellIndex":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstHasEmptyPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v3

    .line 1691
    .local v3, "firstEmptyPageIndex":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstHasEmptyPage:Lcom/smartisanos/launcher/view/Page;

    const/4 v2, 0x1

    invoke-virtual {v1, v14, v2}, Lcom/smartisanos/launcher/view/Page;->removePageCell(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 1692
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstHasEmptyPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->reSortChildren()V

    .line 1694
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1696
    new-instance v1, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    new-instance v9, Lcom/smartisanos/launcher/view/AnimationController$10;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/smartisanos/launcher/view/AnimationController$10;-><init>(Lcom/smartisanos/launcher/view/AnimationController;)V

    invoke-direct/range {v1 .. v9}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;-><init>(Lcom/smartisanos/launcher/view/PageView;IIIILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageHasEmptyPageAnimation:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;

    .line 1765
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/smartisanos/launcher/view/Cell;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 1766
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    invoke-virtual {v1, v12, v11}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 1769
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    sget v2, Lcom/smartisanos/launcher/view/Cell;->CELL_INTO_OTHER_PAGE:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setCellAnimationStatus(I)V

    .line 1772
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/smartisanos/launcher/view/Page;

    .line 1773
    .local v18, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Page;->reSortChildren()V

    goto :goto_1

    .line 1776
    .end local v18    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_4
    return-void
.end method

.method private changeScreenAnimation()V
    .locals 6

    .prologue
    .line 436
    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex()I

    move-result v0

    .line 440
    .local v0, "currentScreenIndex":I
    const/4 v1, -0x1

    .line 441
    .local v1, "toIndex":I
    iget v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mChangeScreenToward:I

    if-gez v2, :cond_1

    .line 442
    add-int/lit8 v1, v0, -0x1

    .line 450
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mChangeScreenAnimationTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v2, :cond_0

    .line 451
    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mChangeScreenAnimationTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 452
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mChangeScreenAnimationTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 454
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->getScreenCount()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/smartisanos/launcher/view/PageView;->sinkPageAndShowDotView(II)V

    .line 455
    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    const v3, 0x3ecccccd    # 0.4f

    const/4 v4, 0x0

    new-instance v5, Lcom/smartisanos/launcher/view/AnimationController$3;

    invoke-direct {v5, p0}, Lcom/smartisanos/launcher/view/AnimationController$3;-><init>(Lcom/smartisanos/launcher/view/AnimationController;)V

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/smartisanos/launcher/view/PageView;->scrollTo(IFZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mChangeScreenAnimationTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 481
    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mChangeScreenAnimationTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 484
    return-void

    .line 444
    :cond_1
    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method private cleanNeedForceRenderPageList()V
    .locals 3

    .prologue
    .line 2675
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mNeedForceRenderPageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2676
    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mNeedForceRenderPageList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Page;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Page;->setSceneNodeForceRender(Z)V

    .line 2675
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2679
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mNeedForceRenderPageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2680
    return-void
.end method

.method private createChangeScreenAnimationEvent()Lcom/smartisanos/smengine/Event;
    .locals 2

    .prologue
    .line 263
    new-instance v0, Lcom/smartisanos/launcher/view/AnimationController$1;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/view/AnimationController$1;-><init>(Lcom/smartisanos/launcher/view/AnimationController;I)V

    .line 272
    .local v0, "e":Lcom/smartisanos/smengine/Event;
    return-object v0
.end method

.method private createHandleMyNotifyAnimationEvent()Lcom/smartisanos/smengine/Event;
    .locals 2

    .prologue
    .line 277
    new-instance v0, Lcom/smartisanos/launcher/view/AnimationController$2;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/view/AnimationController$2;-><init>(Lcom/smartisanos/launcher/view/AnimationController;I)V

    .line 287
    .local v0, "e":Lcom/smartisanos/smengine/Event;
    return-object v0
.end method

.method private generateNeedForceRenderPageList()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 2641
    iget-object v8, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/PageView;->getScreenCount()I

    move-result v7

    .line 2642
    .local v7, "screenCount":I
    if-ne v7, v10, :cond_1

    .line 2672
    :cond_0
    :goto_0
    return-void

    .line 2647
    :cond_1
    iget-object v8, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/PageView;->getAllPagesInWindow()Ljava/util/ArrayList;

    move-result-object v0

    .line 2651
    .local v0, "allPagesInWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Page;

    .line 2652
    .local v3, "lastPageInWindow":Lcom/smartisanos/launcher/view/Page;
    iget-object v8, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v8, v3}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v4

    .line 2654
    .local v4, "lastPageIndex":I
    iget-object v8, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v5

    .line 2655
    .local v5, "nextPage":Lcom/smartisanos/launcher/view/Page;
    if-eqz v5, :cond_2

    .line 2656
    invoke-virtual {v5, v10}, Lcom/smartisanos/launcher/view/Page;->setSceneNodeForceRender(Z)V

    .line 2657
    iget-object v8, p0, Lcom/smartisanos/launcher/view/AnimationController;->mNeedForceRenderPageList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2663
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Page;

    .line 2664
    .local v1, "firstPageInWindow":Lcom/smartisanos/launcher/view/Page;
    iget-object v8, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v8, v1}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v2

    .line 2665
    .local v2, "firstPageIndex":I
    iget-object v8, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v6

    .line 2666
    .local v6, "prePage":Lcom/smartisanos/launcher/view/Page;
    if-eqz v6, :cond_0

    .line 2667
    invoke-virtual {v6, v10}, Lcom/smartisanos/launcher/view/Page;->setSceneNodeForceRender(Z)V

    .line 2668
    iget-object v8, p0, Lcom/smartisanos/launcher/view/AnimationController;->mNeedForceRenderPageList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getNeedLinkedAnimationDataList(Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1535
    .local p1, "cellList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .local p2, "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/AnimationController;->mCurrentCollideData:Lcom/smartisanos/smengine/CollisionData;

    invoke-virtual {v15}, Lcom/smartisanos/smengine/CollisionData;->getColliderNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/Cell;

    .line 1536
    .local v6, "colliderCell":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/AnimationController;->mCurrentCollideData:Lcom/smartisanos/smengine/CollisionData;

    invoke-virtual {v15}, Lcom/smartisanos/smengine/CollisionData;->getCollidedNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Cell;

    .line 1539
    .local v3, "collidedCell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v15

    instance-of v15, v15, Lcom/smartisanos/launcher/view/PageView;

    if-eqz v15, :cond_2

    .line 1540
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/Page;

    .line 1545
    .local v10, "currentColliderPage":Lcom/smartisanos/launcher/view/Page;
    :goto_0
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/Page;

    .line 1547
    .local v9, "currentCollidedPage":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v15, v10}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v8

    .line 1548
    .local v8, "colliderPageIndex":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v15, v9}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v5

    .line 1550
    .local v5, "collidedPageIndex":I
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v15

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v7

    .line 1551
    .local v7, "colliderCellIndex":I
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v15

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v4

    .line 1553
    .local v4, "collidedCellIndex":I
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->isEmptyCell()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1554
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Page;->getLastNonEmptyCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v12

    .line 1555
    .local v12, "lastNonEmptyCell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v15

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v4

    .line 1558
    .end local v12    # "lastNonEmptyCell":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    const/4 v14, -0x1

    .line 1560
    .local v14, "toward":I
    if-le v8, v5, :cond_6

    .line 1562
    const/4 v14, 0x1

    .line 1563
    move v11, v8

    .local v11, "i":I
    :goto_1
    if-lt v11, v5, :cond_d

    .line 1564
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v15, v11}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v13

    .line 1565
    .local v13, "pg":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/Page;->isPageHidden()Z

    move-result v15

    if-nez v15, :cond_1

    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/Page;->isPageLock()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1563
    :cond_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 1542
    .end local v4    # "collidedCellIndex":I
    .end local v5    # "collidedPageIndex":I
    .end local v7    # "colliderCellIndex":I
    .end local v8    # "colliderPageIndex":I
    .end local v9    # "currentCollidedPage":Lcom/smartisanos/launcher/view/Page;
    .end local v10    # "currentColliderPage":Lcom/smartisanos/launcher/view/Page;
    .end local v11    # "i":I
    .end local v13    # "pg":Lcom/smartisanos/launcher/view/Page;
    .end local v14    # "toward":I
    :cond_2
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/Page;

    .restart local v10    # "currentColliderPage":Lcom/smartisanos/launcher/view/Page;
    goto :goto_0

    .line 1569
    .restart local v4    # "collidedCellIndex":I
    .restart local v5    # "collidedPageIndex":I
    .restart local v7    # "colliderCellIndex":I
    .restart local v8    # "colliderPageIndex":I
    .restart local v9    # "currentCollidedPage":Lcom/smartisanos/launcher/view/Page;
    .restart local v11    # "i":I
    .restart local v13    # "pg":Lcom/smartisanos/launcher/view/Page;
    .restart local v14    # "toward":I
    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1571
    if-ne v13, v10, :cond_4

    .line 1573
    add-int/lit8 v2, v7, -0x1

    .local v2, "cellIndex":I
    :goto_2
    if-ltz v2, :cond_1

    .line 1574
    invoke-virtual {v13, v2}, Lcom/smartisanos/launcher/view/Page;->getCell(I)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    .line 1575
    .local v1, "c":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1573
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1577
    .end local v1    # "c":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "cellIndex":I
    :cond_4
    if-ne v13, v9, :cond_5

    .line 1579
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/PageView;->getCurrentPageCellCount()I

    move-result v15

    add-int/lit8 v2, v15, -0x1

    .restart local v2    # "cellIndex":I
    :goto_3
    if-lt v2, v4, :cond_1

    .line 1580
    invoke-virtual {v13, v2}, Lcom/smartisanos/launcher/view/Page;->getCell(I)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    .line 1581
    .restart local v1    # "c":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1579
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 1585
    .end local v1    # "c":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "cellIndex":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/PageView;->getCurrentPageCellCount()I

    move-result v15

    add-int/lit8 v2, v15, -0x1

    .restart local v2    # "cellIndex":I
    :goto_4
    if-ltz v2, :cond_1

    .line 1586
    invoke-virtual {v13, v2}, Lcom/smartisanos/launcher/view/Page;->getCell(I)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    .line 1587
    .restart local v1    # "c":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1585
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 1591
    .end local v1    # "c":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "cellIndex":I
    .end local v11    # "i":I
    .end local v13    # "pg":Lcom/smartisanos/launcher/view/Page;
    :cond_6
    if-ne v8, v5, :cond_8

    .line 1592
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1594
    if-le v7, v4, :cond_7

    .line 1595
    const/4 v14, 0x1

    .line 1597
    add-int/lit8 v2, v7, -0x1

    .restart local v2    # "cellIndex":I
    :goto_5
    if-lt v2, v4, :cond_d

    .line 1598
    invoke-virtual {v9, v2}, Lcom/smartisanos/launcher/view/Page;->getCell(I)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    .line 1599
    .restart local v1    # "c":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1597
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 1602
    .end local v1    # "c":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "cellIndex":I
    :cond_7
    const/4 v14, 0x0

    .line 1604
    add-int/lit8 v2, v7, 0x1

    .restart local v2    # "cellIndex":I
    :goto_6
    if-gt v2, v4, :cond_d

    .line 1605
    invoke-virtual {v9, v2}, Lcom/smartisanos/launcher/view/Page;->getCell(I)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    .line 1606
    .restart local v1    # "c":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1604
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1610
    .end local v1    # "c":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "cellIndex":I
    :cond_8
    const/4 v14, 0x0

    .line 1611
    move v11, v8

    .restart local v11    # "i":I
    :goto_7
    if-gt v11, v5, :cond_d

    .line 1612
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v15, v11}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v13

    .line 1613
    .restart local v13    # "pg":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/Page;->isPageHidden()Z

    move-result v15

    if-nez v15, :cond_9

    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/Page;->isPageLock()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 1611
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 1617
    :cond_a
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1619
    if-ne v13, v10, :cond_b

    .line 1621
    add-int/lit8 v2, v7, 0x1

    .restart local v2    # "cellIndex":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/PageView;->getCurrentPageCellCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-gt v2, v15, :cond_9

    .line 1622
    invoke-virtual {v13, v2}, Lcom/smartisanos/launcher/view/Page;->getCell(I)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    .line 1623
    .restart local v1    # "c":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1621
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1625
    .end local v1    # "c":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "cellIndex":I
    :cond_b
    if-ne v13, v9, :cond_c

    .line 1627
    const/4 v2, 0x0

    .restart local v2    # "cellIndex":I
    :goto_9
    if-gt v2, v4, :cond_9

    .line 1628
    invoke-virtual {v13, v2}, Lcom/smartisanos/launcher/view/Page;->getCell(I)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    .line 1629
    .restart local v1    # "c":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1627
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1633
    .end local v1    # "c":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "cellIndex":I
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "cellIndex":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/PageView;->getCurrentPageCellCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-gt v2, v15, :cond_9

    .line 1634
    invoke-virtual {v13, v2}, Lcom/smartisanos/launcher/view/Page;->getCell(I)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    .line 1635
    .restart local v1    # "c":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1633
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1641
    .end local v1    # "c":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "cellIndex":I
    .end local v11    # "i":I
    .end local v13    # "pg":Lcom/smartisanos/launcher/view/Page;
    :cond_d
    return v14
.end method

.method private getNeedPullAnimationDataList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2332
    .local p1, "cellList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .local p2, "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstEmptyCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstEmptyCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 2337
    const/4 v7, -0x1

    .line 2338
    .local v7, "currentRowIndex":I
    const/4 v4, -0x1

    .line 2341
    .local v4, "currentColIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v7

    .line 2342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v4

    .line 2343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/smartisanos/launcher/view/PageView;->sIsInstanceFromPageView(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 2344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Page;

    .line 2349
    .local v5, "currentExitPage":Lcom/smartisanos/launcher/view/Page;
    :goto_0
    invoke-static {v7, v4}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v6

    .line 2352
    .local v6, "currentIndex":I
    add-int/lit8 v10, v6, 0x1

    .line 2354
    .local v10, "headOfDataListIndex":I
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Page;->getFirstEmptyCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v8

    .line 2356
    .local v8, "firstEmptyCellInCurrentPage":Lcom/smartisanos/launcher/view/Cell;
    const/16 v20, -0x1

    .line 2357
    .local v20, "tailOfDataListIndex":I
    if-nez v8, :cond_1

    .line 2359
    sget v21, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static/range {v21 .. v21}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v18

    .line 2360
    .local v18, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    invoke-static/range {v21 .. v22}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v20

    .line 2382
    .end local v18    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    :goto_1
    move v12, v10

    .local v12, "i":I
    :goto_2
    move/from16 v0, v20

    if-gt v12, v0, :cond_3

    .line 2383
    invoke-virtual {v5, v12}, Lcom/smartisanos/launcher/view/Page;->getCell(I)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v2

    .line 2384
    .local v2, "c":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2382
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 2346
    .end local v2    # "c":Lcom/smartisanos/launcher/view/Cell;
    .end local v5    # "currentExitPage":Lcom/smartisanos/launcher/view/Page;
    .end local v6    # "currentIndex":I
    .end local v8    # "firstEmptyCellInCurrentPage":Lcom/smartisanos/launcher/view/Cell;
    .end local v10    # "headOfDataListIndex":I
    .end local v12    # "i":I
    .end local v20    # "tailOfDataListIndex":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Page;

    .restart local v5    # "currentExitPage":Lcom/smartisanos/launcher/view/Page;
    goto :goto_0

    .line 2365
    .restart local v6    # "currentIndex":I
    .restart local v8    # "firstEmptyCellInCurrentPage":Lcom/smartisanos/launcher/view/Cell;
    .restart local v10    # "headOfDataListIndex":I
    .restart local v20    # "tailOfDataListIndex":I
    :cond_1
    const/16 v16, -0x1

    .line 2366
    .local v16, "lastNonEmptyCellRowIndex":I
    const/4 v15, -0x1

    .line 2367
    .local v15, "lastNonEmptyCellColIndex":I
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Page;->getLastNonEmptyCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v14

    .line 2368
    .local v14, "lastNonEmptyCell":Lcom/smartisanos/launcher/view/Cell;
    if-nez v14, :cond_2

    .line 2370
    const/16 v16, 0x0

    .line 2371
    const/4 v15, 0x0

    .line 2378
    :goto_3
    move/from16 v0, v16

    invoke-static {v0, v15}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v20

    goto :goto_1

    .line 2373
    :cond_2
    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v16

    .line 2374
    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v15

    goto :goto_3

    .line 2387
    .end local v14    # "lastNonEmptyCell":Lcom/smartisanos/launcher/view/Cell;
    .end local v15    # "lastNonEmptyCellColIndex":I
    .end local v16    # "lastNonEmptyCellRowIndex":I
    .restart local v12    # "i":I
    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2439
    .end local v4    # "currentColIndex":I
    .end local v5    # "currentExitPage":Lcom/smartisanos/launcher/view/Page;
    .end local v6    # "currentIndex":I
    .end local v7    # "currentRowIndex":I
    .end local v8    # "firstEmptyCellInCurrentPage":Lcom/smartisanos/launcher/view/Cell;
    .end local v10    # "headOfDataListIndex":I
    .end local v20    # "tailOfDataListIndex":I
    :cond_4
    return-void

    .line 2389
    .end local v12    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstEmptyCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstEmptyCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 2391
    :cond_6
    new-instance v21, Ljava/lang/RuntimeException;

    const-string v22, "mfirstEmptyCell value is wrong....."

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 2396
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mLastTimeCollidedPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v13

    .line 2397
    .local v13, "lastCollidedPageIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstHasEmptyPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v9

    .line 2399
    .local v9, "firstHasEmptyPageIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mLastTimeCollidedCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mLastTimeCollidedCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v22

    invoke-static/range {v21 .. v22}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v11

    .line 2400
    .local v11, "headerCellIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstEmptyCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstEmptyCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v22

    invoke-static/range {v21 .. v22}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v19

    .line 2403
    .local v19, "tailCellIndex":I
    move v12, v13

    .restart local v12    # "i":I
    :goto_4
    if-gt v12, v9, :cond_4

    .line 2404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v17

    .line 2405
    .local v17, "pg":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/Page;->isPageHidden()Z

    move-result v21

    if-nez v21, :cond_8

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/Page;->isPageLock()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 2403
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 2409
    :cond_9
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mLastTimeCollidedPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstHasEmptyPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 2412
    add-int/lit8 v3, v11, 0x1

    .local v3, "cellIndex":I
    :goto_5
    move/from16 v0, v19

    if-gt v3, v0, :cond_8

    .line 2413
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/Page;->getCell(I)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v2

    .line 2414
    .restart local v2    # "c":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2412
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2416
    .end local v2    # "c":Lcom/smartisanos/launcher/view/Cell;
    .end local v3    # "cellIndex":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mLastTimeCollidedPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 2419
    add-int/lit8 v3, v11, 0x1

    .restart local v3    # "cellIndex":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/PageView;->getCurrentPageCellCount()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-gt v3, v0, :cond_8

    .line 2420
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/Page;->getCell(I)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v2

    .line 2421
    .restart local v2    # "c":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2419
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 2423
    .end local v2    # "c":Lcom/smartisanos/launcher/view/Cell;
    .end local v3    # "cellIndex":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstHasEmptyPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 2424
    const/4 v3, 0x0

    .restart local v3    # "cellIndex":I
    :goto_7
    move/from16 v0, v19

    if-gt v3, v0, :cond_8

    .line 2425
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/Page;->getCell(I)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v2

    .line 2426
    .restart local v2    # "c":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2424
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 2429
    .end local v2    # "c":Lcom/smartisanos/launcher/view/Cell;
    .end local v3    # "cellIndex":I
    :cond_c
    const/4 v3, 0x0

    .restart local v3    # "cellIndex":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/PageView;->getCurrentPageCellCount()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-gt v3, v0, :cond_8

    .line 2430
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/Page;->getCell(I)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v2

    .line 2431
    .restart local v2    # "c":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2429
    add-int/lit8 v3, v3, 0x1

    goto :goto_8
.end method

.method private getNeedPullWhenCellIntoDockFromPageDataList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "cellList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .local p2, "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v9, -0x1

    .line 2550
    iget-object v8, p0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstEmptyCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v8

    if-eq v8, v9, :cond_5

    iget-object v8, p0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstEmptyCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v8

    if-eq v8, v9, :cond_5

    .line 2552
    iget-object v8, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v9, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLastTimeCollidedPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v5

    .line 2553
    .local v5, "lastCollidedPageIndex":I
    iget-object v8, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v9, p0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstHasEmptyPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v2

    .line 2555
    .local v2, "firstHasEmptyPageIndex":I
    iget-object v8, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLastTimeCollidedCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v8

    iget-object v9, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLastTimeCollidedCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v9

    invoke-static {v8, v9}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v3

    .line 2556
    .local v3, "headerCellIndex":I
    iget-object v8, p0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstEmptyCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v8

    iget-object v9, p0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstEmptyCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v9

    invoke-static {v8, v9}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v7

    .line 2559
    .local v7, "tailCellIndex":I
    move v4, v5

    .local v4, "i":I
    :goto_0
    if-gt v4, v2, :cond_5

    .line 2560
    iget-object v8, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v8, v4}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v6

    .line 2561
    .local v6, "pg":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Page;->isPageHidden()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Page;->isPageLock()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2559
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2565
    :cond_1
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2567
    iget-object v8, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLastTimeCollidedPage:Lcom/smartisanos/launcher/view/Page;

    iget-object v9, p0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstHasEmptyPage:Lcom/smartisanos/launcher/view/Page;

    if-ne v8, v9, :cond_2

    .line 2568
    add-int/lit8 v1, v3, 0x1

    .local v1, "cellIndex":I
    :goto_1
    if-gt v1, v7, :cond_0

    .line 2569
    invoke-virtual {v6, v1}, Lcom/smartisanos/launcher/view/Page;->getCell(I)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    .line 2570
    .local v0, "c":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2568
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2572
    .end local v0    # "c":Lcom/smartisanos/launcher/view/Cell;
    .end local v1    # "cellIndex":I
    :cond_2
    iget-object v8, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLastTimeCollidedPage:Lcom/smartisanos/launcher/view/Page;

    if-ne v6, v8, :cond_3

    .line 2575
    add-int/lit8 v1, v3, 0x1

    .restart local v1    # "cellIndex":I
    :goto_2
    iget-object v8, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/PageView;->getCurrentPageCellCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-gt v1, v8, :cond_0

    .line 2576
    invoke-virtual {v6, v1}, Lcom/smartisanos/launcher/view/Page;->getCell(I)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    .line 2577
    .restart local v0    # "c":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2575
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2579
    .end local v0    # "c":Lcom/smartisanos/launcher/view/Cell;
    .end local v1    # "cellIndex":I
    :cond_3
    iget-object v8, p0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstHasEmptyPage:Lcom/smartisanos/launcher/view/Page;

    if-ne v6, v8, :cond_4

    .line 2580
    const/4 v1, 0x0

    .restart local v1    # "cellIndex":I
    :goto_3
    if-gt v1, v7, :cond_0

    .line 2581
    invoke-virtual {v6, v1}, Lcom/smartisanos/launcher/view/Page;->getCell(I)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    .line 2582
    .restart local v0    # "c":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2580
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2585
    .end local v0    # "c":Lcom/smartisanos/launcher/view/Cell;
    .end local v1    # "cellIndex":I
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "cellIndex":I
    :goto_4
    iget-object v8, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/PageView;->getCurrentPageCellCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-gt v1, v8, :cond_0

    .line 2586
    invoke-virtual {v6, v1}, Lcom/smartisanos/launcher/view/Page;->getCell(I)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    .line 2587
    .restart local v0    # "c":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2585
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2593
    .end local v0    # "c":Lcom/smartisanos/launcher/view/Cell;
    .end local v1    # "cellIndex":I
    .end local v2    # "firstHasEmptyPageIndex":I
    .end local v3    # "headerCellIndex":I
    .end local v4    # "i":I
    .end local v5    # "lastCollidedPageIndex":I
    .end local v6    # "pg":Lcom/smartisanos/launcher/view/Page;
    .end local v7    # "tailCellIndex":I
    :cond_5
    return-void
.end method

.method private getNeedPushAnimationDataList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1780
    .local p1, "cellList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .local p2, "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/view/AnimationController;->mCurrentCollideData:Lcom/smartisanos/smengine/CollisionData;

    invoke-virtual {v14}, Lcom/smartisanos/smengine/CollisionData;->getCollidedNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v14

    invoke-virtual {v14}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Page;

    .line 1781
    .local v4, "currentCollidedPage":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/view/AnimationController;->mCurrentCollideData:Lcom/smartisanos/smengine/CollisionData;

    invoke-virtual {v14}, Lcom/smartisanos/smengine/CollisionData;->getCollidedNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Cell;

    .line 1784
    .local v3, "collidedCell":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstHasEmptyPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v14, v15}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v9

    .line 1785
    .local v9, "headerPageIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v14, v4}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v13

    .line 1787
    .local v13, "tailPageIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstHasEmptyPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/Page;->getLastNonEmptyCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v5

    .line 1788
    .local v5, "headerCell":Lcom/smartisanos/launcher/view/Cell;
    const/4 v8, -0x1

    .line 1789
    .local v8, "headerCellRowIndex":I
    const/4 v6, -0x1

    .line 1790
    .local v6, "headerCellColIndex":I
    if-nez v5, :cond_1

    .line 1791
    const/4 v8, -0x1

    .line 1792
    const/4 v6, -0x1

    .line 1797
    :goto_0
    invoke-static {v8, v6}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v7

    .line 1798
    .local v7, "headerCellIndex":I
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v14

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v15

    invoke-static {v14, v15}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v12

    .line 1803
    .local v12, "tailCellIndex":I
    move v10, v9

    .local v10, "i":I
    :goto_1
    if-lt v10, v13, :cond_6

    .line 1804
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v14, v10}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v11

    .line 1805
    .local v11, "pg":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/Page;->isPageHidden()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/Page;->isPageLock()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1803
    :cond_0
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 1794
    .end local v7    # "headerCellIndex":I
    .end local v10    # "i":I
    .end local v11    # "pg":Lcom/smartisanos/launcher/view/Page;
    .end local v12    # "tailCellIndex":I
    :cond_1
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v8

    .line 1795
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v6

    goto :goto_0

    .line 1812
    .restart local v7    # "headerCellIndex":I
    .restart local v10    # "i":I
    .restart local v11    # "pg":Lcom/smartisanos/launcher/view/Page;
    .restart local v12    # "tailCellIndex":I
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1814
    if-ne v9, v13, :cond_3

    .line 1816
    move v2, v7

    .local v2, "cellIndex":I
    :goto_2
    if-lt v2, v12, :cond_6

    .line 1817
    invoke-virtual {v11, v2}, Lcom/smartisanos/launcher/view/Page;->getCell(I)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    .line 1818
    .local v1, "c":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1816
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1821
    .end local v1    # "c":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "cellIndex":I
    :cond_3
    if-ne v10, v9, :cond_4

    .line 1823
    move v2, v7

    .restart local v2    # "cellIndex":I
    :goto_3
    if-ltz v2, :cond_0

    .line 1824
    invoke-virtual {v11, v2}, Lcom/smartisanos/launcher/view/Page;->getCell(I)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    .line 1825
    .restart local v1    # "c":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1823
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 1828
    .end local v1    # "c":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "cellIndex":I
    :cond_4
    if-ge v10, v9, :cond_5

    if-le v10, v13, :cond_5

    .line 1830
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/PageView;->getCurrentPageCellCount()I

    move-result v14

    add-int/lit8 v2, v14, -0x1

    .restart local v2    # "cellIndex":I
    :goto_4
    if-ltz v2, :cond_0

    .line 1831
    invoke-virtual {v11, v2}, Lcom/smartisanos/launcher/view/Page;->getCell(I)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    .line 1832
    .restart local v1    # "c":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1830
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 1834
    .end local v1    # "c":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "cellIndex":I
    :cond_5
    if-ne v10, v13, :cond_0

    .line 1836
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/PageView;->getCurrentPageCellCount()I

    move-result v14

    add-int/lit8 v2, v14, -0x1

    .restart local v2    # "cellIndex":I
    :goto_5
    if-lt v2, v12, :cond_0

    .line 1837
    invoke-virtual {v11, v2}, Lcom/smartisanos/launcher/view/Page;->getCell(I)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    .line 1838
    .restart local v1    # "c":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1836
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 1844
    .end local v1    # "c":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "cellIndex":I
    .end local v11    # "pg":Lcom/smartisanos/launcher/view/Page;
    :cond_6
    return-void
.end method

.method private getUninstallCellFromAdbDataList(Lcom/smartisanos/launcher/view/Cell;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 15
    .param p1, "uninstallCell"    # Lcom/smartisanos/launcher/view/Cell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/launcher/view/Cell;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2147
    .local p2, "cellList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .local p3, "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v5, -0x1

    .line 2148
    .local v5, "currentRowIndex":I
    const/4 v2, -0x1

    .line 2149
    .local v2, "currentColIndex":I
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Page;

    .line 2151
    .local v3, "currentExitPage":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v5

    .line 2152
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v2

    .line 2154
    invoke-static {v5, v2}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v4

    .line 2157
    .local v4, "currentIndex":I
    add-int/lit8 v7, v4, 0x1

    .line 2159
    .local v7, "headOfDataListIndex":I
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getFirstEmptyCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v6

    .line 2161
    .local v6, "firstEmptyCellInCurrentPage":Lcom/smartisanos/launcher/view/Cell;
    const/4 v13, -0x1

    .line 2162
    .local v13, "tailOfDataListIndex":I
    if-nez v6, :cond_0

    .line 2164
    sget v14, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v14}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v12

    .line 2167
    .local v12, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v13, v14, -0x1

    .line 2190
    .end local v12    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    :goto_0
    move v8, v7

    .local v8, "i":I
    :goto_1
    if-gt v8, v13, :cond_2

    .line 2191
    invoke-virtual {v3, v8}, Lcom/smartisanos/launcher/view/Page;->getCell(I)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    .line 2192
    .local v1, "c":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2190
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2173
    .end local v1    # "c":Lcom/smartisanos/launcher/view/Cell;
    .end local v8    # "i":I
    :cond_0
    const/4 v11, -0x1

    .line 2174
    .local v11, "lastNonEmptyCellRowIndex":I
    const/4 v10, -0x1

    .line 2175
    .local v10, "lastNonEmptyCellColIndex":I
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getLastNonEmptyCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v9

    .line 2176
    .local v9, "lastNonEmptyCell":Lcom/smartisanos/launcher/view/Cell;
    if-nez v9, :cond_1

    .line 2178
    const/4 v11, 0x0

    .line 2179
    const/4 v10, 0x0

    .line 2186
    :goto_2
    invoke-static {v11, v10}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v13

    goto :goto_0

    .line 2181
    :cond_1
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v11

    .line 2182
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v10

    goto :goto_2

    .line 2195
    .end local v9    # "lastNonEmptyCell":Lcom/smartisanos/launcher/view/Cell;
    .end local v10    # "lastNonEmptyCellColIndex":I
    .end local v11    # "lastNonEmptyCellRowIndex":I
    .restart local v8    # "i":I
    :cond_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2196
    return-void
.end method

.method private handleCellUpOnPageNotify()Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 22

    .prologue
    .line 634
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisanos/launcher/view/AnimationController;->mReceivedChangeScreen:Z

    .line 635
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/AnimationController;->removeDelayHandleEvent()V

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v14

    .line 638
    .local v14, "selectedCell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/AnimationController;->forceCollideWith()V

    .line 641
    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/smartisanos/launcher/view/PageView;->sIsInstanceFromPageView(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 642
    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/Page;

    .line 646
    .local v9, "parent":Lcom/smartisanos/launcher/view/Page;
    :goto_0
    if-nez v9, :cond_7

    .line 647
    sget-boolean v19, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v19, :cond_0

    sget-object v19, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    const-string v20, "### parent = null"

    invoke-virtual/range {v19 .. v20}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 652
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/PageView;->resetCollisionListenerForPageCell()V

    .line 654
    new-instance v10, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v10}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 656
    .local v10, "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v18

    .line 657
    .local v18, "targetScreenIndex":I
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/PageView;->getScreenCount()I

    move-result v11

    .line 658
    .local v11, "screenCount":I
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex()I

    move-result v5

    .line 660
    .local v5, "currentScreenIndex":I
    move/from16 v0, v18

    if-ne v5, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/PageView;->scrollAnimationIsRunning()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 661
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11, v5}, Lcom/smartisanos/launcher/view/PageView;->sinkPageAndShowDotView(II)V

    .line 662
    sget-boolean v19, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v19, :cond_2

    sget-object v19, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "### targetScreenIndex = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 663
    :cond_2
    const v13, 0x3e99999a    # 0.3f

    .line 664
    .local v13, "screenScrollDuration":F
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v19

    const/16 v20, 0x0

    new-instance v21, Lcom/smartisanos/launcher/view/AnimationController$5;

    invoke-direct/range {v21 .. v22}, Lcom/smartisanos/launcher/view/AnimationController$5;-><init>(Lcom/smartisanos/launcher/view/AnimationController;)V

    .line 665
    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v13, v2, v3}, Lcom/smartisanos/launcher/view/PageView;->scrollTo(IFZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v12

    .line 673
    .local v12, "screenScroll":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v0, v12}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 680
    .end local v12    # "screenScroll":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v13    # "screenScrollDuration":F
    :goto_2
    const v19, 0x3e99999a    # 0.3f

    const/16 v20, 0x1

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v14, v9, v0, v1, v2}, Lcom/smartisanos/launcher/view/Cell;->cellUpOnPageView(Lcom/smartisanos/launcher/view/Page;FZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v4

    .line 682
    .local v4, "cellUpaAnimationTimeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/16 v19, 0x0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setRenderBgToRenderTargetAndBatchDraw(ZZ)V

    .line 683
    sget-boolean v19, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v19, :cond_d

    .line 684
    sget v19, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v20, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 687
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Page;->reSetBackgroundImage()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v17

    .line 688
    .local v17, "targetPageResetBackgroundTimeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    if-eqz v17, :cond_3

    .line 689
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 692
    :cond_3
    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/smartisanos/launcher/view/PageView;->sIsInstanceFromPageView(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 693
    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/Cell;->reSetBackground()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v15

    .line 694
    .local v15, "selectedTimeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    if-eqz v15, :cond_4

    .line 695
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0, v15}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 699
    .end local v15    # "selectedTimeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v16

    .line 700
    .local v16, "shownPageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_c

    .line 701
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/Page;

    .line 702
    .local v8, "p":Lcom/smartisanos/launcher/view/Page;
    if-eq v8, v9, :cond_5

    .line 703
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Page;->reSetBackgroundImageNoAnimation()V

    .line 700
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 644
    .end local v4    # "cellUpaAnimationTimeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v5    # "currentScreenIndex":I
    .end local v7    # "i":I
    .end local v8    # "p":Lcom/smartisanos/launcher/view/Page;
    .end local v9    # "parent":Lcom/smartisanos/launcher/view/Page;
    .end local v10    # "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v11    # "screenCount":I
    .end local v16    # "shownPageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .end local v17    # "targetPageResetBackgroundTimeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v18    # "targetScreenIndex":I
    :cond_6
    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/Page;

    .restart local v9    # "parent":Lcom/smartisanos/launcher/view/Page;
    goto/16 :goto_0

    .line 649
    :cond_7
    sget-boolean v19, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v19, :cond_0

    sget-object v19, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    const-string v20, "## parent != null"

    invoke-virtual/range {v19 .. v20}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 675
    .restart local v5    # "currentScreenIndex":I
    .restart local v10    # "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    .restart local v11    # "screenCount":I
    .restart local v18    # "targetScreenIndex":I
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/PageView;->cleanEmptyScreenNoAnimation()V

    goto/16 :goto_2

    .line 707
    .restart local v4    # "cellUpaAnimationTimeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    :cond_9
    sget v19, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v20, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    sget-boolean v19, Lcom/smartisanos/launcher/theme/ThemeManager;->mNeedResetBackgroundInMultiPageMode:Z

    if-eqz v19, :cond_c

    .line 708
    sget-object v19, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    const-string v20, "##### reset background multi page mode"

    invoke-virtual/range {v19 .. v20}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 709
    const/4 v6, 0x0

    .line 710
    .local v6, "delay":F
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/AnimationController;->hasAnimationPlaying()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 711
    sget-object v19, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    const-string v20, "######## delay resetBackground"

    invoke-virtual/range {v19 .. v20}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 712
    const v6, 0x3f19999a    # 0.6f

    .line 714
    :cond_a
    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/smartisanos/launcher/view/PageView;->sIsInstanceFromPageView(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 715
    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/Cell;->reSetBackground()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v15

    .line 716
    .restart local v15    # "selectedTimeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    if-eqz v15, :cond_b

    .line 717
    invoke-virtual {v4, v6, v15}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 721
    .end local v15    # "selectedTimeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/PageView;->resetAllPageBackground()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v6, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 732
    .end local v6    # "delay":F
    :cond_c
    :goto_4
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v0, v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 734
    return-object v10

    .line 724
    :cond_d
    sget v19, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v20, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/PageView;->resetAllPageBackgroundNoAnimation()V

    .line 726
    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/smartisanos/launcher/view/PageView;->sIsInstanceFromPageView(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 727
    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/Cell;->reSetBackgroundNoAnimation()V

    goto :goto_4
.end method

.method private handleMyAnimationNotify(I)V
    .locals 24
    .param p1, "a"    # I

    .prologue
    .line 1232
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mHasAnimationPlaying:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 1405
    :cond_0
    :goto_0
    return-void

    .line 1236
    :cond_1
    sget v20, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v21, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/PageView;->isAllPageIsInvisible()Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/PageView;->isOverPageCountLimited()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1238
    sget-boolean v20, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v20, :cond_0

    sget-object v20, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    const-string v21, "#### page is reach max count and all pages are invisible."

    invoke-virtual/range {v20 .. v21}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 1243
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/smartisanos/launcher/view/PageView;->sIsInstanceFromPageView(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/Page;

    .line 1249
    .local v8, "colliderPage":Lcom/smartisanos/launcher/view/Page;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mCurrentCollideData:Lcom/smartisanos/smengine/CollisionData;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/CollisionData;->getCollidedNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Page;

    .line 1250
    .local v4, "collidedPage":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mCurrentCollideData:Lcom/smartisanos/smengine/CollisionData;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/CollisionData;->getCollidedNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Cell;

    .line 1251
    .local v3, "collided":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mCurrentCollideData:Lcom/smartisanos/smengine/CollisionData;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/CollisionData;->getColliderNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/Cell;

    .line 1255
    .local v6, "collider":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->isPageLock()Z

    move-result v20

    if-nez v20, :cond_3

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->isPageHidden()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1256
    :cond_3
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->getFirstEmptyCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v20

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_0

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/smartisanos/launcher/view/PageView;->sIsInstanceFromPageView(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v20

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_0

    .line 1269
    :cond_4
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->isPageHidden()Z

    move-result v20

    if-nez v20, :cond_5

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->isPageLock()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1271
    :cond_5
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->getFirstEmptyCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v11

    .line 1272
    .local v11, "firstEmptyCell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v14

    .line 1273
    .local v14, "firstEmptyCellRowIndex":I
    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v12

    .line 1275
    .local v12, "firstEmptyCellColIndex":I
    if-eqz v8, :cond_6

    .line 1276
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/AnimationController;->cellPullAnimation()V

    .line 1280
    :cond_6
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v11, v0}, Lcom/smartisanos/launcher/view/Page;->removePageCell(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 1281
    invoke-virtual {v6, v4}, Lcom/smartisanos/launcher/view/Cell;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 1282
    invoke-virtual {v6, v14, v12}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 1283
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->reSortChildren()V

    goto/16 :goto_0

    .line 1247
    .end local v3    # "collided":Lcom/smartisanos/launcher/view/Cell;
    .end local v4    # "collidedPage":Lcom/smartisanos/launcher/view/Page;
    .end local v6    # "collider":Lcom/smartisanos/launcher/view/Cell;
    .end local v8    # "colliderPage":Lcom/smartisanos/launcher/view/Page;
    .end local v11    # "firstEmptyCell":Lcom/smartisanos/launcher/view/Cell;
    .end local v12    # "firstEmptyCellColIndex":I
    .end local v14    # "firstEmptyCellRowIndex":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mCurrentCollideData:Lcom/smartisanos/smengine/CollisionData;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/CollisionData;->getColliderNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/Page;

    .restart local v8    # "colliderPage":Lcom/smartisanos/launcher/view/Page;
    goto/16 :goto_1

    .line 1288
    .restart local v3    # "collided":Lcom/smartisanos/launcher/view/Cell;
    .restart local v4    # "collidedPage":Lcom/smartisanos/launcher/view/Page;
    .restart local v6    # "collider":Lcom/smartisanos/launcher/view/Cell;
    :cond_8
    if-nez v8, :cond_a

    .line 1290
    new-instance v2, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1291
    .local v2, "cellPos":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v20, v0

    iget v0, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v21, v0

    iget v0, v2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v20 .. v23}, Lcom/smartisanos/launcher/view/PageView;->getPageByTouchPointInWorldCoordinate(FFZ)Lcom/smartisanos/launcher/view/Page;

    move-result-object v19

    .line 1293
    .local v19, "underPage":Lcom/smartisanos/launcher/view/Page;
    if-nez v19, :cond_9

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v20, v0

    iget v0, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v21, v0

    iget v0, v2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/smartisanos/launcher/view/PageView;->getNearestPageFromPointInWorldCoordinate(FF)Lcom/smartisanos/launcher/view/Page;

    move-result-object v19

    .line 1297
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/AnimationController;->isReachedMaxPageCountAndDisableCreateNewPage(Lcom/smartisanos/launcher/view/Page;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 1301
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/AnimationController;->cellPushAnimation()V

    .line 1302
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/AnimationController;->saveLastTimeCollided()V

    goto/16 :goto_0

    .line 1308
    .end local v2    # "cellPos":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v19    # "underPage":Lcom/smartisanos/launcher/view/Page;
    :cond_a
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Page;->isPageHidden()Z

    move-result v20

    if-nez v20, :cond_b

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Page;->isPageLock()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 1309
    :cond_b
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v10

    .line 1310
    .local v10, "colliderRowIndex":I
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v7

    .line 1312
    .local v7, "colliderColIndex":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/AnimationController;->isReachedMaxPageCountAndDisableCreateNewPage(Lcom/smartisanos/launcher/view/Page;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 1316
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/AnimationController;->cellPushAnimation()V

    .line 1319
    const/16 v20, 0x1

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v10, v7, v0, v1}, Lcom/smartisanos/launcher/view/Page;->createEmptyCell(IIZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/launcher/view/Cell;

    .line 1321
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Page;->reSortChildren()V

    .line 1323
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/AnimationController;->saveLastTimeCollided()V

    goto/16 :goto_0

    .line 1329
    .end local v7    # "colliderColIndex":I
    .end local v10    # "colliderRowIndex":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v9

    .line 1330
    .local v9, "colliderPageIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v5

    .line 1332
    .local v5, "collidedPageIndex":I
    if-ge v5, v9, :cond_10

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/PageView;->getFirstPageNotFullAfterCollidedPage(Lcom/smartisanos/launcher/view/Page;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v16

    .line 1335
    .local v16, "firstHasEmptyPage":Lcom/smartisanos/launcher/view/Page;
    if-eqz v16, :cond_f

    .line 1337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v15

    .line 1338
    .local v15, "firstHasEmptyCellPageIndexFromCollidedPage":I
    if-ge v15, v9, :cond_d

    .line 1343
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/AnimationController;->cellPullAnimation()V

    .line 1346
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/AnimationController;->cellPushAnimation()V

    .line 1348
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/AnimationController;->saveLastTimeCollided()V

    goto/16 :goto_0

    .line 1355
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstEmptyCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstEmptyCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/PageView;->getFirstPageNotFullAfterCollidedPage(Lcom/smartisanos/launcher/view/Page;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/view/AnimationController;->mFirstHasEmptyPage:Lcom/smartisanos/launcher/view/Page;

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstHasEmptyPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/Page;->getFirstEmptyCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v11

    .line 1359
    .restart local v11    # "firstEmptyCell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v20

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v21

    invoke-static/range {v20 .. v21}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v13

    .line 1361
    .local v13, "firstEmptyCellIndex":I
    if-nez v13, :cond_e

    .line 1362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/PageView;->getCurrentPageCellCount()I

    move-result v13

    .line 1363
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstHasEmptyPage:Lcom/smartisanos/launcher/view/Page;

    .line 1366
    :cond_e
    add-int/lit8 v20, v13, -0x1

    invoke-static/range {v20 .. v20}, Lcom/smartisanos/launcher/view/Page;->createRowAndColIndexFromIndex(I)Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v18

    .line 1367
    .local v18, "lastNonEmptyCellPos":Lcom/smartisanos/smengine/math/Vector2f;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstEmptyCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 1373
    .end local v11    # "firstEmptyCell":Lcom/smartisanos/launcher/view/Cell;
    .end local v13    # "firstEmptyCellIndex":I
    .end local v15    # "firstHasEmptyCellPageIndexFromCollidedPage":I
    .end local v18    # "lastNonEmptyCellPos":Lcom/smartisanos/smengine/math/Vector2f;
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/AnimationController;->cellLinkedAnimation()V

    .line 1404
    .end local v16    # "firstHasEmptyPage":Lcom/smartisanos/launcher/view/Page;
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/AnimationController;->saveLastTimeCollided()V

    goto/16 :goto_0

    .line 1374
    :cond_10
    if-ne v5, v9, :cond_11

    .line 1376
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/AnimationController;->cellLinkedAnimation()V

    goto :goto_2

    .line 1381
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstHasEmptyPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v20, v0

    if-eqz v20, :cond_12

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstHasEmptyPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v17

    .line 1384
    .local v17, "firstHasEmptyPageIndex":I
    move/from16 v0, v17

    if-gt v5, v0, :cond_12

    .line 1386
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/AnimationController;->cellLinkedAnimation()V

    .line 1388
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/AnimationController;->saveLastTimeCollided()V

    goto/16 :goto_0

    .line 1393
    .end local v17    # "firstHasEmptyPageIndex":I
    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/AnimationController;->isReachedMaxPageCountAndDisableCreateNewPage(Lcom/smartisanos/launcher/view/Page;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 1398
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/AnimationController;->cellPullAnimation()V

    .line 1401
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/AnimationController;->cellPushAnimation()V

    goto :goto_2
.end method

.method private postDelayHandleEvent()V
    .locals 3

    .prologue
    .line 1155
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/AnimationController;->createHandleMyNotifyAnimationEvent()Lcom/smartisanos/smengine/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mHandleMyNotifyAnimationEvent:Lcom/smartisanos/smengine/Event;

    .line 1156
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mHandleMyNotifyAnimationEvent:Lcom/smartisanos/smengine/Event;

    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/EventManager;->sendEvent(Lcom/smartisanos/smengine/Event;F)V

    .line 1158
    return-void
.end method

.method private removeDelayHandleEvent()V
    .locals 2

    .prologue
    .line 1161
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mHandleMyNotifyAnimationEvent:Lcom/smartisanos/smengine/Event;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/EventManager;->removeEvent(Lcom/smartisanos/smengine/Event;)V

    .line 1162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mHandleMyNotifyAnimationEvent:Lcom/smartisanos/smengine/Event;

    .line 1164
    return-void
.end method

.method private saveLastTimeCollided()V
    .locals 4

    .prologue
    .line 423
    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/launcher/view/PageView;->sIsInstanceFromPageView(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Page;

    iput-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLastTimeCollidedPage:Lcom/smartisanos/launcher/view/Page;

    .line 429
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mCurrentCollideData:Lcom/smartisanos/smengine/CollisionData;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/CollisionData;->getColliderNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 430
    .local v0, "collider":Lcom/smartisanos/launcher/view/Cell;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLastTimeCollidedCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v2

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 431
    return-void

    .line 426
    .end local v0    # "collider":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Page;

    iput-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLastTimeCollidedPage:Lcom/smartisanos/launcher/view/Page;

    goto :goto_0
.end method

.method private uninstallCellFromAdb(Lcom/smartisanos/launcher/view/Cell;Lcom/smartisanos/smengine/AnimationTimeLine;Z)V
    .locals 27
    .param p1, "uninstallCell"    # Lcom/smartisanos/launcher/view/Cell;
    .param p2, "result"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p3, "needForceFinish"    # Z

    .prologue
    .line 1849
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageHasEmptyPageRevertAnimation:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    if-eqz v3, :cond_0

    .line 1852
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageHasEmptyPageRevertAnimation:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 1854
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1855
    .local v9, "pclist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1857
    .local v10, "pglist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v10}, Lcom/smartisanos/launcher/view/AnimationController;->getUninstallCellFromAdbDataList(Lcom/smartisanos/launcher/view/Cell;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1859
    const/16 v18, -0x1

    .line 1860
    .local v18, "currentSelectCellRowIndex":I
    const/16 v17, -0x1

    .line 1864
    .local v17, "currentSelectCellColIndex":I
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v18

    .line 1865
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v17

    .line 1868
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/smartisanos/launcher/view/Page;

    .line 1870
    .local v19, "headerPage":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v24, v19

    .line 1872
    .local v24, "tailPage":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/Cell;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 1874
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 1877
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v14

    .line 1878
    .local v14, "createEmptyCellRow":I
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v13

    .line 1880
    .local v13, "createEmptyCellCol":I
    const/4 v5, -0x1

    .line 1882
    .local v5, "targetPageIndex":I
    const/16 v22, 0x0

    .line 1883
    .local v22, "needAnimation":Z
    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/Page;->isVisiblePage()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1884
    const/16 v22, 0x1

    .line 1888
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-boolean v3, v3, Lcom/smartisanos/launcher/view/PageView;->mIsInPageSwitchMode:Z

    if-nez v3, :cond_4

    .line 1889
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1890
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v22, :cond_4

    .line 1893
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 1894
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->lockTouchEvent()V

    .line 1898
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v5

    .line 1900
    new-instance v3, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    new-instance v11, Lcom/smartisanos/launcher/view/AnimationController$11;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v9}, Lcom/smartisanos/launcher/view/AnimationController$11;-><init>(Lcom/smartisanos/launcher/view/AnimationController;Ljava/util/ArrayList;)V

    invoke-direct/range {v3 .. v11}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;-><init>(Lcom/smartisanos/launcher/view/PageView;IIIILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageHasEmptyPageRevertAnimation:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    .line 1960
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14, v13, v3, v4}, Lcom/smartisanos/launcher/view/Page;->createEmptyCell(IIZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/launcher/view/Cell;

    .line 1962
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v4, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v3, v4, :cond_2

    sget-boolean v3, Lcom/smartisanos/launcher/theme/ThemeManager;->mNeedResetBackgroundInMultiPageMode:Z

    if-nez v3, :cond_2

    .line 1968
    :goto_1
    if-eqz p3, :cond_3

    .line 1970
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageHasEmptyPageRevertAnimation:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 1971
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageHasEmptyPageRevertAnimation:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 2013
    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/smartisanos/launcher/view/Page;

    .line 2014
    .local v23, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/launcher/view/Page;->reSortChildren()V

    goto :goto_3

    .line 1886
    .end local v23    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_1
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 1965
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageHasEmptyPageRevertAnimation:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/PageView;->resetAllPageBackground()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto :goto_1

    .line 1974
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageHasEmptyPageRevertAnimation:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto :goto_2

    .line 1981
    :cond_4
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_5

    .line 1983
    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/launcher/view/Cell;

    .line 1984
    .local v12, "c":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v16

    .line 1985
    .local v16, "currRowIndex":I
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v15

    .line 1986
    .local v15, "currColIndex":I
    move/from16 v0, v16

    invoke-static {v0, v15}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v21

    .line 1987
    .local v21, "index":I
    invoke-static/range {v21 .. v21}, Lcom/smartisanos/launcher/view/Page;->getBeforeOfIndex(I)I

    move-result v25

    .line 1988
    .local v25, "targetPosIndex":I
    invoke-static/range {v25 .. v25}, Lcom/smartisanos/launcher/view/Page;->createRowAndColIndexFromIndex(I)Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v26

    .line 1989
    .local v26, "targetRowCol":Lcom/smartisanos/smengine/math/Vector2f;
    move-object/from16 v0, v26

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    float-to-int v3, v3

    move-object/from16 v0, v26

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    float-to-int v4, v4

    invoke-virtual {v12, v3, v4}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 1990
    sget-object v3, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v3, v3, v25

    invoke-virtual {v3}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v3

    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v4, v4, v25

    .line 1991
    invoke-virtual {v4}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v4

    sget-object v6, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v6, v6, v25

    .line 1992
    invoke-virtual {v6}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v6

    .line 1990
    invoke-virtual {v12, v3, v4, v6}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 1993
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 1981
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 1998
    .end local v12    # "c":Lcom/smartisanos/launcher/view/Cell;
    .end local v15    # "currColIndex":I
    .end local v16    # "currRowIndex":I
    .end local v21    # "index":I
    .end local v25    # "targetPosIndex":I
    .end local v26    # "targetRowCol":Lcom/smartisanos/smengine/math/Vector2f;
    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14, v13, v3, v4}, Lcom/smartisanos/launcher/view/Page;->createEmptyCell(IIZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/launcher/view/Cell;

    goto/16 :goto_2

    .line 2019
    .end local v5    # "targetPageIndex":I
    .end local v13    # "createEmptyCellCol":I
    .end local v14    # "createEmptyCellRow":I
    .end local v20    # "i":I
    .end local v22    # "needAnimation":Z
    :cond_6
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2020
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/launcher/view/Page;->createEmptyCell(IIZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/launcher/view/Cell;

    .line 2030
    :goto_5
    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/view/Page;->reSortChildren()V

    .line 2031
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v4, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v3, v4, :cond_7

    .line 2032
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->resetAllPageBackgroundNoAnimation()V

    .line 2037
    :cond_7
    return-void

    .line 2027
    :cond_8
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/launcher/view/Page;->createEmptyCell(IIZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/launcher/view/Cell;

    goto :goto_5
.end method


# virtual methods
.method public allAnimationForceFinish()V
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageHasEmptyPageAnimation:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageHasEmptyPageAnimation:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageHasEmptyPageRevertAnimation:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageHasEmptyPageRevertAnimation:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageAnimation:Lcom/smartisanos/launcher/view/MultiPageAnimation;

    if-eqz v0, :cond_2

    .line 589
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageAnimation:Lcom/smartisanos/launcher/view/MultiPageAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MultiPageAnimation;->getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 591
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mChangeScreenAnimationTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v0, :cond_3

    .line 592
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mChangeScreenAnimationTimeline:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 595
    :cond_3
    return-void
.end method

.method public cancelChangeScreen()V
    .locals 2

    .prologue
    .line 823
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mIsChangeScreen:Z

    if-nez v0, :cond_0

    .line 825
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mChangeScreenAnimationEvent:Lcom/smartisanos/smengine/Event;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/EventManager;->removeEvent(Lcom/smartisanos/smengine/Event;)V

    .line 826
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mReceivedChangeScreen:Z

    .line 827
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mChangeScreenAnimationEvent:Lcom/smartisanos/smengine/Event;

    .line 829
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->resetCollisionListenerForPageCell()V

    .line 833
    :cond_0
    return-void
.end method

.method public cellExitFromFloatPage(Lcom/smartisanos/launcher/view/Cell;)V
    .locals 18
    .param p1, "unstallCell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 2040
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2041
    .local v8, "pclist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2043
    .local v9, "pglist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/smartisanos/launcher/view/AnimationController;->getUninstallCellFromAdbDataList(Lcom/smartisanos/launcher/view/Cell;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2045
    const/4 v14, -0x1

    .line 2046
    .local v14, "currentSelectCellRowIndex":I
    const/4 v13, -0x1

    .line 2050
    .local v13, "currentSelectCellColIndex":I
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v14

    .line 2051
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v13

    .line 2054
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/smartisanos/launcher/view/Page;

    .line 2056
    .local v15, "headerPage":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v17, v15

    .line 2058
    .local v17, "tailPage":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 2060
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2063
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v12

    .line 2064
    .local v12, "createEmptyCellRow":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v11

    .line 2066
    .local v11, "createEmptyCellCol":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v2, v15}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v4

    .line 2068
    .local v4, "targetPageIndex":I
    new-instance v2, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    new-instance v10, Lcom/smartisanos/launcher/view/AnimationController$12;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/smartisanos/launcher/view/AnimationController$12;-><init>(Lcom/smartisanos/launcher/view/AnimationController;)V

    invoke-direct/range {v2 .. v10}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;-><init>(Lcom/smartisanos/launcher/view/PageView;IIIILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageHasEmptyPageRevertAnimation:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    .line 2126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageHasEmptyPageRevertAnimation:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 2131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v2

    invoke-virtual {v2, v12, v11}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 2134
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/smartisanos/launcher/view/Page;

    .line 2135
    .local v16, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/launcher/view/Page;->reSortChildren()V

    goto :goto_0

    .line 2140
    .end local v4    # "targetPageIndex":I
    .end local v11    # "createEmptyCellCol":I
    .end local v12    # "createEmptyCellRow":I
    .end local v16    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v2

    invoke-virtual {v2, v14, v13}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 2141
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/Page;->reSortChildren()V

    .line 2144
    :cond_1
    return-void
.end method

.method public cellInToDock(Lcom/smartisanos/launcher/view/Cell;)V
    .locals 6
    .param p1, "selectedCell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 1168
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/AnimationController;->clearAllAnimationEventInQueue()V

    .line 1169
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/AnimationController;->allAnimationForceFinish()V

    .line 1171
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1172
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1173
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/FloatPageNode;->forceFinishFloatPageAnimation()V

    .line 1176
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/AnimationController;->removeDelayHandleEvent()V

    .line 1178
    const/4 v3, 0x0

    .line 1180
    .local v3, "selectedCellParent":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisanos/launcher/view/PageView;->sIsInstanceFromPageView(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1181
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    .end local v3    # "selectedCellParent":Lcom/smartisanos/launcher/view/Page;
    check-cast v3, Lcom/smartisanos/launcher/view/Page;

    .line 1182
    .restart local v3    # "selectedCellParent":Lcom/smartisanos/launcher/view/Page;
    if-nez v3, :cond_1

    .line 1223
    :goto_0
    return-void

    .line 1189
    :cond_1
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v1

    .line 1190
    .local v1, "currentSelectCellRowIndex":I
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v0

    .line 1194
    .local v0, "currentSelectCellColIndex":I
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisanos/launcher/view/PageView;->sIsInstanceFromPageView(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1196
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    .end local v3    # "selectedCellParent":Lcom/smartisanos/launcher/view/Page;
    check-cast v3, Lcom/smartisanos/launcher/view/Page;

    .line 1197
    .restart local v3    # "selectedCellParent":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {p1, v3}, Lcom/smartisanos/launcher/view/Cell;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 1198
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->reSortChildren()V

    .line 1209
    :goto_1
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getLastNonEmptyCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v2

    .line 1211
    .local v2, "lastNonEmptyCell":Lcom/smartisanos/launcher/view/Cell;
    if-nez v2, :cond_3

    .line 1212
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "### cellIntoDock prepare data,but selected cell parent not found non-empty cell."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1200
    .end local v2    # "lastNonEmptyCell":Lcom/smartisanos/launcher/view/Cell;
    :cond_2
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    .end local v3    # "selectedCellParent":Lcom/smartisanos/launcher/view/Page;
    check-cast v3, Lcom/smartisanos/launcher/view/Page;

    .restart local v3    # "selectedCellParent":Lcom/smartisanos/launcher/view/Page;
    goto :goto_1

    .line 1217
    .restart local v2    # "lastNonEmptyCell":Lcom/smartisanos/launcher/view/Cell;
    :cond_3
    new-instance v4, Lcom/smartisanos/smengine/CollisionData;

    invoke-direct {v4}, Lcom/smartisanos/smengine/CollisionData;-><init>()V

    iput-object v4, p0, Lcom/smartisanos/launcher/view/AnimationController;->mCurrentCollideData:Lcom/smartisanos/smengine/CollisionData;

    .line 1219
    iget-object v4, p0, Lcom/smartisanos/launcher/view/AnimationController;->mCurrentCollideData:Lcom/smartisanos/smengine/CollisionData;

    invoke-virtual {v4, p1, v2}, Lcom/smartisanos/smengine/CollisionData;->setCollision(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode;)V

    .line 1221
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/smartisanos/launcher/view/AnimationController;->handleMyAnimationNotify(I)V

    goto :goto_0
.end method

.method public cellInToPage(Lcom/smartisanos/launcher/view/Cell;)V
    .locals 0
    .param p1, "selectedCell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 1227
    return-void
.end method

.method public cellPullWhenCellIntoDockFromPage()Z
    .locals 14

    .prologue
    .line 2444
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstEmptyCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstEmptyCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstHasEmptyPage:Lcom/smartisanos/launcher/view/Page;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLastTimeCollidedPage:Lcom/smartisanos/launcher/view/Page;

    if-ne v0, v1, :cond_2

    .line 2446
    :cond_1
    const/4 v0, 0x0

    .line 2546
    :goto_0
    return v0

    .line 2450
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/AnimationController;->clearAllAnimationEventInQueue()V

    .line 2451
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/AnimationController;->allAnimationForceFinish()V

    .line 2453
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2454
    .local v6, "pclist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2456
    .local v7, "pglist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-direct {p0, v6, v7}, Lcom/smartisanos/launcher/view/AnimationController;->getNeedPullWhenCellIntoDockFromPageDataList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2458
    iget-object v11, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLastTimeCollidedPage:Lcom/smartisanos/launcher/view/Page;

    .line 2459
    .local v11, "headerPage":Lcom/smartisanos/launcher/view/Page;
    if-nez v11, :cond_3

    .line 2461
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "headerPage":Lcom/smartisanos/launcher/view/Page;
    check-cast v11, Lcom/smartisanos/launcher/view/Page;

    .line 2464
    .restart local v11    # "headerPage":Lcom/smartisanos/launcher/view/Page;
    :cond_3
    iget-object v13, p0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstHasEmptyPage:Lcom/smartisanos/launcher/view/Page;

    .line 2466
    .local v13, "tailPage":Lcom/smartisanos/launcher/view/Page;
    if-nez v13, :cond_4

    .line 2467
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "tailPage":Lcom/smartisanos/launcher/view/Page;
    check-cast v13, Lcom/smartisanos/launcher/view/Page;

    .line 2470
    .restart local v13    # "tailPage":Lcom/smartisanos/launcher/view/Page;
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 2473
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v10

    .line 2474
    .local v10, "createEmptyCellRow":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v9

    .line 2476
    .local v9, "createEmptyCellCol":I
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0, v11}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v2

    .line 2478
    .local v2, "targetPageIndex":I
    new-instance v0, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    new-instance v8, Lcom/smartisanos/launcher/view/AnimationController$14;

    invoke-direct {v8, p0}, Lcom/smartisanos/launcher/view/AnimationController$14;-><init>(Lcom/smartisanos/launcher/view/AnimationController;)V

    invoke-direct/range {v0 .. v8}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;-><init>(Lcom/smartisanos/launcher/view/PageView;IIIILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageHasEmptyPageRevertAnimation:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    .line 2534
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v13, v10, v9, v0, v1}, Lcom/smartisanos/launcher/view/Page;->createEmptyCell(IIZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/launcher/view/Cell;

    .line 2535
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageHasEmptyPageRevertAnimation:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 2539
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/launcher/view/Page;

    .line 2540
    .local v12, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Page;->reSortChildren()V

    goto :goto_1

    .line 2543
    .end local v2    # "targetPageIndex":I
    .end local v9    # "createEmptyCellCol":I
    .end local v10    # "createEmptyCellRow":I
    .end local v12    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstHasEmptyPage:Lcom/smartisanos/launcher/view/Page;

    .line 2544
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstEmptyCell:Lcom/smartisanos/launcher/view/Cell;

    const/4 v1, -0x1

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 2546
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public cellUpOnPage()Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 3

    .prologue
    .line 797
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    const-string v2, "########### cell_up_on_page ####"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/AnimationController;->clearAllAnimationEventInQueue()V

    .line 799
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/AnimationController;->resetPageViewAnimationInfo()V

    .line 800
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/AnimationController;->handleCellUpOnPageNotify()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    return-object v0
.end method

.method public changeUnlockAnimationEffect(Lcom/smartisanos/launcher/view/UnlockAnimationXML;Lcom/smartisanos/launcher/view/UnlockAnimationXML;)V
    .locals 2
    .param p1, "newEffect9"    # Lcom/smartisanos/launcher/view/UnlockAnimationXML;
    .param p2, "newEffect16"    # Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    .prologue
    .line 203
    if-eqz p1, :cond_0

    .line 204
    iput-object p1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLauncherAnimation9:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    .line 209
    :goto_0
    if-eqz p2, :cond_1

    .line 210
    iput-object p2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLauncherAnimation16:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    .line 214
    :goto_1
    return-void

    .line 206
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "####### newEffect9 is null...."

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_1
    sget-object v0, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "####### newEffect16 is null...."

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public clearAllAnimationEventInQueue()V
    .locals 2

    .prologue
    .line 770
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/AnimationController;->removeDelayHandleEvent()V

    .line 771
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mChangeScreenAnimationEvent:Lcom/smartisanos/smengine/Event;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/EventManager;->removeEvent(Lcom/smartisanos/smengine/Event;)V

    .line 772
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mReceivedChangeScreen:Z

    .line 773
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mChangeScreenAnimationEvent:Lcom/smartisanos/smengine/Event;

    .line 774
    return-void
.end method

.method public forceCollideWith()V
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 598
    iget-object v7, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v5

    .line 599
    .local v5, "selectedCell":Lcom/smartisanos/launcher/view/Cell;
    sget-object v7, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "################ force collided!!!!!!!!!!!!!!!!!!!!"

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 600
    new-instance v2, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 601
    .local v2, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v5, v2}, Lcom/smartisanos/launcher/view/Cell;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 602
    iget v0, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 604
    .local v0, "cellWorldX":F
    sget v7, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    cmpl-float v7, v0, v7

    if-gez v7, :cond_0

    sget v7, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    cmpg-float v7, v0, v7

    if-gtz v7, :cond_3

    .line 605
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/MainView;->getScreenXYForFastUp()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v7

    iget v3, v7, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 606
    .local v3, "screenX":F
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/MainView;->getScreenXYForFastUp()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v7

    iget v4, v7, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 607
    .local v4, "screenY":F
    new-instance v6, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v6}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 608
    .local v6, "size":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/Cell;->getSize(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 609
    iget v7, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    div-float/2addr v7, v9

    cmpg-float v7, v3, v7

    if-gez v7, :cond_1

    .line 610
    iget v7, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    div-float v3, v7, v9

    .line 612
    :cond_1
    sget v7, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v7, v7

    iget v8, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    cmpl-float v7, v3, v7

    if-lez v7, :cond_2

    .line 613
    sget v7, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v7, v7

    iget v8, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    div-float/2addr v8, v9

    sub-float v3, v7, v8

    .line 615
    :cond_2
    sget-object v7, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "### screenX = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " screenY = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 616
    new-instance v1, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 617
    .local v1, "fingerPos":Lcom/smartisanos/smengine/math/Vector3f;
    sget v7, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v7, v7

    sget v8, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v8, v8

    invoke-static {v3, v4, v7, v8, v1}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 619
    invoke-virtual {v5, v1}, Lcom/smartisanos/launcher/view/Cell;->setFixedCenter(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 621
    .end local v1    # "fingerPos":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v3    # "screenX":F
    .end local v4    # "screenY":F
    .end local v6    # "size":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_3
    iget-object v7, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/PageView;->forceUpdateGeometricState()V

    .line 622
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 623
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/FloatPageNode;->getCurrentFloatPage()Lcom/smartisanos/launcher/view/Page;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/smartisanos/launcher/view/Page;->collideWith(Lcom/smartisanos/smengine/SceneNode;)I

    .line 629
    :goto_0
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/smartisanos/launcher/view/Cell;->setFixedCenter(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 632
    return-void

    .line 625
    :cond_4
    iget-object v7, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v7, v5}, Lcom/smartisanos/launcher/view/PageView;->collideWith(Lcom/smartisanos/smengine/SceneNode;)I

    goto :goto_0
.end method

.method public forceFinishScrollTo()V
    .locals 1

    .prologue
    .line 2617
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mScrollTo:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v0, :cond_0

    .line 2618
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mScrollTo:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 2619
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mScrollTo:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 2621
    :cond_0
    return-void
.end method

.method public forceFinishUnlockAnimation()V
    .locals 2

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/AnimationController;->playUnlockAnimation()V

    .line 222
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "#### forceFinishUnlockAnimation"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 223
    :cond_0
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 224
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLauncherAnimation9:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLauncherAnimation9:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 233
    :cond_1
    :goto_0
    return-void

    .line 227
    :cond_2
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 229
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLauncherAnimation16:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLauncherAnimation16:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    goto :goto_0
.end method

.method public forceHandleMyAnimation(Lcom/smartisanos/smengine/CollisionData;)V
    .locals 1
    .param p1, "collisionData"    # Lcom/smartisanos/smengine/CollisionData;

    .prologue
    .line 2633
    iput-object p1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mCurrentCollideData:Lcom/smartisanos/smengine/CollisionData;

    .line 2635
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/AnimationController;->handleMyAnimationNotify(I)V

    .line 2637
    return-void
.end method

.method public getHasAnimationPlaying()Z
    .locals 1

    .prologue
    .line 2628
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mHasAnimationPlaying:Z

    return v0
.end method

.method public handleNotification(Ljava/lang/String;Lcom/smartisanos/smengine/Notification;)V
    .locals 9
    .param p1, "notificationName"    # Ljava/lang/String;
    .param p2, "notification"    # Lcom/smartisanos/smengine/Notification;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 997
    const-string v6, "cellCollideEnter"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 998
    invoke-virtual {p2}, Lcom/smartisanos/smengine/Notification;->getData()Ljava/util/ArrayList;

    move-result-object v0

    .line 999
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 1046
    .end local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    return-void

    .line 1004
    .restart local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/smengine/CollisionData;

    iput-object v6, p0, Lcom/smartisanos/launcher/view/AnimationController;->mCurrentCollideData:Lcom/smartisanos/smengine/CollisionData;

    .line 1005
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/AnimationController;->removeDelayHandleEvent()V

    .line 1007
    iget-boolean v6, p0, Lcom/smartisanos/launcher/view/AnimationController;->mReceivedChangeScreen:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/smartisanos/launcher/view/AnimationController;->mIsChangeScreen:Z

    if-nez v6, :cond_0

    .line 1009
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/AnimationController;->postDelayHandleEvent()V

    goto :goto_0

    .line 1012
    .end local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    const-string v6, "cellCollideExit"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1013
    invoke-virtual {p2}, Lcom/smartisanos/smengine/Notification;->getData()Ljava/util/ArrayList;

    move-result-object v0

    .line 1014
    .restart local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1019
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/smartisanos/launcher/view/AnimationController;->mCurrentCollideData:Lcom/smartisanos/smengine/CollisionData;

    .line 1020
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/AnimationController;->removeDelayHandleEvent()V

    goto :goto_0

    .line 1021
    .end local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_3
    const-string v6, "relayoutByUninstall"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1022
    invoke-virtual {p2}, Lcom/smartisanos/smengine/Notification;->getData()Ljava/util/ArrayList;

    move-result-object v0

    .line 1023
    .restart local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1029
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1030
    .local v1, "i":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1032
    .local v3, "result":I
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 1033
    .local v4, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1035
    .local v2, "removedCellslist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1037
    .local v5, "uninstallType":I
    if-ne v3, v8, :cond_0

    .line 1043
    const v6, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v2, v6, v4, v5}, Lcom/smartisanos/launcher/view/AnimationController;->relayoutPageCell(Ljava/util/ArrayList;FLcom/smartisanos/smengine/AnimationTimeLine;I)V

    goto :goto_0
.end method

.method public hasAnimationPlaying()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2597
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mHasAnimationPlaying:Z

    if-ne v1, v0, :cond_1

    .line 2613
    :cond_0
    :goto_0
    return v0

    .line 2601
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageHasEmptyPageRevertAnimation:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    if-nez v1, :cond_0

    .line 2605
    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageHasEmptyPageAnimation:Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;

    if-nez v1, :cond_0

    .line 2609
    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageAnimation:Lcom/smartisanos/launcher/view/MultiPageAnimation;

    if-nez v1, :cond_0

    .line 2613
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initUnlockAnimation(Z)V
    .locals 4
    .param p1, "needDelayForWizard"    # Z

    .prologue
    const/4 v3, 0x1

    .line 836
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->isChangeThemeAnimating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 837
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "##### Do not Init launcher because now is changing theme!!!!"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 840
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TrashView;->isTrashAnimRunning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 841
    invoke-static {}, Lcom/smartisanos/launcher/actions/UninstallApp;->isUninstallAppRunning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 842
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TrashView;->getWaitingUninstallAppInfo()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 843
    :cond_2
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "##### Do not Init launcher because now is uninstalling!!!!"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 844
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TrashView;->getWaitingUninstallAppInfo()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 845
    sget-object v1, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "##### Do not Init launcher because now is uninstalling!!!! something is on trash"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 850
    :cond_4
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_UNLOCK_ANIMATION:Z

    if-nez v1, :cond_5

    .line 851
    sget-object v1, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "### init unlock animation blocked: ENABLE_UNLOCK_ANIMATION=false"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "### init unlock animation setting is disable unlock animation,return"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 855
    :cond_5
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v2, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v1, v2, :cond_5a

    sget-object v1, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "### init unlock animation blocked: current mode is MULTI_PAGE_MODE"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_5a

    .line 859
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mUnlockAnimationHasInit:Z

    if-eqz v1, :cond_6

    .line 860
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "### mUnlockAnimationHasInit has been true,return"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 866
    :cond_6
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/AnimationController;->mUnlockAnimationHasInit:Z

    .line 867
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v1

    const/high16 v2, 0x40000

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 869
    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->forceFinishSlideAndSinkAnimation()V

    .line 870
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getDotView()Lcom/smartisanos/launcher/view/DotView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DotView;->forceKillAllDotAnimation()V

    .line 871
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getDotView()Lcom/smartisanos/launcher/view/DotView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/DotView;->setVisibility(Z)V

    .line 873
    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 874
    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->forceFinishCellOnUpAnimationTimeLine()V

    .line 876
    :cond_7
    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v0

    .line 878
    .local v0, "currentpage":Lcom/smartisanos/launcher/view/Page;
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    if-ne v1, v3, :cond_9

    .line 879
    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLauncherAnimation9:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    if-eqz v1, :cond_8

    .line 880
    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLauncherAnimation9:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 882
    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLauncherAnimation9:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 886
    :cond_8
    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLauncherAnimation9:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->setDelayForWizard(Z)V

    .line 887
    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLauncherAnimation9:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->init(Lcom/smartisanos/launcher/view/Page;)V

    .line 906
    :goto_1
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/home/Launcher;->setPauseEventStatus(Z)V

    goto/16 :goto_0

    .line 890
    :cond_9
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 892
    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLauncherAnimation16:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    if-eqz v1, :cond_a

    .line 893
    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLauncherAnimation16:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 895
    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLauncherAnimation16:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 899
    :cond_a
    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLauncherAnimation16:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->setDelayForWizard(Z)V

    .line 900
    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLauncherAnimation16:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->init(Lcom/smartisanos/launcher/view/Page;)V

    goto :goto_1

    .line 902
    :cond_b
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "### init unlock animaton unKnown sPageStyle."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isReachedMaxPageCountAndDisableCreateNewPage(Lcom/smartisanos/launcher/view/Page;)Z
    .locals 5
    .param p1, "collidedPage"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 757
    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v2, p1}, Lcom/smartisanos/launcher/view/PageView;->getFirstPageNotFullAfterCollidedPage(Lcom/smartisanos/launcher/view/Page;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v0

    .line 759
    .local v0, "firstHasEmptyPageAfterCollided":Lcom/smartisanos/launcher/view/Page;
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->getPageCount()I

    move-result v2

    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v3}, Lcom/smartisanos/launcher/view/MainView;->getMaxPageCount(I)I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 760
    const/4 v2, 0x1

    .line 765
    :goto_0
    return v2

    .line 762
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v1

    .line 763
    .local v1, "pageIndex":I
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "### first has empty page index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 765
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isReceivedChangeScreenNotify()Z
    .locals 1

    .prologue
    .line 1054
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mReceivedChangeScreen:Z

    return v0
.end method

.method public isUnLockAnimationRunning()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLauncherAnimation9:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLauncherAnimation16:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnlockAnimationInit()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mUnlockAnimationHasInit:Z

    return v0
.end method

.method public onRemove(Ljava/lang/String;)V
    .locals 0
    .param p1, "notificationName"    # Ljava/lang/String;

    .prologue
    .line 1051
    return-void
.end method

.method public playUnlockAnimation()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x65

    const/4 v4, 0x0

    .line 913
    iget-boolean v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mUnlockAnimationHasInit:Z

    if-nez v2, :cond_5

    .line 915
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->isChangeThemeAnimating()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 916
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/home/Launcher;->setPauseEventStatus(Z)V

    .line 917
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/EventManager;->setEventStartByType(I)V

    .line 918
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "### isChangeTheme do not play unlock animation."

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 921
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/TrashView;->isTrashAnimRunning()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/actions/UninstallApp;->isUninstallAppRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 922
    :cond_2
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/home/Launcher;->setPauseEventStatus(Z)V

    .line 923
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/EventManager;->setEventStartByType(I)V

    .line 924
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    .line 925
    sget-object v2, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "### trash isTrashAnimRunning(),do not play unlock animation."

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 930
    :cond_3
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_UNLOCK_ANIMATION:Z

    if-nez v2, :cond_4

    .line 931
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/home/Launcher;->setPauseEventStatus(Z)V

    .line 932
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/EventManager;->setEventStartByType(I)V

    .line 933
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    .line 934
    sget-object v2, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "### play unlock animation setting is disable unlock animation,return"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 940
    :cond_4
    sget-object v2, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "### mUnlockAnimationHasInit == false, do not play unlock animation"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 942
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/EventManager;->setEventStartByType(I)V

    goto :goto_0

    .line 947
    :cond_5
    iput-boolean v4, p0, Lcom/smartisanos/launcher/view/AnimationController;->mUnlockAnimationHasInit:Z

    .line 948
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v2

    const/high16 v3, 0x40000

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 951
    sget v2, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    if-ne v2, v6, :cond_a

    .line 952
    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLauncherAnimation9:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLauncherAnimation9:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->isInit()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 954
    :cond_6
    sget v2, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 955
    .local v1, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->getCurrentPageInWindowForSinglePageMode()Lcom/smartisanos/launcher/view/Page;

    move-result-object v0

    .line 956
    .local v0, "currentpage":Lcom/smartisanos/launcher/view/Page;
    if-nez v0, :cond_7

    .line 957
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "### unlock not found a page in window"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 960
    :cond_7
    sget-object v2, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "### play unlock animation start unlock9"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLauncherAnimation9:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->start(Lcom/smartisanos/launcher/view/Page;)V

    goto/16 :goto_0

    .line 962
    .end local v0    # "currentpage":Lcom/smartisanos/launcher/view/Page;
    .end local v1    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    :cond_8
    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLauncherAnimation9:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->isPlaying()Z

    move-result v2

    if-ne v2, v6, :cond_9

    .line 963
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "### unlock9 is playing."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 965
    :cond_9
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "### unlock9 not init."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 969
    :cond_a
    sget v2, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    .line 971
    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLauncherAnimation16:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLauncherAnimation16:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->isInit()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 973
    :cond_b
    sget v2, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 974
    .restart local v1    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->getCurrentPageInWindowForSinglePageMode()Lcom/smartisanos/launcher/view/Page;

    move-result-object v0

    .line 975
    .restart local v0    # "currentpage":Lcom/smartisanos/launcher/view/Page;
    if-nez v0, :cond_c

    .line 976
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "### unlock not found a page in window"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 979
    :cond_c
    sget-object v2, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "### play unlock animation start unlock16"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLauncherAnimation16:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->start(Lcom/smartisanos/launcher/view/Page;)V

    goto/16 :goto_0

    .line 981
    .end local v0    # "currentpage":Lcom/smartisanos/launcher/view/Page;
    .end local v1    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    :cond_d
    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLauncherAnimation9:Lcom/smartisanos/launcher/view/UnlockAnimationXML;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/UnlockAnimationXML;->isPlaying()Z

    move-result v2

    if-ne v2, v6, :cond_e

    .line 982
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "### unlock16 is playing."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 984
    :cond_e
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "### unlock16 not init."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 989
    :cond_f
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/EventManager;->setEventStartByType(I)V

    .line 990
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "### play unlock animaton unKnown sPageStyle."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public prepareToChangeScreen(IF)V
    .locals 3
    .param p1, "toward"    # I
    .param p2, "delayDuration"    # F

    .prologue
    const/4 v2, 0x1

    .line 804
    move v0, p1

    .line 805
    .local v0, "result":I
    iput v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mChangeScreenToward:I

    .line 807
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mIsChangeScreen:Z

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mHasAnimationPlaying:Z

    if-ne v1, v2, :cond_1

    .line 808
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mReceivedChangeScreen:Z

    .line 820
    :goto_0
    return-void

    .line 812
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/AnimationController;->clearAllAnimationEventInQueue()V

    .line 813
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/AnimationController;->removeDelayHandleEvent()V

    .line 816
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mReceivedChangeScreen:Z

    .line 817
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/AnimationController;->createChangeScreenAnimationEvent()Lcom/smartisanos/smengine/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mChangeScreenAnimationEvent:Lcom/smartisanos/smengine/Event;

    .line 819
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mChangeScreenAnimationEvent:Lcom/smartisanos/smengine/Event;

    invoke-virtual {v1, v2, p2}, Lcom/smartisanos/smengine/EventManager;->sendEvent(Lcom/smartisanos/smengine/Event;F)V

    goto :goto_0
.end method

.method public relayoutPageCell(Ljava/util/ArrayList;FLcom/smartisanos/smengine/AnimationTimeLine;I)V
    .locals 13
    .param p2, "time"    # F
    .param p3, "timeline"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p4, "uninstallType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;F",
            "Lcom/smartisanos/smengine/AnimationTimeLine;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 491
    .local p1, "removedCellsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    sget-boolean v10, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v10, :cond_0

    sget-object v10, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "############# relayoutPageCell start. "

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 492
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/TrashView;->getWaitingUninstallAppInfo()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v9

    .line 497
    .local v9, "waitingUninstallPc":Lcom/smartisanos/launcher/view/Cell;
    const/4 v10, 0x1

    move/from16 v0, p4

    if-ne v0, v10, :cond_6

    .line 498
    sget-boolean v10, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v10, :cond_1

    sget-object v10, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "### uninstall type is Trash."

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 499
    :cond_1
    sget-boolean v10, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v10, :cond_2

    sget-object v10, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "#### waitingUninstallPc from trash name =  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getAppName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 500
    :cond_2
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v10

    instance-of v10, v10, Lcom/smartisanos/launcher/view/Page;

    if-eqz v10, :cond_3

    .line 501
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v8

    .line 502
    .local v8, "targetRowIndex":I
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v7

    .line 506
    .local v7, "targetColIndex":I
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Page;

    .line 510
    .local v5, "preParent":Lcom/smartisanos/launcher/view/Page;
    const/4 v10, 0x1

    new-instance v11, Lcom/smartisanos/launcher/view/AnimationController$4;

    invoke-direct {v11, p0}, Lcom/smartisanos/launcher/view/AnimationController$4;-><init>(Lcom/smartisanos/launcher/view/AnimationController;)V

    invoke-virtual {v5, v8, v7, v10, v11}, Lcom/smartisanos/launcher/view/Page;->createEmptyCell(IIZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/launcher/view/Cell;

    .line 522
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Page;->reSortChildren()V

    .line 525
    .end local v5    # "preParent":Lcom/smartisanos/launcher/view/Page;
    .end local v7    # "targetColIndex":I
    .end local v8    # "targetRowIndex":I
    :cond_3
    iget-object v10, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10, p2}, Lcom/smartisanos/launcher/view/PageView;->cleanEmptyScreen(F)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v6

    .line 526
    .local v6, "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    if-eqz v6, :cond_4

    .line 527
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 530
    :cond_4
    iget-object v10, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/view/Cell;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 531
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/view/Cell;->setVisibility(Z)V

    .line 532
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 578
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/AnimationController;->resetPageViewAnimationInfo()V

    .line 579
    return-void

    .line 537
    .end local v6    # "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    :cond_6
    sget-boolean v10, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v10, :cond_7

    sget-object v10, Lcom/smartisanos/launcher/view/AnimationController;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "### uninstall type is ADB."

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 538
    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    if-eqz p1, :cond_8

    .line 540
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 544
    :cond_8
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_d

    .line 546
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 548
    .local v1, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v1, :cond_a

    .line 550
    sget v10, Lcom/smartisanos/launcher/view/Cell;->CELL_IN_MULTI_SELECT:I

    invoke-virtual {v1, v10}, Lcom/smartisanos/launcher/view/Cell;->getCellHasAnimationStatus(I)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 551
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->clearCellSelected()I

    .line 553
    :cond_9
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/AnimationController;->clearAllAnimationEventInQueue()V

    .line 554
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/AnimationController;->allAnimationForceFinish()V

    .line 555
    iget-object v10, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/PageView;->forceFinishAllPageResetBackgroundAnimation()V

    .line 558
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_c

    .line 559
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v2, v10, :cond_b

    const/4 v4, 0x1

    .line 560
    .local v4, "needForceFinish":Z
    :goto_2
    move-object/from16 v0, p3

    invoke-direct {p0, v1, v0, v4}, Lcom/smartisanos/launcher/view/AnimationController;->uninstallCellFromAdb(Lcom/smartisanos/launcher/view/Cell;Lcom/smartisanos/smengine/AnimationTimeLine;Z)V

    .line 566
    .end local v4    # "needForceFinish":Z
    :goto_3
    iget-object v10, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v1, v10}, Lcom/smartisanos/launcher/view/Cell;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 567
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/smartisanos/launcher/view/Cell;->setVisibility(Z)V

    .line 568
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 544
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 559
    :cond_b
    const/4 v4, 0x0

    goto :goto_2

    .line 562
    :cond_c
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-direct {p0, v1, v0, v10}, Lcom/smartisanos/launcher/view/AnimationController;->uninstallCellFromAdb(Lcom/smartisanos/launcher/view/Cell;Lcom/smartisanos/smengine/AnimationTimeLine;Z)V

    goto :goto_3

    .line 573
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_d
    iget-object v10, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v10, p2}, Lcom/smartisanos/launcher/view/PageView;->cleanEmptyScreen(F)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v6

    .line 574
    .restart local v6    # "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    if-eqz v6, :cond_5

    .line 575
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto :goto_0
.end method

.method public resetPageViewAnimationInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 779
    iput-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLastTimeCollidedPage:Lcom/smartisanos/launcher/view/Page;

    .line 780
    iput-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mCurrentCollidedPage:Lcom/smartisanos/launcher/view/Page;

    .line 781
    iput-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstGoNextTouchedPage:Lcom/smartisanos/launcher/view/Page;

    .line 782
    iput-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstHasEmptyPage:Lcom/smartisanos/launcher/view/Page;

    .line 783
    iput-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mCurrentCollideData:Lcom/smartisanos/smengine/CollisionData;

    .line 784
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mCurrentCollidedCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0, v1, v1}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 785
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mLastTimeCollidedCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0, v1, v1}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 787
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mFirstEmptyCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0, v1, v1}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 789
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->clearCellAnimationStatus()V

    .line 792
    :cond_0
    iput-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageHasEmptyAnimationCellList:Ljava/util/ArrayList;

    .line 793
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController;->mMultiPageHasEmptyRevertAnimationCellList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 794
    return-void
.end method

.method public scrollToLeft()Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 15

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    const v14, 0x3dcccccd    # 0.1f

    const/4 v1, 0x0

    .line 1058
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/StatusManager;->canHomeKeyScrollToLeft()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1150
    :goto_0
    return-object v11

    .line 1063
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1065
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->handleTap()V

    goto :goto_0

    .line 1068
    :cond_1
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v4, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v3, v4, :cond_2

    .line 1069
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DragLayer;->getPageScrollAnimation()Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->pressedHomeKey()V

    goto :goto_0

    .line 1072
    :cond_2
    new-instance v11, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v11}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 1074
    .local v11, "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    iget-object v3, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->forceUpdateGeometricState()V

    .line 1076
    iget-object v3, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex()I

    move-result v3

    if-eqz v3, :cond_3

    .line 1077
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 1078
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->lockTouchEvent()V

    .line 1079
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 1080
    iget-object v3, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getScreenCount()I

    move-result v4

    iget-object v5, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/view/PageView;->sinkPageAndShowDotView(II)V

    .line 1081
    iget-object v3, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    const v4, 0x3eb851ec    # 0.36f

    new-instance v5, Lcom/smartisanos/launcher/view/AnimationController$6;

    invoke-direct {v5, p0}, Lcom/smartisanos/launcher/view/AnimationController$6;-><init>(Lcom/smartisanos/launcher/view/AnimationController;)V

    invoke-virtual {v3, v1, v4, v1, v5}, Lcom/smartisanos/launcher/view/PageView;->scrollTo(IFZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v12

    .line 1097
    .local v12, "scrollto":Lcom/smartisanos/smengine/AnimationTimeLine;
    invoke-virtual {v11, v8, v12}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto :goto_0

    .line 1101
    .end local v12    # "scrollto":Lcom/smartisanos/smengine/AnimationTimeLine;
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 1102
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->lockTouchEvent()V

    .line 1103
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 1105
    iget-object v3, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getScreenCount()I

    move-result v4

    iget-object v5, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex()I

    move-result v5

    const v6, 0x3f7eb852    # 0.995f

    invoke-virtual {v3, v4, v5, v14, v6}, Lcom/smartisanos/launcher/view/PageView;->sinkPageAndShowDotView(IIFF)V

    .line 1107
    const/high16 v10, 0x42200000    # 40.0f

    .line 1108
    .local v10, "pass1NeedMoveX":F
    iget-object v3, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->getPageParentForTranslate()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v13

    .line 1110
    .local v13, "v":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->getPageParentForTranslate()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1111
    .local v0, "pass1":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual {v0, v14}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 1112
    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 1113
    invoke-virtual {v13}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v2

    invoke-virtual {v13}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v3

    invoke-virtual {v13}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v4

    invoke-virtual {v13}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v5

    add-float/2addr v5, v10

    invoke-virtual {v13}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v6

    invoke-virtual {v13}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 1114
    new-instance v3, Lcom/smartisanos/launcher/view/AnimationController$7;

    invoke-direct {v3, p0}, Lcom/smartisanos/launcher/view/AnimationController$7;-><init>(Lcom/smartisanos/launcher/view/AnimationController;)V

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 1121
    invoke-virtual {v11, v8, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1123
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/AnimationController;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->getPageParentForTranslate()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1124
    .local v2, "pass2":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 1125
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 1126
    invoke-virtual {v13}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v3

    add-float v4, v3, v10

    invoke-virtual {v13}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v5

    invoke-virtual {v13}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v6

    invoke-virtual {v13}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v7

    invoke-virtual {v13}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v8

    invoke-virtual {v13}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v9

    move v3, v1

    invoke-virtual/range {v2 .. v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 1129
    invoke-virtual {v11, v14, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1131
    new-instance v3, Lcom/smartisanos/launcher/view/AnimationController$8;

    invoke-direct {v3, p0}, Lcom/smartisanos/launcher/view/AnimationController$8;-><init>(Lcom/smartisanos/launcher/view/AnimationController;)V

    invoke-virtual {v11, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 1148
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->getDotView()Lcom/smartisanos/launcher/view/DotView;

    move-result-object v3

    sget-object v4, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_SLIDE:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {v3, v4, v1}, Lcom/smartisanos/launcher/view/DotView;->startAnimation(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    goto/16 :goto_0
.end method

.method public setHasAnimationPlaying(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 2624
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/AnimationController;->mHasAnimationPlaying:Z

    .line 2625
    return-void
.end method
