.class public Lsmartisanos/widget/SwitchEx;
.super Landroid/widget/CheckBox;
.source "SwitchEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisanos/widget/SwitchEx$PerformClick;
    }
.end annotation


# static fields
.field private static final HANDLER_MESSAGE_SET_CHECKED:I = 0x1

.field private static final MAX_ALPHA:I = 0xff

.field private static final MIN_ALPHA:I = 0xbf

.field private static isClean:Z

.field private static sAlphaOffBitmap:Landroid/graphics/Bitmap;

.field private static sAlphaOnBitmap:Landroid/graphics/Bitmap;

.field private static sBottom:Landroid/graphics/Bitmap;

.field private static sBtnNormal:Landroid/graphics/Bitmap;

.field private static sBtnOffPos:F

.field private static sBtnOnPos:F

.field private static sBtnWidth:F

.field private static sCanvas:Landroid/graphics/Canvas;

.field private static sCurBtnPic:Landroid/graphics/Bitmap;

.field private static sFrame:Landroid/graphics/Bitmap;

.field private static sMask:Landroid/graphics/Bitmap;

.field private static sMaskHeight:F

.field private static sMaskWidth:F

.field private static sOffBitmap:Landroid/graphics/Bitmap;

.field private static sOnBitmap:Landroid/graphics/Bitmap;

.field private static sPaint:Landroid/graphics/Paint;

.field private static sXfermode:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field private final ANIMATION_FRAME_DURATION:F

.field private final EXTENDED_OFFSET_Y:F

.field private final VELOCITY:F

.field private isScrolling:Z

.field private mAlpha:I

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationPosition:F

.field private mBottomResId:I

.field private mBroadcasting:Z

.field private mBtnInitPos:F

.field private mBtnPos:F

.field private mChecked:Z

.field private mClickTimeout:I

.field private mExtendOffsetY:F

.field private mFirstDownX:F

.field private mFirstDownY:F

.field private mHandler:Landroid/os/Handler;

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mParent:Landroid/view/ViewParent;

.field private mPerformClick:Lsmartisanos/widget/SwitchEx$PerformClick;

.field private mRealPos:F

.field private mResources:Landroid/content/res/Resources;

.field private mTouchSlop:I

.field private mTouching:Z

.field private mTurningOn:Z

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lsmartisanos/widget/SwitchEx;->sXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 42
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lsmartisanos/widget/SwitchEx;->sCanvas:Landroid/graphics/Canvas;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lsmartisanos/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsmartisanos/widget/SwitchEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 92
    const v0, 0x101006c

    invoke-direct {p0, p1, p2, v0}, Lsmartisanos/widget/SwitchEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/high16 v0, 0x43af0000    # 350.0f

    iput v0, p0, Lsmartisanos/widget/SwitchEx;->VELOCITY:F

    .line 26
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lsmartisanos/widget/SwitchEx;->EXTENDED_OFFSET_Y:F

    .line 27
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lsmartisanos/widget/SwitchEx;->ANIMATION_FRAME_DURATION:F

    .line 66
    const/16 v0, 0xff

    iput v0, p0, Lsmartisanos/widget/SwitchEx;->mAlpha:I

    .line 67
    iput-boolean v1, p0, Lsmartisanos/widget/SwitchEx;->mChecked:Z

    .line 79
    iput-boolean v1, p0, Lsmartisanos/widget/SwitchEx;->isScrolling:Z

    .line 82
    new-instance v0, Lsmartisanos/widget/SwitchEx$1;

    invoke-direct {v0, p0}, Lsmartisanos/widget/SwitchEx$1;-><init>(Lsmartisanos/widget/SwitchEx;)V

    iput-object v0, p0, Lsmartisanos/widget/SwitchEx;->mHandler:Landroid/os/Handler;

    .line 131
    iget-object v0, p0, Lsmartisanos/widget/SwitchEx;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lsmartisanos/widget/SwitchEx;->mResources:Landroid/content/res/Resources;

    .line 134
    :cond_0
    iget-object v0, p0, Lsmartisanos/widget/SwitchEx;->mResources:Landroid/content/res/Resources;

    invoke-static {v0}, Lsmartisanos/widget/SwitchEx;->initSwitchBitmap(Landroid/content/res/Resources;)V

    .line 135
    invoke-direct {p0, p1}, Lsmartisanos/widget/SwitchEx;->initView(Landroid/content/Context;)V

    .line 135
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lsmartisanos/widget/SwitchEx;->setLayerType(ILandroid/graphics/Paint;)V

    .line 136
    return-void
.end method

.method static synthetic access$000(Lsmartisanos/widget/SwitchEx;ZZ)V
    .locals 0
    .param p0, "x0"    # Lsmartisanos/widget/SwitchEx;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lsmartisanos/widget/SwitchEx;->setChecked(ZZ)V

    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 313
    invoke-virtual {p0}, Lsmartisanos/widget/SwitchEx;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iput-object v0, p0, Lsmartisanos/widget/SwitchEx;->mParent:Landroid/view/ViewParent;

    .line 314
    iget-object v0, p0, Lsmartisanos/widget/SwitchEx;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lsmartisanos/widget/SwitchEx;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 317
    :cond_0
    return-void
.end method

.method public static clearSwitchBitmap()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 117
    sput-object v0, Lsmartisanos/widget/SwitchEx;->sBottom:Landroid/graphics/Bitmap;

    .line 118
    sput-object v0, Lsmartisanos/widget/SwitchEx;->sBtnNormal:Landroid/graphics/Bitmap;

    .line 119
    sput-object v0, Lsmartisanos/widget/SwitchEx;->sFrame:Landroid/graphics/Bitmap;

    .line 120
    sput-object v0, Lsmartisanos/widget/SwitchEx;->sMask:Landroid/graphics/Bitmap;

    .line 122
    sput-object v0, Lsmartisanos/widget/SwitchEx;->sAlphaOnBitmap:Landroid/graphics/Bitmap;

    .line 123
    sput-object v0, Lsmartisanos/widget/SwitchEx;->sAlphaOffBitmap:Landroid/graphics/Bitmap;

    .line 124
    sput-object v0, Lsmartisanos/widget/SwitchEx;->sOnBitmap:Landroid/graphics/Bitmap;

    .line 125
    sput-object v0, Lsmartisanos/widget/SwitchEx;->sOffBitmap:Landroid/graphics/Bitmap;

    .line 126
    const/4 v0, 0x1

    sput-boolean v0, Lsmartisanos/widget/SwitchEx;->isClean:Z

    .line 127
    return-void
.end method

.method private createBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 324
    sget-object v1, Lsmartisanos/widget/SwitchEx;->sMask:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget-object v2, Lsmartisanos/widget/SwitchEx;->sMask:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 325
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v1, Lsmartisanos/widget/SwitchEx;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 326
    sget-object v1, Lsmartisanos/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    iget v2, p0, Lsmartisanos/widget/SwitchEx;->mAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 327
    sget-object v1, Lsmartisanos/widget/SwitchEx;->sCanvas:Landroid/graphics/Canvas;

    sget-object v2, Lsmartisanos/widget/SwitchEx;->sMask:Landroid/graphics/Bitmap;

    sget-object v3, Lsmartisanos/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 328
    sget-object v1, Lsmartisanos/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    sget-object v2, Lsmartisanos/widget/SwitchEx;->sXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 329
    sget-object v1, Lsmartisanos/widget/SwitchEx;->sCanvas:Landroid/graphics/Canvas;

    sget-object v2, Lsmartisanos/widget/SwitchEx;->sBottom:Landroid/graphics/Bitmap;

    iget v3, p0, Lsmartisanos/widget/SwitchEx;->mRealPos:F

    sget-object v4, Lsmartisanos/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 330
    sget-object v1, Lsmartisanos/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 331
    sget-object v1, Lsmartisanos/widget/SwitchEx;->sCanvas:Landroid/graphics/Canvas;

    sget-object v2, Lsmartisanos/widget/SwitchEx;->sFrame:Landroid/graphics/Bitmap;

    sget-object v3, Lsmartisanos/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 332
    sget-object v1, Lsmartisanos/widget/SwitchEx;->sCanvas:Landroid/graphics/Canvas;

    sget-object v2, Lsmartisanos/widget/SwitchEx;->sCurBtnPic:Landroid/graphics/Bitmap;

    iget v3, p0, Lsmartisanos/widget/SwitchEx;->mRealPos:F

    sget-object v4, Lsmartisanos/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 334
    return-object v0
.end method

.method private static createBitmap(IF)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "alpha"    # I
    .param p1, "pos"    # F

    .prologue
    const/4 v4, 0x0

    .line 338
    sget-object v1, Lsmartisanos/widget/SwitchEx;->sMask:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget-object v2, Lsmartisanos/widget/SwitchEx;->sMask:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 339
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v1, Lsmartisanos/widget/SwitchEx;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 340
    sget-object v1, Lsmartisanos/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 341
    sget-object v1, Lsmartisanos/widget/SwitchEx;->sCanvas:Landroid/graphics/Canvas;

    sget-object v2, Lsmartisanos/widget/SwitchEx;->sMask:Landroid/graphics/Bitmap;

    sget-object v3, Lsmartisanos/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 342
    sget-object v1, Lsmartisanos/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    sget-object v2, Lsmartisanos/widget/SwitchEx;->sXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 343
    sget-object v1, Lsmartisanos/widget/SwitchEx;->sCanvas:Landroid/graphics/Canvas;

    sget-object v2, Lsmartisanos/widget/SwitchEx;->sBottom:Landroid/graphics/Bitmap;

    sget-object v3, Lsmartisanos/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, p1, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 344
    sget-object v1, Lsmartisanos/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 345
    sget-object v1, Lsmartisanos/widget/SwitchEx;->sCanvas:Landroid/graphics/Canvas;

    sget-object v2, Lsmartisanos/widget/SwitchEx;->sFrame:Landroid/graphics/Bitmap;

    sget-object v3, Lsmartisanos/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 346
    sget-object v1, Lsmartisanos/widget/SwitchEx;->sCanvas:Landroid/graphics/Canvas;

    sget-object v2, Lsmartisanos/widget/SwitchEx;->sCurBtnPic:Landroid/graphics/Bitmap;

    sget-object v3, Lsmartisanos/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, p1, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 348
    return-object v0
.end method

.method private doAnimation()V
    .locals 3

    .prologue
    .line 416
    iget v0, p0, Lsmartisanos/widget/SwitchEx;->mAnimationPosition:F

    iget v1, p0, Lsmartisanos/widget/SwitchEx;->mAnimatedVelocity:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lsmartisanos/widget/SwitchEx;->mAnimationPosition:F

    .line 417
    iget v0, p0, Lsmartisanos/widget/SwitchEx;->mAnimationPosition:F

    sget v1, Lsmartisanos/widget/SwitchEx;->sBtnOffPos:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 418
    invoke-direct {p0}, Lsmartisanos/widget/SwitchEx;->stopAnimation()V

    .line 419
    sget v0, Lsmartisanos/widget/SwitchEx;->sBtnOffPos:F

    iput v0, p0, Lsmartisanos/widget/SwitchEx;->mAnimationPosition:F

    .line 420
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsmartisanos/widget/SwitchEx;->setCheckedDelayed(Z)V

    .line 426
    :cond_0
    :goto_0
    iget v0, p0, Lsmartisanos/widget/SwitchEx;->mAnimationPosition:F

    invoke-direct {p0, v0}, Lsmartisanos/widget/SwitchEx;->moveView(F)V

    .line 427
    return-void

    .line 421
    :cond_1
    iget v0, p0, Lsmartisanos/widget/SwitchEx;->mAnimationPosition:F

    sget v1, Lsmartisanos/widget/SwitchEx;->sBtnOnPos:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 422
    invoke-direct {p0}, Lsmartisanos/widget/SwitchEx;->stopAnimation()V

    .line 423
    sget v0, Lsmartisanos/widget/SwitchEx;->sBtnOnPos:F

    iput v0, p0, Lsmartisanos/widget/SwitchEx;->mAnimationPosition:F

    .line 424
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lsmartisanos/widget/SwitchEx;->setCheckedDelayed(Z)V

    goto :goto_0
.end method

.method private static getRealPos(F)F
    .locals 2
    .param p0, "btnPos"    # F

    .prologue
    .line 320
    sget v0, Lsmartisanos/widget/SwitchEx;->sBtnWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p0, v0

    return v0
.end method

.method private static initBitmap()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/16 v1, 0xbf

    .line 150
    const/4 v0, 0x0

    sput-boolean v0, Lsmartisanos/widget/SwitchEx;->isClean:Z

    .line 151
    sget-object v0, Lsmartisanos/widget/SwitchEx;->sAlphaOnBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lsmartisanos/widget/SwitchEx;->sAlphaOffBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lsmartisanos/widget/SwitchEx;->sOnBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lsmartisanos/widget/SwitchEx;->sOffBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 153
    :cond_0
    sget v0, Lsmartisanos/widget/SwitchEx;->sBtnOnPos:F

    invoke-static {v0}, Lsmartisanos/widget/SwitchEx;->getRealPos(F)F

    move-result v0

    invoke-static {v1, v0}, Lsmartisanos/widget/SwitchEx;->createBitmap(IF)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lsmartisanos/widget/SwitchEx;->sAlphaOnBitmap:Landroid/graphics/Bitmap;

    .line 154
    sget v0, Lsmartisanos/widget/SwitchEx;->sBtnOffPos:F

    invoke-static {v0}, Lsmartisanos/widget/SwitchEx;->getRealPos(F)F

    move-result v0

    invoke-static {v1, v0}, Lsmartisanos/widget/SwitchEx;->createBitmap(IF)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lsmartisanos/widget/SwitchEx;->sAlphaOffBitmap:Landroid/graphics/Bitmap;

    .line 155
    sget v0, Lsmartisanos/widget/SwitchEx;->sBtnOnPos:F

    invoke-static {v0}, Lsmartisanos/widget/SwitchEx;->getRealPos(F)F

    move-result v0

    invoke-static {v2, v0}, Lsmartisanos/widget/SwitchEx;->createBitmap(IF)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lsmartisanos/widget/SwitchEx;->sOnBitmap:Landroid/graphics/Bitmap;

    .line 156
    sget v0, Lsmartisanos/widget/SwitchEx;->sBtnOffPos:F

    invoke-static {v0}, Lsmartisanos/widget/SwitchEx;->getRealPos(F)F

    move-result v0

    invoke-static {v2, v0}, Lsmartisanos/widget/SwitchEx;->createBitmap(IF)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lsmartisanos/widget/SwitchEx;->sOffBitmap:Landroid/graphics/Bitmap;

    .line 158
    :cond_1
    return-void
.end method

.method public static initSwitchBitmap(Landroid/content/res/Resources;)V
    .locals 3
    .param p0, "r"    # Landroid/content/res/Resources;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 100
    sget-object v0, Lsmartisanos/widget/SwitchEx;->sBottom:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lsmartisanos/widget/SwitchEx;->sBtnNormal:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lsmartisanos/widget/SwitchEx;->sFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lsmartisanos/widget/SwitchEx;->sMask:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 101
    :cond_0
    sget v0, Lsmartisanos/widget/R$drawable;->switch_ex_bottom:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lsmartisanos/widget/SwitchEx;->sBottom:Landroid/graphics/Bitmap;

    .line 102
    sget v0, Lsmartisanos/widget/R$drawable;->switch_ex_unpressed:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lsmartisanos/widget/SwitchEx;->sBtnNormal:Landroid/graphics/Bitmap;

    .line 103
    sget v0, Lsmartisanos/widget/R$drawable;->switch_ex_frame:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lsmartisanos/widget/SwitchEx;->sFrame:Landroid/graphics/Bitmap;

    .line 104
    sget v0, Lsmartisanos/widget/R$drawable;->switch_ex_mask:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lsmartisanos/widget/SwitchEx;->sMask:Landroid/graphics/Bitmap;

    .line 105
    sget-object v0, Lsmartisanos/widget/SwitchEx;->sBtnNormal:Landroid/graphics/Bitmap;

    sput-object v0, Lsmartisanos/widget/SwitchEx;->sCurBtnPic:Landroid/graphics/Bitmap;

    .line 107
    :cond_1
    sget-object v0, Lsmartisanos/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    sget-object v0, Lsmartisanos/widget/SwitchEx;->sBtnNormal:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lsmartisanos/widget/SwitchEx;->sBtnWidth:F

    .line 109
    sget-object v0, Lsmartisanos/widget/SwitchEx;->sMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lsmartisanos/widget/SwitchEx;->sMaskWidth:F

    .line 110
    sget-object v0, Lsmartisanos/widget/SwitchEx;->sMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lsmartisanos/widget/SwitchEx;->sMaskHeight:F

    .line 111
    sget v0, Lsmartisanos/widget/SwitchEx;->sBtnWidth:F

    div-float/2addr v0, v2

    sput v0, Lsmartisanos/widget/SwitchEx;->sBtnOnPos:F

    .line 112
    sget v0, Lsmartisanos/widget/SwitchEx;->sMaskWidth:F

    sget v1, Lsmartisanos/widget/SwitchEx;->sBtnWidth:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    sput v0, Lsmartisanos/widget/SwitchEx;->sBtnOffPos:F

    .line 113
    invoke-static {}, Lsmartisanos/widget/SwitchEx;->initBitmap()V

    .line 114
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 139
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lsmartisanos/widget/SwitchEx;->mClickTimeout:I

    .line 141
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lsmartisanos/widget/SwitchEx;->mTouchSlop:I

    .line 142
    iget-boolean v1, p0, Lsmartisanos/widget/SwitchEx;->mChecked:Z

    if-eqz v1, :cond_0

    sget v1, Lsmartisanos/widget/SwitchEx;->sBtnOnPos:F

    :goto_0
    iput v1, p0, Lsmartisanos/widget/SwitchEx;->mBtnPos:F

    .line 143
    iget v1, p0, Lsmartisanos/widget/SwitchEx;->mBtnPos:F

    invoke-static {v1}, Lsmartisanos/widget/SwitchEx;->getRealPos(F)F

    move-result v1

    iput v1, p0, Lsmartisanos/widget/SwitchEx;->mRealPos:F

    .line 144
    invoke-virtual {p0}, Lsmartisanos/widget/SwitchEx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 145
    .local v0, "density":F
    const/high16 v1, 0x43af0000    # 350.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lsmartisanos/widget/SwitchEx;->mVelocity:F

    .line 146
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lsmartisanos/widget/SwitchEx;->mExtendOffsetY:F

    .line 147
    return-void

    .line 142
    .end local v0    # "density":F
    :cond_0
    sget v1, Lsmartisanos/widget/SwitchEx;->sBtnOffPos:F

    goto :goto_0
.end method

.method private moveView(F)V
    .locals 1
    .param p1, "position"    # F

    .prologue
    .line 430
    iput p1, p0, Lsmartisanos/widget/SwitchEx;->mBtnPos:F

    .line 431
    iget v0, p0, Lsmartisanos/widget/SwitchEx;->mBtnPos:F

    invoke-static {v0}, Lsmartisanos/widget/SwitchEx;->getRealPos(F)F

    move-result v0

    iput v0, p0, Lsmartisanos/widget/SwitchEx;->mRealPos:F

    .line 432
    invoke-virtual {p0}, Lsmartisanos/widget/SwitchEx;->invalidate()V

    .line 433
    return-void
.end method

.method private setChecked(ZZ)V
    .locals 2
    .param p1, "checked"    # Z
    .param p2, "needInvalidate"    # Z

    .prologue
    .line 198
    iget-boolean v0, p0, Lsmartisanos/widget/SwitchEx;->mChecked:Z

    if-eq v0, p1, :cond_1

    .line 199
    iput-boolean p1, p0, Lsmartisanos/widget/SwitchEx;->mChecked:Z

    .line 200
    if-eqz p1, :cond_2

    sget v0, Lsmartisanos/widget/SwitchEx;->sBtnOnPos:F

    :goto_0
    iput v0, p0, Lsmartisanos/widget/SwitchEx;->mBtnPos:F

    .line 201
    iget v0, p0, Lsmartisanos/widget/SwitchEx;->mBtnPos:F

    invoke-static {v0}, Lsmartisanos/widget/SwitchEx;->getRealPos(F)F

    move-result v0

    iput v0, p0, Lsmartisanos/widget/SwitchEx;->mRealPos:F

    .line 202
    if-eqz p2, :cond_0

    .line 203
    invoke-virtual {p0}, Lsmartisanos/widget/SwitchEx;->invalidate()V

    .line 207
    :cond_0
    iget-boolean v0, p0, Lsmartisanos/widget/SwitchEx;->mBroadcasting:Z

    if-eqz v0, :cond_3

    .line 219
    :cond_1
    :goto_1
    return-void

    .line 200
    :cond_2
    sget v0, Lsmartisanos/widget/SwitchEx;->sBtnOffPos:F

    goto :goto_0

    .line 210
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsmartisanos/widget/SwitchEx;->mBroadcasting:Z

    .line 211
    iget-object v0, p0, Lsmartisanos/widget/SwitchEx;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_4

    .line 212
    iget-object v0, p0, Lsmartisanos/widget/SwitchEx;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lsmartisanos/widget/SwitchEx;->mChecked:Z

    invoke-interface {v0, p0, v1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 214
    :cond_4
    iget-object v0, p0, Lsmartisanos/widget/SwitchEx;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_5

    .line 215
    iget-object v0, p0, Lsmartisanos/widget/SwitchEx;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lsmartisanos/widget/SwitchEx;->mChecked:Z

    invoke-interface {v0, p0, v1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 217
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsmartisanos/widget/SwitchEx;->mBroadcasting:Z

    goto :goto_1
.end method

.method private setCheckedDelayed(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    const/4 v3, 0x1

    .line 189
    iget-object v0, p0, Lsmartisanos/widget/SwitchEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    iget-object v0, p0, Lsmartisanos/widget/SwitchEx;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lsmartisanos/widget/SwitchEx;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 191
    return-void
.end method

.method private startAnimation(Z)V
    .locals 1
    .param p1, "turnOn"    # Z

    .prologue
    .line 406
    if-eqz p1, :cond_0

    iget v0, p0, Lsmartisanos/widget/SwitchEx;->mVelocity:F

    :goto_0
    iput v0, p0, Lsmartisanos/widget/SwitchEx;->mAnimatedVelocity:F

    .line 407
    iget v0, p0, Lsmartisanos/widget/SwitchEx;->mBtnPos:F

    iput v0, p0, Lsmartisanos/widget/SwitchEx;->mAnimationPosition:F

    .line 408
    invoke-direct {p0}, Lsmartisanos/widget/SwitchEx;->doAnimation()V

    .line 409
    return-void

    .line 406
    :cond_0
    iget v0, p0, Lsmartisanos/widget/SwitchEx;->mVelocity:F

    neg-float v0, v0

    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsmartisanos/widget/SwitchEx;->mAnimating:Z

    .line 413
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lsmartisanos/widget/SwitchEx;->mChecked:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 353
    sget-boolean v3, Lsmartisanos/widget/SwitchEx;->isClean:Z

    if-eqz v3, :cond_0

    .line 354
    iget-object v3, p0, Lsmartisanos/widget/SwitchEx;->mResources:Landroid/content/res/Resources;

    invoke-static {v3}, Lsmartisanos/widget/SwitchEx;->initSwitchBitmap(Landroid/content/res/Resources;)V

    .line 356
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 358
    sget v3, Lsmartisanos/widget/SwitchEx;->sBtnOnPos:F

    invoke-static {v3}, Lsmartisanos/widget/SwitchEx;->getRealPos(F)F

    move-result v2

    .line 359
    .local v2, "onPos":F
    sget v3, Lsmartisanos/widget/SwitchEx;->sBtnOffPos:F

    invoke-static {v3}, Lsmartisanos/widget/SwitchEx;->getRealPos(F)F

    move-result v1

    .line 360
    .local v1, "offPos":F
    iget v3, p0, Lsmartisanos/widget/SwitchEx;->mAlpha:I

    const/16 v4, 0xff

    if-ne v3, v4, :cond_4

    .line 361
    iget v3, p0, Lsmartisanos/widget/SwitchEx;->mRealPos:F

    cmpl-float v3, v3, v1

    if-nez v3, :cond_2

    .line 362
    sget-object v0, Lsmartisanos/widget/SwitchEx;->sOffBitmap:Landroid/graphics/Bitmap;

    .line 377
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    sget-object v3, Lsmartisanos/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    iget v4, p0, Lsmartisanos/widget/SwitchEx;->mAlpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 378
    const/4 v3, 0x0

    iget v4, p0, Lsmartisanos/widget/SwitchEx;->mExtendOffsetY:F

    sget-object v5, Lsmartisanos/widget/SwitchEx;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 379
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 380
    iget v3, p0, Lsmartisanos/widget/SwitchEx;->mRealPos:F

    cmpg-float v3, v3, v1

    if-gtz v3, :cond_7

    .line 381
    invoke-direct {p0}, Lsmartisanos/widget/SwitchEx;->stopAnimation()V

    .line 382
    sget v3, Lsmartisanos/widget/SwitchEx;->sBtnOffPos:F

    iput v3, p0, Lsmartisanos/widget/SwitchEx;->mAnimationPosition:F

    .line 383
    iget-boolean v3, p0, Lsmartisanos/widget/SwitchEx;->mTouching:Z

    if-eqz v3, :cond_1

    .line 384
    invoke-direct {p0, v6}, Lsmartisanos/widget/SwitchEx;->setCheckedDelayed(Z)V

    .line 385
    iput-boolean v6, p0, Lsmartisanos/widget/SwitchEx;->mTouching:Z

    .line 398
    :cond_1
    :goto_1
    return-void

    .line 363
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget v3, p0, Lsmartisanos/widget/SwitchEx;->mRealPos:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_3

    .line 364
    sget-object v0, Lsmartisanos/widget/SwitchEx;->sOnBitmap:Landroid/graphics/Bitmap;

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 366
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    invoke-direct {p0}, Lsmartisanos/widget/SwitchEx;->createBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 369
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    iget v3, p0, Lsmartisanos/widget/SwitchEx;->mRealPos:F

    cmpl-float v3, v3, v1

    if-nez v3, :cond_5

    .line 370
    sget-object v0, Lsmartisanos/widget/SwitchEx;->sAlphaOffBitmap:Landroid/graphics/Bitmap;

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 371
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    iget v3, p0, Lsmartisanos/widget/SwitchEx;->mRealPos:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_6

    .line 372
    sget-object v0, Lsmartisanos/widget/SwitchEx;->sAlphaOnBitmap:Landroid/graphics/Bitmap;

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 374
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    invoke-direct {p0}, Lsmartisanos/widget/SwitchEx;->createBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 387
    :cond_7
    iget v3, p0, Lsmartisanos/widget/SwitchEx;->mRealPos:F

    cmpl-float v3, v3, v2

    if-ltz v3, :cond_8

    .line 388
    invoke-direct {p0}, Lsmartisanos/widget/SwitchEx;->stopAnimation()V

    .line 389
    sget v3, Lsmartisanos/widget/SwitchEx;->sBtnOnPos:F

    iput v3, p0, Lsmartisanos/widget/SwitchEx;->mAnimationPosition:F

    .line 390
    iget-boolean v3, p0, Lsmartisanos/widget/SwitchEx;->mTouching:Z

    if-eqz v3, :cond_1

    .line 391
    invoke-direct {p0, v7}, Lsmartisanos/widget/SwitchEx;->setCheckedDelayed(Z)V

    .line 392
    iput-boolean v6, p0, Lsmartisanos/widget/SwitchEx;->mTouching:Z

    goto :goto_1

    .line 394
    :cond_8
    iget-boolean v3, p0, Lsmartisanos/widget/SwitchEx;->isScrolling:Z

    if-nez v3, :cond_1

    .line 395
    iput-boolean v7, p0, Lsmartisanos/widget/SwitchEx;->mAnimating:Z

    .line 396
    invoke-direct {p0}, Lsmartisanos/widget/SwitchEx;->doAnimation()V

    goto :goto_1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 437
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 438
    const-class v0, Lsmartisanos/widget/SwitchEx;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 439
    iget-boolean v0, p0, Lsmartisanos/widget/SwitchEx;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 440
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 444
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 445
    const-class v0, Lsmartisanos/widget/SwitchEx;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 446
    iget-boolean v0, p0, Lsmartisanos/widget/SwitchEx;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 447
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 402
    sget v0, Lsmartisanos/widget/SwitchEx;->sMaskWidth:F

    float-to-int v0, v0

    sget v1, Lsmartisanos/widget/SwitchEx;->sMaskHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lsmartisanos/widget/SwitchEx;->mExtendOffsetY:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lsmartisanos/widget/SwitchEx;->setMeasuredDimension(II)V

    .line 403
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 244
    iget-boolean v8, p0, Lsmartisanos/widget/SwitchEx;->mAnimating:Z

    if-eqz v8, :cond_0

    .line 293
    :goto_0
    return v7

    .line 247
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 248
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 249
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 250
    .local v5, "y":F
    iget v8, p0, Lsmartisanos/widget/SwitchEx;->mFirstDownX:F

    sub-float v8, v4, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 251
    .local v1, "deltaX":F
    iget v8, p0, Lsmartisanos/widget/SwitchEx;->mFirstDownY:F

    sub-float v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 252
    .local v2, "deltaY":F
    packed-switch v0, :pswitch_data_0

    .line 291
    :cond_1
    :goto_1
    iput-boolean v7, p0, Lsmartisanos/widget/SwitchEx;->mTouching:Z

    .line 292
    invoke-virtual {p0}, Lsmartisanos/widget/SwitchEx;->invalidate()V

    .line 293
    invoke-virtual {p0}, Lsmartisanos/widget/SwitchEx;->isEnabled()Z

    move-result v7

    goto :goto_0

    .line 254
    :pswitch_0
    invoke-direct {p0}, Lsmartisanos/widget/SwitchEx;->attemptClaimDrag()V

    .line 255
    iput v4, p0, Lsmartisanos/widget/SwitchEx;->mFirstDownX:F

    .line 256
    iput v5, p0, Lsmartisanos/widget/SwitchEx;->mFirstDownY:F

    .line 257
    iget-boolean v6, p0, Lsmartisanos/widget/SwitchEx;->mChecked:Z

    if-eqz v6, :cond_2

    sget v6, Lsmartisanos/widget/SwitchEx;->sBtnOnPos:F

    :goto_2
    iput v6, p0, Lsmartisanos/widget/SwitchEx;->mBtnInitPos:F

    goto :goto_1

    :cond_2
    sget v6, Lsmartisanos/widget/SwitchEx;->sBtnOffPos:F

    goto :goto_2

    .line 260
    :pswitch_1
    iput-boolean v7, p0, Lsmartisanos/widget/SwitchEx;->isScrolling:Z

    .line 261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-float v3, v8

    .line 262
    .local v3, "time":F
    iget v8, p0, Lsmartisanos/widget/SwitchEx;->mBtnInitPos:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    add-float/2addr v8, v9

    iget v9, p0, Lsmartisanos/widget/SwitchEx;->mFirstDownX:F

    sub-float/2addr v8, v9

    iput v8, p0, Lsmartisanos/widget/SwitchEx;->mBtnPos:F

    .line 263
    iget v8, p0, Lsmartisanos/widget/SwitchEx;->mBtnPos:F

    sget v9, Lsmartisanos/widget/SwitchEx;->sBtnOnPos:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_3

    .line 264
    sget v8, Lsmartisanos/widget/SwitchEx;->sBtnOnPos:F

    iput v8, p0, Lsmartisanos/widget/SwitchEx;->mBtnPos:F

    .line 266
    :cond_3
    iget v8, p0, Lsmartisanos/widget/SwitchEx;->mBtnPos:F

    sget v9, Lsmartisanos/widget/SwitchEx;->sBtnOffPos:F

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_4

    .line 267
    sget v8, Lsmartisanos/widget/SwitchEx;->sBtnOffPos:F

    iput v8, p0, Lsmartisanos/widget/SwitchEx;->mBtnPos:F

    .line 269
    :cond_4
    iget v8, p0, Lsmartisanos/widget/SwitchEx;->mBtnPos:F

    sget v9, Lsmartisanos/widget/SwitchEx;->sBtnOnPos:F

    sget v10, Lsmartisanos/widget/SwitchEx;->sBtnOffPos:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sget v10, Lsmartisanos/widget/SwitchEx;->sBtnOffPos:F

    add-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-lez v8, :cond_5

    move v6, v7

    :cond_5
    iput-boolean v6, p0, Lsmartisanos/widget/SwitchEx;->mTurningOn:Z

    .line 270
    iget v6, p0, Lsmartisanos/widget/SwitchEx;->mBtnPos:F

    invoke-static {v6}, Lsmartisanos/widget/SwitchEx;->getRealPos(F)F

    move-result v6

    iput v6, p0, Lsmartisanos/widget/SwitchEx;->mRealPos:F

    goto :goto_1

    .line 274
    .end local v3    # "time":F
    :pswitch_2
    iput-boolean v6, p0, Lsmartisanos/widget/SwitchEx;->isScrolling:Z

    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-float v3, v8

    .line 276
    .restart local v3    # "time":F
    iget v6, p0, Lsmartisanos/widget/SwitchEx;->mTouchSlop:I

    int-to-float v6, v6

    cmpg-float v6, v2, v6

    if-gez v6, :cond_7

    iget v6, p0, Lsmartisanos/widget/SwitchEx;->mTouchSlop:I

    int-to-float v6, v6

    cmpg-float v6, v1, v6

    if-gez v6, :cond_7

    iget v6, p0, Lsmartisanos/widget/SwitchEx;->mClickTimeout:I

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_7

    .line 277
    iget-object v6, p0, Lsmartisanos/widget/SwitchEx;->mPerformClick:Lsmartisanos/widget/SwitchEx$PerformClick;

    if-nez v6, :cond_6

    .line 278
    new-instance v6, Lsmartisanos/widget/SwitchEx$PerformClick;

    const/4 v8, 0x0

    invoke-direct {v6, p0, v8}, Lsmartisanos/widget/SwitchEx$PerformClick;-><init>(Lsmartisanos/widget/SwitchEx;Lsmartisanos/widget/SwitchEx$1;)V

    iput-object v6, p0, Lsmartisanos/widget/SwitchEx;->mPerformClick:Lsmartisanos/widget/SwitchEx$PerformClick;

    .line 280
    :cond_6
    iget-object v6, p0, Lsmartisanos/widget/SwitchEx;->mPerformClick:Lsmartisanos/widget/SwitchEx$PerformClick;

    invoke-virtual {p0, v6}, Lsmartisanos/widget/SwitchEx;->post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 281
    invoke-virtual {p0}, Lsmartisanos/widget/SwitchEx;->performClick()Z

    goto/16 :goto_1

    .line 284
    :cond_7
    iget-boolean v6, p0, Lsmartisanos/widget/SwitchEx;->mTurningOn:Z

    invoke-direct {p0, v6}, Lsmartisanos/widget/SwitchEx;->startAnimation(Z)V

    .line 285
    iput-boolean v7, p0, Lsmartisanos/widget/SwitchEx;->mTouching:Z

    .line 286
    invoke-virtual {p0}, Lsmartisanos/widget/SwitchEx;->invalidate()V

    goto/16 :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 304
    iget-boolean v0, p0, Lsmartisanos/widget/SwitchEx;->mChecked:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lsmartisanos/widget/SwitchEx;->startAnimation(Z)V

    .line 305
    return v1

    .line 304
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBottomDrawable(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    const/4 v1, 0x0

    .line 161
    iget v0, p0, Lsmartisanos/widget/SwitchEx;->mBottomResId:I

    if-ne v0, p1, :cond_0

    .line 172
    :goto_0
    return-void

    .line 164
    :cond_0
    iput p1, p0, Lsmartisanos/widget/SwitchEx;->mBottomResId:I

    .line 165
    iget-object v0, p0, Lsmartisanos/widget/SwitchEx;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lsmartisanos/widget/SwitchEx;->sBottom:Landroid/graphics/Bitmap;

    .line 166
    sput-object v1, Lsmartisanos/widget/SwitchEx;->sAlphaOnBitmap:Landroid/graphics/Bitmap;

    .line 167
    sput-object v1, Lsmartisanos/widget/SwitchEx;->sAlphaOffBitmap:Landroid/graphics/Bitmap;

    .line 168
    sput-object v1, Lsmartisanos/widget/SwitchEx;->sOnBitmap:Landroid/graphics/Bitmap;

    .line 169
    sput-object v1, Lsmartisanos/widget/SwitchEx;->sOffBitmap:Landroid/graphics/Bitmap;

    .line 170
    invoke-static {}, Lsmartisanos/widget/SwitchEx;->initBitmap()V

    .line 171
    invoke-virtual {p0}, Lsmartisanos/widget/SwitchEx;->invalidate()V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 194
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lsmartisanos/widget/SwitchEx;->setChecked(ZZ)V

    .line 195
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 176
    if-eqz p1, :cond_0

    const/16 v0, 0xff

    :goto_0
    iput v0, p0, Lsmartisanos/widget/SwitchEx;->mAlpha:I

    .line 177
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 178
    return-void

    .line 176
    :cond_0
    const/16 v0, 0xbf

    goto :goto_0
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 228
    iput-object p1, p0, Lsmartisanos/widget/SwitchEx;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 229
    return-void
.end method

.method setOnCheckedChangeWidgetListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 239
    iput-object p1, p0, Lsmartisanos/widget/SwitchEx;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 240
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lsmartisanos/widget/SwitchEx;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lsmartisanos/widget/SwitchEx;->setChecked(Z)V

    .line 186
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
