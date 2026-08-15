.class public Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;
.super Ljava/lang/Object;
.source "FlingUpGesture.java"


# static fields
.field private static final DBG_FLING:Z = false

.field private static DELTA_Y_FOR_DETECT_FLING_UP:F = 0.0f

.field private static final FLING_TAN:F = 0.83f

.field private static final FLING_UP_DURATION_MS:F = 500.0f

.field public static final FLING_UP_Y:F = 150.0f

.field private static IS_FLING_DOWN:Z

.field private static MULTI_TOUCH:Z

.field private static downLoc:[F

.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static moveLoc:F

.field private static pointDownTime:J

.field private static pointUpTime:J

.field private static upLoc:[F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 14
    const-class v0, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->log:Lcom/smartisanos/launcher/LOG;

    .line 19
    new-array v0, v2, [F

    sput-object v0, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->downLoc:[F

    .line 20
    new-array v0, v2, [F

    sput-object v0, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->upLoc:[F

    .line 21
    const/4 v0, 0x0

    sput v0, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->moveLoc:F

    .line 28
    sput-boolean v1, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->MULTI_TOUCH:Z

    .line 30
    sput-boolean v1, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->IS_FLING_DOWN:Z

    .line 31
    const/high16 v0, 0x42480000    # 50.0f

    sput v0, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->DELTA_Y_FOR_DETECT_FLING_UP:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearStatus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    sput-boolean v0, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->MULTI_TOUCH:Z

    .line 86
    sput-boolean v0, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->IS_FLING_DOWN:Z

    .line 87
    return-void
.end method

.method private static outOfTouchArea(F)Z
    .locals 2
    .param p0, "touchY"    # F

    .prologue
    .line 48
    sget v0, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    sget v1, Lcom/smartisanos/launcher/data/Constants;->fling_up_limit_pix:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static pointDown(Landroid/view/MotionEvent;)V
    .locals 4
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 35
    sget-object v0, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->downLoc:[F

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aput v2, v0, v1

    .line 36
    sget-object v0, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->downLoc:[F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v0, v3

    .line 37
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    sput-wide v0, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->pointDownTime:J

    .line 38
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->downLoc:[F

    aget v0, v0, v3

    invoke-static {v0}, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->outOfTouchArea(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    :cond_0
    sput-boolean v3, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->MULTI_TOUCH:Z

    .line 44
    :cond_1
    return-void
.end method

.method public static pointMove(Landroid/view/MotionEvent;)V
    .locals 4
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 53
    sget-boolean v1, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->IS_FLING_DOWN:Z

    if-nez v1, :cond_0

    .line 54
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 55
    .local v0, "currentMoveLoc":F
    sget-object v1, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->downLoc:[F

    aget v1, v1, v3

    sub-float/2addr v1, v0

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 57
    sput-boolean v3, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->IS_FLING_DOWN:Z

    .line 60
    .end local v0    # "currentMoveLoc":F
    :cond_0
    return-void
.end method

.method public static pointUp(Landroid/view/MotionEvent;)V
    .locals 8
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 63
    sget-object v0, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->upLoc:[F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aput v1, v0, v5

    .line 64
    sget-object v0, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->upLoc:[F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v0, v6

    .line 65
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    sput-wide v0, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->pointUpTime:J

    .line 68
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 69
    sget-boolean v0, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->MULTI_TOUCH:Z

    if-eqz v0, :cond_2

    .line 71
    sput-boolean v5, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->MULTI_TOUCH:Z

    .line 79
    :cond_0
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->clearStatus()V

    .line 82
    :cond_1
    return-void

    .line 74
    :cond_2
    sget-boolean v0, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->IS_FLING_DOWN:Z

    if-nez v0, :cond_0

    .line 76
    sget-object v0, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->downLoc:[F

    aget v0, v0, v5

    sget-object v1, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->downLoc:[F

    aget v1, v1, v6

    sget-wide v2, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->pointDownTime:J

    sget-object v4, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->upLoc:[F

    aget v4, v4, v5

    sget-object v5, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->upLoc:[F

    aget v5, v5, v6

    sget-wide v6, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->pointUpTime:J

    invoke-static/range {v0 .. v7}, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->tryToFling(FFJFFJ)V

    goto :goto_0
.end method

.method private static tryToFling(FFJFFJ)V
    .locals 6
    .param p0, "downX"    # F
    .param p1, "downY"    # F
    .param p2, "downTime"    # J
    .param p4, "upX"    # F
    .param p5, "upY"    # F
    .param p6, "upTime"    # J

    .prologue
    invoke-static {}, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->getSwipeUpAction()I

    move-result v0

    if-nez v0, :cond_swipe_up_action_enabled

    return-void

    :cond_swipe_up_action_enabled
    .line 92
    sub-long v4, p6, p2

    long-to-float v3, v4

    const/high16 v4, 0x43fa0000    # 500.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const/4 v2, 0x0

    .line 98
    .local v2, "isFling":Z
    sub-float v3, p1, p5

    const/high16 v4, 0x43160000    # 150.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 100
    sub-float v3, p4, p0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 102
    .local v0, "deltaX":F
    sub-float v1, p1, p5

    .line 103
    .local v1, "deltaY":F
    const v3, -0x40ab851f    # -0.83f

    mul-float/2addr v3, v1

    cmpg-float v3, v3, v0

    if-gtz v3, :cond_2

    const v3, 0x3f547ae1    # 0.83f

    mul-float/2addr v3, v1

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_2

    .line 104
    const/4 v2, 0x1

    .line 112
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    :cond_2
    if-eqz v2, :cond_0

    .line 113
    new-instance v3, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture$1;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture$1;-><init>(I)V

    const/4 v4, 0x0

    .line 122
    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture$1;->send(F)V

    goto :goto_0
.end method

.method public static getSwipeUpAction()I
    .locals 3

    const-string v0, "swipe_up_action"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_legacy

    const/4 v1, 0x2

    if-gt v0, v1, :cond_default_search

    return v0

    :cond_legacy
    const-string v0, "swipe_up_search_enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_none

    const/4 v0, 0x1

    return v0

    :cond_none
    const/4 v0, 0x0

    return v0

    :cond_default_search
    const/4 v0, 0x1

    return v0
.end method
