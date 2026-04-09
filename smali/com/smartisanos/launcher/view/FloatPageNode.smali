.class public Lcom/smartisanos/launcher/view/FloatPageNode;
.super Lcom/smartisanos/smengine/SceneNode;
.source "FloatPageNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/FloatPageNode$MyTouchListener;,
        Lcom/smartisanos/launcher/view/FloatPageNode$MySingleTapListener;
    }
.end annotation


# static fields
.field private static final log:Lcom/smartisanos/launcher/LOG;


# instance fields
.field private mAnimationIsPlaying:Z

.field private mCoverBackgroundRect:Lcom/smartisanos/smengine/RectNode;

.field private mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

.field private mHasIncreaseLayer:Z

.field private mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

.field private mPageBackgroundRect:Lcom/smartisanos/smengine/RectNode;

.field private mPageOriLoc:Lcom/smartisanos/smengine/math/Vector3f;

.field private mPageOriState:I

.field private mPageView:Lcom/smartisanos/launcher/view/PageView;

.field private mSelectedPageCell:Lcom/smartisanos/launcher/view/Cell;

.field private mTextOriScaleFor_9_3x3:Lcom/smartisanos/smengine/math/Vector3f;

.field private mTitleTranslateOri:Lcom/smartisanos/smengine/math/Vector3f;

.field private mTitleViewOriScaleFor_9_3x3:Lcom/smartisanos/smengine/math/Vector3f;

.field private mTitleViewOriTranslate_9_3x3:Lcom/smartisanos/smengine/math/Vector3f;

.field private targetScale:Lcom/smartisanos/smengine/math/Vector3f;

.field private targetTranslate:Lcom/smartisanos/smengine/math/Vector3f;

.field private timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/FloatPageNode;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/Page;Lcom/smartisanos/launcher/view/PageView;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "floatPage"    # Lcom/smartisanos/launcher/view/Page;
    .param p3, "pw"    # Lcom/smartisanos/launcher/view/PageView;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 38
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mAnimationIsPlaying:Z

    .line 50
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mHasIncreaseLayer:Z

    .line 54
    iput-object p2, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    .line 55
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/TitleView;->setDrawTitleTextWithBatch(Z)V

    .line 56
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Page;->setLayerStatus(I)V

    .line 57
    iput-object p3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/launcher/view/Page;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/FloatPageNode;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/view/FloatPageNode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/FloatPageNode;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mAnimationIsPlaying:Z

    return v0
.end method

.method static synthetic access$102(Lcom/smartisanos/launcher/view/FloatPageNode;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/FloatPageNode;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mAnimationIsPlaying:Z

    return p1
.end method

.method static synthetic access$200(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/launcher/view/PageView;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/FloatPageNode;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/smartisanos/launcher/view/FloatPageNode;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/FloatPageNode;

    .prologue
    .line 28
    iget v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageOriState:I

    return v0
.end method

.method static synthetic access$400(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/FloatPageNode;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object v0
.end method

.method static synthetic access$402(Lcom/smartisanos/launcher/view/FloatPageNode;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/FloatPageNode;
    .param p1, "x1"    # Lcom/smartisanos/smengine/AnimationTimeLine;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object p1
.end method

.method static synthetic access$500()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/smartisanos/launcher/view/FloatPageNode;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$600(Lcom/smartisanos/launcher/view/FloatPageNode;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/FloatPageNode;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/FloatPageNode;->revertPageCellAdjustScaleForSpacing()V

    return-void
.end method

.method static synthetic access$702(Lcom/smartisanos/launcher/view/FloatPageNode;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/FloatPageNode;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mHasIncreaseLayer:Z

    return p1
.end method

.method static synthetic access$800(Lcom/smartisanos/launcher/view/FloatPageNode;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/FloatPageNode;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/FloatPageNode;->setUseGaussianEffect(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/launcher/view/Cell;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/FloatPageNode;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mSelectedPageCell:Lcom/smartisanos/launcher/view/Cell;

    return-object v0
.end method

.method static synthetic access$902(Lcom/smartisanos/launcher/view/FloatPageNode;Lcom/smartisanos/launcher/view/Cell;)Lcom/smartisanos/launcher/view/Cell;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/FloatPageNode;
    .param p1, "x1"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mSelectedPageCell:Lcom/smartisanos/launcher/view/Cell;

    return-object p1
.end method

.method private createPageBgRenderRect()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    .line 410
    sget v8, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v8}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v8

    iput-object v8, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 411
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/FloatPageNode;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_FloatPageBG"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Page;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    .line 413
    .local v3, "pageScale":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v8, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->targetScale:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v3, v8}, Lcom/smartisanos/smengine/math/Vector3f;->mult(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    .line 416
    .local v5, "result":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v8, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 417
    .local v7, "width":F
    iget-object v8, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 418
    .local v0, "height":F
    const/4 v8, 0x0

    invoke-static {v2, v7, v0, v8, v11}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRectWithoutMaterial(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    .line 419
    .local v4, "rect":Lcom/smartisanos/smengine/RectNode;
    const-string v8, "TextureModularColorMaterial"

    invoke-static {v8}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v1

    .line 420
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 421
    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v6

    .line 422
    .local v6, "rs":Lcom/smartisanos/smengine/RenderState;
    invoke-virtual {v4, v10, v10, v10, v10}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 423
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 424
    invoke-virtual {v6, v11}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 425
    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, -0x40000000    # -2.0f

    invoke-virtual {v6, v8, v9}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 426
    invoke-virtual {v6, v11}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 427
    const-string v8, "floatPage/gray16x16.png"

    invoke-static {v8}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v4, v11}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 430
    iget-object v8, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v8, v4}, Lcom/smartisanos/launcher/view/Page;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 431
    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 432
    iput-object v4, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    .line 433
    return-void
.end method

.method private createScreenCoverBackgroundRect()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    .line 436
    sget v6, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v6}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v6

    iput-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 437
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/FloatPageNode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_FloatCoverBG"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, "name":Ljava/lang/String;
    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    .line 439
    .local v5, "width":I
    sget v0, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    .line 440
    .local v0, "height":I
    int-to-float v6, v5

    int-to-float v7, v0

    invoke-static {v2, v6, v7, v10, v8}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRectWithoutMaterial(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    .line 441
    .local v3, "rect":Lcom/smartisanos/smengine/RectNode;
    const-string v6, "TextureModularColorMaterial"

    invoke-static {v6}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v1

    .line 442
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v3, v1}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 443
    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    .line 444
    .local v4, "rs":Lcom/smartisanos/smengine/RenderState;
    invoke-virtual {v3, v9, v9, v9, v10}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 445
    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 446
    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 447
    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, -0x40000000    # -2.0f

    invoke-virtual {v4, v6, v7}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 448
    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 449
    const-string v6, "floatPage/dark80_16x16.png"

    invoke-static {v6}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 450
    sget-boolean v6, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v6, :cond_0

    .line 451
    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 452
    invoke-virtual {v3, v8}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 457
    :goto_0
    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/FloatPageNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 458
    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 459
    iput-object v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCoverBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    .line 460
    return-void

    .line 454
    :cond_0
    invoke-virtual {v3, v8}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 455
    const/16 v6, 0x55

    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    goto :goto_0
.end method

.method private handleLongPressed(Lcom/smartisanos/smengine/TouchEvent;)Z
    .locals 2
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    .line 661
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/Page;->getCellByTouchPoint(Lcom/smartisanos/smengine/TouchEvent;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mSelectedPageCell:Lcom/smartisanos/launcher/view/Cell;

    .line 662
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mSelectedPageCell:Lcom/smartisanos/launcher/view/Cell;

    if-eqz v0, :cond_0

    .line 663
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mSelectedPageCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/PageView;->setSelectedCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 664
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/Cell;->onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    move-result v0

    .line 666
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initListener()V
    .locals 1

    .prologue
    .line 721
    new-instance v0, Lcom/smartisanos/launcher/view/FloatPageNode$3;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/FloatPageNode$3;-><init>(Lcom/smartisanos/launcher/view/FloatPageNode;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/FloatPageNode;->setOnClickListener(Lcom/smartisanos/smengine/SceneNode$OnClickListener;)V

    .line 729
    return-void
.end method

.method private pageBackAnimation()V
    .locals 15

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/FloatPageNode;->forceFinishFloatPageAnimation()V

    .line 289
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/smartisanos/launcher/view/FloatPageNode;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "#### float page back animation"

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 291
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v3

    if-nez v3, :cond_1

    .line 292
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->showStatusBar()V

    .line 294
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 295
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->forceHideCellClickShadow()V

    .line 297
    :cond_2
    const/high16 v12, 0x3f000000    # 0.5f

    .line 298
    .local v12, "backDuration":F
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 299
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->lockTouchEvent()V

    .line 300
    new-instance v3, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    iput-object v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 301
    iget-object v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/AnimationController;->setHasAnimationPlaying(Z)V

    .line 302
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mAnimationIsPlaying:Z

    .line 304
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-direct {v0, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 305
    .local v0, "pageMove":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 306
    invoke-virtual {v0, v12}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 307
    iget-object v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v13

    .line 308
    .local v13, "curr":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v1, 0x0

    iget v2, v13, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, v13, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, v13, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget-object v5, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageOriLoc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageOriLoc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v7, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageOriLoc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 309
    iget-object v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 311
    new-instance v1, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-direct {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 312
    .local v1, "pageScale":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 313
    invoke-virtual {v1, v12}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 314
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setPreserveNodeScale(Z)V

    .line 315
    iget-object v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v14

    .line 316
    .local v14, "currScale":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v2, 0x1

    iget v3, v14, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v4, v14, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, v14, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v7, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->targetScale:Lcom/smartisanos/smengine/math/Vector3f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    div-float/2addr v6, v7

    iget v7, v14, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v8, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->targetScale:Lcom/smartisanos/smengine/math/Vector3f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v8}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 317
    iget-object v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 319
    iget-object v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCoverBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v3, :cond_3

    .line 320
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCoverBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 321
    .local v2, "backgroundColor":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 322
    invoke-virtual {v2, v12}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 323
    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f333333    # 0.7f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 325
    iget-object v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 328
    .end local v2    # "backgroundColor":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v3

    const/16 v4, 0x10

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 330
    iget-object v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    new-instance v4, Lcom/smartisanos/launcher/view/FloatPageNode$2;

    invoke-direct {v4, p0}, Lcom/smartisanos/launcher/view/FloatPageNode$2;-><init>(Lcom/smartisanos/launcher/view/FloatPageNode;)V

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 403
    iget-object v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 404
    return-void
.end method

.method private pageMoveToCenterAnimation()V
    .locals 13

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/FloatPageNode;->forceFinishFloatPageAnimation()V

    .line 225
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    .line 226
    new-instance v3, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    iput-object v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 227
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mAnimationIsPlaying:Z

    .line 228
    iget-object v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/AnimationController;->setHasAnimationPlaying(Z)V

    .line 229
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-direct {v0, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 230
    .local v0, "pageMove":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 231
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 232
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageOriLoc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageOriLoc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v4, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageOriLoc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget-object v5, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->targetTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->targetTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v7, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->targetTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 233
    iget-object v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 235
    new-instance v1, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-direct {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 236
    .local v1, "pageScale":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 237
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 238
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setPreserveNodeScale(Z)V

    .line 239
    iget-object v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v12

    .line 240
    .local v12, "currScale":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v2, 0x1

    iget v3, v12, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v4, v12, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, v12, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v7, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->targetScale:Lcom/smartisanos/smengine/math/Vector3f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v6, v7

    iget v7, v12, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v8, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->targetScale:Lcom/smartisanos/smengine/math/Vector3f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v8}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 241
    iget-object v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 243
    iget-object v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCoverBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v3, :cond_0

    .line 244
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCoverBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 245
    .local v2, "backgroundColor":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 246
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 247
    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f333333    # 0.7f

    invoke-virtual/range {v2 .. v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 249
    iget-object v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 251
    .end local v2    # "backgroundColor":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v3

    const/16 v4, 0x10

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 253
    iget-object v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    new-instance v4, Lcom/smartisanos/launcher/view/FloatPageNode$1;

    invoke-direct {v4, p0}, Lcom/smartisanos/launcher/view/FloatPageNode$1;-><init>(Lcom/smartisanos/launcher/view/FloatPageNode;)V

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 284
    iget-object v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 285
    return-void
.end method

.method private revertPageCellAdjustScaleForSpacing()V
    .locals 9

    .prologue
    .line 193
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->updatePageCellCenterPoints(I)V

    .line 194
    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    .line 196
    .local v4, "points":[Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v5, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v0

    .line 197
    .local v0, "allpc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 198
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Cell;

    .line 199
    .local v3, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->resetCellScale()V

    .line 200
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v5

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v6

    invoke-static {v5, v6}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v2

    .line 201
    .local v2, "index":I
    aget-object v5, v4, v2

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aget-object v6, v4, v2

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aget-object v7, v4, v2

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v3, v5, v6, v7}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 202
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v2    # "index":I
    .end local v3    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    iget-object v5, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v5

    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mTitleTranslateOri:Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v7, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mTitleTranslateOri:Lcom/smartisanos/smengine/math/Vector3f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v8, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mTitleTranslateOri:Lcom/smartisanos/smengine/math/Vector3f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v5, v6, v7, v8}, Lcom/smartisanos/launcher/view/TitleView;->setTranslate(FFF)V

    .line 207
    iget-object v5, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 208
    return-void
.end method

.method private setUseGaussianEffect(Z)V
    .locals 7
    .param p1, "use"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 150
    iget-object v2, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v5

    if-nez p1, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/smartisanos/launcher/view/TitleView;->setUseStaticGaussian(Z)V

    .line 151
    iget-object v2, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    check-cast v2, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    if-nez p1, :cond_2

    move v5, v3

    :goto_1
    invoke-virtual {v2, v5}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setUseStaticGaussian(Z)V

    .line 152
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    .line 153
    .local v1, "select":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v1, :cond_3

    .line 154
    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/Cell;->setPostLayer(I)V

    .line 155
    sput v4, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    .line 160
    :goto_2
    if-eqz p1, :cond_4

    .line 161
    iget-object v2, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2, v6}, Lcom/smartisanos/launcher/view/Page;->setRenderQueue(I)V

    .line 162
    iget-object v2, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 163
    iget-object v2, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 164
    iget-object v2, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 165
    iget-object v2, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 166
    iget-object v2, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    iget v3, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageOriState:I

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/Page;->getPageCover(I)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    .line 167
    .local v0, "cover":Lcom/smartisanos/smengine/RectNode;
    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0, v6}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 180
    :cond_0
    :goto_3
    return-void

    .end local v0    # "cover":Lcom/smartisanos/smengine/RectNode;
    .end local v1    # "select":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    move v2, v4

    .line 150
    goto :goto_0

    :cond_2
    move v5, v4

    .line 151
    goto :goto_1

    .line 157
    .restart local v1    # "select":Lcom/smartisanos/launcher/view/Cell;
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/smartisanos/launcher/view/MainView;->setUsePostEffect(Z)V

    goto :goto_2

    .line 171
    :cond_4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/Page;->setRenderQueue(I)V

    .line 172
    iget-object v2, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 173
    iget-object v2, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 174
    iget-object v2, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 175
    iget-object v2, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    iget v4, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageOriState:I

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/Page;->getPageCover(I)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    .line 176
    .restart local v0    # "cover":Lcom/smartisanos/smengine/RectNode;
    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    goto :goto_3
.end method


# virtual methods
.method public forceFinishFloatPageAnimation()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 222
    :cond_0
    return-void
.end method

.method public getAllViewCanBeTouched()Ljava/util/ArrayList;
    .locals 2
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
    .line 733
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 735
    .local v0, "allViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/SceneNode;>;"
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    return-object v0
.end method

.method public getCurrentFloatPage()Lcom/smartisanos/launcher/view/Page;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    return-object v0
.end method

.method public getPageOriState()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageOriState:I

    return v0
.end method

.method public getTargetScale()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->targetScale:Lcom/smartisanos/smengine/math/Vector3f;

    return-object v0
.end method

.method public handleTap()V
    .locals 0

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/FloatPageNode;->resetPage()V

    .line 408
    return-void
.end method

.method hideCoverBackground()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCoverBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    if-nez v0, :cond_0

    .line 474
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCoverBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCoverBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    goto :goto_0
.end method

.method hidePageBackground()V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    if-nez v0, :cond_0

    .line 467
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 466
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    goto :goto_0
.end method

.method public initFloatPageNode()V
    .locals 25

    .prologue
    .line 62
    sget v22, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v13

    .line 64
    .local v13, "propMulti":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v0, v13, Lcom/smartisanos/launcher/data/LayoutProperty;->float_page_x_scale_need_div_2:F

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    const v23, 0x3dcccccd    # 0.1f

    sub-float v14, v22, v23

    .line 65
    .local v14, "scaleConvertX":F
    iget v0, v13, Lcom/smartisanos/launcher/data/LayoutProperty;->float_page_y_scale_need_div_2:F

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    const v23, 0x3dcccccd    # 0.1f

    sub-float v15, v22, v23

    .line 66
    .local v15, "scaleConvertY":F
    sget v22, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 67
    const/16 v22, 0x2

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v11

    .line 68
    .local v11, "prop36":Lcom/smartisanos/launcher/data/LayoutProperty;
    const/16 v22, 0x3

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v12

    .line 69
    .local v12, "prop81":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v0, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    move/from16 v20, v0

    .line 70
    .local v20, "width36":F
    iget v0, v12, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    move/from16 v21, v0

    .line 72
    .local v21, "width81":F
    iget v5, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 73
    .local v5, "height36":F
    iget v6, v12, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 75
    .local v6, "height81":F
    div-float v22, v20, v21

    mul-float v14, v14, v22

    .line 76
    div-float v22, v5, v6

    mul-float v15, v15, v22

    .line 82
    .end local v5    # "height36":F
    .end local v6    # "height81":F
    .end local v11    # "prop36":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v12    # "prop81":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v20    # "width36":F
    .end local v21    # "width81":F
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/Page;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v9

    .line 85
    .local v9, "pageScale":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    iget v0, v9, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v23, v0

    mul-float v23, v23, v14

    iget v0, v9, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v24, v0

    mul-float v24, v24, v15

    invoke-virtual/range {v22 .. v24}, Lcom/smartisanos/launcher/view/Page;->pageCellAdjustScaleForSpacing(FF)V

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/TitleView;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/view/FloatPageNode;->mTitleTranslateOri:Lcom/smartisanos/smengine/math/Vector3f;

    .line 89
    iget v0, v13, Lcom/smartisanos/launcher/data/LayoutProperty;->title_page_spacing:F

    move/from16 v22, v0

    mul-float v18, v22, v15

    .line 91
    .local v18, "titleSpacing":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/FloatPageNode;->mTitleTranslateOri:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v22, v0

    iget v0, v13, Lcom/smartisanos/launcher/data/LayoutProperty;->title_page_spacing:F

    move/from16 v23, v0

    sub-float v23, v18, v23

    sub-float v8, v22, v23

    .line 92
    .local v8, "newTitleY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/FloatPageNode;->mTitleTranslateOri:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/FloatPageNode;->mTitleTranslateOri:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v8, v2}, Lcom/smartisanos/launcher/view/TitleView;->setTranslate(FFF)V

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 95
    iget v0, v13, Lcom/smartisanos/launcher/data/LayoutProperty;->float_page_translate_y:F

    move/from16 v19, v0

    .line 97
    .local v19, "translatey":F
    new-instance v22, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v0, v14, v15, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/view/FloatPageNode;->targetScale:Lcom/smartisanos/smengine/math/Vector3f;

    .line 98
    new-instance v22, Lcom/smartisanos/smengine/math/Vector3f;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v19

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/view/FloatPageNode;->targetTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    .line 101
    new-instance v22, Lcom/smartisanos/launcher/view/FloatPageNode$MySingleTapListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/FloatPageNode$MySingleTapListener;-><init>(Lcom/smartisanos/launcher/view/FloatPageNode;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->setSingleTapListener(Lcom/smartisanos/smengine/SceneNode$SingleTapListener;)V

    .line 102
    new-instance v22, Lcom/smartisanos/launcher/view/FloatPageNode$MyTouchListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/FloatPageNode$MyTouchListener;-><init>(Lcom/smartisanos/launcher/view/FloatPageNode;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->setTouchListener(Lcom/smartisanos/smengine/SceneNode$TouchListener;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/Page;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageOriLoc:Lcom/smartisanos/smengine/math/Vector3f;

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageOriState:I

    .line 107
    new-instance v10, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v10}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 108
    .local v10, "posInParent":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/PageView;->getPageParentForTranslate()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v16

    .line 109
    .local v16, "t":Lcom/smartisanos/smengine/math/Transform;
    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/smengine/math/Transform;->inverse()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v17

    .line 110
    .local v17, "tinv":Lcom/smartisanos/smengine/math/Transform;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/FloatPageNode;->targetTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Lcom/smartisanos/smengine/math/Transform;->transformVector(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 112
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/smartisanos/launcher/view/FloatPageNode;->targetTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    .line 116
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageOriState:I

    move/from16 v22, v0

    if-nez v22, :cond_1

    .line 117
    new-instance v22, Ljava/lang/RuntimeException;

    const-string v23, "######### page is VISIBLE!!!!!"

    invoke-direct/range {v22 .. v23}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 121
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v4

    .line 122
    .local v4, "allpc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_2

    .line 123
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/smartisanos/launcher/view/Cell;

    .line 122
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 128
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/Page;->showPageShadow()V

    .line 129
    sget-boolean v22, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v22, :cond_3

    .line 130
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->setUseGaussianEffect(Z)V

    .line 142
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/FloatPageNode;->createScreenCoverBackgroundRect()V

    .line 144
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/FloatPageNode;->pageMoveToCenterAnimation()V

    .line 145
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/FloatPageNode;->initListener()V

    .line 147
    return-void
.end method

.method public onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z
    .locals 2
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    const/4 v0, 0x1

    .line 672
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mAnimationIsPlaying:Z

    if-ne v1, v0, :cond_0

    .line 716
    :goto_0
    return v0

    .line 675
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getPointerId()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getPointerNum()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 676
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 716
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 679
    :sswitch_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    if-eqz v1, :cond_1

    .line 680
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    invoke-interface {v1, p1}, Lcom/smartisanos/smengine/SceneNode$TouchListener;->onMove(Lcom/smartisanos/smengine/TouchEvent;)V

    goto :goto_0

    .line 687
    :sswitch_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    if-eqz v1, :cond_1

    .line 688
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    invoke-interface {v1, p1}, Lcom/smartisanos/smengine/SceneNode$TouchListener;->onMove(Lcom/smartisanos/smengine/TouchEvent;)V

    goto :goto_0

    .line 695
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/FloatPageNode;->handleLongPressed(Lcom/smartisanos/smengine/TouchEvent;)Z

    goto :goto_1

    .line 700
    :sswitch_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mSingleTapListener:Lcom/smartisanos/smengine/SceneNode$SingleTapListener;

    if-eqz v0, :cond_1

    .line 701
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mSingleTapListener:Lcom/smartisanos/smengine/SceneNode$SingleTapListener;

    invoke-interface {v0, p1}, Lcom/smartisanos/smengine/SceneNode$SingleTapListener;->onClick(Lcom/smartisanos/smengine/TouchEvent;)V

    goto :goto_1

    .line 708
    :sswitch_4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    if-eqz v1, :cond_1

    .line 709
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    invoke-interface {v1, p1}, Lcom/smartisanos/smengine/SceneNode$TouchListener;->onUp(Lcom/smartisanos/smengine/TouchEvent;)V

    goto :goto_0

    .line 676
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0x6 -> :sswitch_3
        0xc -> :sswitch_4
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public pageBackAnimationForceFinish()V
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 607
    return-void
.end method

.method public resetPage()V
    .locals 2

    .prologue
    .line 577
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/FloatPageNode;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "#### resetPage"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 579
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v0

    if-nez v0, :cond_2

    .line 603
    :cond_1
    :goto_0
    return-void

    .line 582
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 583
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 585
    :cond_3
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smartisanos/launcher/view/FloatPageNode;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "#### resetPage but page not float"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 588
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mSelectedPageCell:Lcom/smartisanos/launcher/view/Cell;

    .line 591
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/AnimationController;->clearAllAnimationEventInQueue()V

    .line 592
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/AnimationController;->allAnimationForceFinish()V

    .line 594
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/FloatPageNode;->pageBackAnimation()V

    .line 599
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/smartisanos/launcher/view/PageView;->mIsInFloatPageMode:Z

    goto :goto_0
.end method

.method public resetPageNoAnimation()V
    .locals 15

    .prologue
    const/high16 v14, 0x3f800000    # 1.0f

    const v13, 0x3e4ccccd    # 0.2f

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 489
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/AnimationController;->allAnimationForceFinish()V

    .line 492
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/MainView;->forceHideCellClickShadow()V

    .line 494
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v6, :cond_0

    .line 495
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->timeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 498
    :cond_0
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    iget-object v7, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageOriLoc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v8, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageOriLoc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v9, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageOriLoc:Lcom/smartisanos/smengine/math/Vector3f;

    iget v9, v9, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v6, v7, v8, v9}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 500
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Page;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    .line 501
    .local v2, "currentScale":Lcom/smartisanos/smengine/math/Vector3f;
    iget v6, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v7, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->targetScale:Lcom/smartisanos/smengine/math/Vector3f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    div-float v3, v6, v7

    .line 502
    .local v3, "targetScaleX":F
    iget v6, v2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v7, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->targetScale:Lcom/smartisanos/smengine/math/Vector3f;

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    div-float v4, v6, v7

    .line 504
    .local v4, "targetScaleY":F
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v6, v3, v4, v14}, Lcom/smartisanos/launcher/view/Page;->setScale(FFF)V

    .line 505
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 507
    sget v6, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 508
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/TitleView;->getRenderRect()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    .line 509
    .local v5, "titleScale":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/TitleView;->getRenderRect()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    iget v7, v5, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sub-float/2addr v7, v13

    iget v8, v5, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float/2addr v8, v13

    invoke-virtual {v6, v7, v8, v14}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 512
    .end local v5    # "titleScale":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_1
    iput-boolean v11, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mAnimationIsPlaying:Z

    .line 514
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/smartisanos/launcher/view/AnimationController;->setHasAnimationPlaying(Z)V

    .line 516
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Page;->getAllNonEmptyCellList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 517
    .local v1, "cellCount":I
    if-nez v1, :cond_8

    .line 518
    iget v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageOriState:I

    if-ne v6, v10, :cond_7

    .line 519
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v6, v11, v11, v10, v10}, Lcom/smartisanos/launcher/view/Page;->setPageStatus(IZZZ)V

    .line 538
    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Page;->hidePageShadow()V

    .line 539
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/FloatPageNode;->hideCoverBackground()V

    .line 540
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/FloatPageNode;->hidePageBackground()V

    .line 543
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/FloatPageNode;->revertPageCellAdjustScaleForSpacing()V

    .line 545
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v0

    .line 549
    .local v0, "allpc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v6, v11}, Lcom/smartisanos/launcher/view/Page;->setLayerStatus(I)V

    .line 550
    iput-boolean v11, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mHasIncreaseLayer:Z

    .line 552
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 553
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->forceFinishCellOnUpAnimationTimeLine()V

    .line 554
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mSelectedPageCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v6, v10}, Lcom/smartisanos/launcher/view/Cell;->setRenderBgToRenderTarget(Z)V

    .line 555
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/smartisanos/launcher/view/FloatPageNode;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    const-string v8, "resetFloatPageNoAnimation,current select cell is not NULL"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :cond_3
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mSelectedPageCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->setNeedDisplay()V

    .line 560
    :cond_4
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/TitleView;->showEditIcon()V

    .line 563
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iput-boolean v11, v6, Lcom/smartisanos/launcher/view/PageView;->mIsInFloatPageMode:Z

    .line 565
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/MainView;->hideFloatPageNode()V

    .line 566
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_5

    sget-object v6, Lcom/smartisanos/launcher/view/FloatPageNode;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "## page back NO animation finish, set floatPageNode = null."

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 568
    :cond_5
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mSelectedPageCell:Lcom/smartisanos/launcher/view/Cell;

    .line 569
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/MainView;->showStatusBar()V

    .line 570
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/smartisanos/launcher/view/TitleView;->setDrawTitleTextWithBatch(Z)V

    .line 571
    sget-boolean v6, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v6, :cond_6

    .line 572
    invoke-direct {p0, v11}, Lcom/smartisanos/launcher/view/FloatPageNode;->setUseGaussianEffect(Z)V

    .line 574
    :cond_6
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7, v11}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 575
    return-void

    .line 520
    .end local v0    # "allpc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_7
    iget v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageOriState:I

    if-ne v6, v12, :cond_2

    .line 521
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v6, v11, v11, v10, v10}, Lcom/smartisanos/launcher/view/Page;->setPageStatus(IZZZ)V

    goto/16 :goto_0

    .line 525
    :cond_8
    iget v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageOriState:I

    if-ne v6, v10, :cond_9

    .line 526
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v6, v10, v11, v10, v10}, Lcom/smartisanos/launcher/view/Page;->setPageStatus(IZZZ)V

    .line 527
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 528
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/smartisanos/launcher/view/TitleView;->setEyeState(Z)V

    goto/16 :goto_0

    .line 530
    :cond_9
    iget v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mPageOriState:I

    if-ne v6, v12, :cond_2

    .line 531
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v6, v12, v11, v10, v10}, Lcom/smartisanos/launcher/view/Page;->setPageStatus(IZZZ)V

    .line 532
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 533
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FloatPageNode;->mCurrentFloatPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/smartisanos/launcher/view/TitleView;->setLockState(Z)V

    goto/16 :goto_0
.end method
