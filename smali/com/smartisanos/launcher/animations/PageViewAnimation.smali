.class public Lcom/smartisanos/launcher/animations/PageViewAnimation;
.super Lcom/smartisanos/launcher/animations/IAnimation;
.source "PageViewAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;
    }
.end annotation


# static fields
.field public static SCREEN_MAX_POS_X:F = 0.0f

.field public static SCREEN_MIN_POS_X:F = 0.0f

.field public static final animation_time_unit:F = 0.7f

.field private static final log:Lcom/smartisanos/launcher/LOG;


# instance fields
.field private changeScreenAnimationRunning:Z

.field private mBufferMode:I

.field private mIsForceSwitchToSingle:Z

.field private mNeedForceFinishPageSwitch:Z

.field public mPagePosition4:[Lcom/smartisanos/smengine/math/Vector3f;

.field public mPagePosition9:[Lcom/smartisanos/smengine/math/Vector3f;

.field mPageZoomScaleX4:F

.field mPageZoomScaleX9:F

.field mPageZoomScaleY4:F

.field mPageZoomScaleY9:F

.field private mZoomedPageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;"
        }
    .end annotation
.end field

.field private multiPageInOneScreenAlready:Z

.field private pageView:Lcom/smartisanos/launcher/view/PageView;

.field private page_mode_switch_animation:Lcom/smartisanos/smengine/AnimationTimeLine;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    const-class v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    .line 59
    sput v1, Lcom/smartisanos/launcher/animations/PageViewAnimation;->SCREEN_MAX_POS_X:F

    .line 60
    sput v1, Lcom/smartisanos/launcher/animations/PageViewAnimation;->SCREEN_MIN_POS_X:F

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/launcher/view/PageView;)V
    .locals 3
    .param p1, "view"    # Lcom/smartisanos/launcher/view/PageView;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/IAnimation;-><init>()V

    .line 38
    iput-boolean v1, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->multiPageInOneScreenAlready:Z

    .line 39
    iput-boolean v1, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->changeScreenAnimationRunning:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->page_mode_switch_animation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 42
    iput-boolean v1, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mNeedForceFinishPageSwitch:Z

    .line 43
    iput-boolean v1, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mIsForceSwitchToSingle:Z

    .line 45
    iput v2, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mPageZoomScaleX4:F

    .line 46
    iput v2, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mPageZoomScaleX9:F

    .line 47
    iput v2, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mPageZoomScaleY4:F

    .line 48
    iput v2, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mPageZoomScaleY9:F

    .line 52
    iput v1, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mBufferMode:I

    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smartisanos/smengine/math/Vector3f;

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mPagePosition4:[Lcom/smartisanos/smengine/math/Vector3f;

    .line 56
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/smartisanos/smengine/math/Vector3f;

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mPagePosition9:[Lcom/smartisanos/smengine/math/Vector3f;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mZoomedPageList:Ljava/util/ArrayList;

    .line 68
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    .line 69
    sget v0, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sput v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->SCREEN_MAX_POS_X:F

    .line 70
    sget v0, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sput v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->SCREEN_MIN_POS_X:F

    .line 71
    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/PageViewAnimation;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mNeedForceFinishPageSwitch:Z

    return v0
.end method

.method static synthetic access$102(Lcom/smartisanos/launcher/animations/PageViewAnimation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/PageViewAnimation;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mNeedForceFinishPageSwitch:Z

    return p1
.end method

.method static synthetic access$200(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/PageViewAnimation;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->page_mode_switch_animation:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object v0
.end method

.method static synthetic access$202(Lcom/smartisanos/launcher/animations/PageViewAnimation;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/PageViewAnimation;
    .param p1, "x1"    # Lcom/smartisanos/smengine/AnimationTimeLine;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->page_mode_switch_animation:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object p1
.end method

.method static synthetic access$300(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Lcom/smartisanos/launcher/view/PageView;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/PageViewAnimation;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/PageViewAnimation;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mZoomedPageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/smartisanos/launcher/animations/PageViewAnimation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/PageViewAnimation;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->multiPageInOneScreenAlready:Z

    return p1
.end method

.method static synthetic access$600(Lcom/smartisanos/launcher/animations/PageViewAnimation;Lcom/smartisanos/launcher/view/Page;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/PageViewAnimation;
    .param p1, "x1"    # Lcom/smartisanos/launcher/view/Page;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->releasePagesWhenSingle(Lcom/smartisanos/launcher/view/Page;Ljava/util/ArrayList;)V

    return-void
.end method

.method private alignmentPageByMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v4, 0x0

    .line 571
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 572
    :cond_1
    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v3, 0x5

    if-ne p1, v3, :cond_3

    .line 574
    :cond_2
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/PageView;->cleanEmptyPages(Lcom/smartisanos/launcher/view/Page;)I

    .line 575
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 576
    .local v2, "page_count":I
    const/4 v0, 0x4

    .line 577
    .local v0, "group_size":I
    rem-int v3, v2, v0

    sub-int v1, v0, v3

    .line 578
    .local v1, "need_append_page_num":I
    if-eq v1, v0, :cond_0

    .line 580
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v3, v1}, Lcom/smartisanos/launcher/view/PageView;->createEmptyPages(I)Ljava/util/List;

    goto :goto_0

    .line 582
    .end local v0    # "group_size":I
    .end local v1    # "need_append_page_num":I
    .end local v2    # "page_count":I
    :cond_3
    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    .line 583
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/PageView;->cleanEmptyPages(Lcom/smartisanos/launcher/view/Page;)I

    .line 584
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 585
    .restart local v2    # "page_count":I
    const/16 v0, 0x9

    .line 586
    .restart local v0    # "group_size":I
    rem-int v3, v2, v0

    sub-int v1, v0, v3

    .line 587
    .restart local v1    # "need_append_page_num":I
    if-eq v1, v0, :cond_0

    .line 589
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v3, v1}, Lcom/smartisanos/launcher/view/PageView;->createEmptyPages(I)Ljava/util/List;

    goto :goto_0

    .line 591
    .end local v0    # "group_size":I
    .end local v1    # "need_append_page_num":I
    .end local v2    # "page_count":I
    :cond_4
    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    goto :goto_0
.end method

.method private convertCoordinate(Ljava/util/ArrayList;FF)Ljava/util/ArrayList;
    .locals 6
    .param p2, "width"    # F
    .param p3, "height"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/math/Vector3f;",
            ">;FF)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/math/Vector3f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector3f;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector3f;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 176
    :cond_0
    return-object v2

    .line 170
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 171
    new-instance v3, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 172
    .local v3, "world_coordinate":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/math/Vector3f;

    .line 173
    .local v0, "graphic_coordinate":Lcom/smartisanos/smengine/math/Vector3f;
    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-static {v4, v5, p2, p3, v3}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 174
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getDistance(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)F
    .locals 8
    .param p1, "loc1"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "loc2"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "distance":F
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v1, v0

    .line 162
    .end local v0    # "distance":F
    .local v1, "distance":F
    :goto_0
    return v1

    .line 161
    .end local v1    # "distance":F
    .restart local v0    # "distance":F
    :cond_1
    iget v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v5, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    move v1, v0

    .line 162
    .end local v0    # "distance":F
    .restart local v1    # "distance":F
    goto :goto_0
.end method

.method private getPageSizeByMode(I)Lcom/smartisanos/smengine/math/Vector2f;
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 561
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    iget v1, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 562
    .local v1, "page_width":F
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    iget v0, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 563
    .local v0, "page_height":F
    new-instance v2, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {v2, v1, v0}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    return-object v2
.end method

.method private releasePagesWhenSingle(Lcom/smartisanos/launcher/view/Page;Ljava/util/ArrayList;)V
    .locals 11
    .param p1, "page"    # Lcom/smartisanos/launcher/view/Page;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/launcher/view/Page;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "zoomedPageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1120
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1121
    .local v7, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v1, 0x0

    .line 1122
    .local v1, "indexInList":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_0

    .line 1123
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Page;

    .line 1124
    .local v4, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1125
    move v1, v0

    .line 1130
    .end local v4    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    const/4 v5, 0x0

    .line 1131
    .local v5, "pre":Lcom/smartisanos/launcher/view/Page;
    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 1132
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Page;

    .line 1133
    .restart local v4    # "p":Lcom/smartisanos/launcher/view/Page;
    if-nez v5, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v8

    if-nez v8, :cond_2

    .line 1134
    move-object v5, v4

    .line 1131
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1122
    .end local v5    # "pre":Lcom/smartisanos/launcher/view/Page;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1136
    .restart local v5    # "pre":Lcom/smartisanos/launcher/view/Page;
    :cond_2
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1139
    .end local v4    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_3
    const/4 v2, 0x0

    .line 1140
    .local v2, "next":Lcom/smartisanos/launcher/view/Page;
    add-int/lit8 v0, v1, 0x1

    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_5

    .line 1141
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Page;

    .line 1142
    .restart local v4    # "p":Lcom/smartisanos/launcher/view/Page;
    if-nez v2, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v8

    if-nez v8, :cond_4

    .line 1143
    move-object v2, v4

    .line 1140
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1145
    :cond_4
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1148
    .end local v4    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_5
    if-nez v5, :cond_6

    .line 1149
    invoke-virtual {p2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/Page;

    iget v8, v8, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    add-int/lit8 v6, v8, -0x1

    .line 1150
    .local v6, "preIndex":I
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v8, v6}, Lcom/smartisanos/launcher/view/PageView;->findPreviousVisiblePage(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v5

    .line 1151
    if-eqz v5, :cond_6

    .line 1152
    invoke-virtual {v5, v9}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 1153
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Page;->initPageContent()V

    .line 1156
    .end local v6    # "preIndex":I
    :cond_6
    if-nez v2, :cond_7

    .line 1157
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/Page;

    iget v8, v8, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    add-int/lit8 v3, v8, 0x1

    .line 1158
    .local v3, "nextIndex":I
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v8, v3}, Lcom/smartisanos/launcher/view/PageView;->findNextVisiblePage(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v2

    .line 1159
    if-eqz v2, :cond_7

    .line 1160
    invoke-virtual {v2, v9}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 1161
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->initPageContent()V

    .line 1164
    .end local v3    # "nextIndex":I
    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Page;

    .line 1165
    .restart local v4    # "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v4, v10}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 1166
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->releasePageContent()V

    goto :goto_5

    .line 1168
    .end local v4    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_8
    return-void
.end method


# virtual methods
.method public forceFinishSwitchModeAnimation()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->page_mode_switch_animation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->page_mode_switch_animation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 184
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mNeedForceFinishPageSwitch:Z

    .line 185
    return-void
.end method

.method public handleAnimation(Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;FLjava/util/ArrayList;)V
    .locals 94
    .param p1, "animation"    # Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;
    .param p2, "time"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;",
            "F",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 596
    .local p3, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleAnimation ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :cond_0
    sget-object v5, Lcom/smartisanos/launcher/animations/PageViewAnimation$5;->$SwitchMap$com$smartisanos$launcher$animations$PageViewAnimation$PAGE_VIEW_ANIMATION:[I

    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1117
    :cond_1
    :goto_0
    return-void

    .line 600
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->multiPageInOneScreenAlready:Z

    if-eqz v5, :cond_2

    .line 601
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleAnimation SHOW_MULTI_PAGE break. multiPageInOneScreenAlready="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->multiPageInOneScreenAlready:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 605
    :cond_2
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_1

    .line 608
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v84

    .line 609
    .local v84, "target_mode":I
    const/16 v85, 0x0

    .line 611
    .local v85, "time_line":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v85

    .end local v85    # "time_line":Lcom/smartisanos/smengine/AnimationTimeLine;
    check-cast v85, Lcom/smartisanos/smengine/AnimationTimeLine;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    .restart local v85    # "time_line":Lcom/smartisanos/smengine/AnimationTimeLine;
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    const-string v7, "SHOW_MULTI_PAGE begin"

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getAllPagesInWindow()Ljava/util/ArrayList;

    move-result-object v59

    .line 618
    .local v59, "pagesInWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 619
    .local v23, "display_pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual/range {v59 .. v59}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/smartisanos/launcher/view/Page;

    .line 620
    .local v45, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual/range {v45 .. v45}, Lcom/smartisanos/launcher/view/Page;->isVisiblePage()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 621
    move-object/from16 v0, v23

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 612
    .end local v23    # "display_pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .end local v45    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v59    # "pagesInWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .end local v85    # "time_line":Lcom/smartisanos/smengine/AnimationTimeLine;
    :catch_0
    move-exception v25

    .line 613
    .local v25, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    const-string v7, "params error, index 0 must be AnimationTimeLine object"

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 625
    .end local v25    # "e":Ljava/lang/Exception;
    .restart local v23    # "display_pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .restart local v59    # "pagesInWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .restart local v85    # "time_line":Lcom/smartisanos/smengine/AnimationTimeLine;
    :cond_5
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_7

    .line 626
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_6

    sget-object v5, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    const-string v7, "some error happened, getAllPagesInWindow() page list is empty !"

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    :cond_7
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_8

    sget-object v5, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "display_pages size =======> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :cond_8
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_15

    .line 632
    const/16 v45, 0x0

    .line 633
    .restart local v45    # "page":Lcom/smartisanos/launcher/view/Page;
    const/high16 v24, 0x4f000000

    .line 634
    .local v24, "distance":F
    new-instance v39, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v39 .. v39}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 635
    .local v39, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    const/16 v34, 0x0

    .local v34, "i":I
    :goto_2
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v34

    if-ge v0, v5, :cond_c

    .line 636
    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/smartisanos/launcher/view/Page;

    .line 637
    .local v43, "p":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, v43

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Page;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 638
    move-object/from16 v0, v39

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sget v6, Lcom/smartisanos/launcher/animations/PageViewAnimation;->SCREEN_MAX_POS_X:F

    cmpl-float v5, v5, v6

    if-gez v5, :cond_9

    move-object/from16 v0, v39

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sget v6, Lcom/smartisanos/launcher/animations/PageViewAnimation;->SCREEN_MIN_POS_X:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_a

    .line 635
    :cond_9
    :goto_3
    add-int/lit8 v34, v34, 0x1

    goto :goto_2

    .line 642
    :cond_a
    new-instance v5, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v5}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1, v5}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->getDistance(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)F

    move-result v21

    .line 643
    .local v21, "d":F
    if-nez v45, :cond_b

    .line 644
    move-object/from16 v45, v43

    .line 645
    move/from16 v24, v21

    goto :goto_3

    .line 647
    :cond_b
    cmpl-float v5, v24, v21

    if-ltz v5, :cond_9

    .line 648
    move-object/from16 v45, v43

    .line 649
    move/from16 v24, v21

    goto :goto_3

    .line 653
    .end local v21    # "d":F
    .end local v43    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_c
    if-nez v45, :cond_14

    .line 654
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_d

    sget-object v5, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    const-string v7, "some error happened, mCurrentPage is out of window !!!"

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :cond_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v6, v5}, Lcom/smartisanos/launcher/view/PageView;->setDisplayPageInSingleMode(Lcom/smartisanos/launcher/view/Page;)V

    .line 662
    .end local v24    # "distance":F
    .end local v34    # "i":I
    .end local v39    # "loc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v45    # "page":Lcom/smartisanos/launcher/view/Page;
    :goto_4
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_e

    sget-object v5, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SHOW_MULTI_PAGE getAllPagesInWindow list size ==> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :cond_e
    const/16 v67, 0x0

    .line 665
    .local v67, "posList":[Lcom/smartisanos/smengine/math/Vector3f;
    const/16 v33, 0x0

    .line 666
    .local v33, "group_size":I
    const/16 v52, 0x0

    .line 667
    .local v52, "pageRow":I
    const/16 v46, 0x0

    .line 668
    .local v46, "pageColumn":I
    const/4 v5, 0x2

    move/from16 v0, v84

    if-eq v0, v5, :cond_f

    const/4 v5, 0x5

    move/from16 v0, v84

    if-ne v0, v5, :cond_16

    .line 670
    :cond_f
    const/16 v33, 0x4

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mPagePosition4:[Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v67, v0

    .line 672
    const/16 v52, 0x2

    .line 673
    const/16 v46, 0x2

    .line 680
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v84

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->alignmentPageByMode(I)V

    .line 681
    move/from16 v0, v84

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mBufferMode:I

    .line 682
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->getPageSizeByMode(I)Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v42

    .line 683
    .local v42, "original_page_size":Lcom/smartisanos/smengine/math/Vector2f;
    move-object/from16 v0, p0

    move/from16 v1, v84

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->getPageSizeByMode(I)Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v58

    .line 684
    .local v58, "page_size":Lcom/smartisanos/smengine/math/Vector2f;
    sget-object v5, Lcom/smartisanos/launcher/data/Constants;->pageSizeScale:[Lcom/smartisanos/smengine/math/Vector2f;

    move/from16 v0, v84

    aget-object v6, v5, v0

    .line 685
    .local v6, "pageScale":Lcom/smartisanos/smengine/math/Vector2f;
    move-object/from16 v0, v6

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v75, v5

    .line 686
    .local v75, "scalex":F
    move-object/from16 v0, v6

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v76, v5

    .line 687
    .local v76, "scaley":F
    const/4 v5, 0x2

    move/from16 v0, v84

    if-eq v0, v5, :cond_10

    move-object/from16 v0, p0

    iget v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mBufferMode:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_11

    .line 688
    :cond_10
    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mPageZoomScaleX4:F

    .line 689
    move/from16 v0, v76

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mPageZoomScaleY4:F

    .line 691
    :cond_11
    const/4 v5, 0x3

    move/from16 v0, v84

    if-ne v0, v5, :cond_12

    .line 692
    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mPageZoomScaleX9:F

    .line 693
    move/from16 v0, v76

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mPageZoomScaleY9:F

    .line 695
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getVisiblePageCount()I

    move-result v57

    .line 696
    .local v57, "page_list_size":I
    div-int v32, v57, v33

    .line 699
    .local v32, "group_count":I
    const/16 v20, 0x0

    .line 700
    .local v20, "current_page_index":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getDisplayPageInSingleMode()Lcom/smartisanos/launcher/view/Page;

    move-result-object v40

    .line 701
    .local v40, "mCurrentPage":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getAllPages()Ljava/util/ArrayList;

    move-result-object v14

    .line 703
    .local v14, "allPage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_13
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/smartisanos/launcher/view/Page;

    .line 704
    .restart local v43    # "p":Lcom/smartisanos/launcher/view/Page;
    if-eqz v43, :cond_13

    .line 705
    sget v6, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Lcom/smartisanos/launcher/view/Page;->adjustIconForMode(I)V

    goto :goto_6

    .line 657
    .end local v14    # "allPage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .end local v20    # "current_page_index":I
    .end local v32    # "group_count":I
    .end local v33    # "group_size":I
    .end local v40    # "mCurrentPage":Lcom/smartisanos/launcher/view/Page;
    .end local v42    # "original_page_size":Lcom/smartisanos/smengine/math/Vector2f;
    .end local v43    # "p":Lcom/smartisanos/launcher/view/Page;
    .end local v46    # "pageColumn":I
    .end local v52    # "pageRow":I
    .end local v57    # "page_list_size":I
    .end local v58    # "page_size":Lcom/smartisanos/smengine/math/Vector2f;
    .end local v67    # "posList":[Lcom/smartisanos/smengine/math/Vector3f;
    .end local v75    # "scalex":F
    .end local v76    # "scaley":F
    .restart local v24    # "distance":F
    .restart local v34    # "i":I
    .restart local v39    # "loc":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v45    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Lcom/smartisanos/launcher/view/PageView;->setDisplayPageInSingleMode(Lcom/smartisanos/launcher/view/Page;)V

    goto/16 :goto_4

    .line 660
    .end local v24    # "distance":F
    .end local v34    # "i":I
    .end local v39    # "loc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v45    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_15
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v6, v5}, Lcom/smartisanos/launcher/view/PageView;->setDisplayPageInSingleMode(Lcom/smartisanos/launcher/view/Page;)V

    goto/16 :goto_4

    .line 675
    .restart local v33    # "group_size":I
    .restart local v46    # "pageColumn":I
    .restart local v52    # "pageRow":I
    .restart local v67    # "posList":[Lcom/smartisanos/smengine/math/Vector3f;
    :cond_16
    const/16 v33, 0x9

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mPagePosition9:[Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v67, v0

    .line 677
    const/16 v52, 0x3

    .line 678
    const/16 v46, 0x3

    goto/16 :goto_5

    .line 708
    .restart local v14    # "allPage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .restart local v20    # "current_page_index":I
    .restart local v32    # "group_count":I
    .restart local v40    # "mCurrentPage":Lcom/smartisanos/launcher/view/Page;
    .restart local v42    # "original_page_size":Lcom/smartisanos/smengine/math/Vector2f;
    .restart local v57    # "page_list_size":I
    .restart local v58    # "page_size":Lcom/smartisanos/smengine/math/Vector2f;
    .restart local v75    # "scalex":F
    .restart local v76    # "scaley":F
    :cond_17
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v5

    sget v6, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/DockView;->adjustIconForMode(I)V

    .line 709
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v50

    .line 710
    .local v50, "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    if-eqz v40, :cond_1c

    .line 711
    move-object/from16 v0, v50

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v20

    .line 717
    div-int v19, v20, v33

    .line 719
    .local v19, "current_group_index":I
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v69

    .line 721
    .local v69, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    sget v5, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v70

    .line 722
    .local v70, "propMultiPage":Lcom/smartisanos/launcher/data/LayoutProperty;
    const/16 v74, 0x0

    .line 723
    .local v74, "rowPageNum":I
    sget v5, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_18

    sget v5, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1e

    .line 724
    :cond_18
    const/16 v74, 0x2

    .line 728
    :goto_7
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_19

    sget-object v5, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SHOW_MULTI_PAGE, current page mode ========> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v8}, Lcom/smartisanos/launcher/data/Constants;->getModeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :cond_19
    move-object/from16 v0, v70

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    move-object/from16 v0, v70

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_right:F

    add-float/2addr v5, v6

    move-object/from16 v0, v70

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    move/from16 v0, v74

    int-to-float v7, v0

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v74, -0x1

    int-to-float v6, v6

    move-object/from16 v0, v70

    iget v7, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_spacing_h:F

    mul-float/2addr v6, v7

    add-float v54, v5, v6

    .line 732
    .local v54, "pageSpanWidth":F
    move-object/from16 v0, v69

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    move-object/from16 v0, v69

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    add-float/2addr v5, v6

    move-object/from16 v0, v69

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_bottom:F

    add-float v53, v5, v6

    .line 734
    .local v53, "pageSpanHeight":F
    new-instance v89, Ljava/util/ArrayList;

    invoke-direct/range {v89 .. v89}, Ljava/util/ArrayList;-><init>()V

    .line 735
    .local v89, "to_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector3f;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 736
    .local v13, "activity_group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/16 v34, 0x0

    .restart local v34    # "i":I
    :goto_8
    move/from16 v0, v34

    move/from16 v1, v32

    if-ge v0, v1, :cond_23

    .line 738
    const/16 v35, 0x0

    .local v35, "index":I
    :goto_9
    move/from16 v0, v35

    move/from16 v1, v33

    if-ge v0, v1, :cond_22

    .line 739
    mul-int v5, v34, v33

    add-int v5, v5, v35

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/smartisanos/launcher/view/Page;

    .line 740
    .restart local v45    # "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual/range {v45 .. v45}, Lcom/smartisanos/launcher/view/Page;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    if-nez v5, :cond_1a

    .line 741
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getPageParentForTranslate()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 746
    :cond_1a
    new-instance v64, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v64 .. v64}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 747
    .local v64, "posInParent":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getPageParentForTranslate()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v82

    .line 748
    .local v82, "t":Lcom/smartisanos/smengine/math/Transform;
    invoke-virtual/range {v82 .. v82}, Lcom/smartisanos/smengine/math/Transform;->inverse()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v86

    .line 749
    .local v86, "tinv":Lcom/smartisanos/smengine/math/Transform;
    aget-object v5, v67, v35

    move-object/from16 v0, v86

    move-object/from16 v1, v64

    invoke-virtual {v0, v5, v1}, Lcom/smartisanos/smengine/math/Transform;->transformVector(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 751
    new-instance v63, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v64

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v0, v19

    neg-int v6, v0

    add-int v6, v6, v34

    int-to-float v6, v6

    mul-float v6, v6, v54

    add-float/2addr v5, v6

    move-object/from16 v0, v64

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v64

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v63

    invoke-direct {v0, v5, v6, v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 754
    .local v63, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    move/from16 v0, v34

    move/from16 v1, v19

    if-ne v0, v1, :cond_1f

    .line 755
    const/4 v5, 0x1

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 756
    invoke-virtual/range {v45 .. v45}, Lcom/smartisanos/launcher/view/Page;->initPageContent()V

    .line 757
    const/4 v5, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/Page;->createAndShowPageTitle(Z)V

    .line 758
    move-object/from16 v0, v45

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    new-instance v5, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v63

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v63

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v89

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    :cond_1b
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    sget v6, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    move-object/from16 v0, v45

    move/from16 v1, v84

    invoke-virtual {v5, v0, v6, v1}, Lcom/smartisanos/launcher/view/PageView;->adjustPageCellPositionAndScale(Lcom/smartisanos/launcher/view/Page;II)V

    .line 738
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_9

    .line 713
    .end local v13    # "activity_group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .end local v19    # "current_group_index":I
    .end local v34    # "i":I
    .end local v35    # "index":I
    .end local v45    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v53    # "pageSpanHeight":F
    .end local v54    # "pageSpanWidth":F
    .end local v63    # "pos":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v64    # "posInParent":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v69    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v70    # "propMultiPage":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v74    # "rowPageNum":I
    .end local v82    # "t":Lcom/smartisanos/smengine/math/Transform;
    .end local v86    # "tinv":Lcom/smartisanos/smengine/math/Transform;
    .end local v89    # "to_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector3f;>;"
    :cond_1c
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_1d

    sget-object v5, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error !!! getCurrentPageInWindowForSinglePageMode return null, by size w ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], h ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :cond_1d
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "current page in window is null"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 726
    .restart local v19    # "current_group_index":I
    .restart local v69    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    .restart local v70    # "propMultiPage":Lcom/smartisanos/launcher/data/LayoutProperty;
    .restart local v74    # "rowPageNum":I
    :cond_1e
    const/16 v74, 0x3

    goto/16 :goto_7

    .line 764
    .restart local v13    # "activity_group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .restart local v34    # "i":I
    .restart local v35    # "index":I
    .restart local v45    # "page":Lcom/smartisanos/launcher/view/Page;
    .restart local v53    # "pageSpanHeight":F
    .restart local v54    # "pageSpanWidth":F
    .restart local v63    # "pos":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v64    # "posInParent":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v82    # "t":Lcom/smartisanos/smengine/math/Transform;
    .restart local v86    # "tinv":Lcom/smartisanos/smengine/math/Transform;
    .restart local v89    # "to_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector3f;>;"
    :cond_1f
    move-object/from16 v0, v63

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v63

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/4 v7, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v5, v6, v7}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 765
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, v45

    move/from16 v1, v75

    move/from16 v2, v76

    invoke-virtual {v0, v1, v2, v5}, Lcom/smartisanos/launcher/view/Page;->setScale(FFF)V

    .line 766
    add-int/lit8 v5, v19, 0x1

    move/from16 v0, v34

    if-eq v0, v5, :cond_20

    if-eqz v19, :cond_21

    add-int/lit8 v5, v19, -0x1

    move/from16 v0, v34

    if-ne v0, v5, :cond_21

    .line 768
    :cond_20
    invoke-virtual/range {v45 .. v45}, Lcom/smartisanos/launcher/view/Page;->isPageContentInited()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 769
    const/4 v5, 0x1

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/Page;->createAndShowPageTitle(Z)V

    goto/16 :goto_a

    .line 772
    :cond_21
    const/4 v5, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 773
    invoke-virtual/range {v45 .. v45}, Lcom/smartisanos/launcher/view/Page;->releasePageContent()V

    goto/16 :goto_a

    .line 736
    .end local v45    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v63    # "pos":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v64    # "posInParent":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v82    # "t":Lcom/smartisanos/smengine/math/Transform;
    .end local v86    # "tinv":Lcom/smartisanos/smengine/math/Transform;
    :cond_22
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_8

    .line 782
    .end local v35    # "index":I
    :cond_23
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v33

    if-ge v5, v0, :cond_25

    .line 783
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_24

    sget-object v5, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    const-string v7, "some error happened activity_group.size() < group_size. so break !!!"

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    :cond_24
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "activity group size < group_size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 786
    :cond_25
    rem-int v71, v20, v33

    .line 788
    .local v71, "quadrant":I
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 789
    .local v30, "from_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector3f;>;"
    div-int v62, v71, v52

    .line 790
    .local v62, "pivotRow":I
    rem-int v61, v71, v46

    .line 791
    .local v61, "pivotColumn":I
    move-object/from16 v0, v69

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    move-object/from16 v0, v69

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_right:F

    add-float/2addr v5, v6

    move-object/from16 v0, v69

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    add-float v79, v5, v6

    .line 792
    .local v79, "singlePageSpanWidth":F
    move-object/from16 v0, v69

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    move-object/from16 v0, v69

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_bottom:F

    add-float/2addr v5, v6

    move-object/from16 v0, v69

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    add-float/2addr v5, v6

    sget v6, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    .line 793
    invoke-static {v6}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v6

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    div-float v6, v6, v76

    add-float v78, v5, v6

    .line 794
    .local v78, "singlePageSpanHeight":F
    const/16 v93, 0x0

    .line 795
    .local v93, "y":F
    if-eqz v40, :cond_26

    .line 796
    invoke-virtual/range {v40 .. v40}, Lcom/smartisanos/launcher/view/Page;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    iget v0, v5, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v93, v0

    .line 798
    :cond_26
    const/16 v34, 0x0

    :goto_b
    move/from16 v0, v34

    move/from16 v1, v33

    if-ge v0, v1, :cond_27

    .line 799
    div-int v72, v34, v52

    .line 800
    .local v72, "row":I
    rem-int v17, v34, v46

    .line 801
    .local v17, "column":I
    new-instance v5, Lcom/smartisanos/smengine/math/Vector3f;

    sub-int v6, v17, v61

    int-to-float v6, v6

    mul-float v6, v6, v79

    sub-int v7, v72, v62

    int-to-float v7, v7

    mul-float v7, v7, v78

    sub-float v7, v93, v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    add-int/lit8 v34, v34, 0x1

    goto :goto_b

    .line 805
    .end local v17    # "column":I
    .end local v72    # "row":I
    :cond_27
    move-object/from16 v0, v40

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v36

    .line 806
    .local v36, "index_in_group":I
    div-int v73, v36, v74

    .line 807
    .local v73, "rowIndex":I
    const/16 v34, 0x0

    :goto_c
    move/from16 v0, v34

    move/from16 v1, v33

    if-ge v0, v1, :cond_28

    .line 808
    move/from16 v0, v34

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/smartisanos/launcher/view/Page;

    .line 810
    .restart local v45    # "page":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mZoomedPageList:Ljava/util/ArrayList;

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 812
    .local v38, "list":Ljava/util/ArrayList;
    move-object/from16 v0, v38

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    new-instance v5, Ljava/lang/Float;

    move-object/from16 v0, v58

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    invoke-direct {v5, v6}, Ljava/lang/Float;-><init>(F)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    new-instance v5, Ljava/lang/Integer;

    move/from16 v0, v71

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    new-instance v5, Ljava/lang/Integer;

    move/from16 v0, v84

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    invoke-virtual/range {v45 .. v45}, Lcom/smartisanos/launcher/view/Page;->getAnimation()Lcom/smartisanos/launcher/animations/PageAnimation;

    move-result-object v5

    sget-object v6, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->SHOW_PAGE_TITLE:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    const v7, 0x3e8f5c29    # 0.28f

    move-object/from16 v0, v38

    invoke-virtual {v5, v6, v7, v0}, Lcom/smartisanos/launcher/animations/PageAnimation;->handleAnimation(Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;FLjava/util/ArrayList;)V

    .line 818
    move-object/from16 v0, v30

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/smartisanos/smengine/math/Vector3f;

    .line 819
    .local v29, "from":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v89

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Lcom/smartisanos/smengine/math/Vector3f;

    .line 820
    .local v88, "to":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual/range {v45 .. v45}, Lcom/smartisanos/launcher/view/Page;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v51

    .line 823
    .local v51, "pageLoc":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v64, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v64 .. v64}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 824
    .restart local v64    # "posInParent":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getPageParentForTranslate()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v82

    .line 825
    .restart local v82    # "t":Lcom/smartisanos/smengine/math/Transform;
    invoke-virtual/range {v82 .. v82}, Lcom/smartisanos/smengine/math/Transform;->inverse()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v86

    .line 826
    .restart local v86    # "tinv":Lcom/smartisanos/smengine/math/Transform;
    move-object/from16 v0, v86

    move-object/from16 v1, v29

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/math/Transform;->transformVector(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 831
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, v45

    invoke-direct {v3, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 832
    .local v3, "move_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 833
    const/16 v5, 0xe

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 834
    const/4 v4, 0x0

    move-object/from16 v0, v64

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v64

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/4 v7, 0x0

    move-object/from16 v0, v88

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v88

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 835
    const/4 v5, 0x0

    move-object/from16 v0, v85

    invoke-virtual {v0, v5, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 837
    new-instance v4, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, v45

    invoke-direct {v4, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 838
    .local v4, "scale_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 839
    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 840
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setPreserveNodeScale(Z)V

    .line 841
    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    move/from16 v9, v75

    move/from16 v10, v76

    invoke-virtual/range {v4 .. v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 842
    const/4 v5, 0x0

    move-object/from16 v0, v85

    invoke-virtual {v0, v5, v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 807
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_c

    .line 844
    .end local v3    # "move_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v4    # "scale_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v29    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v38    # "list":Ljava/util/ArrayList;
    .end local v45    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v51    # "pageLoc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v64    # "posInParent":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v82    # "t":Lcom/smartisanos/smengine/math/Transform;
    .end local v86    # "tinv":Lcom/smartisanos/smengine/math/Transform;
    .end local v88    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_28
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->forceUpdateGeometricState()V

    goto/16 :goto_0

    .line 849
    .end local v13    # "activity_group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .end local v14    # "allPage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .end local v19    # "current_group_index":I
    .end local v20    # "current_page_index":I
    .end local v23    # "display_pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .end local v30    # "from_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector3f;>;"
    .end local v32    # "group_count":I
    .end local v33    # "group_size":I
    .end local v34    # "i":I
    .end local v36    # "index_in_group":I
    .end local v40    # "mCurrentPage":Lcom/smartisanos/launcher/view/Page;
    .end local v42    # "original_page_size":Lcom/smartisanos/smengine/math/Vector2f;
    .end local v46    # "pageColumn":I
    .end local v50    # "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .end local v52    # "pageRow":I
    .end local v53    # "pageSpanHeight":F
    .end local v54    # "pageSpanWidth":F
    .end local v57    # "page_list_size":I
    .end local v58    # "page_size":Lcom/smartisanos/smengine/math/Vector2f;
    .end local v59    # "pagesInWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .end local v61    # "pivotColumn":I
    .end local v62    # "pivotRow":I
    .end local v67    # "posList":[Lcom/smartisanos/smengine/math/Vector3f;
    .end local v69    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v70    # "propMultiPage":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v71    # "quadrant":I
    .end local v73    # "rowIndex":I
    .end local v74    # "rowPageNum":I
    .end local v75    # "scalex":F
    .end local v76    # "scaley":F
    .end local v78    # "singlePageSpanHeight":F
    .end local v79    # "singlePageSpanWidth":F
    .end local v84    # "target_mode":I
    .end local v85    # "time_line":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v89    # "to_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector3f;>;"
    .end local v93    # "y":F
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->multiPageInOneScreenAlready:Z

    if-nez v5, :cond_29

    .line 850
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleAnimation SHOW_SINGLE_PAGE break. multiPageInOneScreenAlready="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->multiPageInOneScreenAlready:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 854
    :cond_29
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_1

    .line 857
    const/16 v85, 0x0

    .line 859
    .restart local v85    # "time_line":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v5, 0x0

    :try_start_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v85

    .end local v85    # "time_line":Lcom/smartisanos/smengine/AnimationTimeLine;
    check-cast v85, Lcom/smartisanos/smengine/AnimationTimeLine;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 864
    .restart local v85    # "time_line":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/16 v90, 0x0

    .line 866
    .local v90, "userSpecifiedPage":Lcom/smartisanos/launcher/view/Page;
    const/4 v5, 0x1

    :try_start_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v90, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 870
    :goto_d
    const/16 v77, 0x0

    .line 872
    .local v77, "showEmptyPage":Z
    const/4 v5, 0x2

    :try_start_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v77

    .line 875
    :goto_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getAllPages()Ljava/util/ArrayList;

    move-result-object v14

    .line 877
    .restart local v14    # "allPage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2a
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/smartisanos/launcher/view/Page;

    .line 878
    .restart local v43    # "p":Lcom/smartisanos/launcher/view/Page;
    if-eqz v43, :cond_2a

    .line 879
    sget v6, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Lcom/smartisanos/launcher/view/Page;->adjustIconForMode(I)V

    goto :goto_f

    .line 860
    .end local v14    # "allPage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .end local v43    # "p":Lcom/smartisanos/launcher/view/Page;
    .end local v77    # "showEmptyPage":Z
    .end local v85    # "time_line":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v90    # "userSpecifiedPage":Lcom/smartisanos/launcher/view/Page;
    :catch_1
    move-exception v25

    .line 861
    .restart local v25    # "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    const-string v7, "params error, index 0 must be AnimationTimeLine object"

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 867
    .end local v25    # "e":Ljava/lang/Exception;
    .restart local v85    # "time_line":Lcom/smartisanos/smengine/AnimationTimeLine;
    .restart local v90    # "userSpecifiedPage":Lcom/smartisanos/launcher/view/Page;
    :catch_2
    move-exception v25

    .line 868
    .restart local v25    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 882
    .end local v25    # "e":Ljava/lang/Exception;
    .restart local v14    # "allPage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .restart local v77    # "showEmptyPage":Z
    :cond_2b
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v5

    sget v6, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/DockView;->adjustIconForMode(I)V

    .line 883
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_2c

    sget-object v5, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SHOW_SINGLE_PAGE begin, userSpecifiedPage ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v90

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    :cond_2c
    const/16 v22, 0x0

    .line 886
    .local v22, "display_page":Lcom/smartisanos/launcher/view/Page;
    if-nez v90, :cond_33

    .line 887
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getDisplayPageInSingleMode()Lcom/smartisanos/launcher/view/Page;

    move-result-object v40

    .line 888
    .restart local v40    # "mCurrentPage":Lcom/smartisanos/launcher/view/Page;
    const/16 v28, 0x1

    .line 889
    .local v28, "findPageInWindow":Z
    if-eqz v40, :cond_2d

    .line 890
    invoke-virtual/range {v40 .. v40}, Lcom/smartisanos/launcher/view/Page;->isVisiblePage()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-virtual/range {v40 .. v40}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 891
    new-instance v44, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v44 .. v44}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 892
    .local v44, "p_loc":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v40

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Page;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 893
    move-object/from16 v0, v44

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sget v6, Lcom/smartisanos/launcher/animations/PageViewAnimation;->SCREEN_MIN_POS_X:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2d

    move-object/from16 v0, v44

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sget v6, Lcom/smartisanos/launcher/animations/PageViewAnimation;->SCREEN_MAX_POS_X:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_2d

    .line 894
    move-object/from16 v22, v40

    .line 895
    const/16 v28, 0x0

    .line 899
    .end local v44    # "p_loc":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_2d
    if-eqz v28, :cond_34

    .line 900
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getAllPagesInWindow()Ljava/util/ArrayList;

    move-result-object v60

    .line 901
    .local v60, "pages_in_window":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_32

    .line 903
    const/16 v22, 0x0

    .line 904
    const/16 v68, -0x1

    .line 905
    .local v68, "prePageIndex":I
    new-instance v39, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v39 .. v39}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 906
    .restart local v39    # "loc":Lcom/smartisanos/smengine/math/Vector3f;
    const/16 v34, 0x0

    .restart local v34    # "i":I
    :goto_10
    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v34

    if-ge v0, v5, :cond_34

    .line 907
    move-object/from16 v0, v60

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/smartisanos/launcher/view/Page;

    .line 908
    .restart local v43    # "p":Lcom/smartisanos/launcher/view/Page;
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_2e

    sget-object v5, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "A140"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "all pages in window, title ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v43 .. v43}, Lcom/smartisanos/launcher/view/Page;->getTitleForDB()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    :cond_2e
    move-object/from16 v0, v43

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Page;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 911
    move-object/from16 v0, v39

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sget v6, Lcom/smartisanos/launcher/animations/PageViewAnimation;->SCREEN_MAX_POS_X:F

    cmpl-float v5, v5, v6

    if-gez v5, :cond_2f

    move-object/from16 v0, v39

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sget v6, Lcom/smartisanos/launcher/animations/PageViewAnimation;->SCREEN_MIN_POS_X:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_30

    .line 906
    :cond_2f
    :goto_11
    add-int/lit8 v34, v34, 0x1

    goto :goto_10

    .line 915
    :cond_30
    if-nez v22, :cond_31

    .line 916
    move-object/from16 v22, v43

    .line 917
    move-object/from16 v0, v43

    iget v0, v0, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    move/from16 v68, v0

    goto :goto_11

    .line 919
    :cond_31
    move-object/from16 v0, v43

    iget v5, v0, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    move/from16 v0, v68

    if-le v0, v5, :cond_2f

    .line 920
    move-object/from16 v22, v43

    .line 921
    move-object/from16 v0, v43

    iget v0, v0, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    move/from16 v68, v0

    goto :goto_11

    .line 926
    .end local v34    # "i":I
    .end local v39    # "loc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v43    # "p":Lcom/smartisanos/launcher/view/Page;
    .end local v68    # "prePageIndex":I
    :cond_32
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    const-string v7, "getAllPagesInWindow() return list size is 0 !!! in this case, some error happened !"

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 931
    .end local v28    # "findPageInWindow":Z
    .end local v40    # "mCurrentPage":Lcom/smartisanos/launcher/view/Page;
    .end local v60    # "pages_in_window":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    :cond_33
    move-object/from16 v22, v90

    .line 933
    :cond_34
    if-eqz v22, :cond_44

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/Page;->isVisiblePage()Z

    move-result v5

    if-eqz v5, :cond_35

    if-nez v77, :cond_44

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_44

    .line 934
    :cond_35
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_36

    sget-object v5, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "A140"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showEmptyPage = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v77

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isEmpty = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    :cond_36
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_37

    sget-object v5, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "A140"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "display_page.isVisiblePage = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/Page;->isVisiblePage()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    :cond_37
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v47

    .line 938
    .local v47, "pageCount":I
    move-object/from16 v0, v22

    iget v0, v0, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    move/from16 v49, v0

    .line 939
    .local v49, "pageIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getPageFactor()I

    move-result v27

    .line 940
    .local v27, "factor":I
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_38

    sget-object v5, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "A140"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pageCount ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v47

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], pageIndex ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v49

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    :cond_38
    div-int v18, v49, v27

    .line 942
    .local v18, "currGroupIndex":I
    const/16 v37, 0x0

    .line 943
    .local v37, "isGroupInvisible":Z
    const/16 v87, 0x0

    .line 944
    .local v87, "tmpPage":Lcom/smartisanos/launcher/view/Page;
    const/16 v34, 0x0

    .restart local v34    # "i":I
    :goto_12
    move/from16 v0, v34

    move/from16 v1, v27

    if-ge v0, v1, :cond_39

    .line 945
    mul-int v5, v18, v27

    add-int v35, v5, v34

    .line 946
    .restart local v35    # "index":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/smartisanos/launcher/view/Page;

    .line 947
    .restart local v43    # "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual/range {v43 .. v43}, Lcom/smartisanos/launcher/view/Page;->isVisiblePage()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-virtual/range {v43 .. v43}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3f

    .line 948
    const/16 v37, 0x0

    .line 949
    move-object/from16 v87, v43

    .line 955
    .end local v35    # "index":I
    .end local v43    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_39
    if-eqz v37, :cond_43

    .line 956
    mul-int v5, v18, v27

    add-int/lit8 v26, v5, -0x1

    .line 957
    .local v26, "endIndex":I
    if-lez v26, :cond_3a

    .line 958
    move/from16 v34, v26

    :goto_13
    if-ltz v34, :cond_3a

    .line 959
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/smartisanos/launcher/view/Page;

    .line 960
    .restart local v43    # "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual/range {v43 .. v43}, Lcom/smartisanos/launcher/view/Page;->isVisiblePage()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-virtual/range {v43 .. v43}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_40

    .line 961
    move-object/from16 v87, v43

    .line 966
    .end local v43    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_3a
    add-int/lit8 v5, v18, 0x1

    mul-int v16, v5, v27

    .line 967
    .local v16, "beginIndex":I
    if-nez v87, :cond_3b

    move/from16 v0, v16

    move/from16 v1, v47

    if-ge v0, v1, :cond_3b

    .line 968
    move/from16 v34, v16

    :goto_14
    move/from16 v0, v34

    move/from16 v1, v47

    if-ge v0, v1, :cond_3b

    .line 969
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/smartisanos/launcher/view/Page;

    .line 970
    .restart local v43    # "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual/range {v43 .. v43}, Lcom/smartisanos/launcher/view/Page;->isVisiblePage()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-virtual/range {v43 .. v43}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_41

    .line 971
    move-object/from16 v87, v43

    .line 976
    .end local v43    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_3b
    if-nez v87, :cond_42

    .line 977
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_3c

    sget-object v5, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    const-string v7, "Oooooooooooopse! all page are invisible"

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    :cond_3c
    :goto_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v15

    .line 982
    .local v15, "allPages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3d
    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/smartisanos/launcher/view/Page;

    .line 983
    .restart local v45    # "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual/range {v45 .. v45}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3e

    invoke-virtual/range {v45 .. v45}, Lcom/smartisanos/launcher/view/Page;->isVisiblePage()Z

    move-result v6

    if-nez v6, :cond_3d

    .line 984
    :cond_3e
    const/4 v6, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    goto :goto_16

    .line 952
    .end local v15    # "allPages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .end local v16    # "beginIndex":I
    .end local v26    # "endIndex":I
    .end local v45    # "page":Lcom/smartisanos/launcher/view/Page;
    .restart local v35    # "index":I
    .restart local v43    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_3f
    const/16 v37, 0x1

    .line 944
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_12

    .line 958
    .end local v35    # "index":I
    .restart local v26    # "endIndex":I
    :cond_40
    add-int/lit8 v34, v34, -0x1

    goto/16 :goto_13

    .line 968
    .restart local v16    # "beginIndex":I
    :cond_41
    add-int/lit8 v34, v34, 0x1

    goto :goto_14

    .line 979
    .end local v43    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_42
    move-object/from16 v22, v87

    goto :goto_15

    .line 988
    .end local v16    # "beginIndex":I
    .end local v26    # "endIndex":I
    :cond_43
    move-object/from16 v22, v87

    .line 992
    .end local v18    # "currGroupIndex":I
    .end local v27    # "factor":I
    .end local v34    # "i":I
    .end local v37    # "isGroupInvisible":Z
    .end local v47    # "pageCount":I
    .end local v49    # "pageIndex":I
    .end local v87    # "tmpPage":Lcom/smartisanos/launcher/view/Page;
    :cond_44
    const/16 v56, 0x0

    .line 993
    .local v56, "page_index":I
    if-eqz v22, :cond_49

    .line 994
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v56

    .line 995
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/smartisanos/launcher/view/PageView;->setDisplayPageInSingleMode(Lcom/smartisanos/launcher/view/Page;)V

    .line 1001
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_45

    sget-object v5, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SHOW_SINGLE_PAGE page_index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v56

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    :cond_45
    new-instance v89, Ljava/util/ArrayList;

    invoke-direct/range {v89 .. v89}, Ljava/util/ArrayList;-><init>()V

    .line 1003
    .restart local v89    # "to_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector3f;>;"
    const/16 v41, 0x1

    .line 1004
    .local v41, "mode":I
    const/4 v5, 0x4

    sget v6, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    if-eq v5, v6, :cond_46

    const/4 v5, 0x5

    sget v6, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    if-ne v5, v6, :cond_47

    .line 1005
    :cond_46
    const/16 v41, 0x4

    .line 1007
    :cond_47
    invoke-static/range {v41 .. v41}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v83

    .line 1008
    .local v83, "target_layout":Lcom/smartisanos/launcher/data/LayoutProperty;
    move-object/from16 v0, v83

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    move-object/from16 v0, v83

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    add-float/2addr v5, v6

    move-object/from16 v0, v83

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_right:F

    add-float v55, v5, v6

    .line 1009
    .local v55, "pageWidth":F
    move-object/from16 v0, v83

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    move-object/from16 v0, v83

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    add-float/2addr v5, v6

    move-object/from16 v0, v83

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_bottom:F

    add-float v48, v5, v6

    .line 1010
    .local v48, "pageHeight":F
    const/16 v75, 0x0

    .line 1011
    .restart local v75    # "scalex":F
    const/16 v76, 0x0

    .line 1012
    .restart local v76    # "scaley":F
    const/16 v33, 0x1

    .line 1013
    .restart local v33    # "group_size":I
    const/16 v19, 0x0

    .line 1014
    .restart local v19    # "current_group_index":I
    const/16 v52, 0x0

    .line 1015
    .restart local v52    # "pageRow":I
    const/16 v46, 0x0

    .line 1016
    .restart local v46    # "pageColumn":I
    const/16 v62, 0x0

    .line 1017
    .restart local v62    # "pivotRow":I
    const/16 v61, 0x0

    .line 1018
    .restart local v61    # "pivotColumn":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mBufferMode:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_48

    move-object/from16 v0, p0

    iget v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mBufferMode:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_4a

    .line 1020
    :cond_48
    const/16 v52, 0x2

    .line 1021
    const/16 v46, 0x2

    .line 1022
    const/16 v33, 0x4

    .line 1023
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mPageZoomScaleX4:F

    div-float v75, v5, v6

    .line 1024
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mPageZoomScaleY4:F

    div-float v76, v5, v6

    .line 1025
    rem-int v71, v56, v33

    .line 1026
    .restart local v71    # "quadrant":I
    div-int v19, v56, v33

    .line 1027
    div-int v62, v71, v52

    .line 1028
    rem-int v61, v71, v46

    .line 1043
    :goto_17
    sget v5, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v5, v5

    move-object/from16 v0, v83

    iget v6, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    add-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    move-object/from16 v0, v83

    iget v7, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    mul-float/2addr v6, v7

    add-float v81, v5, v6

    .line 1044
    .local v81, "starty":F
    move-object/from16 v0, v83

    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    const/high16 v6, 0x3f000000    # 0.5f

    move-object/from16 v0, v83

    iget v7, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    mul-float/2addr v6, v7

    add-float v80, v5, v6

    .line 1045
    .local v80, "startx":F
    new-instance v91, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct/range {v91 .. v91}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    .line 1046
    .local v91, "v":Lcom/smartisanos/smengine/math/Vector2f;
    const/16 v34, 0x0

    .restart local v34    # "i":I
    :goto_18
    move/from16 v0, v34

    move/from16 v1, v33

    if-ge v0, v1, :cond_4c

    .line 1047
    div-int v72, v34, v52

    .line 1048
    .restart local v72    # "row":I
    rem-int v17, v34, v46

    .line 1049
    .restart local v17    # "column":I
    sub-int v5, v17, v61

    int-to-float v5, v5

    mul-float v5, v5, v55

    add-float v92, v80, v5

    .line 1050
    .local v92, "x":F
    sub-int v5, v72, v62

    int-to-float v5, v5

    sget v6, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v6}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v6

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    mul-float v6, v6, v76

    add-float v6, v6, v48

    mul-float/2addr v5, v6

    add-float v93, v81, v5

    .line 1051
    .restart local v93    # "y":F
    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v5, v5

    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v6, v6

    move/from16 v0, v92

    move/from16 v1, v93

    move-object/from16 v2, v91

    invoke-static {v0, v1, v5, v6, v2}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;

    .line 1052
    move-object/from16 v0, v91

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v92, v0

    .line 1053
    move-object/from16 v0, v91

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    move/from16 v93, v0

    .line 1054
    new-instance v5, Lcom/smartisanos/smengine/math/Vector3f;

    const/4 v6, 0x0

    move/from16 v0, v92

    move/from16 v1, v93

    invoke-direct {v5, v0, v1, v6}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v89

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1046
    add-int/lit8 v34, v34, 0x1

    goto :goto_18

    .line 997
    .end local v17    # "column":I
    .end local v19    # "current_group_index":I
    .end local v33    # "group_size":I
    .end local v34    # "i":I
    .end local v41    # "mode":I
    .end local v46    # "pageColumn":I
    .end local v48    # "pageHeight":F
    .end local v52    # "pageRow":I
    .end local v55    # "pageWidth":F
    .end local v61    # "pivotColumn":I
    .end local v62    # "pivotRow":I
    .end local v71    # "quadrant":I
    .end local v72    # "row":I
    .end local v75    # "scalex":F
    .end local v76    # "scaley":F
    .end local v80    # "startx":F
    .end local v81    # "starty":F
    .end local v83    # "target_layout":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v89    # "to_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector3f;>;"
    .end local v91    # "v":Lcom/smartisanos/smengine/math/Vector2f;
    .end local v92    # "x":F
    .end local v93    # "y":F
    :cond_49
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    const-string v7, "error !!! SHOW_SINGLE_PAGE, mCurrentPage is null"

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1030
    .restart local v19    # "current_group_index":I
    .restart local v33    # "group_size":I
    .restart local v41    # "mode":I
    .restart local v46    # "pageColumn":I
    .restart local v48    # "pageHeight":F
    .restart local v52    # "pageRow":I
    .restart local v55    # "pageWidth":F
    .restart local v61    # "pivotColumn":I
    .restart local v62    # "pivotRow":I
    .restart local v75    # "scalex":F
    .restart local v76    # "scaley":F
    .restart local v83    # "target_layout":Lcom/smartisanos/launcher/data/LayoutProperty;
    .restart local v89    # "to_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector3f;>;"
    :cond_4a
    move-object/from16 v0, p0

    iget v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mBufferMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4b

    .line 1031
    const/16 v52, 0x3

    .line 1032
    const/16 v46, 0x3

    .line 1033
    const/16 v33, 0x9

    .line 1034
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mPageZoomScaleX9:F

    div-float v75, v5, v6

    .line 1035
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mPageZoomScaleY9:F

    div-float v76, v5, v6

    .line 1036
    rem-int v71, v56, v33

    .line 1037
    .restart local v71    # "quadrant":I
    div-int v19, v56, v33

    .line 1038
    div-int v62, v71, v52

    .line 1039
    rem-int v61, v71, v46

    .line 1040
    goto/16 :goto_17

    .line 1041
    .end local v71    # "quadrant":I
    :cond_4b
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unkown buffer mode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mBufferMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1056
    .restart local v34    # "i":I
    .restart local v71    # "quadrant":I
    .restart local v80    # "startx":F
    .restart local v81    # "starty":F
    .restart local v91    # "v":Lcom/smartisanos/smengine/math/Vector2f;
    :cond_4c
    invoke-virtual/range {v89 .. v89}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4d

    .line 1057
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    const-string v7, "error ! SHOW_SINGLE_PAGE target location list is empty !!!"

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1060
    :cond_4d
    const/4 v5, 0x1

    move/from16 v0, v33

    if-ne v0, v5, :cond_4e

    .line 1061
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_4e

    sget-object v5, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    const-string v7, "error !!! SHOW_SINGLE_PAGE page_mode_buffer == 1"

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    :cond_4e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v50

    .line 1064
    .restart local v50    # "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1065
    .restart local v13    # "activity_group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/16 v34, 0x0

    :goto_19
    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v34

    if-ge v0, v5, :cond_50

    .line 1066
    move-object/from16 v0, v50

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/smartisanos/launcher/view/Page;

    .line 1067
    .restart local v45    # "page":Lcom/smartisanos/launcher/view/Page;
    div-int v31, v34, v33

    .line 1068
    .local v31, "g":I
    move/from16 v0, v31

    move/from16 v1, v19

    if-ne v0, v1, :cond_4f

    .line 1069
    move-object/from16 v0, v45

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1065
    :goto_1a
    add-int/lit8 v34, v34, 0x1

    goto :goto_19

    .line 1072
    :cond_4f
    invoke-virtual/range {v45 .. v45}, Lcom/smartisanos/launcher/view/Page;->removePageTitle()V

    .line 1073
    invoke-virtual/range {v45 .. v45}, Lcom/smartisanos/launcher/view/Page;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 1074
    invoke-virtual/range {v45 .. v45}, Lcom/smartisanos/launcher/view/Page;->releasePageContent()V

    goto :goto_1a

    .line 1078
    .end local v31    # "g":I
    .end local v45    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_50
    const/16 v34, 0x0

    :goto_1b
    move/from16 v0, v34

    move/from16 v1, v33

    if-ge v0, v1, :cond_1

    .line 1079
    move/from16 v0, v34

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/smartisanos/launcher/view/Page;

    .line 1080
    .restart local v45    # "page":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    sget v6, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v7, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    move-object/from16 v0, v45

    invoke-virtual {v5, v0, v6, v7}, Lcom/smartisanos/launcher/view/PageView;->adjustPageCellPositionAndScale(Lcom/smartisanos/launcher/view/Page;II)V

    .line 1083
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mZoomedPageList:Ljava/util/ArrayList;

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1084
    invoke-virtual/range {v45 .. v45}, Lcom/smartisanos/launcher/view/Page;->initPageContent()V

    .line 1085
    const/4 v5, 0x1

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 1086
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    .restart local v38    # "list":Ljava/util/ArrayList;
    move-object/from16 v0, v38

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1088
    invoke-virtual/range {v45 .. v45}, Lcom/smartisanos/launcher/view/Page;->getAnimation()Lcom/smartisanos/launcher/animations/PageAnimation;

    move-result-object v5

    sget-object v6, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->HIDDEN_PAGE_TITLE:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    const v7, 0x3e8f5c29    # 0.28f

    move-object/from16 v0, v38

    invoke-virtual {v5, v6, v7, v0}, Lcom/smartisanos/launcher/animations/PageAnimation;->handleAnimation(Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;FLjava/util/ArrayList;)V

    .line 1089
    move-object/from16 v0, v89

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Lcom/smartisanos/smengine/math/Vector3f;

    .line 1091
    .restart local v88    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v66, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v66 .. v66}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1092
    .local v66, "posInParentTo":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getPageParentForTranslate()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v82

    .line 1093
    .restart local v82    # "t":Lcom/smartisanos/smengine/math/Transform;
    invoke-virtual/range {v82 .. v82}, Lcom/smartisanos/smengine/math/Transform;->inverse()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v86

    .line 1094
    .restart local v86    # "tinv":Lcom/smartisanos/smengine/math/Transform;
    move-object/from16 v0, v86

    move-object/from16 v1, v88

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/math/Transform;->transformVector(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 1096
    invoke-virtual/range {v45 .. v45}, Lcom/smartisanos/launcher/view/Page;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v29

    .line 1097
    .restart local v29    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v65, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v65 .. v65}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1098
    .local v65, "posInParentFrom":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v86

    move-object/from16 v1, v29

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/math/Transform;->transformVector(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 1101
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, v45

    invoke-direct {v3, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1102
    .restart local v3    # "move_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 1103
    const/16 v5, 0xe

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 1104
    const/4 v6, 0x0

    move-object/from16 v0, v29

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v29

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/4 v9, 0x0

    move-object/from16 v0, v66

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v66

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/4 v12, 0x0

    move-object v5, v3

    invoke-virtual/range {v5 .. v12}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 1105
    const/4 v5, 0x0

    move-object/from16 v0, v85

    invoke-virtual {v0, v5, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1106
    new-instance v4, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, v45

    invoke-direct {v4, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1107
    .restart local v4    # "scale_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 1108
    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 1109
    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    move/from16 v9, v75

    move/from16 v10, v76

    invoke-virtual/range {v4 .. v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 1110
    const/4 v5, 0x0

    move-object/from16 v0, v85

    invoke-virtual {v0, v5, v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1078
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_1b

    .line 873
    .end local v3    # "move_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v4    # "scale_anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v13    # "activity_group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .end local v14    # "allPage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .end local v19    # "current_group_index":I
    .end local v22    # "display_page":Lcom/smartisanos/launcher/view/Page;
    .end local v29    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v33    # "group_size":I
    .end local v34    # "i":I
    .end local v38    # "list":Ljava/util/ArrayList;
    .end local v41    # "mode":I
    .end local v45    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v46    # "pageColumn":I
    .end local v48    # "pageHeight":F
    .end local v50    # "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .end local v52    # "pageRow":I
    .end local v55    # "pageWidth":F
    .end local v56    # "page_index":I
    .end local v61    # "pivotColumn":I
    .end local v62    # "pivotRow":I
    .end local v65    # "posInParentFrom":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v66    # "posInParentTo":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v71    # "quadrant":I
    .end local v75    # "scalex":F
    .end local v76    # "scaley":F
    .end local v80    # "startx":F
    .end local v81    # "starty":F
    .end local v82    # "t":Lcom/smartisanos/smengine/math/Transform;
    .end local v83    # "target_layout":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v86    # "tinv":Lcom/smartisanos/smengine/math/Transform;
    .end local v88    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v89    # "to_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector3f;>;"
    .end local v91    # "v":Lcom/smartisanos/smengine/math/Vector2f;
    :catch_3
    move-exception v5

    goto/16 :goto_e

    .line 597
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public initPageLocation()V
    .locals 17

    .prologue
    .line 81
    const/4 v4, 0x0

    .line 82
    .local v4, "group_size":I
    sget v13, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    const/4 v14, 0x2

    if-eq v13, v14, :cond_0

    sget v13, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    const/4 v14, 0x5

    if-ne v13, v14, :cond_3

    .line 84
    :cond_0
    const/4 v4, 0x4

    .line 89
    :goto_0
    sget-boolean v13, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v13, :cond_1

    sget-object v13, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v14, "DEBUG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "initPageLocation, current MULTI_PAGE_MODE ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static/range {v16 .. v16}, Lcom/smartisanos/launcher/data/Constants;->getModeName(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], SINGLE_PAGE_MODE ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    .line 90
    invoke-static/range {v16 .. v16}, Lcom/smartisanos/launcher/data/Constants;->getModeName(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 89
    invoke-virtual {v13, v14, v15}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_1
    const/4 v13, 0x4

    if-ne v4, v13, :cond_6

    .line 93
    sget v13, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v13}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v9

    .line 94
    .local v9, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector3f;>;"
    iget v13, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    iget v14, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->title_page_spacing:F

    add-float/2addr v13, v14

    iget v14, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    add-float/2addr v13, v14

    iget v14, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_spacing_v:F

    add-float v8, v13, v14

    .line 96
    .local v8, "logic_page_height":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/4 v13, 0x4

    if-ge v5, v13, :cond_4

    .line 97
    rem-int/lit8 v1, v5, 0x2

    .line 98
    .local v1, "column":I
    div-int/lit8 v10, v5, 0x2

    .line 99
    .local v10, "row":I
    new-instance v11, Lcom/smartisanos/smengine/math/Vector3f;

    iget v13, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    const/high16 v14, 0x3f000000    # 0.5f

    iget v15, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    int-to-float v14, v1

    iget v15, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    iget v0, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_spacing_h:F

    move/from16 v16, v0

    add-float v15, v15, v16

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    sget v14, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v14, v14

    iget v15, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    add-float/2addr v14, v15

    iget v15, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    add-float/2addr v14, v15

    iget v15, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->title_page_spacing:F

    add-float/2addr v14, v15

    const/high16 v15, 0x3f000000    # 0.5f

    iget v0, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    int-to-float v15, v10

    mul-float/2addr v15, v8

    add-float/2addr v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v13, v14, v15}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 104
    .local v11, "ve":Lcom/smartisanos/smengine/math/Vector3f;
    sget-boolean v13, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v13, :cond_2

    sget-object v13, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v14, "DEBUG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "initPageLocation "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static/range {v16 .. v16}, Lcom/smartisanos/launcher/data/Constants;->getModeName(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " x ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], y ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], z ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_2
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 86
    .end local v1    # "column":I
    .end local v5    # "i":I
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector3f;>;"
    .end local v8    # "logic_page_height":F
    .end local v9    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v10    # "row":I
    .end local v11    # "ve":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_3
    const/16 v4, 0x9

    goto/16 :goto_0

    .line 107
    .restart local v5    # "i":I
    .restart local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector3f;>;"
    .restart local v8    # "logic_page_height":F
    .restart local v9    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    :cond_4
    sget v13, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v3, v13

    .line 108
    .local v3, "full_width":F
    sget v13, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v2, v13

    .line 109
    .local v2, "full_height":F
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v3, v2}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->convertCoordinate(Ljava/util/ArrayList;FF)Ljava/util/ArrayList;

    move-result-object v6

    .line 110
    const/4 v13, 0x4

    new-array v13, v13, [Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mPagePosition4:[Lcom/smartisanos/smengine/math/Vector3f;

    .line 111
    const/4 v5, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mPagePosition4:[Lcom/smartisanos/smengine/math/Vector3f;

    array-length v13, v13

    if-ge v5, v13, :cond_5

    .line 112
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mPagePosition4:[Lcom/smartisanos/smengine/math/Vector3f;

    new-instance v15, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v15, v13}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(Lcom/smartisanos/smengine/math/Vector3f;)V

    aput-object v15, v14, v5

    .line 111
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 115
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v13, v13, Lcom/smartisanos/launcher/view/PageView;->mPageWorldLocation:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 116
    const/4 v5, 0x0

    :goto_3
    const/4 v13, 0x4

    if-ge v5, v13, :cond_a

    .line 117
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mPagePosition4:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v7, v13, v5

    .line 118
    .local v7, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/PageView;->getWorldMatrix()Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v12

    .line 119
    .local v12, "worldM":Lcom/smartisanos/smengine/math/Matrix4f;
    invoke-virtual {v12, v7}, Lcom/smartisanos/smengine/math/Matrix4f;->mult(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    .line 120
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v13, v13, Lcom/smartisanos/launcher/view/PageView;->mPageWorldLocation:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 122
    .end local v2    # "full_height":F
    .end local v3    # "full_width":F
    .end local v5    # "i":I
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector3f;>;"
    .end local v7    # "loc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v8    # "logic_page_height":F
    .end local v9    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v12    # "worldM":Lcom/smartisanos/smengine/math/Matrix4f;
    :cond_6
    const/16 v13, 0x9

    if-ne v4, v13, :cond_a

    .line 124
    const/4 v13, 0x3

    invoke-static {v13}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v9

    .line 125
    .restart local v9    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .restart local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector3f;>;"
    iget v13, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    iget v14, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->title_page_spacing:F

    add-float/2addr v13, v14

    iget v14, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    add-float/2addr v13, v14

    iget v14, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_spacing_v:F

    add-float v8, v13, v14

    .line 127
    .restart local v8    # "logic_page_height":F
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    const/16 v13, 0x9

    if-ge v5, v13, :cond_8

    .line 128
    rem-int/lit8 v1, v5, 0x3

    .line 129
    .restart local v1    # "column":I
    div-int/lit8 v10, v5, 0x3

    .line 130
    .restart local v10    # "row":I
    new-instance v11, Lcom/smartisanos/smengine/math/Vector3f;

    iget v13, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    const/high16 v14, 0x3f000000    # 0.5f

    iget v15, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    int-to-float v14, v1

    iget v15, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    iget v0, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_spacing_v:F

    move/from16 v16, v0

    add-float v15, v15, v16

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    sget v14, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v14, v14

    iget v15, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    add-float/2addr v14, v15

    iget v15, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_title_height:F

    add-float/2addr v14, v15

    iget v15, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->title_page_spacing:F

    add-float/2addr v14, v15

    const/high16 v15, 0x3f000000    # 0.5f

    iget v0, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    int-to-float v15, v10

    mul-float/2addr v15, v8

    add-float/2addr v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v13, v14, v15}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 135
    .restart local v11    # "ve":Lcom/smartisanos/smengine/math/Vector3f;
    sget-boolean v13, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v13, :cond_7

    sget-object v13, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v14, "DEBUG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "initPageLocation PAGE_9_3X3_MODE x ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], y ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], z ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_7
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 138
    .end local v1    # "column":I
    .end local v10    # "row":I
    .end local v11    # "ve":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_8
    sget v13, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v3, v13

    .line 139
    .restart local v3    # "full_width":F
    sget v13, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v2, v13

    .line 140
    .restart local v2    # "full_height":F
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v3, v2}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->convertCoordinate(Ljava/util/ArrayList;FF)Ljava/util/ArrayList;

    move-result-object v6

    .line 141
    const/16 v13, 0x9

    new-array v13, v13, [Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mPagePosition9:[Lcom/smartisanos/smengine/math/Vector3f;

    .line 142
    const/4 v5, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mPagePosition9:[Lcom/smartisanos/smengine/math/Vector3f;

    array-length v13, v13

    if-ge v5, v13, :cond_9

    .line 143
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mPagePosition9:[Lcom/smartisanos/smengine/math/Vector3f;

    new-instance v15, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v15, v13}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(Lcom/smartisanos/smengine/math/Vector3f;)V

    aput-object v15, v14, v5

    .line 142
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 146
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v13, v13, Lcom/smartisanos/launcher/view/PageView;->mPageWorldLocation:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 147
    const/4 v5, 0x0

    :goto_6
    const/16 v13, 0x9

    if-ge v5, v13, :cond_a

    .line 148
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mPagePosition9:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v7, v13, v5

    .line 149
    .restart local v7    # "loc":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/PageView;->getWorldMatrix()Lcom/smartisanos/smengine/math/Matrix4f;

    move-result-object v12

    .line 150
    .restart local v12    # "worldM":Lcom/smartisanos/smengine/math/Matrix4f;
    invoke-virtual {v12, v7}, Lcom/smartisanos/smengine/math/Matrix4f;->mult(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    .line 151
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v13, v13, Lcom/smartisanos/launcher/view/PageView;->mPageWorldLocation:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 154
    .end local v2    # "full_height":F
    .end local v3    # "full_width":F
    .end local v5    # "i":I
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/math/Vector3f;>;"
    .end local v7    # "loc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v8    # "logic_page_height":F
    .end local v9    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v12    # "worldM":Lcom/smartisanos/smengine/math/Matrix4f;
    :cond_a
    return-void
.end method

.method public isAnimationRunning()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->page_mode_switch_animation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultipageInOneScreen()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->multiPageInOneScreenAlready:Z

    return v0
.end method

.method public switchPageViewByMode(Lcom/smartisanos/launcher/view/Page;)V
    .locals 1
    .param p1, "toTargetPage"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->switchPageViewByMode(Lcom/smartisanos/launcher/view/Page;I)V

    .line 193
    return-void
.end method

.method public switchPageViewByMode(Lcom/smartisanos/launcher/view/Page;I)V
    .locals 21
    .param p1, "toTargetPage"    # Lcom/smartisanos/launcher/view/Page;
    .param p2, "action"    # I

    .prologue
    .line 197
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mNeedForceFinishPageSwitch:Z

    .line 198
    sget-boolean v17, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v17, :cond_0

    sget-object v17, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v18, "DEBUG"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "switchPageViewByMode multiPageInOneScreenAlready="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->multiPageInOneScreenAlready:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->multiPageInOneScreenAlready:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->page_mode_switch_animation:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 202
    sget-boolean v17, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v17, :cond_1

    sget-object v17, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v18, "DEBUG"

    const-string v19, "to single mode return by page_mode_switch_animation is not null"

    invoke-virtual/range {v17 .. v19}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_1
    :goto_0
    return-void

    .line 205
    :cond_2
    new-instance v17, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct/range {v17 .. v17}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/animations/PageViewAnimation;->page_mode_switch_animation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v17, v0

    sget v18, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-virtual/range {v17 .. v18}, Lcom/smartisanos/launcher/view/PageView;->updatePageViewBV(I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/PageView;->createPageObjectNameList()V

    .line 210
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v12, "params":Ljava/util/ArrayList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->page_mode_switch_animation:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v18, v0

    const v19, 0x3e8f5c29    # 0.28f

    const v20, 0x3e8f5c29    # 0.28f

    invoke-virtual/range {v17 .. v20}, Lcom/smartisanos/launcher/view/PageView;->showAppTextAndFlag(Lcom/smartisanos/smengine/AnimationTimeLine;FF)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->page_mode_switch_animation:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    if-eqz p1, :cond_3

    .line 216
    sget-object v17, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v18, "switchPageViewByMode SHOW_SINGLE_PAGE toTargetPage is not null"

    invoke-virtual/range {v17 .. v18}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 219
    :cond_3
    const/4 v7, 0x1

    .line 220
    .local v7, "noneAvailablePage":Z
    const/16 v16, 0x0

    .line 221
    .local v16, "visiblePageIsExist":Z
    const/4 v5, 0x0

    .line 222
    .local v5, "firstVisiblePage":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v3

    .line 223
    .local v3, "allPages":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    .line 224
    .local v14, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v14, :cond_7

    .line 225
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/Page;

    .line 226
    .local v8, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v15

    .line 227
    .local v15, "title":Lcom/smartisanos/launcher/view/TitleView;
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/TitleView;->getBackShadow()Lcom/smartisanos/smengine/RectNode;

    move-result-object v17

    if-eqz v17, :cond_4

    .line 228
    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/TitleView;->getBackShadow()Lcom/smartisanos/smengine/RectNode;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 230
    :cond_4
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Page;->isVisiblePage()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 231
    if-nez v5, :cond_5

    .line 232
    move-object v5, v8

    .line 234
    :cond_5
    const/4 v7, 0x0

    .line 235
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_6

    .line 236
    const/16 v16, 0x1

    .line 224
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 240
    .end local v8    # "p":Lcom/smartisanos/launcher/view/Page;
    .end local v15    # "title":Lcom/smartisanos/launcher/view/TitleView;
    :cond_7
    move v13, v7

    .line 241
    .local v13, "showEmptyPage":Z
    if-eqz v13, :cond_d

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v17, v0

    sget v18, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-virtual/range {v17 .. v18}, Lcom/smartisanos/launcher/view/PageView;->createEmptyScreenByMode(I)Ljava/util/List;

    move-result-object v11

    .line 243
    .local v11, "pages":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_8
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/Page;

    .line 244
    .local v10, "page":Lcom/smartisanos/launcher/view/Page;
    if-eqz v10, :cond_8

    .line 245
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Page;->initPageContent()V

    .line 246
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    goto :goto_2

    .line 249
    .end local v10    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_9
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Page;

    .line 250
    .local v4, "display":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/PageView;->isOverPageCountLimited()Z

    move-result v17

    move/from16 v0, v17

    iput-boolean v0, v4, Lcom/smartisanos/launcher/view/Page;->readOnlyPage:Z

    .line 251
    sget-boolean v17, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v17, :cond_a

    sget-object v17, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v18, "A140"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "show empty page, attribute readOnlyPage="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-boolean v0, v4, Lcom/smartisanos/launcher/view/Page;->readOnlyPage:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/PageView;->setDisplayPageInSingleMode(Lcom/smartisanos/launcher/view/Page;)V

    .line 253
    move-object/from16 p1, v4

    .line 259
    .end local v4    # "display":Lcom/smartisanos/launcher/view/Page;
    .end local v11    # "pages":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Page;>;"
    :cond_b
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v17, Ljava/lang/Boolean;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Ljava/lang/Boolean;-><init>(Z)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v17, Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;->SHOW_SINGLE_PAGE:Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;

    const v18, 0x3e8f5c29    # 0.28f

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v12}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->handleAnimation(Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;FLjava/util/ArrayList;)V

    .line 263
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v17

    sget-object v18, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->REVERT_DOCK_VIEW_SIZE:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    const v19, 0x3e8f5c29    # 0.28f

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v12}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 264
    sget-boolean v17, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v17, :cond_c

    sget-object v17, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v18, "mSomethingIsFloat = true when about to switch page mode"

    invoke-virtual/range {v17 .. v18}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 265
    :cond_c
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v17

    const/16 v18, 0x4

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->page_mode_switch_animation:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v17, v0

    new-instance v18, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/animations/PageViewAnimation$1;-><init>(Lcom/smartisanos/launcher/animations/PageViewAnimation;)V

    invoke-virtual/range {v17 .. v18}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 428
    const/16 v17, 0x1

    move/from16 v0, v17

    move/from16 v1, p2

    if-ne v0, v1, :cond_e

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->page_mode_switch_animation:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    goto/16 :goto_0

    .line 254
    :cond_d
    if-nez v16, :cond_b

    .line 255
    const/4 v13, 0x1

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/PageView;->setDisplayPageInSingleMode(Lcom/smartisanos/launcher/view/Page;)V

    .line 257
    move-object/from16 p1, v5

    goto :goto_3

    .line 431
    :cond_e
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 432
    new-instance v17, Lcom/smartisanos/launcher/animations/PageViewAnimation$2;

    const/16 v18, 0x64

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/PageViewAnimation$2;-><init>(Lcom/smartisanos/launcher/animations/PageViewAnimation;I)V

    const/16 v18, 0x0

    .line 436
    invoke-virtual/range {v17 .. v18}, Lcom/smartisanos/launcher/animations/PageViewAnimation$2;->send(F)V

    goto/16 :goto_0

    .line 440
    .end local v3    # "allPages":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Page;>;"
    .end local v5    # "firstVisiblePage":Lcom/smartisanos/launcher/view/Page;
    .end local v6    # "i":I
    .end local v7    # "noneAvailablePage":Z
    .end local v12    # "params":Ljava/util/ArrayList;
    .end local v13    # "showEmptyPage":Z
    .end local v14    # "size":I
    .end local v16    # "visiblePageIsExist":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->page_mode_switch_animation:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    .line 441
    sget-boolean v17, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v17, :cond_1

    sget-object v17, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v18, "DEBUG"

    const-string v19, "to multi pages : page_mode_switch_animation is not null, so return"

    invoke-virtual/range {v17 .. v19}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 444
    :cond_10
    new-instance v17, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct/range {v17 .. v17}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/animations/PageViewAnimation;->page_mode_switch_animation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v9

    .line 446
    .local v9, "pList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_11
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_12

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/Page;

    .line 447
    .restart local v8    # "p":Lcom/smartisanos/launcher/view/Page;
    iget-boolean v0, v8, Lcom/smartisanos/launcher/view/Page;->readOnlyPage:Z

    move/from16 v18, v0

    if-eqz v18, :cond_11

    .line 448
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/smartisanos/launcher/view/Page;->clear(Z)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/PageView;->getPageParentForTranslate()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/smartisanos/smengine/SceneNode;->removeChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 454
    .end local v8    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/PageView;->mergeInvisiblePageToPageList()V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v17, v0

    sget v18, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-virtual/range {v17 .. v18}, Lcom/smartisanos/launcher/view/PageView;->updatePageViewBV(I)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/PageView;->updatePageIndex()V

    .line 458
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .restart local v12    # "params":Ljava/util/ArrayList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->page_mode_switch_animation:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    new-instance v17, Ljava/lang/Integer;

    sget v18, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-direct/range {v17 .. v18}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    sget-object v17, Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;->SHOW_MULTI_PAGE:Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;

    const v18, 0x3e8f5c29    # 0.28f

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v12}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->handleAnimation(Lcom/smartisanos/launcher/animations/PageViewAnimation$PAGE_VIEW_ANIMATION;FLjava/util/ArrayList;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->pageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->page_mode_switch_animation:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v18, v0

    const v19, 0x3e8f5c29    # 0.28f

    const v20, 0x3e8f5c29    # 0.28f

    invoke-virtual/range {v17 .. v20}, Lcom/smartisanos/launcher/view/PageView;->hideAppTextAndFlag(Lcom/smartisanos/smengine/AnimationTimeLine;FF)V

    .line 464
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v17

    sget-object v18, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->REDUCE_DOCK_VIEW_SIZE:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    const v19, 0x3e8f5c29    # 0.28f

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v12}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 465
    sget-boolean v17, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v17, :cond_13

    sget-object v17, Lcom/smartisanos/launcher/animations/PageViewAnimation;->log:Lcom/smartisanos/launcher/LOG;

    const-string v18, "mSomethingIsFloat = true when about to switch page mode"

    invoke-virtual/range {v17 .. v18}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 466
    :cond_13
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v17

    const/16 v18, 0x4

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->page_mode_switch_animation:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v17, v0

    new-instance v18, Lcom/smartisanos/launcher/animations/PageViewAnimation$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/smartisanos/launcher/animations/PageViewAnimation$3;-><init>(Lcom/smartisanos/launcher/animations/PageViewAnimation;Ljava/util/List;)V

    invoke-virtual/range {v17 .. v18}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 551
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 552
    new-instance v17, Lcom/smartisanos/launcher/animations/PageViewAnimation$4;

    const/16 v18, 0x64

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/animations/PageViewAnimation$4;-><init>(Lcom/smartisanos/launcher/animations/PageViewAnimation;I)V

    const/16 v18, 0x0

    .line 556
    invoke-virtual/range {v17 .. v18}, Lcom/smartisanos/launcher/animations/PageViewAnimation$4;->send(F)V

    goto/16 :goto_0
.end method
