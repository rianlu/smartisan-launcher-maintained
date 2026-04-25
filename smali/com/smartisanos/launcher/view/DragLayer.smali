.class public Lcom/smartisanos/launcher/view/DragLayer;
.super Lcom/smartisanos/smengine/SceneNode;
.source "DragLayer.java"


# static fields
.field public static final CELL_CONVERT_SPAN:I = 0x12c

.field public static final STATUS_ON_DRAG_ICON:I = 0x1

.field public static final STATUS_ON_DRAG_MUTI_ICON:I = 0x8

.field public static final STATUS_ON_DRAG_PAGE:I = 0x4

.field public static final STATUS_ON_GESTURE:I = 0x10

.field public static final STATUS_ON_PAGE_SCROLL:I = 0x2

.field private static final log:Lcom/smartisanos/launcher/LOG;

.field public static mDragLayer:Lcom/smartisanos/launcher/view/DragLayer;


# instance fields
.field private mCanDownUpScroll:Z

.field private mCellStatusForDock:Lcom/smartisanos/launcher/view/CellStatusForDock;

.field private mCellStatusForPage:Lcom/smartisanos/launcher/view/CellStatusForPage;

.field private mClickDownOnDock:Z

.field private mClickPointDownOnDock:Z

.field private mCurrentEventHandler:I

.field private mDockPage:Lcom/smartisanos/launcher/view/DockView;

.field private mDockTop:F

.field private mDragCell:Lcom/smartisanos/launcher/view/Cell;

.field private mDragIconNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

.field private mDragIconPointID:I

.field private mDragPage:Lcom/smartisanos/launcher/view/Page;

.field private mDragPageNode:Lcom/smartisanos/launcher/view/SwitchPageNode;

.field private mEffectivePointerCount:I

.field private mEffectivePointerIdBits:I

.field private mMutiDragCell:Lcom/smartisanos/launcher/view/Cell;

.field private mNeedInitDragIcon:Z

.field private mNeedInitDragPage:Z

.field private mNeedInitMutiDragIcon:Z

.field private mNeedInitScroll:Z

.field private mPageEndScrollIndex:F

.field private mPageScrollAnimation:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

.field private mPageStartScrollIndex:F

.field private mPreX:[F

.field private mPreY:[F

.field private mScrollLeftRight:Z

.field private mScrollPageView:Lcom/smartisanos/launcher/view/PageView;

.field private mStartX:[F

.field private mStartY:[F

.field public mStatus:I

.field private mTVelocityAndGestureTracker:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/smartisanos/launcher/view/DragLayer;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 45
    iput v1, p0, Lcom/smartisanos/launcher/view/DragLayer;->mStatus:I

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCurrentEventHandler:I

    .line 52
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCanDownUpScroll:Z

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollLeftRight:Z

    .line 170
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mStartX:[F

    .line 171
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mStartY:[F

    .line 181
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/DragLayer;->mClickDownOnDock:Z

    .line 182
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/DragLayer;->mClickPointDownOnDock:Z

    .line 465
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPreX:[F

    .line 466
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPreY:[F

    .line 486
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/DragLayer;->mNeedInitScroll:Z

    .line 816
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/DragLayer;->mNeedInitDragIcon:Z

    .line 1127
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/DragLayer;->mNeedInitDragPage:Z

    .line 1261
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/DragLayer;->mNeedInitMutiDragIcon:Z

    .line 65
    new-instance v0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    invoke-direct {v0}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTVelocityAndGestureTracker:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    .line 66
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTVelocityAndGestureTracker:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    new-instance v1, Lcom/smartisanos/launcher/view/DragLayer$1;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/DragLayer$1;-><init>(Lcom/smartisanos/launcher/view/DragLayer;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->setGestureListener(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$GestureListener;)V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/launcher/view/DragLayer;)Lcom/smartisanos/launcher/view/PageView;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/DragLayer;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollPageView:Lcom/smartisanos/launcher/view/PageView;

    return-object v0
.end method

.method static synthetic access$100()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$200(Lcom/smartisanos/launcher/view/DragLayer;)Lcom/smartisanos/smengine/TVelocityAndGestureTracker;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/DragLayer;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTVelocityAndGestureTracker:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    return-object v0
.end method

.method private caculateMaxOrMinMoveX(Lcom/smartisanos/smengine/TMotionEvent;)F
    .locals 10
    .param p1, "ev"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    const/4 v9, 0x0

    .line 493
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerCount()I

    move-result v1

    .line 494
    .local v1, "count":I
    const/high16 v3, 0x800000

    .line 495
    .local v3, "maxChangeX":F
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 496
    .local v4, "minChangeX":F
    const/4 v5, 0x0

    .local v5, "p":I
    :goto_0
    if-ge v5, v1, :cond_3

    .line 497
    invoke-virtual {p1, v5}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v6

    .line 498
    .local v6, "pointId":I
    const/4 v8, 0x1

    shl-int v2, v8, v6

    .line 499
    .local v2, "idBits":I
    iget v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mEffectivePointerIdBits:I

    and-int/2addr v8, v2

    if-nez v8, :cond_1

    .line 496
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 502
    :cond_1
    invoke-virtual {p1, v5}, Lcom/smartisanos/smengine/TMotionEvent;->getX(I)F

    move-result v7

    .line 503
    .local v7, "x":F
    iget-object v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPreX:[F

    aget v8, v8, v6

    sub-float v0, v7, v8

    .line 504
    .local v0, "changeX":F
    cmpg-float v8, v3, v0

    if-gez v8, :cond_2

    .line 505
    move v3, v0

    .line 507
    :cond_2
    cmpl-float v8, v4, v0

    if-lez v8, :cond_0

    .line 508
    move v4, v0

    goto :goto_1

    .line 511
    .end local v0    # "changeX":F
    .end local v2    # "idBits":I
    .end local v6    # "pointId":I
    .end local v7    # "x":F
    :cond_3
    cmpl-float v8, v3, v9

    if-lez v8, :cond_4

    cmpl-float v8, v4, v9

    if-lez v8, :cond_4

    .line 516
    .end local v3    # "maxChangeX":F
    :goto_2
    return v3

    .line 513
    .restart local v3    # "maxChangeX":F
    :cond_4
    cmpg-float v8, v3, v9

    if-gez v8, :cond_5

    cmpg-float v8, v4, v9

    if-gez v8, :cond_5

    move v3, v4

    .line 514
    goto :goto_2

    .line 516
    :cond_5
    add-float/2addr v3, v4

    goto :goto_2
.end method

.method private caculateMaxOrMinMoveX(Lcom/smartisanos/smengine/TMotionEvent;Z)F
    .locals 10
    .param p1, "ev"    # Lcom/smartisanos/smengine/TMotionEvent;
    .param p2, "onDragIcon"    # Z

    .prologue
    const/4 v9, 0x0

    .line 667
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerCount()I

    move-result v1

    .line 668
    .local v1, "count":I
    const/high16 v3, 0x800000

    .line 669
    .local v3, "maxChangeX":F
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 670
    .local v4, "minChangeX":F
    const/4 v5, 0x0

    .local v5, "p":I
    :goto_0
    if-ge v5, v1, :cond_4

    .line 671
    invoke-virtual {p1, v5}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v6

    .line 672
    .local v6, "pointId":I
    const/4 v8, 0x1

    shl-int v2, v8, v6

    .line 673
    .local v2, "idBitsToRemove":I
    iget v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mEffectivePointerIdBits:I

    and-int/2addr v8, v2

    if-nez v8, :cond_1

    .line 670
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 676
    :cond_1
    invoke-virtual {p1, v5}, Lcom/smartisanos/smengine/TMotionEvent;->getX(I)F

    move-result v7

    .line 677
    .local v7, "x":F
    if-eqz p2, :cond_2

    if-eqz v5, :cond_0

    .line 678
    :cond_2
    iget-object v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPreX:[F

    aget v8, v8, v6

    sub-float v0, v7, v8

    .line 679
    .local v0, "changeX":F
    cmpg-float v8, v3, v0

    if-gez v8, :cond_3

    .line 680
    move v3, v0

    .line 682
    :cond_3
    cmpl-float v8, v4, v0

    if-lez v8, :cond_0

    .line 683
    move v4, v0

    goto :goto_1

    .line 687
    .end local v0    # "changeX":F
    .end local v2    # "idBitsToRemove":I
    .end local v6    # "pointId":I
    .end local v7    # "x":F
    :cond_4
    cmpl-float v8, v3, v9

    if-lez v8, :cond_5

    cmpl-float v8, v4, v9

    if-lez v8, :cond_5

    .line 692
    .end local v3    # "maxChangeX":F
    :goto_2
    return v3

    .line 689
    .restart local v3    # "maxChangeX":F
    :cond_5
    cmpg-float v8, v3, v9

    if-gez v8, :cond_6

    cmpg-float v8, v4, v9

    if-gez v8, :cond_6

    move v3, v4

    .line 690
    goto :goto_2

    .line 692
    :cond_6
    add-float/2addr v3, v4

    goto :goto_2
.end method

.method private caculateMaxOrMinMoveY(Lcom/smartisanos/smengine/TMotionEvent;)F
    .locals 10
    .param p1, "ev"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    const/4 v9, 0x0

    .line 521
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerCount()I

    move-result v1

    .line 522
    .local v1, "count":I
    const/high16 v3, 0x800000

    .line 523
    .local v3, "maxChangeY":F
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 524
    .local v4, "minChangeY":F
    const/4 v5, 0x0

    .local v5, "p":I
    :goto_0
    if-ge v5, v1, :cond_3

    .line 525
    invoke-virtual {p1, v5}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v6

    .line 526
    .local v6, "pointId":I
    const/4 v8, 0x1

    shl-int v2, v8, v6

    .line 527
    .local v2, "idBits":I
    iget v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mEffectivePointerIdBits:I

    and-int/2addr v8, v2

    if-nez v8, :cond_1

    .line 524
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 530
    :cond_1
    invoke-virtual {p1, v5}, Lcom/smartisanos/smengine/TMotionEvent;->getY(I)F

    move-result v7

    .line 531
    .local v7, "y":F
    iget-object v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPreY:[F

    aget v8, v8, v6

    sub-float v0, v7, v8

    .line 532
    .local v0, "changeY":F
    cmpg-float v8, v3, v0

    if-gez v8, :cond_2

    .line 533
    move v3, v0

    .line 535
    :cond_2
    cmpl-float v8, v4, v0

    if-lez v8, :cond_0

    .line 536
    move v4, v0

    goto :goto_1

    .line 539
    .end local v0    # "changeY":F
    .end local v2    # "idBits":I
    .end local v6    # "pointId":I
    .end local v7    # "y":F
    :cond_3
    cmpl-float v8, v3, v9

    if-lez v8, :cond_4

    cmpl-float v8, v4, v9

    if-lez v8, :cond_4

    .line 544
    .end local v3    # "maxChangeY":F
    :goto_2
    return v3

    .line 541
    .restart local v3    # "maxChangeY":F
    :cond_4
    cmpg-float v8, v3, v9

    if-gez v8, :cond_5

    cmpg-float v8, v4, v9

    if-gez v8, :cond_5

    move v3, v4

    .line 542
    goto :goto_2

    .line 544
    :cond_5
    add-float/2addr v3, v4

    goto :goto_2
.end method

.method private canDownUpScroll()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPageScrollAnimation:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DragLayer;->getPageScrollAnimation()Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPageScrollAnimation:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    .line 147
    :cond_0
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCanDownUpScroll:Z

    return v0
.end method

.method private canSweep(Lcom/smartisanos/smengine/TMotionEvent;)V
    .locals 10
    .param p1, "ev"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 386
    iget v6, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCurrentEventHandler:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v6

    if-ne v6, v9, :cond_0

    iget-object v6, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTVelocityAndGestureTracker:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    invoke-virtual {v6, p1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->canSweep(Lcom/smartisanos/smengine/TMotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 387
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getX()F

    move-result v4

    .line 388
    .local v4, "x":F
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getY()F

    move-result v5

    .line 389
    .local v5, "y":F
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DragLayer;->mStartY:[F

    aget v6, v6, v8

    sub-float v2, v6, v5

    .line 390
    .local v2, "moveY":F
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DragLayer;->mStartX:[F

    aget v6, v6, v8

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 391
    .local v1, "moveX":F
    iget v6, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPageStartScrollIndex:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 392
    .local v3, "startScrollIndex":I
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->getPageScrollIndex()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 393
    .local v0, "currentScrollIndex":I
    cmpl-float v6, v2, v1

    if-lez v6, :cond_0

    if-ne v3, v0, :cond_0

    .line 394
    const/4 v6, 0x0

    new-instance v7, Lcom/smartisanos/launcher/view/DragLayer$2;

    invoke-direct {v7, p0}, Lcom/smartisanos/launcher/view/DragLayer$2;-><init>(Lcom/smartisanos/launcher/view/DragLayer;)V

    invoke-direct {p0, v9, v6, v7}, Lcom/smartisanos/launcher/view/DragLayer;->endScroll(ZFLcom/smartisanos/smengine/Animation$AnimationListener;)F

    .line 403
    const/4 v6, -0x1

    iput v6, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCurrentEventHandler:I

    .line 406
    .end local v0    # "currentScrollIndex":I
    .end local v1    # "moveX":F
    .end local v2    # "moveY":F
    .end local v3    # "startScrollIndex":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_0
    return-void
.end method

.method private canTriggerScroll(Lcom/smartisanos/smengine/TMotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    const v12, 0x3f4ccccd    # 0.8f

    const/4 v11, 0x2

    const/high16 v10, 0x3fc00000    # 1.5f

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 278
    invoke-virtual {p1, v7}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v0

    .line 279
    .local v0, "actionId":I
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getX()F

    move-result v4

    .line 280
    .local v4, "x":F
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getY()F

    move-result v5

    .line 281
    .local v5, "y":F
    iget-object v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mStartX:[F

    aget v8, v8, v0

    sub-float v8, v4, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 282
    .local v1, "changeX":F
    iget-object v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mStartY:[F

    aget v8, v8, v0

    sub-float v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 283
    .local v2, "changeY":F
    sget v8, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v9, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v8, v9, :cond_2

    .line 284
    iget v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTouchSlop:I

    int-to-float v8, v8

    mul-float/2addr v8, v10

    cmpl-float v8, v1, v8

    if-lez v8, :cond_1

    mul-float v8, v2, v12

    cmpl-float v8, v1, v8

    if-lez v8, :cond_1

    move v3, v6

    .line 285
    .local v3, "isMove":Z
    :goto_0
    iget-boolean v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mClickDownOnDock:Z

    if-nez v8, :cond_b

    if-eqz v3, :cond_b

    .line 286
    sget-boolean v7, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "DEBUG"

    const-string v9, "############################change x > 24 , so intercept touchEvent I"

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_0
    iput v11, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCurrentEventHandler:I

    .line 288
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/DragLayer;->startScroll(Lcom/smartisanos/smengine/TMotionEvent;)F

    .line 322
    :goto_1
    return v6

    .end local v3    # "isMove":Z
    :cond_1
    move v3, v7

    .line 284
    goto :goto_0

    .line 292
    :cond_2
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->canDownUpScroll()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 293
    iget v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTouchSlop:I

    int-to-float v8, v8

    mul-float/2addr v8, v10

    cmpl-float v8, v2, v8

    if-gtz v8, :cond_3

    iget v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTouchSlop:I

    int-to-float v8, v8

    mul-float/2addr v8, v10

    cmpl-float v8, v1, v8

    if-lez v8, :cond_5

    :cond_3
    move v3, v6

    .line 294
    .restart local v3    # "isMove":Z
    :goto_2
    iget-boolean v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mClickDownOnDock:Z

    if-nez v8, :cond_b

    if-eqz v3, :cond_b

    .line 295
    cmpl-float v8, v1, v2

    if-lez v8, :cond_6

    .line 296
    iput-boolean v6, p0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollLeftRight:Z

    .line 300
    :goto_3
    iget-boolean v7, p0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollLeftRight:Z

    if-eqz v7, :cond_7

    .line 301
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DragLayer;->getPageScrollAnimation()Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->setScrollLeftAndRight()V

    .line 305
    :goto_4
    sget-boolean v7, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v7, :cond_4

    .line 306
    sget-object v7, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "DEBUG"

    const-string v9, "############################change x > 24 , so intercept touchEvent II"

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_4
    iput v11, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCurrentEventHandler:I

    .line 308
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/DragLayer;->startScroll(Lcom/smartisanos/smengine/TMotionEvent;)F

    goto :goto_1

    .end local v3    # "isMove":Z
    :cond_5
    move v3, v7

    .line 293
    goto :goto_2

    .line 298
    .restart local v3    # "isMove":Z
    :cond_6
    iput-boolean v7, p0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollLeftRight:Z

    goto :goto_3

    .line 303
    :cond_7
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DragLayer;->getPageScrollAnimation()Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->setScrollDownAndUp()V

    goto :goto_4

    .line 312
    .end local v3    # "isMove":Z
    :cond_8
    iget v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTouchSlop:I

    int-to-float v8, v8

    mul-float/2addr v8, v10

    cmpl-float v8, v1, v8

    if-lez v8, :cond_a

    mul-float v8, v2, v12

    cmpl-float v8, v1, v8

    if-lez v8, :cond_a

    move v3, v6

    .line 313
    .restart local v3    # "isMove":Z
    :goto_5
    iget-boolean v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mClickDownOnDock:Z

    if-nez v8, :cond_b

    if-eqz v3, :cond_b

    .line 314
    sget-boolean v7, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v7, :cond_9

    .line 315
    sget-object v7, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "DEBUG"

    const-string v9, "############################change x > 24 , so intercept touchEvent III"

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_9
    iput v11, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCurrentEventHandler:I

    .line 317
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/DragLayer;->startScroll(Lcom/smartisanos/smengine/TMotionEvent;)F

    goto :goto_1

    .end local v3    # "isMove":Z
    :cond_a
    move v3, v7

    .line 312
    goto :goto_5

    .restart local v3    # "isMove":Z
    :cond_b
    move v6, v7

    .line 322
    goto :goto_1
.end method

.method private endDragIcon(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, 0x0

    .line 994
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onDragIcon()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1030
    :goto_0
    return-void

    .line 997
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/smartisanos/launcher/view/DragLayer;->setStatus(IZ)V

    .line 998
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 999
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v1

    .line 1000
    .local v1, "dockView":Lcom/smartisanos/launcher/view/DockView;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v2

    .line 1001
    .local v2, "trashView":Lcom/smartisanos/launcher/view/TrashView;
    if-eqz v2, :cond_2

    .line 1002
    invoke-virtual {v2, p1, p2}, Lcom/smartisanos/launcher/view/TrashView;->isTransformedTouchPointInView(FF)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1003
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/Cell;->convertToPageCell(Z)V

    .line 1004
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/DockView;->removeDockCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 1005
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getCellDockStatus()Lcom/smartisanos/launcher/view/CellStatusForDock;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/smartisanos/launcher/view/CellStatusForDock;->moveOnDock(FF)V

    .line 1006
    new-instance v0, Lcom/smartisanos/smengine/CollisionData;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {v0, v3, v2}, Lcom/smartisanos/smengine/CollisionData;-><init>(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode;)V

    .line 1007
    .local v0, "collideData":Lcom/smartisanos/smengine/CollisionData;
    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/TrashView;->enterTrash(Lcom/smartisanos/smengine/CollisionData;)I

    .line 1008
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/TrashView;->getWaitingUninstallAppInfo()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1009
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_1

    .line 1010
    sget-object v3, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    const-string v5, "setWaitingUninstallCell ... "

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    :cond_1
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/TrashView;->getWaitingUninstallAppInfo()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1012
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/TrashView;->setWaitingUninstallCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 1025
    .end local v0    # "collideData":Lcom/smartisanos/smengine/CollisionData;
    .end local v1    # "dockView":Lcom/smartisanos/launcher/view/DockView;
    .end local v2    # "trashView":Lcom/smartisanos/launcher/view/TrashView;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1026
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCellStatusForPage:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-virtual {v3, p1, p2}, Lcom/smartisanos/launcher/view/CellStatusForPage;->endDragIcon(FF)V

    goto :goto_0

    .line 1013
    .restart local v0    # "collideData":Lcom/smartisanos/smengine/CollisionData;
    .restart local v1    # "dockView":Lcom/smartisanos/launcher/view/DockView;
    .restart local v2    # "trashView":Lcom/smartisanos/launcher/view/TrashView;
    :cond_3
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/TrashView;->getWaitingUninstallAppInfo()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1014
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/TrashView;->setWaitingUninstallCell(Lcom/smartisanos/launcher/view/Cell;)V

    goto :goto_1

    .line 1018
    .end local v0    # "collideData":Lcom/smartisanos/smengine/CollisionData;
    :cond_4
    new-instance v0, Lcom/smartisanos/smengine/CollisionData;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {v0, v3, v2}, Lcom/smartisanos/smengine/CollisionData;-><init>(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode;)V

    .line 1019
    .restart local v0    # "collideData":Lcom/smartisanos/smengine/CollisionData;
    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/TrashView;->exitTrash(Lcom/smartisanos/smengine/CollisionData;)I

    .line 1020
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/TrashView;->setWaitingUninstallCell(Lcom/smartisanos/launcher/view/Cell;)V

    goto :goto_1

    .line 1028
    .end local v0    # "collideData":Lcom/smartisanos/smengine/CollisionData;
    .end local v1    # "dockView":Lcom/smartisanos/launcher/view/DockView;
    .end local v2    # "trashView":Lcom/smartisanos/launcher/view/TrashView;
    :cond_5
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCellStatusForDock:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/CellStatusForDock;->endDragIcon()V

    goto/16 :goto_0
.end method

.method private endDragMutiIcon()V
    .locals 2

    .prologue
    .line 1288
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onDragMutiIcon()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1293
    :goto_0
    return-void

    .line 1291
    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/DragLayer;->setStatus(IZ)V

    .line 1292
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragIconNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->endDragIcon()V

    goto :goto_0
.end method

.method private endDragPage()V
    .locals 2

    .prologue
    .line 1159
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onDragPage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1164
    :goto_0
    return-void

    .line 1162
    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/DragLayer;->setStatus(IZ)V

    .line 1163
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragPageNode:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->endDragPage()V

    goto :goto_0
.end method

.method private endScroll(ZF)F
    .locals 1
    .param p1, "isCancel"    # Z
    .param p2, "vX"    # F

    .prologue
    .line 656
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/launcher/view/DragLayer;->endScroll(ZFLcom/smartisanos/smengine/Animation$AnimationListener;)F

    move-result v0

    return v0
.end method

.method private endScroll(ZFLcom/smartisanos/smengine/Animation$AnimationListener;)F
    .locals 3
    .param p1, "isCancel"    # Z
    .param p2, "vX"    # F
    .param p3, "al"    # Lcom/smartisanos/smengine/Animation$AnimationListener;

    .prologue
    const/4 v1, 0x2

    const v2, 0x3e99999a    # 0.3f

    .line 643
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onPageScroll()Z

    move-result v0

    if-nez v0, :cond_0

    .line 644
    const/4 v0, 0x0

    .line 652
    :goto_0
    return v0

    .line 646
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/view/DragLayer;->setStatus(IZ)V

    .line 647
    iget v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCurrentEventHandler:I

    if-ne v0, v1, :cond_1

    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v1, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v0, v1, :cond_1

    .line 648
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DragLayer;->getPageScrollAnimation()Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v2, p3}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->endScroll(ZFFLcom/smartisanos/smengine/Animation$AnimationListener;)F

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPageEndScrollIndex:F

    .line 652
    :goto_1
    iget v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPageEndScrollIndex:F

    goto :goto_0

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0, p1, p2, v2, p3}, Lcom/smartisanos/launcher/view/PageView;->endScroll(ZFFLcom/smartisanos/smengine/Animation$AnimationListener;)F

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPageEndScrollIndex:F

    goto :goto_1
.end method

.method private forceEndDragOrScroll(Lcom/smartisanos/smengine/TMotionEvent;Z)V
    .locals 4
    .param p1, "ev"    # Lcom/smartisanos/smengine/TMotionEvent;
    .param p2, "isError"    # Z

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onPageScroll()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 411
    sget-object v0, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#########endScrollPage while intercept touchEvent failed, isError = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/view/DragLayer;->endScroll(ZF)F

    .line 413
    if-eqz p2, :cond_1

    .line 414
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "###status error "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onDragIcon()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 418
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_2

    .line 419
    sget-object v0, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#########endDragIcon while intercept touchEvent failed, isError = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/view/DragLayer;->endDragIcon(FF)V

    .line 421
    if-eqz p2, :cond_3

    .line 422
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "### status error "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_3
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onDragPage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 426
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_4

    .line 427
    sget-object v0, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##########endDragPage while intercept touchEvent failed, isError = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_4
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->endDragPage()V

    .line 429
    if-eqz p2, :cond_5

    .line 430
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "### status error "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_5
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onDragMutiIcon()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 434
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_6

    .line 435
    sget-object v0, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##########endDragMutiIcon while intercept touchEvent failed, isError = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_6
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->endDragMutiIcon()V

    .line 437
    if-eqz p2, :cond_7

    .line 438
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "### status error "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_7
    return-void
.end method

.method public static getInstance()Lcom/smartisanos/launcher/view/DragLayer;
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/smartisanos/launcher/view/DragLayer;->mDragLayer:Lcom/smartisanos/launcher/view/DragLayer;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/smartisanos/launcher/view/DragLayer;

    const-string v1, "root"

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/DragLayer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/view/DragLayer;->mDragLayer:Lcom/smartisanos/launcher/view/DragLayer;

    .line 60
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/view/DragLayer;->mDragLayer:Lcom/smartisanos/launcher/view/DragLayer;

    return-object v0
.end method

.method private getPageScrollIndex()F
    .locals 2

    .prologue
    .line 606
    iget v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCurrentEventHandler:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v1, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v0, v1, :cond_0

    .line 607
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DragLayer;->getPageScrollAnimation()Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->getScrollIndex()F

    move-result v0

    .line 609
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getScrollIndex()F

    move-result v0

    goto :goto_0
.end method

.method private initDragIcon()V
    .locals 1

    .prologue
    .line 862
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onDragIcon()Z

    move-result v0

    if-nez v0, :cond_0

    .line 872
    :goto_0
    return-void

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->forceFinishCellLongPressAnimation()V

    .line 867
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 868
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCellStatusForPage:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/CellStatusForPage;->initDragIcon()V

    goto :goto_0

    .line 870
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCellStatusForDock:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/CellStatusForDock;->initDragIcon()V

    goto :goto_0
.end method

.method private initDragMutiIcon()V
    .locals 1

    .prologue
    .line 1274
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onDragMutiIcon()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1278
    :goto_0
    return-void

    .line 1277
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragIconNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->initDragIcon()V

    goto :goto_0
.end method

.method private initDragPage()V
    .locals 1

    .prologue
    .line 1142
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onDragPage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1149
    :goto_0
    return-void

    .line 1147
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragPageNode:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->forceFinishPageLongPressAnimation()V

    .line 1148
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragPageNode:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->initDragPage()V

    goto :goto_0
.end method

.method private initScroll()V
    .locals 1

    .prologue
    .line 625
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onPageScroll()Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    :cond_0
    return-void
.end method

.method private onDragIcon()Z
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/DragLayer;->getStatus(I)Z

    move-result v0

    return v0
.end method

.method private onDragIconAndStartScroll(Lcom/smartisanos/smengine/TMotionEvent;)V
    .locals 4
    .param p1, "ev"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 697
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mNeedInitDragIcon:Z

    if-eqz v0, :cond_1

    .line 698
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 699
    sget-object v0, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    const-string v2, "############################begin drag icon at onDragIconEvent():ACTION_POINTER_DOWN"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    :cond_0
    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragIconPointID:I

    .line 701
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->initDragIcon()V

    .line 702
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mNeedInitDragIcon:Z

    .line 704
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onPageScroll()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onDragIcon()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 705
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 706
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_2

    .line 707
    sget-object v0, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    const-string v2, "############################begin scroll page at onDragIconEvent():ACTION_POINTER_DOWN"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/launcher/view/Page;

    if-eqz v0, :cond_3

    .line 709
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->forceFinishCellLongPressAnimation()V

    .line 710
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 713
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/AnimationController;->clearAllAnimationEventInQueue()V

    .line 714
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/DragLayer;->startScroll(Lcom/smartisanos/smengine/TMotionEvent;)F

    .line 716
    :cond_4
    return-void
.end method

.method private onDragMutiIcon()Z
    .locals 1

    .prologue
    .line 477
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/DragLayer;->getStatus(I)Z

    move-result v0

    return v0
.end method

.method private onDragMutiIconAndStartScroll(Lcom/smartisanos/smengine/TMotionEvent;)V
    .locals 4
    .param p1, "ev"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 1168
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mNeedInitMutiDragIcon:Z

    if-eqz v0, :cond_1

    .line 1169
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 1170
    sget-object v0, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    const-string v2, "###########################begin drag muti icon onDragMutiIconEvent():ACTION_POINTER_DOWN"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    :cond_0
    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragIconPointID:I

    .line 1172
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->initDragMutiIcon()V

    .line 1173
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mNeedInitMutiDragIcon:Z

    .line 1175
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onPageScroll()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1176
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_2

    .line 1177
    sget-object v0, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    const-string v2, "###########################begin scroll page onDragMutiIconEvent():ACTION_POINTER_DOWN"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    :cond_2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/DragLayer;->startScroll(Lcom/smartisanos/smengine/TMotionEvent;)F

    .line 1180
    :cond_3
    return-void
.end method

.method private onDragPage()Z
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/DragLayer;->getStatus(I)Z

    move-result v0

    return v0
.end method

.method private onDragPageAndstartScroll(Lcom/smartisanos/smengine/TMotionEvent;)V
    .locals 4
    .param p1, "ev"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 1033
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mNeedInitDragPage:Z

    if-eqz v0, :cond_1

    .line 1034
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 1035
    sget-object v0, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    const-string v2, "###########################begin drag page onDragPageEvent():ACTION_POINTER_DOWN"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    :cond_0
    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragIconPointID:I

    .line 1037
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->initDragPage()V

    .line 1038
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mNeedInitDragPage:Z

    .line 1040
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onPageScroll()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1041
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_2

    .line 1042
    sget-object v0, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    const-string v2, "############################begin scroll page at onDragPageEvent():ACTION_POINTER_DOWN"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    :cond_2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/DragLayer;->startScroll(Lcom/smartisanos/smengine/TMotionEvent;)F

    .line 1045
    :cond_3
    return-void
.end method

.method private onPageScroll()Z
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/DragLayer;->getStatus(I)Z

    move-result v0

    return v0
.end method

.method private startScroll(Lcom/smartisanos/smengine/TMotionEvent;)F
    .locals 2
    .param p1, "ev"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 614
    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/view/DragLayer;->setStatus(IZ)V

    .line 615
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mNeedInitScroll:Z

    .line 616
    iget v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCurrentEventHandler:I

    if-ne v0, v1, :cond_0

    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v1, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v0, v1, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DragLayer;->getPageScrollAnimation()Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->startScroll()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPageStartScrollIndex:F

    .line 621
    :goto_0
    iget v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPageStartScrollIndex:F

    return v0

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->startScroll()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPageStartScrollIndex:F

    goto :goto_0
.end method

.method private updateDragPage(FFFF)V
    .locals 1
    .param p1, "changeX"    # F
    .param p2, "changeY"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 1152
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onDragPage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1156
    :goto_0
    return-void

    .line 1155
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragPageNode:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/launcher/view/SwitchPageNode;->updateDragPage(FFFF)V

    goto :goto_0
.end method

.method private updateMutiDragIcon(FFFF)V
    .locals 1
    .param p1, "changeX"    # F
    .param p2, "changeY"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 1281
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onDragMutiIcon()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1285
    :goto_0
    return-void

    .line 1284
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragIconNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/launcher/view/MultiSelectNode;->updateDragIcon(FFFF)V

    goto :goto_0
.end method

.method private updateScroll(F)V
    .locals 2
    .param p1, "changeX"    # F

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onPageScroll()Z

    move-result v0

    if-nez v0, :cond_0

    .line 640
    :goto_0
    return-void

    .line 634
    :cond_0
    iget v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCurrentEventHandler:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v1, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v0, v1, :cond_1

    .line 635
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DragLayer;->getPageScrollAnimation()Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->updateScroll(F)V

    goto :goto_0

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/PageView;->updateScroll(F)V

    goto :goto_0
.end method

.method private invokeStatusBarMethod(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 4
    .param p1, "service"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1308
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1311
    :goto_0
    return v0

    .line 1309
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private tryExpandNotificationPanel()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1315
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1316
    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Lcom/smartisanos/home/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1317
    const-string v2, "expandNotificationsPanel"

    invoke-direct {p0, v1, v2}, Lcom/smartisanos/launcher/view/DragLayer;->invokeStatusBarMethod(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1318
    const/4 v0, 0x1

    goto :cond_1

    .line 1320
    :cond_0
    const-string v2, "expand"

    invoke-direct {p0, v1, v2}, Lcom/smartisanos/launcher/view/DragLayer;->invokeStatusBarMethod(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    .line 1324
    :cond_1
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    sget-object v1, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "PULLDOWN_STATUSBAR_EXPAND_OK"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :cond_3

    :cond_2
    sget-object v1, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "PULLDOWN_STATUSBAR_EXPAND_FAIL"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    :cond_3
    return v0
.end method

.method private tryOpenNotificationPanelByPullDownOnIntercept(Lcom/smartisanos/smengine/TMotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1355
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerCount()I

    move-result v0

    if-eq v0, v4, :cond_0

    return v5

    .line 1358
    :cond_0
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mClickDownOnDock:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/view/DragLayer;->getStatus(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/DragLayer;->getStatus(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/DragLayer;->getStatus(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/DragLayer;->getStatus(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/DragLayer;->getStatus(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1364
    :cond_1
    return v5

    .line 1367
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v5

    .line 1371
    :cond_3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DragLayer;->mStartY:[F

    aget v1, v1, v5

    sub-float v1, v0, v1

    .line 1372
    .local v1, "moveYDown":F
    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    .line 1375
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/DragLayer;->mStartX:[F

    aget v2, v2, v5

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1376
    .local v2, "moveXAbs":F
    cmpl-float v0, v1, v2

    if-lez v0, :cond_1

    .line 1379
    iget v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTouchSlop:I

    int-to-float v0, v0

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v3

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    .line 1383
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->tryExpandNotificationPanel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1384
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mStartY:[F

    aput v0, v3, v5

    .line 1385
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCurrentEventHandler:I

    .line 1386
    return v4
.end method


# virtual methods
.method public clear(Z)V
    .locals 1
    .param p1, "cleanHardwareResource"    # Z

    .prologue
    .line 1316
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 1317
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPageScrollAnimation:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    if-eqz v0, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPageScrollAnimation:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->forceEndScroll()V

    .line 1319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPageScrollAnimation:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    .line 1321
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Lcom/smartisanos/smengine/TMotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    const/16 v13, 0x100

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 327
    iget-object v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTVelocityAndGestureTracker:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    invoke-virtual {v8, p1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->addMovement(Lcom/smartisanos/smengine/TMotionEvent;)V

    .line 328
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_2

    .line 329
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v8

    invoke-virtual {v8, v13, v11}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 330
    invoke-direct {p0, p1, v11}, Lcom/smartisanos/launcher/view/DragLayer;->forceEndDragOrScroll(Lcom/smartisanos/smengine/TMotionEvent;Z)V

    .line 331
    iput-boolean v12, p0, Lcom/smartisanos/launcher/view/DragLayer;->mClickDownOnDock:Z

    .line 332
    iput v12, p0, Lcom/smartisanos/launcher/view/DragLayer;->mEffectivePointerIdBits:I

    .line 333
    iput v12, p0, Lcom/smartisanos/launcher/view/DragLayer;->mEffectivePointerCount:I

    .line 334
    const/4 v8, -0x1

    iput v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCurrentEventHandler:I

    .line 335
    iput v12, p0, Lcom/smartisanos/launcher/view/DragLayer;->mStatus:I

    .line 336
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getActionIndex()I

    move-result v1

    .line 337
    .local v1, "actionIndex":I
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v0

    .line 338
    .local v0, "actionId":I
    iget-object v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mStartX:[F

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/TMotionEvent;->getX(I)F

    move-result v9

    aput v9, v8, v0

    .line 339
    iget-object v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mStartY:[F

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/TMotionEvent;->getY(I)F

    move-result v9

    aput v9, v8, v0

    .line 340
    iget-object v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDockPage:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/TMotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/TMotionEvent;->getY(I)F

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/view/DockView;->isTransformedTouchPointInView(FF)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 341
    iput-boolean v11, p0, Lcom/smartisanos/launcher/view/DragLayer;->mClickDownOnDock:Z

    .line 371
    .end local v0    # "actionId":I
    .end local v1    # "actionIndex":I
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/DragLayer;->canSweep(Lcom/smartisanos/smengine/TMotionEvent;)V

    .line 372
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->dispatchTouchEvent(Lcom/smartisanos/smengine/TMotionEvent;)Z

    move-result v7

    .line 373
    .local v7, "res":Z
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerCount()I

    move-result v2

    .line 374
    .local v2, "count":I
    const/4 v5, 0x0

    .local v5, "p":I
    :goto_1
    if-ge v5, v2, :cond_5

    .line 375
    invoke-virtual {p1, v5}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v6

    .line 376
    .local v6, "pointId":I
    iget-object v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPreX:[F

    invoke-virtual {p1, v5}, Lcom/smartisanos/smengine/TMotionEvent;->getX(I)F

    move-result v9

    aput v9, v8, v6

    .line 377
    iget-object v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPreY:[F

    invoke-virtual {p1, v5}, Lcom/smartisanos/smengine/TMotionEvent;->getY(I)F

    move-result v9

    aput v9, v8, v6

    .line 374
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 343
    .end local v2    # "count":I
    .end local v5    # "p":I
    .end local v6    # "pointId":I
    .end local v7    # "res":Z
    .restart local v0    # "actionId":I
    .restart local v1    # "actionIndex":I
    :cond_1
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v8

    shl-int v3, v11, v8

    .line 344
    .local v3, "idBitsToAssign":I
    iget v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mEffectivePointerIdBits:I

    or-int/2addr v8, v3

    iput v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mEffectivePointerIdBits:I

    .line 345
    iget v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mEffectivePointerCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mEffectivePointerCount:I

    goto :goto_0

    .line 348
    .end local v0    # "actionId":I
    .end local v1    # "actionIndex":I
    .end local v3    # "idBitsToAssign":I
    :cond_2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_4

    .line 350
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getActionIndex()I

    move-result v1

    .line 351
    .restart local v1    # "actionIndex":I
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v0

    .line 352
    .restart local v0    # "actionId":I
    iget-object v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mStartX:[F

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/TMotionEvent;->getX(I)F

    move-result v9

    aput v9, v8, v0

    .line 353
    iget-object v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mStartY:[F

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/TMotionEvent;->getY(I)F

    move-result v9

    aput v9, v8, v0

    .line 354
    iput-boolean v12, p0, Lcom/smartisanos/launcher/view/DragLayer;->mClickPointDownOnDock:Z

    .line 355
    iget-object v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDockPage:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/TMotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/TMotionEvent;->getY(I)F

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/view/DockView;->isTransformedTouchPointInView(FF)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 356
    iput-boolean v11, p0, Lcom/smartisanos/launcher/view/DragLayer;->mClickPointDownOnDock:Z

    goto :goto_0

    .line 358
    :cond_3
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v8

    shl-int v3, v11, v8

    .line 359
    .restart local v3    # "idBitsToAssign":I
    iget v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mEffectivePointerIdBits:I

    or-int/2addr v8, v3

    iput v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mEffectivePointerIdBits:I

    .line 360
    iget v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mEffectivePointerCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mEffectivePointerCount:I

    goto :goto_0

    .line 363
    .end local v0    # "actionId":I
    .end local v1    # "actionIndex":I
    .end local v3    # "idBitsToAssign":I
    :cond_4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_0

    .line 364
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getActionIndex()I

    move-result v1

    .line 365
    .restart local v1    # "actionIndex":I
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v8

    shl-int v4, v11, v8

    .line 366
    .local v4, "idBitsToRemove":I
    iget v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mEffectivePointerIdBits:I

    and-int/2addr v8, v4

    if-eqz v8, :cond_0

    .line 367
    iget v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mEffectivePointerIdBits:I

    xor-int/lit8 v9, v4, -0x1

    and-int/2addr v8, v9

    iput v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mEffectivePointerIdBits:I

    .line 368
    iget v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mEffectivePointerCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mEffectivePointerCount:I

    goto/16 :goto_0

    .line 379
    .end local v1    # "actionIndex":I
    .end local v4    # "idBitsToRemove":I
    .restart local v2    # "count":I
    .restart local v5    # "p":I
    .restart local v7    # "res":Z
    :cond_5
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v8

    if-eq v8, v11, :cond_6

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_7

    .line 380
    :cond_6
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v8

    invoke-virtual {v8, v13, v12}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 382
    :cond_7
    return v7
.end method

.method public getAllViewCanBeTouched()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/SceneNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1300
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1303
    .local v0, "allViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/SceneNode;>;"
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/FloatPageNode;->setForceDispatchTouchToView(Z)V

    .line 1304
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    .end local v0    # "allViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/SceneNode;>;"
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/smartisanos/smengine/SceneNode;->getAllViewCanBeTouched()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getConvertProgress(F)F
    .locals 5
    .param p1, "cellY"    # F

    .prologue
    const/high16 v4, 0x43160000    # 150.0f

    .line 875
    iget v2, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDockTop:F

    sub-float v2, p1, v2

    const/high16 v3, 0x42aa0000    # 85.0f

    add-float v0, v2, v3

    .line 877
    .local v0, "cellToDockY":F
    cmpg-float v2, v0, v4

    if-gez v2, :cond_0

    const/high16 v2, -0x3cea0000    # -150.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 878
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x43960000    # 300.0f

    div-float v3, v0, v3

    sub-float v1, v2, v3

    .line 884
    .local v1, "progress":F
    :goto_0
    return v1

    .line 879
    .end local v1    # "progress":F
    :cond_0
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_1

    .line 880
    const/4 v1, 0x0

    .restart local v1    # "progress":F
    goto :goto_0

    .line 882
    .end local v1    # "progress":F
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .restart local v1    # "progress":F
    goto :goto_0
.end method

.method public getDownStartX()F
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mStartX:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getDownStartY()F
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mStartY:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getPageScrollAnimation()Lcom/smartisanos/launcher/animations/PageScrollAnimation;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPageScrollAnimation:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    if-nez v0, :cond_0

    .line 136
    sget v0, Lcom/smartisanos/launcher/data/Constants;->SCROLL_ANIMATION_TYPE:I

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationList;->getScrollAnimation(I)Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPageScrollAnimation:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    .line 137
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPageScrollAnimation:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->canDownUpScroll()Z

    move-result v0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCanDownUpScroll:Z

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollLeftRight:Z

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPageScrollAnimation:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mStatus:I

    return v0
.end method

.method public getStatus(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 123
    iget v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mStatus:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVelocityTracker()Lcom/smartisanos/smengine/TVelocityAndGestureTracker;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTVelocityAndGestureTracker:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    return-object v0
.end method

.method public onDragIconEvent(Lcom/smartisanos/smengine/TMotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 719
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v6

    if-ne v6, v13, :cond_4

    .line 720
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/smartisanos/launcher/view/DragLayer;->mNeedInitDragIcon:Z

    if-eqz v6, :cond_2

    .line 721
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_1

    .line 722
    sget-object v6, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    const-string v8, "############################begin drag icon at onDragIconEvent():ACTION_DOWN"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    :cond_1
    invoke-virtual {p1, v10}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragIconPointID:I

    .line 724
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->initDragIcon()V

    .line 725
    iput-boolean v10, p0, Lcom/smartisanos/launcher/view/DragLayer;->mNeedInitDragIcon:Z

    .line 728
    :cond_2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v6

    if-ne v6, v13, :cond_3

    .line 729
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getActionIndex()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v5

    .line 730
    .local v5, "pointId":I
    shl-int v4, v9, v5

    .line 731
    .local v4, "idBits":I
    iget v6, p0, Lcom/smartisanos/launcher/view/DragLayer;->mEffectivePointerIdBits:I

    and-int/2addr v6, v4

    if-eqz v6, :cond_3

    .line 732
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/DragLayer;->onDragIconAndStartScroll(Lcom/smartisanos/smengine/TMotionEvent;)V

    .line 812
    .end local v4    # "idBits":I
    .end local v5    # "pointId":I
    :cond_3
    :goto_0
    return v9

    .line 735
    :cond_4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v6

    if-eq v6, v12, :cond_5

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_10

    .line 736
    :cond_5
    iget-boolean v6, p0, Lcom/smartisanos/launcher/view/DragLayer;->mNeedInitDragIcon:Z

    if-eqz v6, :cond_7

    .line 737
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_6

    .line 738
    sget-object v6, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    const-string v8, "############################begin drag icon at onDragIconEvent():ACTION_MOVE"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :cond_6
    invoke-virtual {p1, v10}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragIconPointID:I

    .line 740
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->initDragIcon()V

    .line 741
    iput-boolean v10, p0, Lcom/smartisanos/launcher/view/DragLayer;->mNeedInitDragIcon:Z

    .line 743
    :cond_7
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onDragIcon()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 744
    invoke-virtual {p1, v10}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v0

    .line 745
    .local v0, "actionId":I
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPreX:[F

    aget v7, v7, v0

    sub-float v2, v6, v7

    .line 746
    .local v2, "changeX":F
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPreY:[F

    aget v7, v7, v0

    sub-float v3, v6, v7

    .line 747
    .local v3, "changeY":F
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getY()F

    move-result v7

    invoke-virtual {p0, v2, v3, v6, v7}, Lcom/smartisanos/launcher/view/DragLayer;->updateDragIcon(FFFF)V

    .line 750
    .end local v0    # "actionId":I
    .end local v2    # "changeX":F
    .end local v3    # "changeY":F
    :cond_8
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onPageScroll()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 751
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onDragIcon()Z

    move-result v6

    invoke-direct {p0, p1, v6}, Lcom/smartisanos/launcher/view/DragLayer;->caculateMaxOrMinMoveX(Lcom/smartisanos/smengine/TMotionEvent;Z)F

    move-result v2

    .line 752
    .restart local v2    # "changeX":F
    invoke-direct {p0, v2}, Lcom/smartisanos/launcher/view/DragLayer;->updateScroll(F)V

    .line 754
    .end local v2    # "changeX":F
    :cond_9
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_3

    .line 755
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getActionIndex()I

    move-result v1

    .line 756
    .local v1, "actionIndex":I
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v6

    iget v7, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragIconPointID:I

    if-ne v6, v7, :cond_d

    .line 757
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onDragIcon()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 758
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onPageScroll()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 759
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_a

    .line 760
    sget-object v6, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    const-string v8, "############################end scroll page at onDragIconEvent():ACTION_POINTER_UP A"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    :cond_a
    invoke-direct {p0, v9, v11}, Lcom/smartisanos/launcher/view/DragLayer;->endScroll(ZF)F

    .line 763
    :cond_b
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_c

    .line 764
    sget-object v6, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    const-string v8, "############################end drag icon at onDragIconEvent():ACTION_POINTER_UP"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    :cond_c
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/TMotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/TMotionEvent;->getY(I)F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/smartisanos/launcher/view/DragLayer;->endDragIcon(FF)V

    .line 768
    :cond_d
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onPageScroll()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 769
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onDragIcon()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 770
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerCount()I

    move-result v6

    if-eq v6, v12, :cond_e

    iget v6, p0, Lcom/smartisanos/launcher/view/DragLayer;->mEffectivePointerCount:I

    if-ne v6, v9, :cond_3

    .line 771
    :cond_e
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_f

    .line 772
    sget-object v6, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    const-string v8, "############################end scroll page at onDragIconEvent():ACTION_POINTER_UP B"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    :cond_f
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getActionIndex()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v5

    .line 774
    .restart local v5    # "pointId":I
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTVelocityAndGestureTracker:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    invoke-virtual {v6, v5}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->getXVelocity(I)F

    move-result v6

    invoke-direct {p0, v10, v6}, Lcom/smartisanos/launcher/view/DragLayer;->endScroll(ZF)F

    goto/16 :goto_0

    .line 779
    .end local v1    # "actionIndex":I
    .end local v5    # "pointId":I
    :cond_10
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v6

    if-ne v6, v9, :cond_16

    .line 780
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onDragIcon()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 781
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onPageScroll()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 782
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_11

    .line 783
    sget-object v6, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    const-string v8, "############################end scroll page at onDragIconEvent():ACTION_UP A"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    :cond_11
    invoke-direct {p0, v9, v11}, Lcom/smartisanos/launcher/view/DragLayer;->endScroll(ZF)F

    .line 786
    :cond_12
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_13

    .line 787
    sget-object v6, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    const-string v8, "############################end drag icon at onDragIconEvent():ACTION_UP"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    :cond_13
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/smartisanos/launcher/view/DragLayer;->endDragIcon(FF)V

    .line 790
    :cond_14
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onPageScroll()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 791
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_15

    .line 792
    sget-object v6, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    const-string v8, "############################end scroll page at onDragIconEvent():ACTION_UP B"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    :cond_15
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTVelocityAndGestureTracker:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->getXVelocity()F

    move-result v6

    invoke-direct {p0, v10, v6}, Lcom/smartisanos/launcher/view/DragLayer;->endScroll(ZF)F

    goto/16 :goto_0

    .line 795
    :cond_16
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    .line 796
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onDragIcon()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 797
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onPageScroll()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 798
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_17

    .line 799
    sget-object v6, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    const-string v8, "############################end scroll page at onDragIconEvent():ACTION_CANCEL A"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    :cond_17
    invoke-direct {p0, v9, v11}, Lcom/smartisanos/launcher/view/DragLayer;->endScroll(ZF)F

    .line 802
    :cond_18
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_19

    .line 803
    sget-object v6, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    const-string v8, "############################end drag icon at onDragIconEvent():ACTION_CANCEL"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    :cond_19
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/smartisanos/launcher/view/DragLayer;->endDragIcon(FF)V

    .line 806
    :cond_1a
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onPageScroll()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 807
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_1b

    .line 808
    sget-object v6, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    const-string v8, "############################end scroll page at onDragIconEvent():ACTION_CANCEL B"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    :cond_1b
    invoke-direct {p0, v9, v11}, Lcom/smartisanos/launcher/view/DragLayer;->endScroll(ZF)F

    goto/16 :goto_0
.end method

.method public onDragMutiIconEvent(Lcom/smartisanos/smengine/TMotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1183
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v4

    if-ne v4, v10, :cond_4

    .line 1184
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/smartisanos/launcher/view/DragLayer;->mNeedInitMutiDragIcon:Z

    if-eqz v4, :cond_2

    .line 1185
    invoke-virtual {p1, v7}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragIconPointID:I

    .line 1186
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_1

    .line 1187
    sget-object v4, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    const-string v6, "###########################begin drag muti icon onDragMutiIconEvent():ACTION_DOWN"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->initDragMutiIcon()V

    .line 1189
    iput-boolean v7, p0, Lcom/smartisanos/launcher/view/DragLayer;->mNeedInitMutiDragIcon:Z

    .line 1191
    :cond_2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v4

    if-ne v4, v10, :cond_3

    .line 1192
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/DragLayer;->onDragMutiIconAndStartScroll(Lcom/smartisanos/smengine/TMotionEvent;)V

    .line 1256
    :cond_3
    :goto_0
    return v8

    .line 1194
    :cond_4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v4

    if-eq v4, v9, :cond_5

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v4

    if-ne v4, v11, :cond_10

    .line 1195
    :cond_5
    iget-boolean v4, p0, Lcom/smartisanos/launcher/view/DragLayer;->mNeedInitMutiDragIcon:Z

    if-eqz v4, :cond_7

    .line 1196
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_6

    .line 1197
    sget-object v4, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    const-string v6, "###########################begin drag muti icon onDragMutiIconEvent():ACTION_MOVE"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    :cond_6
    invoke-virtual {p1, v7}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragIconPointID:I

    .line 1199
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->initDragMutiIcon()V

    .line 1200
    iput-boolean v7, p0, Lcom/smartisanos/launcher/view/DragLayer;->mNeedInitMutiDragIcon:Z

    .line 1202
    :cond_7
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onDragMutiIcon()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1203
    invoke-virtual {p1, v7}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v0

    .line 1204
    .local v0, "actionId":I
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPreX:[F

    aget v5, v5, v0

    sub-float v1, v4, v5

    .line 1205
    .local v1, "changeX":F
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPreY:[F

    aget v5, v5, v0

    sub-float v2, v4, v5

    .line 1206
    .local v2, "changeY":F
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/smartisanos/launcher/view/DragLayer;->updateMutiDragIcon(FFFF)V

    .line 1209
    .end local v0    # "actionId":I
    .end local v1    # "changeX":F
    .end local v2    # "changeY":F
    :cond_8
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onPageScroll()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1210
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onDragMutiIcon()Z

    move-result v4

    invoke-direct {p0, p1, v4}, Lcom/smartisanos/launcher/view/DragLayer;->caculateMaxOrMinMoveX(Lcom/smartisanos/smengine/TMotionEvent;Z)F

    move-result v1

    .line 1211
    .restart local v1    # "changeX":F
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/DragLayer;->updateScroll(F)V

    .line 1213
    .end local v1    # "changeX":F
    :cond_9
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v4

    if-ne v4, v11, :cond_3

    .line 1214
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v4

    iget v5, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragIconPointID:I

    if-ne v4, v5, :cond_d

    .line 1215
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_a

    .line 1216
    sget-object v4, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    const-string v6, "###########################end drag muti icon onDragMutiIconEvent():ACTION_POINTER_UP"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    :cond_a
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onPageScroll()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1218
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_b

    .line 1219
    sget-object v4, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    const-string v6, "###########################end scroll page onDragMutiIconEvent():ACTION_POINTER_UP"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    :cond_b
    const/4 v4, 0x0

    invoke-direct {p0, v8, v4}, Lcom/smartisanos/launcher/view/DragLayer;->endScroll(ZF)F

    .line 1222
    :cond_c
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->endDragMutiIcon()V

    .line 1224
    :cond_d
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onPageScroll()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1225
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onDragMutiIcon()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1226
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerCount()I

    move-result v4

    if-eq v4, v9, :cond_e

    iget v4, p0, Lcom/smartisanos/launcher/view/DragLayer;->mEffectivePointerCount:I

    if-ne v4, v8, :cond_3

    .line 1227
    :cond_e
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_f

    .line 1228
    sget-object v4, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    const-string v6, "###########################end scroll page onDragMutiIconEvent():ACTION_POINTER_UP"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    :cond_f
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v3

    .line 1230
    .local v3, "pointId":I
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTVelocityAndGestureTracker:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->getXVelocity(I)F

    move-result v4

    invoke-direct {p0, v7, v4}, Lcom/smartisanos/launcher/view/DragLayer;->endScroll(ZF)F

    goto/16 :goto_0

    .line 1235
    .end local v3    # "pointId":I
    :cond_10
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v4

    if-ne v4, v8, :cond_14

    .line 1236
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_11

    .line 1237
    sget-object v4, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    const-string v6, "###########################end drag muti icon onDragMutiIconEvent():ACTION_UP"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    :cond_11
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onPageScroll()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1239
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_12

    .line 1240
    sget-object v4, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    const-string v6, "###########################end scroll page onDragMutiIconEvent():ACTION_UP"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    :cond_12
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTVelocityAndGestureTracker:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->getXVelocity()F

    move-result v4

    invoke-direct {p0, v7, v4}, Lcom/smartisanos/launcher/view/DragLayer;->endScroll(ZF)F

    .line 1243
    :cond_13
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->endDragMutiIcon()V

    goto/16 :goto_0

    .line 1245
    :cond_14
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 1246
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_15

    .line 1247
    sget-object v4, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    const-string v6, "###########################end drag muti icon onDragMutiIconEvent():ACTION_CANCEL"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    :cond_15
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onPageScroll()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1249
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_16

    .line 1250
    sget-object v4, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    const-string v6, "###########################end scroll page onDragMutiIconEvent():ACTION_CANCEL"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    :cond_16
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTVelocityAndGestureTracker:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->getXVelocity()F

    move-result v4

    invoke-direct {p0, v8, v4}, Lcom/smartisanos/launcher/view/DragLayer;->endScroll(ZF)F

    .line 1253
    :cond_17
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->endDragMutiIcon()V

    goto/16 :goto_0
.end method

.method public onDragPageEvent(Lcom/smartisanos/smengine/TMotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1049
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v5

    if-ne v5, v11, :cond_4

    .line 1050
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/smartisanos/launcher/view/DragLayer;->mNeedInitDragPage:Z

    if-eqz v5, :cond_2

    .line 1051
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_1

    .line 1052
    sget-object v5, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    const-string v7, "###########################begin drag page onDragPageEvent():ACTION_DOWN"

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    :cond_1
    invoke-virtual {p1, v8}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragIconPointID:I

    .line 1054
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->initDragPage()V

    .line 1055
    iput-boolean v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mNeedInitDragPage:Z

    .line 1057
    :cond_2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v5

    if-ne v5, v11, :cond_3

    .line 1058
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v4

    .line 1059
    .local v4, "pointId":I
    shl-int v3, v9, v4

    .line 1060
    .local v3, "idBits":I
    iget v5, p0, Lcom/smartisanos/launcher/view/DragLayer;->mEffectivePointerIdBits:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_3

    .line 1061
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/DragLayer;->onDragPageAndstartScroll(Lcom/smartisanos/smengine/TMotionEvent;)V

    .line 1119
    .end local v3    # "idBits":I
    .end local v4    # "pointId":I
    :cond_3
    :goto_0
    return v9

    .line 1064
    :cond_4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v5

    if-eq v5, v10, :cond_5

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v5

    if-ne v5, v12, :cond_e

    .line 1065
    :cond_5
    iget-boolean v5, p0, Lcom/smartisanos/launcher/view/DragLayer;->mNeedInitDragPage:Z

    if-eqz v5, :cond_7

    .line 1066
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_6

    .line 1067
    sget-object v5, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    const-string v7, "###########################begin drag page onDragPageEvent():ACTION_MOVE"

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    :cond_6
    invoke-virtual {p1, v8}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragIconPointID:I

    .line 1069
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->initDragPage()V

    .line 1070
    iput-boolean v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mNeedInitDragPage:Z

    .line 1072
    :cond_7
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onDragPage()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1073
    invoke-virtual {p1, v8}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v0

    .line 1074
    .local v0, "actionId":I
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPreX:[F

    aget v6, v6, v0

    sub-float v1, v5, v6

    .line 1075
    .local v1, "changeX":F
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPreY:[F

    aget v6, v6, v0

    sub-float v2, v5, v6

    .line 1076
    .local v2, "changeY":F
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getY()F

    move-result v6

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/smartisanos/launcher/view/DragLayer;->updateDragPage(FFFF)V

    .line 1078
    .end local v0    # "actionId":I
    .end local v1    # "changeX":F
    .end local v2    # "changeY":F
    :cond_8
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onPageScroll()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1079
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onDragPage()Z

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/smartisanos/launcher/view/DragLayer;->caculateMaxOrMinMoveX(Lcom/smartisanos/smengine/TMotionEvent;Z)F

    move-result v1

    .line 1080
    .restart local v1    # "changeX":F
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/DragLayer;->updateScroll(F)V

    .line 1082
    .end local v1    # "changeX":F
    :cond_9
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v5

    if-ne v5, v12, :cond_3

    .line 1083
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v5

    iget v6, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragIconPointID:I

    if-ne v5, v6, :cond_b

    .line 1084
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_a

    .line 1085
    sget-object v5, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    const-string v7, "###########################end drag page onDragPageEvent():ACTION_POINTER_UP"

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    :cond_a
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->endDragPage()V

    .line 1088
    :cond_b
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onPageScroll()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1089
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onDragPage()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1090
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerCount()I

    move-result v5

    if-eq v5, v10, :cond_c

    iget v5, p0, Lcom/smartisanos/launcher/view/DragLayer;->mEffectivePointerCount:I

    if-ne v5, v9, :cond_3

    .line 1091
    :cond_c
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v4

    .line 1092
    .restart local v4    # "pointId":I
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_d

    .line 1093
    sget-object v5, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    const-string v7, "###########################end scroll page onDragPageEvent():ACTION_POINTER_UP"

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    :cond_d
    iget-object v5, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTVelocityAndGestureTracker:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    invoke-virtual {v5, v4}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->getXVelocity(I)F

    move-result v5

    invoke-direct {p0, v8, v5}, Lcom/smartisanos/launcher/view/DragLayer;->endScroll(ZF)F

    goto/16 :goto_0

    .line 1100
    .end local v4    # "pointId":I
    :cond_e
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v5

    if-ne v5, v9, :cond_11

    .line 1101
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_f

    .line 1102
    sget-object v5, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    const-string v7, "###########################end drag page onDragPageEvent():ACTION_POINTER_UP"

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    :cond_f
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->endDragPage()V

    .line 1104
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onPageScroll()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1105
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_10

    .line 1106
    sget-object v5, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    const-string v7, "###########################end scroll page onDragPageEvent():ACTION_UP"

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    :cond_10
    iget-object v5, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTVelocityAndGestureTracker:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->getXVelocity()F

    move-result v5

    invoke-direct {p0, v8, v5}, Lcom/smartisanos/launcher/view/DragLayer;->endScroll(ZF)F

    goto/16 :goto_0

    .line 1109
    :cond_11
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 1110
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_12

    .line 1111
    sget-object v5, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    const-string v7, "###########################end drag page onDragPageEvent():ACTION_CANCEL"

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    :cond_12
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->endDragPage()V

    .line 1113
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onPageScroll()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1114
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_13

    .line 1115
    sget-object v5, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    const-string v7, "###########################end scroll page onDragPageEvent():ACTION_CANCEL"

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    :cond_13
    iget-object v5, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTVelocityAndGestureTracker:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->getXVelocity()F

    move-result v5

    invoke-direct {p0, v9, v5}, Lcom/smartisanos/launcher/view/DragLayer;->endScroll(ZF)F

    goto/16 :goto_0
.end method

.method public onGesture(Lcom/smartisanos/smengine/TMotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    .line 1312
    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Lcom/smartisanos/smengine/TMotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/16 v4, 0x10

    const/4 v1, 0x1

    .line 191
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_a

    .line 192
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    .line 194
    iget-boolean v2, p0, Lcom/smartisanos/launcher/view/DragLayer;->mClickDownOnDock:Z

    if-nez v2, :cond_4

    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 195
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_1

    .line 196
    sget-object v0, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "############################page is scroll while finger down, so begin scroll"

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_1
    iput v5, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCurrentEventHandler:I

    .line 198
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/DragLayer;->startScroll(Lcom/smartisanos/smengine/TMotionEvent;)F

    move v0, v1

    .line 275
    :cond_2
    :goto_0
    return v0

    .line 202
    :cond_3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 203
    iget-boolean v2, p0, Lcom/smartisanos/launcher/view/DragLayer;->mClickPointDownOnDock:Z

    if-nez v2, :cond_7

    .line 204
    iget v2, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCurrentEventHandler:I

    sparse-switch v2, :sswitch_data_0

    .line 224
    :cond_4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTVelocityAndGestureTracker:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mightZoom()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTVelocityAndGestureTracker:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mightSweep(Lcom/smartisanos/smengine/TMotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 225
    :cond_5
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_6

    .line 226
    sget-object v0, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "############################MightSweep or zoom at down, so intercept touchEvent"

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_6
    iput v4, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCurrentEventHandler:I

    .line 228
    invoke-virtual {p0, v4, v1}, Lcom/smartisanos/launcher/view/DragLayer;->setStatus(IZ)V

    .line 229
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTVelocityAndGestureTracker:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->enableGesture()V

    move v0, v1

    .line 230
    goto :goto_0

    .line 206
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/DragLayer;->onDragIconAndStartScroll(Lcom/smartisanos/smengine/TMotionEvent;)V

    move v0, v1

    .line 207
    goto :goto_0

    .line 209
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/DragLayer;->onDragPageAndstartScroll(Lcom/smartisanos/smengine/TMotionEvent;)V

    move v0, v1

    .line 210
    goto :goto_0

    .line 212
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/DragLayer;->onDragMutiIconAndStartScroll(Lcom/smartisanos/smengine/TMotionEvent;)V

    move v0, v1

    .line 213
    goto :goto_0

    .line 216
    :cond_7
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/DragLayer;->getStatus(I)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p0, v6}, Lcom/smartisanos/launcher/view/DragLayer;->getStatus(I)Z

    move-result v2

    if-nez v2, :cond_8

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/DragLayer;->getStatus(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 217
    :cond_8
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_9

    .line 218
    sget-object v0, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "############################on drag somthing, so intercept touchEvent at point down"

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move v0, v1

    .line 219
    goto :goto_0

    .line 233
    :cond_a
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v2

    if-eq v2, v5, :cond_b

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_13

    .line 235
    :cond_b
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/DragLayer;->getStatus(I)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {p0, v6}, Lcom/smartisanos/launcher/view/DragLayer;->getStatus(I)Z

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/DragLayer;->getStatus(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 236
    :cond_c
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_d

    .line 237
    sget-object v0, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "############################on drag somthing, so intercept touchEvent at move"

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    move v0, v1

    .line 238
    goto/16 :goto_0

    .line 242
    :cond_e
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 243
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_2

    .line 244
    sget-object v1, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "############################page is on floating, so does not intercept touchEvent"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 248
    :cond_f
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTVelocityAndGestureTracker:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mightZoom()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTVelocityAndGestureTracker:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mightSweep(Lcom/smartisanos/smengine/TMotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 249
    :cond_10
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_11

    .line 250
    sget-object v0, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "############################Might Sweep or zoom at finger move, so intercept touchEvent"

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_11
    iput v4, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCurrentEventHandler:I

    .line 252
    invoke-virtual {p0, v4, v1}, Lcom/smartisanos/launcher/view/DragLayer;->setStatus(IZ)V

    .line 253
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTVelocityAndGestureTracker:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->enableGesture()V

    move v0, v1

    .line 254
    goto/16 :goto_0

    .line 256
    :cond_12
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/DragLayer;->tryOpenNotificationPanelByPullDownOnIntercept(Lcom/smartisanos/smengine/TMotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_12_0

    move v0, v1

    goto/16 :goto_0

    :cond_12_0
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/DragLayer;->canTriggerScroll(Lcom/smartisanos/smengine/TMotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 257
    :cond_13
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_14

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 259
    :cond_14
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/DragLayer;->getStatus(I)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {p0, v6}, Lcom/smartisanos/launcher/view/DragLayer;->getStatus(I)Z

    move-result v2

    if-nez v2, :cond_15

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/DragLayer;->getStatus(I)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {p0, v5}, Lcom/smartisanos/launcher/view/DragLayer;->getStatus(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 260
    :cond_15
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/launcher/view/DragLayer;->forceEndDragOrScroll(Lcom/smartisanos/smengine/TMotionEvent;Z)V

    goto/16 :goto_0

    .line 262
    :cond_16
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 265
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTVelocityAndGestureTracker:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mightZoom()Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v2, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTVelocityAndGestureTracker:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mightSweep(Lcom/smartisanos/smengine/TMotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 266
    :cond_17
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_18

    .line 267
    sget-object v0, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "############################Might Sweep or zoom at finger up, so intercept touchEvent"

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_18
    iput v4, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCurrentEventHandler:I

    .line 269
    invoke-virtual {p0, v4, v1}, Lcom/smartisanos/launcher/view/DragLayer;->setStatus(IZ)V

    .line 270
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTVelocityAndGestureTracker:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->enableGesture()V

    move v0, v1

    .line 271
    goto/16 :goto_0

    .line 204
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPageScrollEvent(Lcom/smartisanos/smengine/TMotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 549
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 550
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mNeedInitScroll:Z

    if-eqz v3, :cond_2

    .line 551
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_1

    .line 552
    sget-object v3, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    const-string v5, "############################begin scroll page at onPageScrollEvent():ACTION_DOWN"

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->initScroll()V

    .line 554
    iput-boolean v6, p0, Lcom/smartisanos/launcher/view/DragLayer;->mNeedInitScroll:Z

    .line 602
    :cond_2
    :goto_0
    return v7

    .line 556
    :cond_3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v3

    if-ne v3, v9, :cond_b

    .line 557
    :cond_4
    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mNeedInitScroll:Z

    if-eqz v3, :cond_6

    .line 558
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_5

    .line 559
    sget-object v3, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    const-string v5, "############################begin scroll page at onPageScrollEvent():ACTION_MOVE"

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    :cond_5
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->initScroll()V

    .line 561
    iput-boolean v6, p0, Lcom/smartisanos/launcher/view/DragLayer;->mNeedInitScroll:Z

    .line 564
    :cond_6
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onPageScroll()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 565
    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollLeftRight:Z

    if-nez v3, :cond_7

    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v4, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v3, v4, :cond_9

    .line 566
    :cond_7
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/DragLayer;->caculateMaxOrMinMoveX(Lcom/smartisanos/smengine/TMotionEvent;)F

    move-result v1

    .line 567
    .local v1, "changeX":F
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/DragLayer;->updateScroll(F)V

    .line 572
    .end local v1    # "changeX":F
    :goto_1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v3

    if-ne v3, v9, :cond_2

    iget v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mEffectivePointerCount:I

    if-nez v3, :cond_2

    .line 573
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v0

    .line 574
    .local v0, "actionId":I
    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollLeftRight:Z

    if-nez v3, :cond_8

    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v4, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v3, v4, :cond_a

    .line 575
    :cond_8
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTVelocityAndGestureTracker:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->getXVelocity(I)F

    move-result v3

    invoke-direct {p0, v6, v3}, Lcom/smartisanos/launcher/view/DragLayer;->endScroll(ZF)F

    goto :goto_0

    .line 569
    .end local v0    # "actionId":I
    :cond_9
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/DragLayer;->caculateMaxOrMinMoveY(Lcom/smartisanos/smengine/TMotionEvent;)F

    move-result v2

    .line 570
    .local v2, "changeY":F
    invoke-direct {p0, v2}, Lcom/smartisanos/launcher/view/DragLayer;->updateScroll(F)V

    goto :goto_1

    .line 577
    .end local v2    # "changeY":F
    .restart local v0    # "actionId":I
    :cond_a
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTVelocityAndGestureTracker:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->getYVelocity(I)F

    move-result v3

    invoke-direct {p0, v6, v3}, Lcom/smartisanos/launcher/view/DragLayer;->endScroll(ZF)F

    goto :goto_0

    .line 581
    .end local v0    # "actionId":I
    :cond_b
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v3

    if-ne v3, v7, :cond_f

    .line 582
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onPageScroll()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 583
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_c

    .line 584
    sget-object v3, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    const-string v5, "############################end scroll page at onPageScrollEvent():ACTION_UP"

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :cond_c
    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollLeftRight:Z

    if-nez v3, :cond_d

    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v4, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v3, v4, :cond_e

    .line 586
    :cond_d
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTVelocityAndGestureTracker:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->getXVelocity()F

    move-result v3

    invoke-direct {p0, v6, v3}, Lcom/smartisanos/launcher/view/DragLayer;->endScroll(ZF)F

    goto/16 :goto_0

    .line 588
    :cond_e
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mTVelocityAndGestureTracker:Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->getYVelocity()F

    move-result v3

    invoke-direct {p0, v6, v3}, Lcom/smartisanos/launcher/view/DragLayer;->endScroll(ZF)F

    goto/16 :goto_0

    .line 591
    :cond_f
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 592
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DragLayer;->onPageScroll()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 593
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_10

    .line 594
    sget-object v3, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    const-string v5, "############################end scroll page at onPageScrollEvent():ACTION_CANCEL"

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :cond_10
    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollLeftRight:Z

    if-nez v3, :cond_11

    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v4, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v3, v4, :cond_12

    .line 596
    :cond_11
    invoke-direct {p0, v7, v8}, Lcom/smartisanos/launcher/view/DragLayer;->endScroll(ZF)F

    goto/16 :goto_0

    .line 598
    :cond_12
    invoke-direct {p0, v7, v8}, Lcom/smartisanos/launcher/view/DragLayer;->endScroll(ZF)F

    goto/16 :goto_0
.end method

.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPageScrollAnimation:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPageScrollAnimation:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->onThemeChanged()V

    .line 1327
    :cond_0
    return-void
.end method

.method public onTouchEvent(Lcom/smartisanos/smengine/TMotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    .line 445
    iget v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCurrentEventHandler:I

    sparse-switch v0, :sswitch_data_0

    .line 462
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 447
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/DragLayer;->onPageScrollEvent(Lcom/smartisanos/smengine/TMotionEvent;)Z

    goto :goto_0

    .line 450
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/DragLayer;->onDragIconEvent(Lcom/smartisanos/smengine/TMotionEvent;)Z

    goto :goto_0

    .line 453
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/DragLayer;->onDragPageEvent(Lcom/smartisanos/smengine/TMotionEvent;)Z

    goto :goto_0

    .line 456
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/DragLayer;->onDragMutiIconEvent(Lcom/smartisanos/smengine/TMotionEvent;)Z

    goto :goto_0

    .line 459
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/DragLayer;->onGesture(Lcom/smartisanos/smengine/TMotionEvent;)Z

    goto :goto_0

    .line 445
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method public setDockPage(Lcom/smartisanos/launcher/view/DockView;)V
    .locals 0
    .param p1, "dockView"    # Lcom/smartisanos/launcher/view/DockView;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDockPage:Lcom/smartisanos/launcher/view/DockView;

    .line 162
    return-void
.end method

.method public setScrollPage(Lcom/smartisanos/launcher/view/PageView;)V
    .locals 0
    .param p1, "pageView"    # Lcom/smartisanos/launcher/view/PageView;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollPageView:Lcom/smartisanos/launcher/view/PageView;

    .line 132
    return-void
.end method

.method public setStatus(IZ)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "flag"    # Z

    .prologue
    .line 110
    iget v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mStatus:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-ne p2, v0, :cond_1

    .line 120
    :goto_1
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :cond_1
    if-eqz p2, :cond_2

    .line 116
    iget v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mStatus:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mStatus:I

    goto :goto_1

    .line 118
    :cond_2
    iget v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mStatus:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mStatus:I

    goto :goto_1
.end method

.method public startDragIcon(Lcom/smartisanos/launcher/view/Cell;)Z
    .locals 9
    .param p1, "cell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 821
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 822
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "############long press and startDragIcon ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; cell = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 824
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    .line 825
    .local v1, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    sget-object v3, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Oooops, startDragIcon lose packageName! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->toSimpleInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 829
    .end local v1    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->getWorldBoundingVolume()Lcom/smartisanos/smengine/BoundingVolume;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/BoundingRect;

    .line 830
    .local v0, "dockBoundingRect":Lcom/smartisanos/smengine/BoundingRect;
    invoke-virtual {v0}, Lcom/smartisanos/smengine/BoundingRect;->getMaxPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/math/Vector2f;->getY()F

    move-result v3

    iput v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDockTop:F

    .line 831
    iput-object p1, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    .line 832
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    instance-of v3, v3, Lcom/smartisanos/launcher/view/DockView;

    if-eqz v3, :cond_3

    .line 833
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/Cell;->setLastConvertProgress(F)V

    .line 837
    :goto_0
    iput-object v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCellStatusForPage:Lcom/smartisanos/launcher/view/CellStatusForPage;

    .line 838
    iput-object v8, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCellStatusForDock:Lcom/smartisanos/launcher/view/CellStatusForDock;

    .line 839
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->isCellOnPage()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 840
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/PageView;->setSelectedCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 845
    :goto_1
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getCellPageStatus()Lcom/smartisanos/launcher/view/CellStatusForPage;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCellStatusForPage:Lcom/smartisanos/launcher/view/CellStatusForPage;

    .line 846
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getCellDockStatus()Lcom/smartisanos/launcher/view/CellStatusForDock;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCellStatusForDock:Lcom/smartisanos/launcher/view/CellStatusForDock;

    .line 847
    const/4 v2, 0x1

    .line 848
    .local v2, "res":Z
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 849
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCellStatusForPage:Lcom/smartisanos/launcher/view/CellStatusForPage;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/CellStatusForPage;->startDragIcon(Lcom/smartisanos/launcher/view/Cell;)Z

    move-result v2

    .line 853
    :goto_2
    if-eqz v2, :cond_2

    .line 854
    iput-boolean v7, p0, Lcom/smartisanos/launcher/view/DragLayer;->mNeedInitDragIcon:Z

    .line 855
    iput v7, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCurrentEventHandler:I

    .line 856
    invoke-virtual {p0, v7, v7}, Lcom/smartisanos/launcher/view/DragLayer;->setStatus(IZ)V

    .line 858
    :cond_2
    return v2

    .line 835
    .end local v2    # "res":Z
    :cond_3
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/Cell;->setLastConvertProgress(F)V

    goto :goto_0

    .line 842
    :cond_4
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDockPage:Lcom/smartisanos/launcher/view/DockView;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/DockView;->setSelectedCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 843
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/DragLayer;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 851
    .restart local v2    # "res":Z
    :cond_5
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCellStatusForDock:Lcom/smartisanos/launcher/view/CellStatusForDock;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/CellStatusForDock;->startDragIcon(Lcom/smartisanos/launcher/view/Cell;)Z

    move-result v2

    goto :goto_2
.end method

.method public startDragMutiIcon(Lcom/smartisanos/launcher/view/Cell;)Z
    .locals 4
    .param p1, "cell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 1264
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/DragLayer;->mNeedInitMutiDragIcon:Z

    .line 1265
    iput-object p1, p0, Lcom/smartisanos/launcher/view/DragLayer;->mMutiDragCell:Lcom/smartisanos/launcher/view/Cell;

    .line 1266
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/PageView;->mMultiSelectNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragIconNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

    .line 1267
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragIconNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DragLayer;->mMutiDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/MultiSelectNode;->startDragIcon(Lcom/smartisanos/launcher/view/Cell;)Z

    .line 1268
    iput v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCurrentEventHandler:I

    .line 1269
    invoke-virtual {p0, v3, v2}, Lcom/smartisanos/launcher/view/DragLayer;->setStatus(IZ)V

    .line 1270
    return v2
.end method

.method public startDragPage(Lcom/smartisanos/launcher/view/Page;FF)Z
    .locals 6
    .param p1, "page"    # Lcom/smartisanos/launcher/view/Page;
    .param p2, "touchX"    # F
    .param p3, "touchY"    # F

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 1130
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 1131
    sget-object v0, Lcom/smartisanos/launcher/view/DragLayer;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "############################long press and startDragPage page index ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v3, p1}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/PageView;->mSwitchPageNode:Lcom/smartisanos/launcher/view/SwitchPageNode;

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragPageNode:Lcom/smartisanos/launcher/view/SwitchPageNode;

    .line 1133
    iput-object p1, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragPage:Lcom/smartisanos/launcher/view/Page;

    .line 1134
    iput-boolean v4, p0, Lcom/smartisanos/launcher/view/DragLayer;->mNeedInitDragPage:Z

    .line 1135
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragPageNode:Lcom/smartisanos/launcher/view/SwitchPageNode;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DragLayer;->mDragPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0, v1, p2, p3}, Lcom/smartisanos/launcher/view/SwitchPageNode;->startDragPage(Lcom/smartisanos/launcher/view/Page;FF)Z

    .line 1136
    iput v5, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCurrentEventHandler:I

    .line 1137
    invoke-virtual {p0, v5, v4}, Lcom/smartisanos/launcher/view/DragLayer;->setStatus(IZ)V

    .line 1138
    return v4
.end method

.method public switchScrollAnimation(Lcom/smartisanos/launcher/animations/PageScrollAnimation;)V
    .locals 1
    .param p1, "pageScrollAnimation"    # Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPageScrollAnimation:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPageScrollAnimation:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->forceEndScroll()V

    .line 153
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPageScrollAnimation:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->onRelease()V

    .line 155
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/launcher/view/DragLayer;->mPageScrollAnimation:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    .line 156
    invoke-virtual {p1}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->canDownUpScroll()Z

    move-result v0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mCanDownUpScroll:Z

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollLeftRight:Z

    .line 158
    return-void
.end method

.method public updateDragIcon(FFFF)V
    .locals 16
    .param p1, "changeX"    # F
    .param p2, "changeY"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 888
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/DragLayer;->onDragIcon()Z

    move-result v12

    if-nez v12, :cond_0

    .line 991
    :goto_0
    return-void

    .line 891
    :cond_0
    new-instance v9, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v9}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 892
    .local v9, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v12, v9}, Lcom/smartisanos/launcher/view/Cell;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 893
    invoke-virtual {v9}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v5

    .line 894
    .local v5, "cellY":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/DragLayer;->getConvertProgress(F)F

    move-result v10

    .line 895
    .local v10, "progress":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-static {v12, v10}, Lcom/smartisanos/launcher/view/CellConvertAnimation;->setConvertProgress(Lcom/smartisanos/launcher/view/Cell;F)V

    .line 897
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v12

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 898
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v12

    const/16 v13, 0x10

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v12

    if-nez v12, :cond_3

    .line 899
    new-instance v7, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 900
    .local v7, "nodeLoc":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v12, v7}, Lcom/smartisanos/launcher/view/Cell;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 901
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/FloatPageNode;->getCurrentFloatPage()Lcom/smartisanos/launcher/view/Page;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Page;->getWorldBoundingVolume()Lcom/smartisanos/smengine/BoundingVolume;

    move-result-object v4

    .line 902
    .local v4, "bv":Lcom/smartisanos/smengine/BoundingVolume;
    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/BoundingVolume;->isPointInBoundingVolume(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 903
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/AnimationController;->clearAllAnimationEventInQueue()V

    .line 904
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/AnimationController;->allAnimationForceFinish()V

    .line 905
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/view/AnimationController;->cellExitFromFloatPage(Lcom/smartisanos/launcher/view/Cell;)V

    .line 909
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/view/Cell;->setRenderBgToRenderTarget(Z)V

    .line 910
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    const/4 v13, 0x0

    const v14, 0x3dcccccd    # 0.1f

    invoke-virtual {v12, v13, v14}, Lcom/smartisanos/launcher/view/Cell;->hideLongPressAppName(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    .line 915
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Cell;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v8

    .line 916
    .local v8, "oriScale":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/FloatPageNode;->getTargetScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    .line 917
    .local v11, "targetScale":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    iget v13, v8, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v14, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    div-float/2addr v13, v14

    iget v14, v8, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v15, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    div-float/2addr v14, v15

    iget v15, v8, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v12, v13, v14, v15}, Lcom/smartisanos/launcher/view/Cell;->setScale(FFF)V

    .line 918
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 920
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/FloatPageNode;->resetPage()V

    goto/16 :goto_0

    .line 924
    .end local v8    # "oriScale":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v11    # "targetScale":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/FloatPageNode;->getCurrentFloatPage()Lcom/smartisanos/launcher/view/Page;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/view/Page;->collideWith(Lcom/smartisanos/smengine/SceneNode;)I

    .line 986
    .end local v4    # "bv":Lcom/smartisanos/smengine/BoundingVolume;
    .end local v7    # "nodeLoc":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v12

    if-eqz v12, :cond_9

    .line 987
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mCellStatusForPage:Lcom/smartisanos/launcher/view/CellStatusForPage;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/smartisanos/launcher/view/CellStatusForPage;->updateDragIcon(FFFF)V

    goto/16 :goto_0

    .line 928
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/DragLayer;->onPageScroll()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 929
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 930
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Cell;->isPageCellEnableCollided()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 936
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDockPage:Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/view/DockView;->collideWith(Lcom/smartisanos/smengine/SceneNode;)I

    move-result v6

    .line 937
    .local v6, "dockResult":I
    if-nez v6, :cond_2

    .line 938
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Cell;->isCellOnPage()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 939
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/AnimationController;->clearAllAnimationEventInQueue()V

    .line 940
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/view/Cell;->convertToPageCell(Z)V

    goto :goto_1

    .line 947
    .end local v6    # "dockResult":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/view/PageView;->isCollidedWith(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 949
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/view/Cell;->convertToPageCell(Z)V

    goto :goto_1

    .line 951
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDockPage:Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/view/DockView;->isCollidedWith(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 953
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDockPage:Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/view/DockView;->collideWith(Lcom/smartisanos/smengine/SceneNode;)I

    goto/16 :goto_1

    .line 957
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 958
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Cell;->isPageCellEnableCollided()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 962
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/view/PageView;->collideWith(Lcom/smartisanos/smengine/SceneNode;)I

    .line 964
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDockPage:Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/view/DockView;->collideWith(Lcom/smartisanos/smengine/SceneNode;)I

    move-result v6

    .line 965
    .restart local v6    # "dockResult":I
    if-nez v6, :cond_2

    .line 966
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Cell;->isCellOnPage()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 967
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/AnimationController;->clearAllAnimationEventInQueue()V

    .line 968
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/view/Cell;->convertToPageCell(Z)V

    goto/16 :goto_1

    .line 975
    .end local v6    # "dockResult":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mScrollPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/view/PageView;->isCollidedWith(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 977
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/view/Cell;->convertToPageCell(Z)V

    goto/16 :goto_1

    .line 979
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDockPage:Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/view/DockView;->isCollidedWith(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 981
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDockPage:Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/DragLayer;->mDragCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/view/DockView;->collideWith(Lcom/smartisanos/smengine/SceneNode;)I

    goto/16 :goto_1

    .line 989
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DragLayer;->mCellStatusForDock:Lcom/smartisanos/launcher/view/CellStatusForDock;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/smartisanos/launcher/view/CellStatusForDock;->updateDragIcon(FFFF)V

    goto/16 :goto_0
.end method
