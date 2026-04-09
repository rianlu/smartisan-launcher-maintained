.class public Lcom/smartisanos/launcher/view/SwitchPageNode;
.super Lcom/smartisanos/smengine/SceneNode;
.source "SwitchPageNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/SwitchPageNode$MyTouchListener;,
        Lcom/smartisanos/launcher/view/SwitchPageNode$MySingleTapListener;
    }
.end annotation


# static fields
.field private static final DELTA:F = 20.0f

.field private static final LONG_PRESS_PAGE_LONGPRESS_ANIMATION_DURATION:F = 0.2f

.field private static final LONG_PRESS_PAGE_UP_ANIMATION_DURATION:F = 0.4f

.field private static final LONG_PRESS_PAGE_UP_DISTANCE:I = 0x3c

.field private static final log:Lcom/smartisanos/launcher/LOG;


# instance fields
.field private mAllPage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;"
        }
    .end annotation
.end field

.field private mAllPageLocation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field private mAllPageWorldLocation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationPageIndexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationPageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationPageLocationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentCollidedPage:Lcom/smartisanos/launcher/view/Page;

.field private mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

.field private mDragPage:Lcom/smartisanos/launcher/view/Page;

.field private mDraggedPagePos:Lcom/smartisanos/smengine/math/Vector3f;

.field private mNotificationManager:Lcom/smartisanos/smengine/NotificationManager;

.field private mOnDragPage:Z

.field private mPageBackToCenterAnimationPlaying:Z

.field private mPageLongpressAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

.field private mPageUpAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

.field mPageView:Lcom/smartisanos/launcher/view/PageView;

.field private mPreCollidedPage:Lcom/smartisanos/launcher/view/Page;

.field private mPreX:F

.field private mPreY:F

.field mSelectedCellPageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchAnimationPlaying:Z

.field private mSwitchPageAnimation:Lcom/smartisanos/launcher/view/SwitchPageAnimation;

.field private mSwitchPageAnimationEvent:Lcom/smartisanos/smengine/Event;

.field private mToward:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/SwitchPageNode;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mSelectedCellPageList:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAllPageLocation:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAllPageWorldLocation:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAllPage:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAnimationPageList:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAnimationPageLocationList:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAnimationPageIndexList:Ljava/util/ArrayList;

    .line 50
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mSwitchAnimationPlaying:Z

    .line 51
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageBackToCenterAnimationPlaying:Z

    .line 52
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mDraggedPagePos:Lcom/smartisanos/smengine/math/Vector3f;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mSwitchPageAnimationEvent:Lcom/smartisanos/smengine/Event;

    .line 579
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mOnDragPage:Z

    .line 67
    new-instance v0, Lcom/smartisanos/launcher/view/SwitchPageNode$MyTouchListener;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/SwitchPageNode$MyTouchListener;-><init>(Lcom/smartisanos/launcher/view/SwitchPageNode;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->setTouchListener(Lcom/smartisanos/smengine/SceneNode$TouchListener;)V

    .line 68
    new-instance v0, Lcom/smartisanos/launcher/view/SwitchPageNode$MySingleTapListener;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/SwitchPageNode$MySingleTapListener;-><init>(Lcom/smartisanos/launcher/view/SwitchPageNode;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->setSingleTapListener(Lcom/smartisanos/smengine/SceneNode$SingleTapListener;)V

    .line 70
    return-void
.end method

.method private SwitchPageAnimation()V
    .locals 10

    .prologue
    .line 112
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mSwitchPageAnimation:Lcom/smartisanos/launcher/view/SwitchPageAnimation;

    if-nez v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->generateDataList()V

    .line 115
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAllPage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentCollidedPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 116
    .local v7, "collidedPageIndex":I
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAllPage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 117
    .local v9, "pageIndex":I
    new-instance v4, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 118
    .local v4, "pressedLoc":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAllPageLocation:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/smengine/math/Vector3f;

    .line 119
    .local v8, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    iget v0, v8, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, v8, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v2, v8, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v4, v0, v1, v2}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 121
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAllPage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAllPage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAllPage:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/PageView;->updatePageList(Ljava/util/ArrayList;)V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mSwitchAnimationPlaying:Z

    .line 128
    new-instance v0, Lcom/smartisanos/launcher/view/SwitchPageAnimation;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAnimationPageList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAnimationPageIndexList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mToward:I

    new-instance v6, Lcom/smartisanos/launcher/view/SwitchPageNode$2;

    invoke-direct {v6, p0}, Lcom/smartisanos/launcher/view/SwitchPageNode$2;-><init>(Lcom/smartisanos/launcher/view/SwitchPageNode;)V

    invoke-direct/range {v0 .. v6}, Lcom/smartisanos/launcher/view/SwitchPageAnimation;-><init>(Lcom/smartisanos/launcher/view/PageView;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/smartisanos/smengine/math/Vector3f;ILcom/smartisanos/smengine/Animation$AnimationListener;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mSwitchPageAnimation:Lcom/smartisanos/launcher/view/SwitchPageAnimation;

    .line 205
    .end local v4    # "pressedLoc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v7    # "collidedPageIndex":I
    .end local v8    # "loc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v9    # "pageIndex":I
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/launcher/view/SwitchPageNode;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SwitchPageNode;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->SwitchPageAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/view/SwitchPageNode;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SwitchPageNode;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAnimationPageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/smartisanos/launcher/view/SwitchPageNode;)Lcom/smartisanos/launcher/view/Page;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SwitchPageNode;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/smartisanos/launcher/view/SwitchPageNode;Lcom/smartisanos/launcher/view/Page;)Lcom/smartisanos/launcher/view/Page;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SwitchPageNode;
    .param p1, "x1"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/smartisanos/launcher/view/SwitchPageNode;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SwitchPageNode;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAllPage:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/smartisanos/launcher/view/SwitchPageNode;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SwitchPageNode;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->cleanAllPostEvent()V

    return-void
.end method

.method static synthetic access$1300(Lcom/smartisanos/launcher/view/SwitchPageNode;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SwitchPageNode;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/SwitchPageNode;->setUseGaussianEffect(Z)V

    return-void
.end method

.method static synthetic access$1402(Lcom/smartisanos/launcher/view/SwitchPageNode;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SwitchPageNode;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageBackToCenterAnimationPlaying:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/smartisanos/launcher/view/SwitchPageNode;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SwitchPageNode;
    .param p1, "x1"    # Lcom/smartisanos/smengine/AnimationTimeLine;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageUpAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/smartisanos/launcher/view/SwitchPageNode;)Lcom/smartisanos/launcher/view/Page;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SwitchPageNode;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mDragPage:Lcom/smartisanos/launcher/view/Page;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/smartisanos/launcher/view/SwitchPageNode;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SwitchPageNode;
    .param p1, "x1"    # Lcom/smartisanos/smengine/AnimationTimeLine;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageLongpressAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object p1
.end method

.method static synthetic access$200(Lcom/smartisanos/launcher/view/SwitchPageNode;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SwitchPageNode;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAnimationPageIndexList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/smartisanos/launcher/view/SwitchPageNode;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SwitchPageNode;

    .prologue
    .line 31
    iget v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mToward:I

    return v0
.end method

.method static synthetic access$400(Lcom/smartisanos/launcher/view/SwitchPageNode;)Lcom/smartisanos/launcher/view/SwitchPageAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SwitchPageNode;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mSwitchPageAnimation:Lcom/smartisanos/launcher/view/SwitchPageAnimation;

    return-object v0
.end method

.method static synthetic access$402(Lcom/smartisanos/launcher/view/SwitchPageNode;Lcom/smartisanos/launcher/view/SwitchPageAnimation;)Lcom/smartisanos/launcher/view/SwitchPageAnimation;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SwitchPageNode;
    .param p1, "x1"    # Lcom/smartisanos/launcher/view/SwitchPageAnimation;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mSwitchPageAnimation:Lcom/smartisanos/launcher/view/SwitchPageAnimation;

    return-object p1
.end method

.method static synthetic access$502(Lcom/smartisanos/launcher/view/SwitchPageNode;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SwitchPageNode;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mSwitchAnimationPlaying:Z

    return p1
.end method

.method static synthetic access$602(Lcom/smartisanos/launcher/view/SwitchPageNode;Lcom/smartisanos/launcher/view/Page;)Lcom/smartisanos/launcher/view/Page;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SwitchPageNode;
    .param p1, "x1"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPreCollidedPage:Lcom/smartisanos/launcher/view/Page;

    return-object p1
.end method

.method static synthetic access$700()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/smartisanos/launcher/view/SwitchPageNode;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$800(Lcom/smartisanos/launcher/view/SwitchPageNode;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SwitchPageNode;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->forceCollideWith()V

    return-void
.end method

.method static synthetic access$900(Lcom/smartisanos/launcher/view/SwitchPageNode;)Lcom/smartisanos/smengine/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/SwitchPageNode;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->getNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v0

    return-object v0
.end method

.method private canChangeScreen(I)Z
    .locals 5
    .param p1, "toward"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 556
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex()I

    move-result v0

    .line 557
    .local v0, "currentScreenIndex":I
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getScreenCount()I

    move-result v1

    .line 558
    .local v1, "screenCount":I
    if-nez v0, :cond_1

    const/4 v4, -0x1

    if-ne p1, v4, :cond_1

    .line 570
    :cond_0
    :goto_0
    return v2

    .line 564
    :cond_1
    add-int/lit8 v4, v1, -0x1

    if-ne v0, v4, :cond_2

    if-eq p1, v3, :cond_0

    :cond_2
    move v2, v3

    .line 570
    goto :goto_0
.end method

.method private cleanAllPostEvent()V
    .locals 2

    .prologue
    .line 314
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mSwitchPageAnimationEvent:Lcom/smartisanos/smengine/Event;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/EventManager;->removeEvent(Lcom/smartisanos/smengine/Event;)V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mSwitchPageAnimationEvent:Lcom/smartisanos/smengine/Event;

    .line 316
    return-void
.end method

.method private createSwitchPageAnimationEvent()Lcom/smartisanos/smengine/Event;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/smartisanos/launcher/view/SwitchPageNode$1;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/view/SwitchPageNode$1;-><init>(Lcom/smartisanos/launcher/view/SwitchPageNode;I)V

    .line 90
    .local v0, "e":Lcom/smartisanos/smengine/Event;
    return-object v0
.end method

.method private forceCollideWith()V
    .locals 13

    .prologue
    const/high16 v12, 0x41a00000    # 20.0f

    .line 252
    iget-object v9, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/PageView;->getAllPagesInWindow()Ljava/util/ArrayList;

    move-result-object v0

    .line 253
    .local v0, "all_display_page":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    sget-object v9, Lcom/smartisanos/launcher/view/SwitchPageNode;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "### page in window size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 256
    iget v6, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPreX:F

    .line 257
    .local v6, "screenX":F
    iget v7, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPreY:F

    .line 259
    .local v7, "screenY":F
    cmpg-float v9, v6, v12

    if-gez v9, :cond_0

    .line 260
    const/high16 v6, 0x41a00000    # 20.0f

    .line 262
    :cond_0
    sget v9, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v9, v9

    sub-float/2addr v9, v12

    cmpl-float v9, v6, v9

    if-lez v9, :cond_1

    .line 263
    sget v9, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v9, v9

    sub-float v6, v9, v12

    .line 265
    :cond_1
    sget-object v9, Lcom/smartisanos/launcher/view/SwitchPageNode;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "### screenX = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " screenY = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 266
    new-instance v2, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 267
    .local v2, "fingerPos":Lcom/smartisanos/smengine/math/Vector3f;
    sget v9, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v9, v9

    sget v10, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v10, v10

    invoke-static {v6, v7, v9, v10, v2}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 269
    new-instance v5, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v5}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 270
    .local v5, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v9, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v9, v5}, Lcom/smartisanos/launcher/view/Page;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 271
    iget-object v9, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mDraggedPagePos:Lcom/smartisanos/smengine/math/Vector3f;

    iget v10, v5, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v11, v5, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 273
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentCollidedPage:Lcom/smartisanos/launcher/view/Page;

    .line 274
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_5

    .line 275
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Page;

    .line 276
    .local v4, "pg":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->getWorldBoundingVolume()Lcom/smartisanos/smengine/BoundingVolume;

    move-result-object v1

    .line 277
    .local v1, "bv":Lcom/smartisanos/smengine/BoundingVolume;
    const/4 v8, 0x0

    .line 278
    .local v8, "titleBV":Lcom/smartisanos/smengine/BoundingVolume;
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 279
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/TitleView;->getWorldBoundingVolume()Lcom/smartisanos/smengine/BoundingVolume;

    move-result-object v8

    .line 282
    :cond_2
    iget-object v9, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mDraggedPagePos:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v1, v9}, Lcom/smartisanos/smengine/BoundingVolume;->isPointInBoundingVolume(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz v8, :cond_4

    iget-object v9, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mDraggedPagePos:Lcom/smartisanos/smengine/math/Vector3f;

    .line 283
    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/BoundingVolume;->isPointInBoundingVolume(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 286
    :cond_3
    iput-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentCollidedPage:Lcom/smartisanos/launcher/view/Page;

    .line 287
    iget-object v9, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentCollidedPage:Lcom/smartisanos/launcher/view/Page;

    iget-object v10, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    if-ne v9, v10, :cond_5

    .line 274
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 294
    .end local v1    # "bv":Lcom/smartisanos/smengine/BoundingVolume;
    .end local v4    # "pg":Lcom/smartisanos/launcher/view/Page;
    .end local v8    # "titleBV":Lcom/smartisanos/smengine/BoundingVolume;
    :cond_5
    iget-object v9, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentCollidedPage:Lcom/smartisanos/launcher/view/Page;

    if-nez v9, :cond_8

    .line 297
    sget-boolean v9, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v9, :cond_6

    sget-object v9, Lcom/smartisanos/launcher/view/SwitchPageNode;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "DEBUG"

    const-string v11, "mCurrentCollidedPage == null"

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_6
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->cleanAllPostEvent()V

    .line 311
    :cond_7
    :goto_1
    return-void

    .line 303
    :cond_8
    iget-object v9, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentCollidedPage:Lcom/smartisanos/launcher/view/Page;

    iget-object v10, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    if-eq v9, v10, :cond_7

    .line 305
    iget-boolean v9, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mSwitchAnimationPlaying:Z

    if-nez v9, :cond_7

    .line 306
    iget-object v9, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentCollidedPage:Lcom/smartisanos/launcher/view/Page;

    iput-object v9, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPreCollidedPage:Lcom/smartisanos/launcher/view/Page;

    .line 307
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->SwitchPageAnimation()V

    goto :goto_1
.end method

.method private generateDataList()V
    .locals 6

    .prologue
    .line 320
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAnimationPageList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 322
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAnimationPageIndexList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 324
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAllPage:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentCollidedPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 325
    .local v0, "collidedIndex":I
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAllPage:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 327
    .local v1, "currentLongPressedPageIndex":I
    if-le v0, v1, :cond_0

    .line 328
    const/4 v4, 0x0

    iput v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mToward:I

    .line 330
    add-int/lit8 v2, v1, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, v0, :cond_2

    .line 331
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAllPage:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Page;

    .line 332
    .local v3, "p":Lcom/smartisanos/launcher/view/Page;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAnimationPageList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAnimationPageIndexList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAllPage:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    .end local v2    # "i":I
    .end local v3    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    const/4 v4, 0x1

    iput v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mToward:I

    .line 339
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentCollidedPage:Lcom/smartisanos/launcher/view/Page;

    if-nez v4, :cond_1

    .line 340
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, " ### generateDataList, mcurrentCollidePage == null"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 342
    :cond_1
    add-int/lit8 v2, v1, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-lt v2, v0, :cond_2

    .line 343
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAllPage:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Page;

    .line 344
    .restart local v3    # "p":Lcom/smartisanos/launcher/view/Page;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAnimationPageList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAnimationPageIndexList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAllPage:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 349
    .end local v3    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_2
    return-void
.end method

.method private getNotificationManager()Lcom/smartisanos/smengine/NotificationManager;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mNotificationManager:Lcom/smartisanos/smengine/NotificationManager;

    if-nez v0, :cond_0

    .line 105
    invoke-static {}, Lcom/smartisanos/smengine/NotificationManager;->getCurrentNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mNotificationManager:Lcom/smartisanos/smengine/NotificationManager;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mNotificationManager:Lcom/smartisanos/smengine/NotificationManager;

    return-object v0
.end method

.method private handleLongPress()V
    .locals 0

    .prologue
    .line 432
    return-void
.end method

.method private saveLocation()V
    .locals 6

    .prologue
    .line 414
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getVisiblePageCount()I

    move-result v1

    .line 415
    .local v1, "pageCount":I
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAllPage:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 416
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAllPageLocation:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 417
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAllPageWorldLocation:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 419
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 420
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v4, v0}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v2

    .line 421
    .local v2, "pg":Lcom/smartisanos/launcher/view/Page;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAllPage:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAllPageLocation:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    new-instance v3, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 425
    .local v3, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/Page;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 426
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAllPageWorldLocation:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    .end local v2    # "pg":Lcom/smartisanos/launcher/view/Page;
    .end local v3    # "pos":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    return-void
.end method

.method private setUseGaussianEffect(Z)V
    .locals 8
    .param p1, "use"    # Z

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 627
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/smartisanos/launcher/view/MainView;->setUsePostEffect(Z)V

    .line 628
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v6

    if-nez p1, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Lcom/smartisanos/launcher/view/TitleView;->setUseStaticGaussian(Z)V

    .line 630
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    check-cast v3, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    if-nez p1, :cond_1

    move v6, v4

    :goto_1
    invoke-virtual {v3, v6}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setUseStaticGaussian(Z)V

    .line 631
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 632
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/Cell;->setPostEffectQueue(Z)V

    goto :goto_2

    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    move v3, v5

    .line 628
    goto :goto_0

    :cond_1
    move v6, v5

    .line 630
    goto :goto_1

    .line 634
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v2

    .line 635
    .local v2, "pl":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    if-eqz p1, :cond_4

    .line 636
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3, v7}, Lcom/smartisanos/launcher/view/Page;->setRenderQueue(I)V

    .line 637
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 638
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 639
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    iget v4, v2, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_IN_SWITCH_PAGE_MODE_GAUSSIAN_BATCH_SHADOW_LAYER:I

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 640
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 641
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getPageCover()Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    .line 642
    .local v1, "cover":Lcom/smartisanos/smengine/RectNode;
    if-eqz v1, :cond_3

    .line 643
    invoke-virtual {v1, v7}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 655
    :cond_3
    :goto_3
    return-void

    .line 646
    .end local v1    # "cover":Lcom/smartisanos/smengine/RectNode;
    :cond_4
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/Page;->setRenderQueue(I)V

    .line 647
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    iget v6, v2, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_BATCH_RENDER_OUTER_SHADOW:I

    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 648
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 649
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 650
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getPageCover()Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    .line 651
    .restart local v1    # "cover":Lcom/smartisanos/smengine/RectNode;
    if-eqz v1, :cond_3

    .line 652
    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    goto :goto_3
.end method

.method private whichSide(F)I
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 437
    const/high16 v0, 0x42480000    # 50.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 438
    const/4 v0, -0x1

    .line 444
    :goto_0
    return v0

    .line 441
    :cond_0
    sget v0, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    add-int/lit8 v0, v0, -0x32

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 442
    const/4 v0, 0x1

    goto :goto_0

    .line 444
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public endDragPage()V
    .locals 2

    .prologue
    .line 775
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mOnDragPage:Z

    if-nez v0, :cond_1

    .line 782
    :cond_0
    :goto_0
    return-void

    .line 778
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mOnDragPage:Z

    .line 779
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/smartisanos/smengine/SceneNode$TouchListener;->onUp(Lcom/smartisanos/smengine/TouchEvent;)V

    goto :goto_0
.end method

.method public forceFinishBackToCenterAnimation()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageUpAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageUpAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 82
    :cond_0
    return-void
.end method

.method public forceFinishPageLongPressAnimation()V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageLongpressAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageLongpressAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 503
    :cond_0
    return-void
.end method

.method public getCurrentLongPressedPage()Lcom/smartisanos/launcher/view/Page;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    return-object v0
.end method

.method public initDragPage()V
    .locals 0

    .prologue
    .line 659
    return-void
.end method

.method public isPageBackToCenterAnimationFinish()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageBackToCenterAnimationPlaying:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwitchPageAnimationFinish()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mSwitchAnimationPlaying:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z
    .locals 3
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 507
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->isUserInteractionEnable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 551
    :cond_0
    :goto_0
    return v0

    .line 510
    :cond_1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getPointerId()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getPointerNum()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 511
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 514
    :sswitch_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    if-eqz v2, :cond_0

    .line 515
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    invoke-interface {v0, p1}, Lcom/smartisanos/smengine/SceneNode$TouchListener;->onMove(Lcom/smartisanos/smengine/TouchEvent;)V

    move v0, v1

    .line 516
    goto :goto_0

    .line 522
    :sswitch_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    if-eqz v2, :cond_0

    .line 523
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    invoke-interface {v0, p1}, Lcom/smartisanos/smengine/SceneNode$TouchListener;->onMove(Lcom/smartisanos/smengine/TouchEvent;)V

    move v0, v1

    .line 524
    goto :goto_0

    .line 530
    :sswitch_2
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->handleLongPress()V

    goto :goto_0

    .line 535
    :sswitch_3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mSingleTapListener:Lcom/smartisanos/smengine/SceneNode$SingleTapListener;

    if-eqz v1, :cond_0

    .line 536
    iget-object v1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mSingleTapListener:Lcom/smartisanos/smengine/SceneNode$SingleTapListener;

    invoke-interface {v1, p1}, Lcom/smartisanos/smengine/SceneNode$SingleTapListener;->onClick(Lcom/smartisanos/smengine/TouchEvent;)V

    goto :goto_0

    .line 543
    :sswitch_4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    if-eqz v2, :cond_0

    .line 544
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    invoke-interface {v0, p1}, Lcom/smartisanos/smengine/SceneNode$TouchListener;->onUp(Lcom/smartisanos/smengine/TouchEvent;)V

    move v0, v1

    .line 545
    goto :goto_0

    .line 511
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0x6 -> :sswitch_3
        0xc -> :sswitch_4
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public pageBackToCenterAnimation()V
    .locals 13

    .prologue
    const v12, 0x3ecccccd    # 0.4f

    const/4 v11, 0x0

    .line 352
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->lockTouchEvent()V

    .line 353
    iget-object v1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAllPage:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 355
    .local v8, "index":I
    iget-object v1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mAllPageLocation:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/smengine/math/Vector3f;

    .line 356
    .local v10, "newLoc":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v1, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageUpAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 357
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 358
    .local v0, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual {v0, v12}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 359
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 361
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageBackToCenterAnimationPlaying:Z

    .line 363
    iget-object v1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v9

    .line 364
    .local v9, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v1, 0x0

    iget v2, v9, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, v9, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, v9, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v5, v10, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v6, v10, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v7, v10, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 366
    iget-object v1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageUpAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1, v2, v12, v11}, Lcom/smartisanos/launcher/view/Page;->hidePageShadow(Lcom/smartisanos/smengine/AnimationTimeLine;FF)V

    .line 368
    iget-object v1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageUpAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1, v11, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 370
    iget-object v1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageUpAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    new-instance v2, Lcom/smartisanos/launcher/view/SwitchPageNode$3;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/view/SwitchPageNode$3;-><init>(Lcom/smartisanos/launcher/view/SwitchPageNode;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 409
    iget-object v1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageUpAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 411
    return-void
.end method

.method public pageLongPressAnimation(FF)V
    .locals 20
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    .line 449
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageLongpressAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v4, :cond_0

    .line 450
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageLongpressAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 453
    :cond_0
    new-instance v4, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v4}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageLongpressAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 455
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 456
    .local v3, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v4, 0x3e4ccccd    # 0.2f

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 457
    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 459
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/CameraManager;->getMainCamera()Lcom/smartisanos/smengine/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Camera;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    .line 461
    .local v11, "cameraLoc":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v12, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v12}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 462
    .local v12, "from":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/smartisanos/launcher/view/SwitchPageNode;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v13

    .line 465
    .local v13, "localF":Lcom/smartisanos/smengine/math/Vector3f;
    iget v4, v11, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    const/high16 v5, 0x42700000    # 60.0f

    sub-float/2addr v4, v5

    iget v5, v11, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    div-float v15, v4, v5

    .line 466
    .local v15, "resultx":F
    iget v4, v11, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    const/high16 v5, 0x42700000    # 60.0f

    sub-float/2addr v4, v5

    iget v5, v11, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    div-float v16, v4, v5

    .line 468
    .local v16, "resulty":F
    new-instance v19, Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v12, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    mul-float/2addr v4, v15

    iget v5, v12, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float v5, v5, v16

    iget v6, v12, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    const/high16 v7, 0x42700000    # 60.0f

    add-float/2addr v6, v7

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v5, v6}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 470
    .local v19, "to":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v17

    .line 471
    .local v17, "t":Lcom/smartisanos/smengine/math/Transform;
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/smengine/math/Transform;->inverse()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v18

    .line 472
    .local v18, "tinv":Lcom/smartisanos/smengine/math/Transform;
    new-instance v14, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v14}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 473
    .local v14, "result":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Lcom/smartisanos/smengine/math/Transform;->transformVector(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 475
    const/4 v4, 0x0

    iget v5, v13, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v6, v13, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v7, v13, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v8, v14, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v9, v14, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v10, v14, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v3 .. v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 478
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageLongpressAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageLongpressAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    new-instance v5, Lcom/smartisanos/launcher/view/SwitchPageNode$4;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v5, v0, v1, v2}, Lcom/smartisanos/launcher/view/SwitchPageNode$4;-><init>(Lcom/smartisanos/launcher/view/SwitchPageNode;FF)V

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 497
    return-void
.end method

.method public setCurrentLongPressedPage(Lcom/smartisanos/launcher/view/Page;)V
    .locals 0
    .param p1, "p"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    .line 99
    return-void
.end method

.method public setPageView(Lcom/smartisanos/launcher/view/PageView;)V
    .locals 0
    .param p1, "pv"    # Lcom/smartisanos/launcher/view/PageView;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    .line 96
    return-void
.end method

.method public startDragPage(Lcom/smartisanos/launcher/view/Page;FF)Z
    .locals 9
    .param p1, "page"    # Lcom/smartisanos/launcher/view/Page;
    .param p2, "touchX"    # F
    .param p3, "touchY"    # F

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 582
    iput v8, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPreX:F

    .line 583
    iput v8, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPreY:F

    .line 584
    iput-boolean v7, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mOnDragPage:Z

    .line 585
    iput-object p1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mDragPage:Lcom/smartisanos/launcher/view/Page;

    .line 586
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mDragPage:Lcom/smartisanos/launcher/view/Page;

    iput-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    .line 587
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v7}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 589
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 594
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/World;->getInputManager()Lcom/smartisanos/smengine/InputManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/InputManager;->setBatchMode(Z)V

    .line 596
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->saveLocation()V

    .line 598
    new-instance v3, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 599
    .local v3, "worldPos":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mDragPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4, v3}, Lcom/smartisanos/launcher/view/Page;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 601
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getWorldTransform()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v1

    .line 602
    .local v1, "t":Lcom/smartisanos/smengine/math/Transform;
    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Transform;->inverse()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v2

    .line 603
    .local v2, "tinv":Lcom/smartisanos/smengine/math/Transform;
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 604
    .local v0, "result":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v2, v3, v0}, Lcom/smartisanos/smengine/math/Transform;->transformVector(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    .line 605
    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v5, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {p0, v4, v5, v6}, Lcom/smartisanos/launcher/view/SwitchPageNode;->setTranslate(FFF)V

    .line 606
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->updateGeometricState()V

    .line 609
    invoke-virtual {p0, p2, p3}, Lcom/smartisanos/launcher/view/SwitchPageNode;->pageLongPressAnimation(FF)V

    .line 611
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageLongpressAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const v6, 0x3e4ccccd    # 0.2f

    invoke-virtual {v4, v5, v6, v8}, Lcom/smartisanos/launcher/view/Page;->showPageShadow(Lcom/smartisanos/smengine/AnimationTimeLine;FF)V

    .line 614
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mDragPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4, v7}, Lcom/smartisanos/launcher/view/Page;->setLayerStatus(I)V

    .line 616
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v4, :cond_0

    .line 617
    invoke-direct {p0, v7}, Lcom/smartisanos/launcher/view/SwitchPageNode;->setUseGaussianEffect(Z)V

    .line 620
    :cond_0
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mDragPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4, p0}, Lcom/smartisanos/launcher/view/Page;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 622
    iget-object v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageLongpressAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 623
    return v7
.end method

.method public updateDragPage(FFFF)V
    .locals 22
    .param p1, "changeX"    # F
    .param p2, "changeY"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 662
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mOnDragPage:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPreX:F

    .line 667
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPreY:F

    .line 669
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mDragPointX:F

    move/from16 v18, v0

    sub-float v18, p3, v18

    sget v19, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v6, v18, v19

    .line 670
    .local v6, "curX":F
    sget v18, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mDragPointY:F

    move/from16 v19, v0

    add-float v19, v19, p4

    sub-float v7, v18, v19

    .line 672
    .local v7, "curY":F
    sget v18, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v7, v18

    if-lez v18, :cond_5

    .line 673
    sget v18, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v7, v0

    .line 678
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v14

    .line 679
    .local v14, "t":Lcom/smartisanos/smengine/math/Transform;
    invoke-virtual {v14}, Lcom/smartisanos/smengine/math/Transform;->inverse()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v16

    .line 680
    .local v16, "tinv":Lcom/smartisanos/smengine/math/Transform;
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v15

    .line 681
    .local v15, "tempVars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v13, v15, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    .line 682
    .local v13, "resultL":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v9, v15, Lcom/smartisanos/smengine/util/TempVars;->vect2:Lcom/smartisanos/smengine/math/Vector3f;

    .line 683
    .local v9, "inputL":Lcom/smartisanos/smengine/math/Vector3f;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v6, v7, v0}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 684
    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v13}, Lcom/smartisanos/smengine/math/Transform;->transformVector(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v13

    .line 685
    iget v0, v13, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v18, v0

    iget v0, v13, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v19, v0

    const/high16 v20, 0x42700000    # 60.0f

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/launcher/view/SwitchPageNode;->setTranslate(FFF)V

    .line 686
    invoke-virtual {v15}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->updateGeometricState()V

    .line 689
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/SwitchPageNode;->whichSide(F)I

    move-result v12

    .line 691
    .local v12, "result":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mSwitchAnimationPlaying:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageBackToCenterAnimationPlaying:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 692
    if-eqz v12, :cond_6

    .line 694
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->cleanAllPostEvent()V

    .line 700
    :cond_3
    :goto_2
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/smartisanos/launcher/view/PageView;->changeScreen(I)V

    .line 703
    :cond_4
    if-eqz v12, :cond_7

    .line 704
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPreCollidedPage:Lcom/smartisanos/launcher/view/Page;

    goto/16 :goto_0

    .line 674
    .end local v9    # "inputL":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v12    # "result":I
    .end local v13    # "resultL":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v14    # "t":Lcom/smartisanos/smengine/math/Transform;
    .end local v15    # "tempVars":Lcom/smartisanos/smengine/util/TempVars;
    .end local v16    # "tinv":Lcom/smartisanos/smengine/math/Transform;
    :cond_5
    sget v18, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v7, v18

    if-gez v18, :cond_2

    .line 675
    sget v18, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v7, v0

    goto/16 :goto_1

    .line 695
    .restart local v9    # "inputL":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v12    # "result":I
    .restart local v13    # "resultL":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v14    # "t":Lcom/smartisanos/smengine/math/Transform;
    .restart local v15    # "tempVars":Lcom/smartisanos/smengine/util/TempVars;
    .restart local v16    # "tinv":Lcom/smartisanos/smengine/math/Transform;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/AnimationController;->isReceivedChangeScreenNotify()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 697
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPreCollidedPage:Lcom/smartisanos/launcher/view/Page;

    goto :goto_2

    .line 710
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/PageView;->getAllPagesInWindow()Ljava/util/ArrayList;

    move-result-object v4

    .line 712
    .local v4, "all_display_page":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    new-instance v11, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v11}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 713
    .local v11, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/smartisanos/launcher/view/Page;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mDraggedPagePos:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v18, v0

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v19, v0

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 716
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentCollidedPage:Lcom/smartisanos/launcher/view/Page;

    .line 717
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_c

    .line 718
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/Page;

    .line 719
    .local v10, "pg":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Page;->getWorldBoundingVolume()Lcom/smartisanos/smengine/BoundingVolume;

    move-result-object v5

    .line 720
    .local v5, "bv":Lcom/smartisanos/smengine/BoundingVolume;
    const/16 v17, 0x0

    .line 721
    .local v17, "titleBV":Lcom/smartisanos/smengine/BoundingVolume;
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v18

    if-eqz v18, :cond_8

    .line 722
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/TitleView;->getWorldBoundingVolume()Lcom/smartisanos/smengine/BoundingVolume;

    move-result-object v17

    .line 724
    :cond_8
    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mDraggedPagePos:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/BoundingVolume;->isPointInBoundingVolume(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v18

    if-nez v18, :cond_a

    :cond_9
    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mDraggedPagePos:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v18, v0

    .line 725
    invoke-virtual/range {v17 .. v18}, Lcom/smartisanos/smengine/BoundingVolume;->isPointInBoundingVolume(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 726
    :cond_a
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentCollidedPage:Lcom/smartisanos/launcher/view/Page;

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentCollidedPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 717
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 746
    .end local v5    # "bv":Lcom/smartisanos/smengine/BoundingVolume;
    .end local v10    # "pg":Lcom/smartisanos/launcher/view/Page;
    .end local v17    # "titleBV":Lcom/smartisanos/smengine/BoundingVolume;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentCollidedPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v18, v0

    if-nez v18, :cond_e

    .line 749
    sget-boolean v18, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v18, :cond_d

    sget-object v18, Lcom/smartisanos/launcher/view/SwitchPageNode;->log:Lcom/smartisanos/launcher/LOG;

    const-string v19, "DEBUG"

    const-string v20, "mCurrentCollidedPage == null"

    invoke-virtual/range {v18 .. v20}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->cleanAllPostEvent()V

    goto/16 :goto_0

    .line 755
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentCollidedPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentLongPressedPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPreCollidedPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentCollidedPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_f

    .line 757
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->cleanAllPostEvent()V

    .line 758
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mSwitchAnimationPlaying:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPageBackToCenterAnimationPlaying:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v18

    if-nez v18, :cond_0

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mCurrentCollidedPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/view/SwitchPageNode;->mPreCollidedPage:Lcom/smartisanos/launcher/view/Page;

    .line 760
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->createSwitchPageAnimationEvent()Lcom/smartisanos/smengine/Event;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/view/SwitchPageNode;->mSwitchPageAnimationEvent:Lcom/smartisanos/smengine/Event;

    .line 761
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/SwitchPageNode;->mSwitchPageAnimationEvent:Lcom/smartisanos/smengine/Event;

    move-object/from16 v19, v0

    const v20, 0x3e99999a    # 0.3f

    invoke-virtual/range {v18 .. v20}, Lcom/smartisanos/smengine/EventManager;->sendEvent(Lcom/smartisanos/smengine/Event;F)V

    goto/16 :goto_0

    .line 764
    :cond_f
    sget-boolean v18, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v18, :cond_0

    sget-object v18, Lcom/smartisanos/launcher/view/SwitchPageNode;->log:Lcom/smartisanos/launcher/LOG;

    const-string v19, "### mPreCollidedPage == mCurrentCollidedPage ...."

    invoke-virtual/range {v18 .. v19}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
