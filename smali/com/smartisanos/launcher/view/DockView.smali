.class public Lcom/smartisanos/launcher/view/DockView;
.super Lcom/smartisanos/smengine/SceneNode;
.source "DockView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/DockView$MySingleTapListener;,
        Lcom/smartisanos/launcher/view/DockView$MyTouchListener;,
        Lcom/smartisanos/launcher/view/DockView$MyLongPressListener;,
        Lcom/smartisanos/launcher/view/DockView$DockCollideListener;,
        Lcom/smartisanos/launcher/view/DockView$Component;
    }
.end annotation


# static fields
.field private static final log:Lcom/smartisanos/launcher/LOG;


# instance fields
.field private animation:Lcom/smartisanos/launcher/animations/DockViewAnimation;

.field public cellsLoc:[Lcom/smartisanos/smengine/math/Vector3f;

.field private collidedUpCell:Lcom/smartisanos/launcher/view/Cell;

.field public dockCellAreaRect:Lcom/smartisanos/smengine/BoundingRect;

.field public mApplyCategorySortButton:Lcom/smartisanos/smengine/RectNode;

.field public mApplyColorSortButton:Lcom/smartisanos/smengine/RectNode;

.field public mApplyInstallTimeSortButton:Lcom/smartisanos/smengine/RectNode;

.field public mApplyUsageFrequencySortButton:Lcom/smartisanos/smengine/RectNode;

.field private mBackGaussianNode:Lcom/smartisanos/smengine/RectNode;

.field private mBackMeshName:Ljava/lang/String;

.field private mBackPos:Lcom/smartisanos/smengine/math/Vector3f;

.field private mBackUV:[F

.field private mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

.field private mCanDoUp:Z

.field private mCurrentDownCell:Lcom/smartisanos/launcher/view/Cell;

.field private mDockCells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mDotView:Lcom/smartisanos/launcher/view/DotView;

.field private mHasDoneSliding:Z

.field private mLayerStatus:I

.field mLongClick:Lcom/smartisanos/smengine/Event;

.field private mNodes:[Lcom/smartisanos/launcher/view/DockView;

.field private mRotateParent:Lcom/smartisanos/smengine/SceneNode;

.field private mSelectedCell:Lcom/smartisanos/launcher/view/Cell;

.field private mSettingButtonTouchIn:Z

.field private mSettingView:Lcom/smartisanos/launcher/view/SettingButton;

.field public mSortBubble:Lcom/smartisanos/smengine/RectNode;

.field public mSortCancelButton:Lcom/smartisanos/smengine/RectNode;

.field public mSortConfirmButton:Lcom/smartisanos/smengine/RectNode;

.field private mStartX:F

.field private mStartY:F

.field private mTrashView:Lcom/smartisanos/launcher/view/TrashView;

.field private preCollideMoveIndex:I

.field private preCollideUpIndex:I

.field public sortBubbles:[Lcom/smartisanos/smengine/RectNode;

.field private sortButtonListener:Lcom/smartisanos/smengine/SceneNode$OnTouchListener;

.field public sortButtons:[Lcom/smartisanos/smengine/RectNode;

.field private sortConfirmListener:Lcom/smartisanos/smengine/SceneNode$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/DockView;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 259
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smartisanos/launcher/view/DockView;

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    .line 84
    iput-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->sortButtons:[Lcom/smartisanos/smengine/RectNode;

    .line 85
    iput-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->sortBubbles:[Lcom/smartisanos/smengine/RectNode;

    .line 98
    iput-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->collidedUpCell:Lcom/smartisanos/launcher/view/Cell;

    .line 108
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mBackPos:Lcom/smartisanos/smengine/math/Vector3f;

    .line 109
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mBackUV:[F

    .line 332
    new-instance v0, Lcom/smartisanos/launcher/view/DockView$2;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/DockView$2;-><init>(Lcom/smartisanos/launcher/view/DockView;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->sortConfirmListener:Lcom/smartisanos/smengine/SceneNode$OnClickListener;

    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/DockView;->mCanDoUp:Z

    .line 434
    new-instance v0, Lcom/smartisanos/launcher/view/DockView$4;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/DockView$4;-><init>(Lcom/smartisanos/launcher/view/DockView;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->sortButtonListener:Lcom/smartisanos/smengine/SceneNode$OnTouchListener;

    .line 858
    iput v2, p0, Lcom/smartisanos/launcher/view/DockView;->preCollideUpIndex:I

    .line 871
    iput v2, p0, Lcom/smartisanos/launcher/view/DockView;->preCollideMoveIndex:I

    .line 888
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/DockView;->mSettingButtonTouchIn:Z

    .line 889
    iput-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mCurrentDownCell:Lcom/smartisanos/launcher/view/Cell;

    .line 1190
    iput-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->dockCellAreaRect:Lcom/smartisanos/smengine/BoundingRect;

    .line 1192
    iput-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->cellsLoc:[Lcom/smartisanos/smengine/math/Vector3f;

    .line 1904
    iput v3, p0, Lcom/smartisanos/launcher/view/DockView;->mLayerStatus:I

    .line 260
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/DockView;->initAppOnDock(Landroid/graphics/Paint;)V

    .line 261
    new-instance v0, Lcom/smartisanos/launcher/view/DockView$MyLongPressListener;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/DockView$MyLongPressListener;-><init>(Lcom/smartisanos/launcher/view/DockView;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/DockView;->setLongPressListener(Lcom/smartisanos/smengine/SceneNode$LongPressListener;)V

    .line 262
    new-instance v0, Lcom/smartisanos/launcher/view/DockView$MyTouchListener;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/DockView$MyTouchListener;-><init>(Lcom/smartisanos/launcher/view/DockView;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/DockView;->setTouchListener(Lcom/smartisanos/smengine/SceneNode$TouchListener;)V

    .line 263
    new-instance v0, Lcom/smartisanos/launcher/view/DockView$MySingleTapListener;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/DockView$MySingleTapListener;-><init>(Lcom/smartisanos/launcher/view/DockView;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/DockView;->setSingleTapListener(Lcom/smartisanos/smengine/SceneNode$SingleTapListener;)V

    .line 264
    new-instance v0, Lcom/smartisanos/launcher/view/DockView$DockCollideListener;

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/view/DockView$DockCollideListener;-><init>(Lcom/smartisanos/launcher/view/DockView;Lcom/smartisanos/launcher/view/DockView$1;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/DockView;->setCollideListener(Lcom/smartisanos/smengine/SceneNode$CollideListener;)V

    .line 265
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/DockView;->enableShowAppName(Z)V

    .line 266
    new-instance v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/animations/DockViewAnimation;-><init>(Lcom/smartisanos/launcher/view/DockView;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->animation:Lcom/smartisanos/launcher/animations/DockViewAnimation;

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dock_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "two.texture.cell"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mBackMeshName:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 248
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smartisanos/launcher/view/DockView;

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    .line 84
    iput-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->sortButtons:[Lcom/smartisanos/smengine/RectNode;

    .line 85
    iput-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->sortBubbles:[Lcom/smartisanos/smengine/RectNode;

    .line 98
    iput-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->collidedUpCell:Lcom/smartisanos/launcher/view/Cell;

    .line 108
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mBackPos:Lcom/smartisanos/smengine/math/Vector3f;

    .line 109
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mBackUV:[F

    .line 332
    new-instance v0, Lcom/smartisanos/launcher/view/DockView$2;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/DockView$2;-><init>(Lcom/smartisanos/launcher/view/DockView;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->sortConfirmListener:Lcom/smartisanos/smengine/SceneNode$OnClickListener;

    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/DockView;->mCanDoUp:Z

    .line 434
    new-instance v0, Lcom/smartisanos/launcher/view/DockView$4;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/DockView$4;-><init>(Lcom/smartisanos/launcher/view/DockView;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->sortButtonListener:Lcom/smartisanos/smengine/SceneNode$OnTouchListener;

    .line 858
    iput v2, p0, Lcom/smartisanos/launcher/view/DockView;->preCollideUpIndex:I

    .line 871
    iput v2, p0, Lcom/smartisanos/launcher/view/DockView;->preCollideMoveIndex:I

    .line 888
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/DockView;->mSettingButtonTouchIn:Z

    .line 889
    iput-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mCurrentDownCell:Lcom/smartisanos/launcher/view/Cell;

    .line 1190
    iput-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->dockCellAreaRect:Lcom/smartisanos/smengine/BoundingRect;

    .line 1192
    iput-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->cellsLoc:[Lcom/smartisanos/smengine/math/Vector3f;

    .line 1904
    iput v3, p0, Lcom/smartisanos/launcher/view/DockView;->mLayerStatus:I

    .line 249
    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/view/DockView;->initAppOnDock(Landroid/graphics/Paint;)V

    .line 250
    new-instance v0, Lcom/smartisanos/launcher/view/DockView$MyLongPressListener;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/DockView$MyLongPressListener;-><init>(Lcom/smartisanos/launcher/view/DockView;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/DockView;->setLongPressListener(Lcom/smartisanos/smengine/SceneNode$LongPressListener;)V

    .line 251
    new-instance v0, Lcom/smartisanos/launcher/view/DockView$MyTouchListener;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/DockView$MyTouchListener;-><init>(Lcom/smartisanos/launcher/view/DockView;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/DockView;->setTouchListener(Lcom/smartisanos/smengine/SceneNode$TouchListener;)V

    .line 252
    new-instance v0, Lcom/smartisanos/launcher/view/DockView$MySingleTapListener;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/DockView$MySingleTapListener;-><init>(Lcom/smartisanos/launcher/view/DockView;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/DockView;->setSingleTapListener(Lcom/smartisanos/smengine/SceneNode$SingleTapListener;)V

    .line 253
    new-instance v0, Lcom/smartisanos/launcher/view/DockView$DockCollideListener;

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/view/DockView$DockCollideListener;-><init>(Lcom/smartisanos/launcher/view/DockView;Lcom/smartisanos/launcher/view/DockView$1;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/DockView;->setCollideListener(Lcom/smartisanos/smengine/SceneNode$CollideListener;)V

    .line 254
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/DockView;->enableShowAppName(Z)V

    .line 255
    new-instance v0, Lcom/smartisanos/launcher/animations/DockViewAnimation;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/animations/DockViewAnimation;-><init>(Lcom/smartisanos/launcher/view/DockView;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->animation:Lcom/smartisanos/launcher/animations/DockViewAnimation;

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dock_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "two.texture.cell"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mBackMeshName:Ljava/lang/String;

    .line 257
    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/view/DockView;)Lcom/smartisanos/launcher/view/DotView;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/DockView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mDotView:Lcom/smartisanos/launcher/view/DotView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/smartisanos/launcher/view/DockView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/DockView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/smartisanos/launcher/view/DockView;)Lcom/smartisanos/smengine/RectNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/DockView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/smartisanos/launcher/view/DockView;)[Lcom/smartisanos/launcher/view/DockView;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/DockView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/smartisanos/launcher/view/DockView;)Lcom/smartisanos/smengine/RectNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/DockView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mBackGaussianNode:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/smartisanos/launcher/view/DockView;Lcom/smartisanos/smengine/RectNode;)Lcom/smartisanos/smengine/RectNode;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/DockView;
    .param p1, "x1"    # Lcom/smartisanos/smengine/RectNode;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/smartisanos/launcher/view/DockView;->mBackGaussianNode:Lcom/smartisanos/smengine/RectNode;

    return-object p1
.end method

.method static synthetic access$200(Lcom/smartisanos/launcher/view/DockView;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/DockView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/view/DockView;->trackSortAction(ZI)V

    return-void
.end method

.method static synthetic access$300()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/smartisanos/launcher/view/DockView;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$400(Lcom/smartisanos/launcher/view/DockView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/DockView;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/DockView;->mCanDoUp:Z

    return v0
.end method

.method static synthetic access$402(Lcom/smartisanos/launcher/view/DockView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/DockView;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/DockView;->mCanDoUp:Z

    return p1
.end method

.method static synthetic access$500(Lcom/smartisanos/launcher/view/DockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/DockView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DockView;->removeLongClick()V

    return-void
.end method

.method static synthetic access$600(Lcom/smartisanos/launcher/view/DockView;Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/DockView;
    .param p1, "x1"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/DockView;->sendLongClick(Lcom/smartisanos/smengine/SceneNode;)V

    return-void
.end method

.method static synthetic access$700(Lcom/smartisanos/launcher/view/DockView;Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/DockView;
    .param p1, "x1"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/DockView;->handleSortButtonClick(Lcom/smartisanos/smengine/SceneNode;)V

    return-void
.end method

.method static synthetic access$800(Lcom/smartisanos/launcher/view/DockView;)Lcom/smartisanos/launcher/view/Cell;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/DockView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mCurrentDownCell:Lcom/smartisanos/launcher/view/Cell;

    return-object v0
.end method

.method static synthetic access$802(Lcom/smartisanos/launcher/view/DockView;Lcom/smartisanos/launcher/view/Cell;)Lcom/smartisanos/launcher/view/Cell;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/DockView;
    .param p1, "x1"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/smartisanos/launcher/view/DockView;->mCurrentDownCell:Lcom/smartisanos/launcher/view/Cell;

    return-object p1
.end method

.method static synthetic access$900(Lcom/smartisanos/launcher/view/DockView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/DockView;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DockView;->canChangeCellEffect()Z

    move-result v0

    return v0
.end method

.method private canChangeCellEffect()Z
    .locals 1

    .prologue
    .line 945
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static convertSortTypeToEventType(I)Ljava/lang/String;
    .locals 1
    .param p0, "sortType"    # I

    .prologue
    .line 2114
    packed-switch p0, :pswitch_data_0

    .line 2124
    const-string v0, "error"

    :goto_0
    return-object v0

    .line 2116
    :pswitch_0
    const-string v0, "2"

    goto :goto_0

    .line 2118
    :pswitch_1
    const-string v0, "1"

    goto :goto_0

    .line 2120
    :pswitch_2
    const-string v0, "3"

    goto :goto_0

    .line 2122
    :pswitch_3
    const-string v0, "0"

    goto :goto_0

    .line 2114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private createLongClickEvent(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/Event;
    .locals 2
    .param p1, "view"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 393
    new-instance v0, Lcom/smartisanos/launcher/view/DockView$3;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1, p1}, Lcom/smartisanos/launcher/view/DockView$3;-><init>(Lcom/smartisanos/launcher/view/DockView;ILcom/smartisanos/smengine/SceneNode;)V

    .line 420
    .local v0, "e":Lcom/smartisanos/smengine/Event;
    return-object v0
.end method

.method private createSortButtons()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 546
    sget v10, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v10}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v6

    .line 547
    .local v6, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    const/high16 v9, 0x43900000    # 288.0f

    .line 548
    .local v9, "width":F
    const/high16 v1, 0x43900000    # 288.0f

    .line 549
    .local v1, "height":F
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v10

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DockView;->getLayStatus()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/view/LayerManager;->getDockLayer(I)Lcom/smartisanos/launcher/view/LayerManager$DockLayer;

    move-result-object v0

    .line 551
    .local v0, "dockLayer":Lcom/smartisanos/launcher/view/LayerManager$DockLayer;
    const-string v10, "sort_by_color_icon.png"

    iget-object v11, p0, Lcom/smartisanos/launcher/view/DockView;->sortButtonListener:Lcom/smartisanos/smengine/SceneNode$OnTouchListener;

    invoke-direct {p0, v10, v9, v1, v11}, Lcom/smartisanos/launcher/view/DockView;->generateButton(Ljava/lang/String;FFLcom/smartisanos/smengine/SceneNode$OnTouchListener;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v10

    iput-object v10, p0, Lcom/smartisanos/launcher/view/DockView;->mApplyColorSortButton:Lcom/smartisanos/smengine/RectNode;

    .line 552
    iget-object v10, p0, Lcom/smartisanos/launcher/view/DockView;->mApplyColorSortButton:Lcom/smartisanos/smengine/RectNode;

    iget v11, v0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOCK_BACKGROUND_LAYER:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 553
    iget-object v10, p0, Lcom/smartisanos/launcher/view/DockView;->mApplyColorSortButton:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v10}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 555
    const-string v10, "sort_by_install_time_icon.png"

    iget-object v11, p0, Lcom/smartisanos/launcher/view/DockView;->sortButtonListener:Lcom/smartisanos/smengine/SceneNode$OnTouchListener;

    invoke-direct {p0, v10, v9, v1, v11}, Lcom/smartisanos/launcher/view/DockView;->generateButton(Ljava/lang/String;FFLcom/smartisanos/smengine/SceneNode$OnTouchListener;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v10

    iput-object v10, p0, Lcom/smartisanos/launcher/view/DockView;->mApplyInstallTimeSortButton:Lcom/smartisanos/smengine/RectNode;

    .line 556
    iget-object v10, p0, Lcom/smartisanos/launcher/view/DockView;->mApplyInstallTimeSortButton:Lcom/smartisanos/smengine/RectNode;

    iget v11, v0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOCK_BACKGROUND_LAYER:I

    add-int/lit8 v11, v11, 0x2

    invoke-virtual {v10, v11}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 557
    iget-object v10, p0, Lcom/smartisanos/launcher/view/DockView;->mApplyInstallTimeSortButton:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v10}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 559
    const-string v10, "sort_by_usage_frequency_icon.png"

    iget-object v11, p0, Lcom/smartisanos/launcher/view/DockView;->sortButtonListener:Lcom/smartisanos/smengine/SceneNode$OnTouchListener;

    invoke-direct {p0, v10, v9, v1, v11}, Lcom/smartisanos/launcher/view/DockView;->generateButton(Ljava/lang/String;FFLcom/smartisanos/smengine/SceneNode$OnTouchListener;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v10

    iput-object v10, p0, Lcom/smartisanos/launcher/view/DockView;->mApplyUsageFrequencySortButton:Lcom/smartisanos/smengine/RectNode;

    .line 560
    iget-object v10, p0, Lcom/smartisanos/launcher/view/DockView;->mApplyUsageFrequencySortButton:Lcom/smartisanos/smengine/RectNode;

    iget v11, v0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOCK_BACKGROUND_LAYER:I

    add-int/lit8 v11, v11, 0x3

    invoke-virtual {v10, v11}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 561
    iget-object v10, p0, Lcom/smartisanos/launcher/view/DockView;->mApplyUsageFrequencySortButton:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v10}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 564
    const-string v10, "sort_by_category_icon.png"

    iget-object v11, p0, Lcom/smartisanos/launcher/view/DockView;->sortButtonListener:Lcom/smartisanos/smengine/SceneNode$OnTouchListener;

    invoke-direct {p0, v10, v9, v1, v11}, Lcom/smartisanos/launcher/view/DockView;->generateButton(Ljava/lang/String;FFLcom/smartisanos/smengine/SceneNode$OnTouchListener;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v10

    iput-object v10, p0, Lcom/smartisanos/launcher/view/DockView;->mApplyCategorySortButton:Lcom/smartisanos/smengine/RectNode;

    .line 565
    iget-object v10, p0, Lcom/smartisanos/launcher/view/DockView;->mApplyCategorySortButton:Lcom/smartisanos/smengine/RectNode;

    iget v11, v0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOCK_BACKGROUND_LAYER:I

    add-int/lit8 v11, v11, 0x4

    invoke-virtual {v10, v11}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 566
    iget-object v10, p0, Lcom/smartisanos/launcher/view/DockView;->mApplyCategorySortButton:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v10}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 568
    const/4 v10, 0x4

    new-array v10, v10, [Lcom/smartisanos/smengine/RectNode;

    iget-object v11, p0, Lcom/smartisanos/launcher/view/DockView;->mApplyUsageFrequencySortButton:Lcom/smartisanos/smengine/RectNode;

    aput-object v11, v10, v14

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/smartisanos/launcher/view/DockView;->mApplyColorSortButton:Lcom/smartisanos/smengine/RectNode;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget-object v12, p0, Lcom/smartisanos/launcher/view/DockView;->mApplyInstallTimeSortButton:Lcom/smartisanos/smengine/RectNode;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    iget-object v12, p0, Lcom/smartisanos/launcher/view/DockView;->mApplyCategorySortButton:Lcom/smartisanos/smengine/RectNode;

    aput-object v12, v10, v11

    iput-object v10, p0, Lcom/smartisanos/launcher/view/DockView;->sortButtons:[Lcom/smartisanos/smengine/RectNode;

    .line 574
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DockView;->getSortButtonHideLoc()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    .line 575
    .local v4, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v10, p0, Lcom/smartisanos/launcher/view/DockView;->sortButtons:[Lcom/smartisanos/smengine/RectNode;

    array-length v8, v10

    .line 576
    .local v8, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_0

    .line 577
    iget-object v10, p0, Lcom/smartisanos/launcher/view/DockView;->sortButtons:[Lcom/smartisanos/smengine/RectNode;

    aget-object v5, v10, v2

    .line 578
    .local v5, "node":Lcom/smartisanos/smengine/RectNode;
    iget v10, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v11, v4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v12, v4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v5, v10, v11, v12}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 579
    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 576
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 581
    .end local v5    # "node":Lcom/smartisanos/smengine/RectNode;
    :cond_0
    invoke-virtual {p0, v14}, Lcom/smartisanos/launcher/view/DockView;->setSortButtonVisibleStatus(Z)V

    .line 584
    const-string v10, "sort_confirm.png"

    iget-object v11, p0, Lcom/smartisanos/launcher/view/DockView;->sortConfirmListener:Lcom/smartisanos/smengine/SceneNode$OnClickListener;

    invoke-direct {p0, v10, v9, v1, v11}, Lcom/smartisanos/launcher/view/DockView;->generateButton(Ljava/lang/String;FFLcom/smartisanos/smengine/SceneNode$OnClickListener;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v10

    iput-object v10, p0, Lcom/smartisanos/launcher/view/DockView;->mSortConfirmButton:Lcom/smartisanos/smengine/RectNode;

    .line 585
    iget-object v10, p0, Lcom/smartisanos/launcher/view/DockView;->mSortConfirmButton:Lcom/smartisanos/smengine/RectNode;

    iget v11, v0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOCK_BACKGROUND_LAYER:I

    add-int/lit8 v11, v11, 0x4

    invoke-virtual {v10, v11}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 586
    sget-object v10, Lcom/smartisanos/launcher/view/DockView$Component;->SORT_CONFIRM_BUTTON:Lcom/smartisanos/launcher/view/DockView$Component;

    invoke-virtual {p0, v10, v14}, Lcom/smartisanos/launcher/view/DockView;->getDockComponentLoc(Lcom/smartisanos/launcher/view/DockView$Component;Z)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    .line 587
    .local v7, "rightLoc":Lcom/smartisanos/smengine/math/Vector3f;
    sget-object v10, Lcom/smartisanos/launcher/view/DockView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "rightLoc ==> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 588
    iget-object v10, p0, Lcom/smartisanos/launcher/view/DockView;->mSortConfirmButton:Lcom/smartisanos/smengine/RectNode;

    iget v11, v7, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v12, v7, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v13, v7, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v10, v11, v12, v13}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 589
    iget-object v10, p0, Lcom/smartisanos/launcher/view/DockView;->mSortConfirmButton:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v10}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 590
    iget-object v10, p0, Lcom/smartisanos/launcher/view/DockView;->mSortConfirmButton:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v10, v14}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 592
    const-string v10, "sort_cancel.png"

    iget-object v11, p0, Lcom/smartisanos/launcher/view/DockView;->sortConfirmListener:Lcom/smartisanos/smengine/SceneNode$OnClickListener;

    invoke-direct {p0, v10, v9, v1, v11}, Lcom/smartisanos/launcher/view/DockView;->generateButton(Ljava/lang/String;FFLcom/smartisanos/smengine/SceneNode$OnClickListener;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v10

    iput-object v10, p0, Lcom/smartisanos/launcher/view/DockView;->mSortCancelButton:Lcom/smartisanos/smengine/RectNode;

    .line 593
    iget-object v10, p0, Lcom/smartisanos/launcher/view/DockView;->mSortCancelButton:Lcom/smartisanos/smengine/RectNode;

    iget v11, v0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOCK_BACKGROUND_LAYER:I

    add-int/lit8 v11, v11, 0x5

    invoke-virtual {v10, v11}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 594
    sget-object v10, Lcom/smartisanos/launcher/view/DockView$Component;->SORT_CANCEL_BUTTON:Lcom/smartisanos/launcher/view/DockView$Component;

    invoke-virtual {p0, v10, v14}, Lcom/smartisanos/launcher/view/DockView;->getDockComponentLoc(Lcom/smartisanos/launcher/view/DockView$Component;Z)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v3

    .line 595
    .local v3, "leftLoc":Lcom/smartisanos/smengine/math/Vector3f;
    sget-object v10, Lcom/smartisanos/launcher/view/DockView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "leftLoc ==> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 596
    iget-object v10, p0, Lcom/smartisanos/launcher/view/DockView;->mSortCancelButton:Lcom/smartisanos/smengine/RectNode;

    iget v11, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v12, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v13, v3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v10, v11, v12, v13}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 597
    iget-object v10, p0, Lcom/smartisanos/launcher/view/DockView;->mSortCancelButton:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v10}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 598
    iget-object v10, p0, Lcom/smartisanos/launcher/view/DockView;->mSortCancelButton:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v10, v14}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 599
    return-void
.end method

.method private createTrashView()V
    .locals 5

    .prologue
    .line 846
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mTrashView:Lcom/smartisanos/launcher/view/TrashView;

    if-nez v1, :cond_1

    .line 847
    new-instance v1, Lcom/smartisanos/launcher/view/TrashView;

    const-string v2, "trash.png_Node"

    invoke-direct {v1, v2}, Lcom/smartisanos/launcher/view/TrashView;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mTrashView:Lcom/smartisanos/launcher/view/TrashView;

    .line 848
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mTrashView:Lcom/smartisanos/launcher/view/TrashView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TrashView;->trashInit()V

    .line 849
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mTrashView:Lcom/smartisanos/launcher/view/TrashView;

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/DockView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 851
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/launcher/view/DockView;->getTrashLocationByMode(IZ)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    .line 852
    .local v0, "trash_loc":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mTrashView:Lcom/smartisanos/launcher/view/TrashView;

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/smartisanos/launcher/view/TrashView;->setTranslate(FFF)V

    .line 853
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/view/DockView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doDockLayout() trash loc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DockView;->updateGeometricState()V

    .line 856
    .end local v0    # "trash_loc":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_1
    return-void
.end method

.method private generateButton(Ljava/lang/String;FFLcom/smartisanos/smengine/SceneNode$OnClickListener;)Lcom/smartisanos/smengine/RectNode;
    .locals 8
    .param p1, "resName"    # Ljava/lang/String;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "listener"    # Lcom/smartisanos/smengine/SceneNode$OnClickListener;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v5, 0x1

    .line 763
    move-object v1, p1

    .line 764
    .local v1, "name":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v1, p2, p3, v3, v5}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    .line 765
    .local v2, "targetNode":Lcom/smartisanos/smengine/RectNode;
    const-string v3, "TextureModularColorMaterial"

    invoke-static {v3}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 766
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 767
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/DockView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 768
    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 769
    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 770
    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 771
    invoke-static {p1}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 772
    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 773
    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/high16 v4, -0x40000000    # -2.0f

    invoke-virtual {v3, v6, v4}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 774
    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 775
    invoke-virtual {v2, v6, v6, v7, v7}, Lcom/smartisanos/smengine/RectNode;->setLocalBoundingVolume(FFFF)V

    .line 776
    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 777
    if-eqz p4, :cond_0

    .line 778
    invoke-virtual {v2, p4}, Lcom/smartisanos/smengine/RectNode;->setOnClickListener(Lcom/smartisanos/smengine/SceneNode$OnClickListener;)V

    .line 780
    :cond_0
    return-object v2
.end method

.method private generateButton(Ljava/lang/String;FFLcom/smartisanos/smengine/SceneNode$OnTouchListener;)Lcom/smartisanos/smengine/RectNode;
    .locals 8
    .param p1, "resName"    # Ljava/lang/String;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "listener"    # Lcom/smartisanos/smengine/SceneNode$OnTouchListener;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v5, 0x1

    .line 742
    move-object v1, p1

    .line 743
    .local v1, "name":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v1, p2, p3, v3, v5}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    .line 744
    .local v2, "targetNode":Lcom/smartisanos/smengine/RectNode;
    const-string v3, "TextureModularColorMaterial"

    invoke-static {v3}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 745
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 746
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/DockView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 747
    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 748
    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 749
    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 750
    invoke-static {p1}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 751
    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 752
    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/high16 v4, -0x40000000    # -2.0f

    invoke-virtual {v3, v6, v4}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 753
    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 754
    invoke-virtual {v2, v6, v6, v7, v7}, Lcom/smartisanos/smengine/RectNode;->setLocalBoundingVolume(FFFF)V

    .line 755
    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 756
    if-eqz p4, :cond_0

    .line 757
    invoke-virtual {v2, p4}, Lcom/smartisanos/smengine/RectNode;->setOnTouchListener(Lcom/smartisanos/smengine/SceneNode$OnTouchListener;)V

    .line 759
    :cond_0
    return-object v2
.end method

.method public static getDockCellLocation(IZIZLcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/launcher/data/Constants$HandHabit;)[Lcom/smartisanos/smengine/math/Vector3f;
    .locals 17
    .param p0, "cellCount"    # I
    .param p1, "trashAppear"    # Z
    .param p2, "displayMode"    # I
    .param p3, "useTrashInTimeLocation"    # Z
    .param p4, "trashViewLoc"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p5, "leftOrRight"    # Lcom/smartisanos/launcher/data/Constants$HandHabit;

    .prologue
    .line 1363
    const/4 v15, 0x0

    new-array v9, v15, [Lcom/smartisanos/smengine/math/Vector3f;

    .line 1364
    .local v9, "locs":[Lcom/smartisanos/smengine/math/Vector3f;
    if-gtz p0, :cond_0

    move-object v10, v9

    .line 1427
    .end local v9    # "locs":[Lcom/smartisanos/smengine/math/Vector3f;
    .local v10, "locs":[Lcom/smartisanos/smengine/math/Vector3f;
    :goto_0
    return-object v10

    .line 1367
    .end local v10    # "locs":[Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v9    # "locs":[Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v11

    .line 1368
    .local v11, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    sget v15, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v14, v15

    .line 1369
    .local v14, "windowWidth":F
    const/4 v7, 0x0

    .line 1370
    .local v7, "isMultiMode":Z
    const/4 v12, -0x1

    .line 1371
    .local v12, "singleMode":I
    const/4 v15, 0x2

    move/from16 v0, p2

    if-eq v0, v15, :cond_1

    const/4 v15, 0x3

    move/from16 v0, p2

    if-ne v0, v15, :cond_2

    .line 1373
    :cond_1
    const/4 v7, 0x1

    .line 1374
    const/4 v12, 0x1

    .line 1376
    :cond_2
    const/4 v15, 0x5

    move/from16 v0, p2

    if-ne v0, v15, :cond_3

    .line 1377
    const/4 v7, 0x1

    .line 1378
    const/4 v12, 0x4

    .line 1380
    :cond_3
    const/4 v1, 0x0

    .line 1381
    .local v1, "cellAreaWidth":F
    move/from16 v2, p0

    .line 1382
    .local v2, "count":I
    if-nez p1, :cond_4

    if-eqz v7, :cond_a

    .line 1383
    :cond_4
    const/4 v15, 0x4

    if-ne v2, v15, :cond_8

    .line 1384
    const/high16 v15, 0x40800000    # 4.0f

    div-float v15, v14, v15

    const/high16 v16, 0x40400000    # 3.0f

    mul-float v1, v15, v16

    .line 1394
    :goto_1
    const/4 v13, 0x0

    .line 1395
    .local v13, "w":F
    int-to-float v15, v2

    div-float v3, v1, v15

    .line 1396
    .local v3, "delta":F
    if-nez p1, :cond_5

    if-eqz v7, :cond_d

    .line 1397
    :cond_5
    if-eqz p3, :cond_c

    .line 1399
    move-object/from16 v0, p4

    iget v15, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_b

    .line 1416
    :cond_6
    :goto_2
    iget v4, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    .line 1417
    .local v4, "dockHeight":F
    const/high16 v15, 0x40000000    # 2.0f

    div-float v5, v4, v15

    .line 1418
    .local v5, "h":F
    if-eqz v7, :cond_7

    .line 1419
    invoke-static {v12}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v15

    iget v4, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    .line 1421
    :cond_7
    new-array v9, v2, [Lcom/smartisanos/smengine/math/Vector3f;

    .line 1422
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v2, :cond_e

    .line 1423
    new-instance v8, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v8}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1424
    .local v8, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v3, v15

    add-float/2addr v15, v13

    int-to-float v0, v6

    move/from16 v16, v0

    mul-float v16, v16, v3

    add-float v15, v15, v16

    invoke-static {v15, v5, v14, v4, v8}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 1425
    aput-object v8, v9, v6

    .line 1422
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1385
    .end local v3    # "delta":F
    .end local v4    # "dockHeight":F
    .end local v5    # "h":F
    .end local v6    # "i":I
    .end local v8    # "loc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v13    # "w":F
    :cond_8
    if-nez v2, :cond_9

    .line 1386
    const/4 v1, 0x0

    goto :goto_1

    .line 1388
    :cond_9
    add-int/lit8 v15, v2, 0x1

    int-to-float v15, v15

    div-float v15, v14, v15

    int-to-float v0, v2

    move/from16 v16, v0

    mul-float v1, v15, v16

    goto :goto_1

    .line 1391
    :cond_a
    iget v15, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    sub-float v15, v14, v15

    iget v0, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_right:F

    move/from16 v16, v0

    sub-float v1, v15, v16

    goto :goto_1

    .line 1404
    .restart local v3    # "delta":F
    .restart local v13    # "w":F
    :cond_b
    sub-float v13, v14, v1

    goto :goto_2

    .line 1407
    :cond_c
    sget-object v15, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    move-object/from16 v0, p5

    if-ne v0, v15, :cond_6

    .line 1408
    sub-float v13, v14, v1

    goto :goto_2

    .line 1414
    :cond_d
    iget v15, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    add-float/2addr v13, v15

    goto :goto_2

    .restart local v4    # "dockHeight":F
    .restart local v5    # "h":F
    .restart local v6    # "i":I
    :cond_e
    move-object v10, v9

    .line 1427
    .end local v9    # "locs":[Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v10    # "locs":[Lcom/smartisanos/smengine/math/Vector3f;
    goto/16 :goto_0
.end method

.method private handleSortButtonClick(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 10
    .param p1, "view"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 477
    const/4 v5, -0x1

    .line 478
    .local v5, "type":I
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DockView;->mApplyColorSortButton:Lcom/smartisanos/smengine/RectNode;

    if-ne p1, v6, :cond_3

    .line 479
    const/4 v5, 0x1

    .line 487
    :cond_0
    :goto_0
    sget-object v6, Lcom/smartisanos/launcher/view/DockView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sort type == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    move v3, v5

    .line 489
    .local v3, "sortType":I
    if-lez v3, :cond_2

    .line 490
    invoke-static {}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->getInstance()Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 491
    invoke-static {}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->getInstance()Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->clear()V

    .line 493
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    .line 494
    .local v0, "mainView":Lcom/smartisanos/launcher/view/MainView;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v1

    .line 495
    .local v1, "pageView":Lcom/smartisanos/launcher/view/PageView;
    new-instance v4, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v4}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 496
    .local v4, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    const v6, 0x3ee66666    # 0.45f

    invoke-virtual {v0, v4, v6}, Lcom/smartisanos/launcher/view/MainView;->hideStatusBarText(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    .line 498
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getStatusBar()Lcom/smartisanos/launcher/view/StatusBar;

    move-result-object v6

    iput v5, v6, Lcom/smartisanos/launcher/view/StatusBar;->mSortType:I

    .line 499
    new-instance v6, Lcom/smartisanos/launcher/view/DockView$5;

    invoke-direct {v6, p0}, Lcom/smartisanos/launcher/view/DockView$5;-><init>(Lcom/smartisanos/launcher/view/DockView;)V

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 535
    invoke-virtual {v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 537
    invoke-static {v5}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->createInstance(I)Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    move-result-object v2

    .line 538
    .local v2, "sortAction":Lcom/smartisanos/launcher/actions/sort/HandleIconSort;
    iput v5, v2, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->actionType:I

    .line 539
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->clonePageViewData()Lcom/smartisanos/launcher/actions/sort/SortResult;

    move-result-object v6

    iput-object v6, v2, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->bakData:Lcom/smartisanos/launcher/actions/sort/SortResult;

    .line 540
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v6

    const/high16 v7, 0x80000

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 541
    invoke-virtual {v2}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->handleSort()V

    .line 543
    .end local v0    # "mainView":Lcom/smartisanos/launcher/view/MainView;
    .end local v1    # "pageView":Lcom/smartisanos/launcher/view/PageView;
    .end local v2    # "sortAction":Lcom/smartisanos/launcher/actions/sort/HandleIconSort;
    .end local v4    # "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    :cond_2
    return-void

    .line 480
    .end local v3    # "sortType":I
    :cond_3
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DockView;->mApplyInstallTimeSortButton:Lcom/smartisanos/smengine/RectNode;

    if-ne p1, v6, :cond_4

    .line 481
    const/4 v5, 0x2

    goto :goto_0

    .line 482
    :cond_4
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DockView;->mApplyUsageFrequencySortButton:Lcom/smartisanos/smengine/RectNode;

    if-ne p1, v6, :cond_5

    .line 483
    const/4 v5, 0x3

    goto :goto_0

    .line 484
    :cond_5
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DockView;->mApplyCategorySortButton:Lcom/smartisanos/smengine/RectNode;

    if-ne p1, v6, :cond_0

    .line 485
    const/4 v5, 0x4

    goto :goto_0
.end method

.method private initAppOnDock(Landroid/graphics/Paint;)V
    .locals 12
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 920
    const/4 v8, -0x2

    invoke-static {v8}, Lcom/smartisanos/launcher/LauncherModel;->getAppInfos(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 921
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    sget v8, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v8}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v6

    .line 922
    .local v6, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 923
    .local v7, "size":I
    sget v8, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v8}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v8

    iget v5, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_app_count:I

    .line 924
    .local v5, "max":I
    if-le v7, v5, :cond_0

    .line 926
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dock cell count ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] over dock cell limited ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 928
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 929
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 930
    .local v4, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    if-nez v4, :cond_1

    .line 928
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 933
    :cond_1
    new-instance v2, Lcom/smartisanos/launcher/view/Cell;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_fore"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8, v4, v6, p1}, Lcom/smartisanos/launcher/view/Cell;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/LayoutProperty;Landroid/graphics/Paint;)V

    .line 934
    .local v2, "cell":Lcom/smartisanos/launcher/view/Cell;
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/smartisanos/launcher/view/Cell;->setShowBackground(Z)V

    .line 935
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/DockView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 936
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/Cell;->setCellIndex(I)V

    .line 937
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DockView;->getDockCellBoundingRect()Lcom/smartisanos/smengine/BoundingRect;

    move-result-object v1

    .line 938
    .local v1, "boundingRect":Lcom/smartisanos/smengine/BoundingRect;
    invoke-virtual {v1}, Lcom/smartisanos/smengine/BoundingRect;->getMinPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v8

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    invoke-virtual {v1}, Lcom/smartisanos/smengine/BoundingRect;->getMinPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v9

    iget v9, v9, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {v1}, Lcom/smartisanos/smengine/BoundingRect;->getMaxPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v10

    iget v10, v10, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    invoke-virtual {v1}, Lcom/smartisanos/smengine/BoundingRect;->getMaxPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v11

    iget v11, v11, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {v2, v8, v9, v10, v11}, Lcom/smartisanos/launcher/view/Cell;->setLocalBoundingVolume(FFFF)V

    .line 939
    iget-object v8, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 941
    .end local v1    # "boundingRect":Lcom/smartisanos/smengine/BoundingRect;
    .end local v2    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v4    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DockView;->updateGeometricState()V

    .line 942
    return-void
.end method

.method private removeLongClick()V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mLongClick:Lcom/smartisanos/smengine/Event;

    if-eqz v0, :cond_0

    .line 425
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mLongClick:Lcom/smartisanos/smengine/Event;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/EventManager;->removeEvent(Lcom/smartisanos/smengine/Event;)V

    .line 427
    :cond_0
    return-void
.end method

.method private sendLongClick(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 3
    .param p1, "view"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 429
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-float v0, v1

    .line 430
    .local v0, "longClickTimeout_ms":F
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/DockView;->createLongClickEvent(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mLongClick:Lcom/smartisanos/smengine/Event;

    .line 431
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mLongClick:Lcom/smartisanos/smengine/Event;

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/Event;->send(F)V

    .line 432
    return-void
.end method

.method private setEnableDepth(Z)V
    .locals 2
    .param p1, "set"    # Z

    .prologue
    .line 1774
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1775
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1776
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/Cell;->setAllDisplayRectEnableDepthTest(Z)V

    .line 1775
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1779
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    if-eqz v1, :cond_1

    .line 1780
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 1782
    :cond_1
    return-void
.end method

.method private setPostRender(Z)V
    .locals 2
    .param p1, "set"    # Z

    .prologue
    .line 1785
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1786
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1787
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/Cell;->setAllDisplayRectPost(Z)V

    .line 1786
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1790
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    if-eqz v1, :cond_1

    .line 1791
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/RenderState;->setIsPostRender(Z)V

    .line 1793
    :cond_1
    return-void
.end method

.method private trackSortAction(ZI)V
    .locals 3
    .param p1, "confirm"    # Z
    .param p2, "sortType"    # I

    .prologue
    .line 2105
    new-instance v0, Lcom/smartisanos/home/tracker/TrackerConstants$EventData;

    invoke-direct {v0}, Lcom/smartisanos/home/tracker/TrackerConstants$EventData;-><init>()V

    .line 2106
    .local v0, "eventData":Lcom/smartisanos/home/tracker/TrackerConstants$EventData;
    const-string v1, "type"

    invoke-static {p2}, Lcom/smartisanos/launcher/view/DockView;->convertSortTypeToEventType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/home/tracker/TrackerConstants$EventData;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    if-eqz p1, :cond_0

    const-string v1, "A260004"

    :goto_0
    invoke-static {v1, v0}, Lcom/smartisanos/home/tracker/LauncherAgent;->event(Ljava/lang/String;Lcom/smartisanos/home/tracker/TrackerConstants$EventData;)V

    .line 2111
    return-void

    .line 2108
    :cond_0
    const-string v1, "A260005"

    goto :goto_0
.end method


# virtual methods
.method public addDockCellToList(Lcom/smartisanos/launcher/view/Cell;)Z
    .locals 2
    .param p1, "cell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    const/4 v1, 0x0

    .line 225
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    :goto_0
    return v1

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public adjustIconForMode(I)V
    .locals 3
    .param p1, "targetMode"    # I

    .prologue
    .line 1896
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1897
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 1898
    .local v1, "pc":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v1, :cond_0

    .line 1899
    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/Cell;->adjustIconForMode(I)V

    .line 1896
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1902
    .end local v1    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    return-void
.end method

.method public applyGaussianDarkLight()V
    .locals 3

    .prologue
    .line 1859
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 1860
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v0, :cond_0

    .line 1861
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->applyGaussianDarkLight()V

    goto :goto_0

    .line 1864
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    return-void
.end method

.method public applyTheme()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1833
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    if-eqz v1, :cond_0

    .line 1834
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 1836
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 1837
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v0, :cond_1

    .line 1838
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->applyTheme()V

    .line 1839
    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/Cell;->setVisibility(Z)V

    goto :goto_0

    .line 1843
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mDotView:Lcom/smartisanos/launcher/view/DotView;

    if-eqz v1, :cond_3

    .line 1844
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mDotView:Lcom/smartisanos/launcher/view/DotView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DotView;->applyTheme()V

    .line 1847
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mSettingView:Lcom/smartisanos/launcher/view/SettingButton;

    if-eqz v1, :cond_4

    .line 1848
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mSettingView:Lcom/smartisanos/launcher/view/SettingButton;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/SettingButton;->applyTheme()V

    .line 1851
    :cond_4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mTrashView:Lcom/smartisanos/launcher/view/TrashView;

    if-eqz v1, :cond_5

    .line 1852
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mTrashView:Lcom/smartisanos/launcher/view/TrashView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TrashView;->applyTheme()V

    .line 1855
    :cond_5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DockView;->removeChangeThemeNode()V

    .line 1856
    return-void
.end method

.method public calculateCellsLocation(ILcom/smartisanos/smengine/BoundingRect;)V
    .locals 13
    .param p1, "cellCount"    # I
    .param p2, "rect"    # Lcom/smartisanos/smengine/BoundingRect;

    .prologue
    .line 1195
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/smartisanos/launcher/view/DockView;->cellsLoc:[Lcom/smartisanos/smengine/math/Vector3f;

    .line 1196
    if-nez p1, :cond_1

    .line 1222
    :cond_0
    return-void

    .line 1199
    :cond_1
    if-eqz p2, :cond_0

    .line 1202
    invoke-virtual {p2}, Lcom/smartisanos/smengine/BoundingRect;->getMinPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v9

    iget v7, v9, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 1203
    .local v7, "minX":F
    invoke-virtual {p2}, Lcom/smartisanos/smengine/BoundingRect;->getMaxPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v9

    iget v6, v9, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 1204
    .local v6, "maxX":F
    sub-float v0, v6, v7

    .line 1205
    .local v0, "cellAreaWidth":F
    int-to-float v9, p1

    div-float v1, v0, v9

    .line 1208
    .local v1, "delta":F
    sget v9, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v9}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v9

    iget v2, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    .line 1209
    .local v2, "dockHeight":F
    const/high16 v9, 0x40000000    # 2.0f

    div-float v3, v2, v9

    .line 1210
    .local v3, "h":F
    sget v9, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v10, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v9, v10, :cond_2

    .line 1211
    sget v9, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v9}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v9

    iget v2, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    .line 1213
    :cond_2
    new-instance v5, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v5}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1214
    .local v5, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v9, 0x0

    sget v10, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v10, v10

    invoke-static {v9, v3, v10, v2, v5}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 1215
    iget v8, v5, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 1217
    .local v8, "y":F
    new-array v9, p1, [Lcom/smartisanos/smengine/math/Vector3f;

    iput-object v9, p0, Lcom/smartisanos/launcher/view/DockView;->cellsLoc:[Lcom/smartisanos/smengine/math/Vector3f;

    .line 1218
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p1, :cond_0

    .line 1219
    iget-object v9, p0, Lcom/smartisanos/launcher/view/DockView;->cellsLoc:[Lcom/smartisanos/smengine/math/Vector3f;

    new-instance v10, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v1, v11

    add-float/2addr v11, v7

    int-to-float v12, v4

    mul-float/2addr v12, v1

    add-float/2addr v11, v12

    const/4 v12, 0x0

    invoke-direct {v10, v11, v8, v12}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    aput-object v10, v9, v4

    .line 1220
    sget-boolean v9, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v9, :cond_3

    sget-object v9, Lcom/smartisanos/launcher/view/DockView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "calculate loc ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "], "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/smartisanos/launcher/view/DockView;->cellsLoc:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v11, v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 1218
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public changeLayerForTheme(I)V
    .locals 4
    .param p1, "layer"    # I

    .prologue
    .line 1886
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getLayer()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 1887
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1888
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 1889
    .local v1, "pc":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v1, :cond_0

    .line 1890
    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/Cell;->increaseCellContentLayer(I)V

    .line 1887
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1893
    .end local v1    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    return-void
.end method

.method public clearSortBubble()V
    .locals 5

    .prologue
    .line 602
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DockView;->mSortBubble:Lcom/smartisanos/smengine/RectNode;

    if-eqz v3, :cond_0

    .line 603
    const-string v0, "sort_bubble_texture"

    .line 604
    .local v0, "bubbleTextureName":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v2

    .line 605
    .local v2, "tm":Lcom/smartisanos/smengine/TextureManager;
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DockView;->mSortBubble:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 606
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DockView;->mSortBubble:Lcom/smartisanos/smengine/RectNode;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 607
    move-object v1, v0

    .line 608
    .local v1, "textureName":Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 610
    .end local v0    # "bubbleTextureName":Ljava/lang/String;
    .end local v1    # "textureName":Ljava/lang/String;
    .end local v2    # "tm":Lcom/smartisanos/smengine/TextureManager;
    :cond_0
    return-void
.end method

.method public create()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x1

    .line 286
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/DockView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    const-string v2, "dockView init !"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_0
    sget v0, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v9

    .line 288
    .local v9, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    const-string v0, "dock"

    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v1, v1

    iget v2, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    invoke-static {v0, v1, v2, v11, v3}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    .line 289
    const-string v0, "TextureModularColorMaterial"

    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v8

    .line 290
    .local v8, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_1

    .line 291
    const-string v0, "TwoTexDifferentTexcoordMaterial"

    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v8

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v8}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 294
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_3

    .line 295
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    const-string v1, "dock_back.png"

    invoke-static {v1, v3}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/smartisanos/smengine/RectNode;->setTextureName(ILjava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    const-string v1, "t_blur_background"

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/smengine/RectNode;->setTextureName(ILjava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 301
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 302
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 303
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 304
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 305
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/DockView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 306
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DockView;->getLayStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/LayerManager;->getDockLayer(I)Lcom/smartisanos/launcher/view/LayerManager$DockLayer;

    move-result-object v6

    .line 307
    .local v6, "dockLayer":Lcom/smartisanos/launcher/view/LayerManager$DockLayer;
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    iget v1, v6, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOCK_BACKGROUND_LAYER:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 308
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DockView;->createSettingButton()V

    .line 309
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getScreenCount()I

    move-result v7

    .line 310
    .local v7, "dotNum":I
    if-nez v7, :cond_2

    .line 311
    const/4 v7, 0x1

    .line 314
    :cond_2
    new-instance v0, Lcom/smartisanos/launcher/view/DotView;

    const-string v1, "DotView"

    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v2, v2

    iget v3, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    iget v4, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->dot_width:F

    iget v5, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->dot_height:F

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/launcher/view/DotView;-><init>(Ljava/lang/String;FFFF)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mDotView:Lcom/smartisanos/launcher/view/DotView;

    .line 316
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mDotView:Lcom/smartisanos/launcher/view/DotView;

    invoke-virtual {v0, v7, v10}, Lcom/smartisanos/launcher/view/DotView;->create(II)V

    .line 317
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mDotView:Lcom/smartisanos/launcher/view/DotView;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/DockView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 318
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mDotView:Lcom/smartisanos/launcher/view/DotView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DotView;->updateDotViewLocation()V

    .line 319
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DockView;->updateGeometricState()V

    .line 320
    new-instance v0, Lcom/smartisanos/launcher/view/DockView$1;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/view/DockView$1;-><init>(Lcom/smartisanos/launcher/view/DockView;I)V

    .line 325
    invoke-virtual {v0, v11}, Lcom/smartisanos/launcher/view/DockView$1;->send(F)V

    .line 327
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DockView;->createTrashView()V

    .line 328
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DockView;->createSortButtons()V

    .line 329
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DockView;->doDockLayout()V

    .line 330
    return-void

    .line 299
    .end local v6    # "dockLayer":Lcom/smartisanos/launcher/view/LayerManager$DockLayer;
    .end local v7    # "dotNum":I
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    const-string v1, "dock_back.png"

    invoke-static {v1, v3}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public createSettingButton()V
    .locals 5

    .prologue
    .line 784
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DockView;->destroySettingButton()V

    .line 785
    new-instance v1, Lcom/smartisanos/launcher/view/SettingButton;

    const-string v2, "settingview"

    invoke-direct {v1, v2}, Lcom/smartisanos/launcher/view/SettingButton;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mSettingView:Lcom/smartisanos/launcher/view/SettingButton;

    .line 786
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mSettingView:Lcom/smartisanos/launcher/view/SettingButton;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/SettingButton;->create()V

    .line 787
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mSettingView:Lcom/smartisanos/launcher/view/SettingButton;

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/DockView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 788
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DockView;->getSettingButtonHiddenLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    .line 789
    .local v0, "setting_def_loc":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mSettingView:Lcom/smartisanos/launcher/view/SettingButton;

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/smartisanos/launcher/view/SettingButton;->setTranslate(FFF)V

    .line 792
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mSettingView:Lcom/smartisanos/launcher/view/SettingButton;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/SettingButton;->updateGeometricState()V

    .line 793
    return-void
.end method

.method public destroySettingButton()V
    .locals 2

    .prologue
    .line 796
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mSettingView:Lcom/smartisanos/launcher/view/SettingButton;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mSettingView:Lcom/smartisanos/launcher/view/SettingButton;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/SettingButton;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 798
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mSettingView:Lcom/smartisanos/launcher/view/SettingButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/SettingButton;->clear(Z)V

    .line 799
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mSettingView:Lcom/smartisanos/launcher/view/SettingButton;

    .line 801
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z
    .locals 6
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 892
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getWorldCoordinateX()F

    move-result v0

    .line 893
    .local v0, "worldX":F
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getWorldCoordinateY()F

    move-result v1

    .line 896
    .local v1, "worldY":F
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DockView;->mSettingView:Lcom/smartisanos/launcher/view/SettingButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v1, v5}, Lcom/smartisanos/launcher/view/SettingButton;->isPointInBoundingVolume(FFF)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 898
    iget-boolean v4, p0, Lcom/smartisanos/launcher/view/DockView;->mSettingButtonTouchIn:Z

    if-nez v4, :cond_0

    .line 899
    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/TouchEvent;->setTouchMoveInOutState(I)V

    .line 900
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/DockView;->mSettingButtonTouchIn:Z

    .line 902
    :cond_0
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DockView;->mSettingView:Lcom/smartisanos/launcher/view/SettingButton;

    invoke-virtual {v4, p1}, Lcom/smartisanos/launcher/view/SettingButton;->onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    .line 903
    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/TouchEvent;->setTouchMoveInOutState(I)V

    .line 916
    :goto_0
    return v2

    .line 907
    :cond_1
    iget-boolean v2, p0, Lcom/smartisanos/launcher/view/DockView;->mSettingButtonTouchIn:Z

    if-eqz v2, :cond_2

    .line 908
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/TouchEvent;->setTouchMoveInOutState(I)V

    .line 909
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView;->mSettingView:Lcom/smartisanos/launcher/view/SettingButton;

    invoke-virtual {v2, p1}, Lcom/smartisanos/launcher/view/SettingButton;->onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    .line 910
    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/TouchEvent;->setTouchMoveInOutState(I)V

    .line 911
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/DockView;->mSettingButtonTouchIn:Z

    .line 914
    :cond_2
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/DockView;->onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    move v2, v3

    .line 916
    goto :goto_0
.end method

.method public doDockLayout()V
    .locals 14

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    .line 980
    iget-object v10, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 981
    .local v1, "cellCount":I
    if-nez v1, :cond_0

    .line 998
    :goto_0
    return-void

    .line 984
    :cond_0
    sget v10, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v10}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v7

    .line 985
    .local v7, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    sget v10, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v10}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v10

    iget v3, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    .line 986
    .local v3, "dockHeight":F
    sget v10, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v10, v10

    iget v11, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    sub-float/2addr v10, v11

    iget v11, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_right:F

    sub-float v4, v10, v11

    .line 987
    .local v4, "full_width":F
    int-to-float v10, v1

    div-float v2, v4, v10

    .line 988
    .local v2, "delta":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_1

    .line 989
    iget v10, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    div-float v11, v2, v13

    add-float/2addr v10, v11

    int-to-float v11, v5

    mul-float/2addr v11, v2

    add-float v8, v10, v11

    .line 990
    .local v8, "x":F
    iget v10, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    div-float v9, v10, v13

    .line 991
    .local v9, "y":F
    new-instance v6, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v6}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 992
    .local v6, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    sget v10, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v10, v10

    invoke-static {v8, v9, v10, v3, v6}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 993
    iget-object v10, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 994
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    iget v10, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v11, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v12, v6, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v0, v10, v11, v12}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 988
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 997
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v6    # "loc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v8    # "x":F
    .end local v9    # "y":F
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DockView;->updateGeometricState()V

    goto :goto_0
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 2
    .param p1, "camera"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 2006
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 2007
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v1, :cond_0

    .line 2008
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 2009
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexCoordMaterial;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    .line 2010
    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Mesh;->getShadowTexVertexArray()[F

    move-result-object v1

    if-nez v1, :cond_0

    .line 2011
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DockView;->updateUV()V

    .line 2014
    .end local v0    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    :cond_0
    return-void
.end method

.method public enableShowAppName(Z)V
    .locals 3
    .param p1, "en"    # Z

    .prologue
    if-eqz p1, :cond_hide_dock_label_checked

    const-string v1, "launcher_hide_dock_label"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_hide_dock_label_checked

    const/4 p1, 0x0

    :cond_hide_dock_label_checked
    .line 173
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 175
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/Cell;->enableShowAppName(Z)V

    goto :goto_0

    .line 181
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    return-void
.end method

.method public getAllCellsOnDock()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 808
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBackgroundNode()Lcom/smartisanos/smengine/SceneNode;
    .locals 1

    .prologue
    .line 2101
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method public getCellByIndex(I)Lcom/smartisanos/launcher/view/Cell;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, "cell":Lcom/smartisanos/launcher/view/Cell;
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v2, v1

    .line 221
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .local v2, "cell":Lcom/smartisanos/launcher/view/Cell;
    :goto_0
    return-object v2

    .line 209
    .end local v2    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .restart local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_2

    if-gez p1, :cond_3

    :cond_2
    move-object v2, v1

    .line 210
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .restart local v2    # "cell":Lcom/smartisanos/launcher/view/Cell;
    goto :goto_0

    .line 212
    .end local v2    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .restart local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_3
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 213
    .local v0, "c":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v0, :cond_4

    .line 216
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getCellIndex()I

    move-result v4

    if-ne v4, p1, :cond_4

    .line 217
    move-object v1, v0

    .end local v0    # "c":Lcom/smartisanos/launcher/view/Cell;
    :cond_5
    move-object v2, v1

    .line 221
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .restart local v2    # "cell":Lcom/smartisanos/launcher/view/Cell;
    goto :goto_0
.end method

.method public getCellChangeThemeAnimation(ZF)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 28
    .param p1, "withAnim"    # Z
    .param p2, "duration"    # F

    .prologue
    .line 1533
    if-eqz p1, :cond_17

    .line 1534
    new-instance v21, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct/range {v21 .. v21}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 1536
    .local v21, "timeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    const-string v23, ""

    sput-object v23, Lcom/smartisanos/smengine/Texture;->sTextFlag:Ljava/lang/String;

    .line 1537
    sget v23, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static/range {v23 .. v23}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    div-float v9, v23, v24

    .line 1538
    .local v9, "halfdockHeight":F
    sget-boolean v12, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    .line 1539
    .local v12, "isNewGaussianTheme":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/smengine/RectNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v13, v0, Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexCoordMaterial;

    .line 1540
    .local v13, "isOldThemeGaussian":Z
    sget v11, Lcom/smartisanos/launcher/data/Constants;->sIconBlendColor:F

    .line 1541
    .local v11, "iconBlendColor":F
    if-eqz v13, :cond_0

    .line 1542
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/DockView;->setUseStaticGaussian(Z)V

    .line 1544
    :cond_0
    if-eqz v12, :cond_1

    .line 1545
    const/16 v23, 0x0

    sput-boolean v23, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    .line 1547
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Lcom/smartisanos/launcher/view/DockView;

    const-string v26, "origin"

    invoke-direct/range {v25 .. v26}, Lcom/smartisanos/launcher/view/DockView;-><init>(Ljava/lang/String;)V

    aput-object v25, v23, v24

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/launcher/view/DockView;->create()V

    .line 1549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mTrashView:Lcom/smartisanos/launcher/view/TrashView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 1550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mTrashView:Lcom/smartisanos/launcher/view/TrashView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/smartisanos/launcher/view/TrashView;->setVisibility(Z)V

    .line 1552
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mSettingView:Lcom/smartisanos/launcher/view/SettingButton;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 1553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mSettingView:Lcom/smartisanos/launcher/view/SettingButton;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/smartisanos/launcher/view/SettingButton;->setVisibility(Z)V

    .line 1555
    :cond_3
    if-eqz v13, :cond_4

    .line 1556
    const/16 v23, 0x0

    sput-boolean v23, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    .line 1558
    :cond_4
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v23

    .line 1559
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getThemeToChange()Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v24

    .line 1558
    invoke-static/range {v23 .. v24}, Lcom/smartisanos/launcher/data/Constants;->getIconBlendColor(Landroid/content/Context;Lcom/smartisanos/launcher/theme/Theme;)F

    move-result v23

    sput v23, Lcom/smartisanos/launcher/data/Constants;->sIconBlendColor:F

    .line 1560
    const-string v23, "target/--/"

    sput-object v23, Lcom/smartisanos/smengine/Texture;->sTextFlag:Ljava/lang/String;

    .line 1561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    new-instance v25, Lcom/smartisanos/launcher/view/DockView;

    const-string v26, "target"

    sget-object v27, Lcom/smartisanos/launcher/view/TextView;->sAppPaintTemp:Landroid/graphics/Paint;

    invoke-direct/range {v25 .. v27}, Lcom/smartisanos/launcher/view/DockView;-><init>(Ljava/lang/String;Landroid/graphics/Paint;)V

    aput-object v25, v23, v24

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/launcher/view/DockView;->create()V

    .line 1563
    const/16 v8, -0x2d

    .line 1564
    .local v8, "downLayer":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lcom/smartisanos/launcher/view/DockView;->changeLayerForTheme(I)V

    .line 1565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "target/--/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "dock_back.png"

    const/16 v26, 0x1

    .line 1566
    invoke-static/range {v25 .. v26}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1565
    invoke-virtual/range {v23 .. v24}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mTrashView:Lcom/smartisanos/launcher/view/TrashView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    .line 1568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mTrashView:Lcom/smartisanos/launcher/view/TrashView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/smartisanos/launcher/view/TrashView;->setVisibility(Z)V

    .line 1570
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mSettingView:Lcom/smartisanos/launcher/view/SettingButton;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mSettingView:Lcom/smartisanos/launcher/view/SettingButton;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/smartisanos/launcher/view/SettingButton;->setVisibility(Z)V

    .line 1573
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/launcher/view/DockView;->getDockCellCount()I

    move-result v23

    if-lez v23, :cond_8

    .line 1574
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/launcher/view/DockView;->getDockCellCount()I

    move-result v23

    move/from16 v0, v23

    if-ge v10, v0, :cond_8

    .line 1575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/smartisanos/launcher/view/DockView;->getCellByIndex(I)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v7

    .line 1576
    .local v7, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v7, :cond_7

    .line 1577
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "target/--/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "_fore"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1578
    .local v20, "tex":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v22

    .line 1579
    .local v22, "tm":Lcom/smartisanos/smengine/TextureManager;
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TextureManager;->getTexture(Ljava/lang/String;)Lcom/smartisanos/smengine/Texture;

    move-result-object v23

    if-eqz v23, :cond_7

    .line 1580
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v23

    .line 1581
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 1574
    .end local v20    # "tex":Ljava/lang/String;
    .end local v22    # "tm":Lcom/smartisanos/smengine/TextureManager;
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1586
    .end local v7    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v10    # "i":I
    :cond_8
    new-instance v18, Lcom/smartisanos/smengine/SceneNode;

    const-string v23, "rotate90"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 1587
    .local v18, "rotate90Node":Lcom/smartisanos/smengine/SceneNode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1588
    const/high16 v4, -0x3d4c0000    # -90.0f

    .line 1589
    .local v4, "angle":F
    const v23, 0x3c8efa35

    mul-float v23, v23, v4

    new-instance v24, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v25, 0x3f800000    # 1.0f

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v24 .. v27}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v18

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 1590
    const/16 v23, 0x0

    neg-float v0, v9

    move/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v9, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    new-instance v25, Lcom/smartisanos/launcher/view/DockView;

    const-string v26, "next"

    sget-object v27, Lcom/smartisanos/launcher/view/TextView;->sAppPaintTemp:Landroid/graphics/Paint;

    invoke-direct/range {v25 .. v27}, Lcom/smartisanos/launcher/view/DockView;-><init>(Ljava/lang/String;Landroid/graphics/Paint;)V

    aput-object v25, v23, v24

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/launcher/view/DockView;->create()V

    .line 1594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/launcher/view/DockView;->getDockCellCount()I

    move-result v23

    if-lez v23, :cond_a

    .line 1595
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/launcher/view/DockView;->getDockCellCount()I

    move-result v23

    move/from16 v0, v23

    if-ge v10, v0, :cond_a

    .line 1596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/smartisanos/launcher/view/DockView;->getCellByIndex(I)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v7

    .line 1597
    .restart local v7    # "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v7, :cond_9

    .line 1598
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/smartisanos/launcher/view/Cell;->setVisibility(Z)V

    .line 1595
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1602
    .end local v7    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v10    # "i":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lcom/smartisanos/launcher/view/DockView;->changeLayerForTheme(I)V

    .line 1603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "target/--/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "dock_back.png"

    const/16 v26, 0x1

    .line 1604
    invoke-static/range {v25 .. v26}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1603
    invoke-virtual/range {v23 .. v24}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mTrashView:Lcom/smartisanos/launcher/view/TrashView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_b

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mTrashView:Lcom/smartisanos/launcher/view/TrashView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/smartisanos/launcher/view/TrashView;->setVisibility(Z)V

    .line 1608
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mSettingView:Lcom/smartisanos/launcher/view/SettingButton;

    move-object/from16 v23, v0

    if-eqz v23, :cond_c

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mSettingView:Lcom/smartisanos/launcher/view/SettingButton;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/smartisanos/launcher/view/SettingButton;->setVisibility(Z)V

    .line 1612
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_d
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_11

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/Cell;

    .line 1613
    .restart local v7    # "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v7, :cond_d

    iget-object v0, v7, Lcom/smartisanos/launcher/view/Cell;->mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    move-object/from16 v24, v0

    if-eqz v24, :cond_d

    iget-object v0, v7, Lcom/smartisanos/launcher/view/Cell;->mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    move/from16 v24, v0

    if-eqz v24, :cond_d

    iget-object v0, v7, Lcom/smartisanos/launcher/view/Cell;->mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->installed:Z

    move/from16 v24, v0

    if-nez v24, :cond_d

    sget-object v24, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->DOWNLOADING:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    iget-object v0, v7, Lcom/smartisanos/launcher/view/Cell;->mDownloadState:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 1617
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v14, v0, :cond_d

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v24, v0

    aget-object v16, v24, v14

    .line 1619
    .local v16, "nodes":Lcom/smartisanos/launcher/view/DockView;
    sget-object v19, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->PAUSE:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    .line 1620
    .local v19, "state":Lcom/smartisanos/launcher/view/DownloadView$DownloadState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    if-ne v0, v14, :cond_e

    .line 1621
    sget-object v19, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->COMPLETE:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    .line 1623
    :cond_e
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/launcher/view/DockView;->getDockCellCount()I

    move-result v24

    move/from16 v0, v24

    if-ge v10, v0, :cond_10

    .line 1624
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/smartisanos/launcher/view/DockView;->getCellByIndex(I)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v6

    .line 1625
    .local v6, "ce":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v6, :cond_f

    iget-object v0, v6, Lcom/smartisanos/launcher/view/Cell;->mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    move-object/from16 v24, v0

    if-eqz v24, :cond_f

    iget-object v0, v7, Lcom/smartisanos/launcher/view/Cell;->mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    iget-object v0, v6, Lcom/smartisanos/launcher/view/Cell;->mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1626
    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 1627
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/smartisanos/launcher/view/Cell;->setDownloadState(Lcom/smartisanos/launcher/view/DownloadView$DownloadState;)V

    .line 1628
    iget-object v0, v6, Lcom/smartisanos/launcher/view/Cell;->mActiveIconView:Lcom/smartisanos/launcher/view/ActiveIconView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_f

    .line 1629
    iget-object v0, v6, Lcom/smartisanos/launcher/view/Cell;->mActiveIconView:Lcom/smartisanos/launcher/view/ActiveIconView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/smartisanos/launcher/view/ActiveIconView;->setVisibility(Z)V

    .line 1623
    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1617
    .end local v6    # "ce":Lcom/smartisanos/launcher/view/Cell;
    :cond_10
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1637
    .end local v7    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v10    # "i":I
    .end local v14    # "j":I
    .end local v16    # "nodes":Lcom/smartisanos/launcher/view/DockView;
    .end local v19    # "state":Lcom/smartisanos/launcher/view/DownloadView$DownloadState;
    :cond_11
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v10, v0, :cond_13

    .line 1638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    aget-object v15, v23, v10

    .line 1639
    .local v15, "node":Lcom/smartisanos/launcher/view/DockView;
    if-eqz v15, :cond_12

    .line 1640
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-direct {v15, v0}, Lcom/smartisanos/launcher/view/DockView;->setEnableDepth(Z)V

    .line 1641
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-direct {v15, v0}, Lcom/smartisanos/launcher/view/DockView;->setPostRender(Z)V

    .line 1637
    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1644
    .end local v15    # "node":Lcom/smartisanos/launcher/view/DockView;
    :cond_13
    const-string v23, ""

    sput-object v23, Lcom/smartisanos/smengine/Texture;->sTextFlag:Ljava/lang/String;

    .line 1645
    new-instance v17, Lcom/smartisanos/smengine/SceneNode;

    const-string v23, "rotate180"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 1646
    .local v17, "rotate180Node":Lcom/smartisanos/smengine/SceneNode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1647
    const/high16 v4, -0x3ccc0000    # -180.0f

    .line 1648
    const v23, 0x3c8efa35

    mul-float v23, v23, v4

    new-instance v24, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v25, 0x3f800000    # 1.0f

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v24 .. v27}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v17

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 1649
    const/16 v23, 0x0

    const/16 v24, 0x0

    sget v25, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static/range {v25 .. v25}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    move/from16 v25, v0

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 1651
    const/high16 v4, -0x3d4c0000    # -90.0f

    .line 1652
    new-instance v23, Lcom/smartisanos/smengine/SceneNode;

    const-string v24, "rotateParent"

    invoke-direct/range {v23 .. v24}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/view/DockView;->mRotateParent:Lcom/smartisanos/smengine/SceneNode;

    .line 1653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mRotateParent:Lcom/smartisanos/smengine/SceneNode;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mRotateParent:Lcom/smartisanos/smengine/SceneNode;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mRotateParent:Lcom/smartisanos/smengine/SceneNode;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mRotateParent:Lcom/smartisanos/smengine/SceneNode;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    neg-float v0, v9

    move/from16 v26, v0

    invoke-virtual/range {v23 .. v26}, Lcom/smartisanos/smengine/SceneNode;->setScaleRotatePivot(FFF)V

    .line 1657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mRotateParent:Lcom/smartisanos/smengine/SceneNode;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/DockView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1658
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/DockView;->updateGeometricState()V

    .line 1660
    new-instance v5, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mRotateParent:Lcom/smartisanos/smengine/SceneNode;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1661
    .local v5, "animR":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 1662
    new-instance v23, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v23 .. v26}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setRotateAxis(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 1663
    const/16 v23, 0x1e

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 1664
    const/16 v23, 0x2

    new-instance v24, Ljava/lang/Float;

    const/16 v25, 0x0

    invoke-direct/range {v24 .. v25}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    new-instance v25, Ljava/lang/Float;

    neg-float v0, v4

    move/from16 v26, v0

    const v27, 0x3c8efa35

    mul-float v26, v26, v27

    invoke-direct/range {v25 .. v26}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v25

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v5, v0, v1, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFF)V

    .line 1666
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/smartisanos/launcher/view/DockView;->setVisibility(Z)V

    .line 1669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/smartisanos/launcher/view/DockView;->setVisibility(Z)V

    .line 1670
    if-eqz v12, :cond_14

    .line 1671
    const/16 v23, 0x1

    sput-boolean v23, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    .line 1673
    :cond_14
    sget-boolean v23, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v23, :cond_15

    .line 1674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 1675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v23

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 1677
    :cond_15
    if-eqz v13, :cond_16

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/smartisanos/smengine/RectNode;->setIsEnableDepthTest(Z)V

    .line 1679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 1680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mNodes:[Lcom/smartisanos/launcher/view/DockView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v23

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 1683
    :cond_16
    sput v11, Lcom/smartisanos/launcher/data/Constants;->sIconBlendColor:F

    .line 1684
    new-instance v23, Lcom/smartisanos/launcher/view/DockView$6;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/DockView$6;-><init>(Lcom/smartisanos/launcher/view/DockView;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 1710
    .end local v4    # "angle":F
    .end local v5    # "animR":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v8    # "downLayer":I
    .end local v9    # "halfdockHeight":F
    .end local v10    # "i":I
    .end local v11    # "iconBlendColor":F
    .end local v12    # "isNewGaussianTheme":Z
    .end local v13    # "isOldThemeGaussian":Z
    .end local v17    # "rotate180Node":Lcom/smartisanos/smengine/SceneNode;
    .end local v18    # "rotate90Node":Lcom/smartisanos/smengine/SceneNode;
    .end local v21    # "timeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    :goto_5
    return-object v21

    :cond_17
    const/16 v21, 0x0

    goto :goto_5
.end method

.method public getCellLocation(I)[Lcom/smartisanos/smengine/math/Vector3f;
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 1290
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v1

    sget-object v2, Lcom/smartisanos/launcher/view/TrashView$STATUS;->APPEAR:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/TrashView;->getStatus(Lcom/smartisanos/launcher/view/TrashView$STATUS;)Z

    move-result v0

    .line 1291
    .local v0, "trashAppear":Z
    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/launcher/view/DockView;->getCellLocation(ZI)[Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    return-object v1
.end method

.method public getCellLocation(IZIZ)[Lcom/smartisanos/smengine/math/Vector3f;
    .locals 6
    .param p1, "count"    # I
    .param p2, "trashAppear"    # Z
    .param p3, "displayMode"    # I
    .param p4, "useTrashInTimeLocation"    # Z

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mTrashView:Lcom/smartisanos/launcher/view/TrashView;

    .line 1353
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TrashView;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    sget-object v5, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    move v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    .line 1349
    invoke-static/range {v0 .. v5}, Lcom/smartisanos/launcher/view/DockView;->getDockCellLocation(IZIZLcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/launcher/data/Constants$HandHabit;)[Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocation(ZI)[Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p1, "trashAppear"    # Z
    .param p2, "displayMode"    # I

    .prologue
    .line 1295
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/smartisanos/launcher/view/DockView;->getCellLocation(ZIZ)[Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocation(ZIZ)[Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p1, "trashAppear"    # Z
    .param p2, "displayMode"    # I
    .param p3, "useTrashInTimeLocation"    # Z

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/smartisanos/launcher/view/DockView;->getCellLocation(IZIZ)[Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocationWhenDockCellUp(I)[Lcom/smartisanos/smengine/math/Vector3f;
    .locals 14
    .param p1, "activeCellIndex"    # I

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    .line 1454
    iget-object v11, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1455
    .local v1, "count":I
    if-nez v1, :cond_1

    .line 1456
    const/4 v11, 0x0

    new-array v8, v11, [Lcom/smartisanos/smengine/math/Vector3f;

    .line 1490
    :cond_0
    return-object v8

    .line 1458
    :cond_1
    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    .line 1459
    .local v2, "currentHabit":Lcom/smartisanos/launcher/data/Constants$HandHabit;
    if-nez p1, :cond_2

    .line 1460
    sget-object v2, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    .line 1462
    :cond_2
    iget-object v11, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ne p1, v11, :cond_3

    .line 1463
    sget-object v2, Lcom/smartisanos/launcher/data/Constants$HandHabit;->LEFT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    .line 1465
    :cond_3
    sget v11, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v11}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v9

    .line 1466
    .local v9, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    const/4 v0, 0x0

    .line 1467
    .local v0, "cellAreaWidth":I
    iget-object v11, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_5

    .line 1468
    sget v11, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    div-int/lit8 v11, v11, 0x4

    mul-int/lit8 v0, v11, 0x3

    .line 1475
    :goto_0
    iget v10, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    .line 1476
    .local v10, "w":F
    div-int v11, v0, v1

    int-to-float v3, v11

    .line 1477
    .local v3, "delta":F
    sget-object v11, Lcom/smartisanos/launcher/data/Constants$HandHabit;->LEFT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne v2, v11, :cond_4

    .line 1478
    sget v11, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    sub-int/2addr v11, v0

    int-to-float v10, v11

    .line 1482
    :cond_4
    iget v4, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    .line 1483
    .local v4, "dockHeight":F
    div-float v5, v4, v13

    .line 1484
    .local v5, "h":F
    new-array v8, v1, [Lcom/smartisanos/smengine/math/Vector3f;

    .line 1485
    .local v8, "locs":[Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v1, :cond_0

    .line 1486
    new-instance v7, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1487
    .local v7, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    div-float v11, v3, v13

    add-float/2addr v11, v10

    int-to-float v12, v6

    mul-float/2addr v12, v3

    add-float/2addr v11, v12

    sget v12, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v12, v12

    invoke-static {v11, v5, v12, v4, v7}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 1488
    aput-object v7, v8, v6

    .line 1485
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1469
    .end local v3    # "delta":F
    .end local v4    # "dockHeight":F
    .end local v5    # "h":F
    .end local v6    # "i":I
    .end local v7    # "loc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v8    # "locs":[Lcom/smartisanos/smengine/math/Vector3f;
    .end local v10    # "w":F
    :cond_5
    iget-object v11, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_6

    .line 1470
    const/4 v0, 0x0

    goto :goto_0

    .line 1472
    :cond_6
    sget v11, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    iget-object v12, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    div-int/2addr v11, v12

    iget-object v12, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    mul-int v0, v11, v12

    goto :goto_0
.end method

.method public getCollidedUpCell()Lcom/smartisanos/launcher/view/Cell;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->collidedUpCell:Lcom/smartisanos/launcher/view/Cell;

    return-object v0
.end method

.method public getDockCellArea(IZLcom/smartisanos/launcher/view/Cell;)Lcom/smartisanos/smengine/BoundingRect;
    .locals 16
    .param p1, "mode"    # I
    .param p2, "showTrashOrSetting"    # Z
    .param p3, "longPressedDockCell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 1225
    invoke-static/range {p1 .. p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v9

    .line 1226
    .local v9, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    const/4 v1, 0x0

    .line 1227
    .local v1, "cellAreaWidth":F
    if-nez p2, :cond_0

    sget v12, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    move/from16 v0, p1

    if-ne v0, v12, :cond_9

    .line 1228
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_7

    .line 1229
    sget v12, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    div-int/lit8 v12, v12, 0x4

    mul-int/lit8 v12, v12, 0x3

    int-to-float v1, v12

    .line 1239
    :goto_0
    const/4 v11, 0x0

    .line 1240
    .local v11, "w":F
    sget v12, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    move/from16 v0, p1

    if-ne v0, v12, :cond_b

    .line 1241
    const/4 v2, 0x0

    .line 1242
    .local v2, "currentHabit":Lcom/smartisanos/launcher/data/Constants$HandHabit;
    if-eqz p3, :cond_3

    .line 1243
    sget-boolean v12, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v12, :cond_1

    sget-object v12, Lcom/smartisanos/launcher/view/DockView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v13, "longPressedDockCell is not null"

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 1244
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v12

    iget v4, v12, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 1245
    .local v4, "index":I
    if-nez v4, :cond_2

    .line 1246
    sget-object v2, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    .line 1248
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v4, v12, :cond_3

    .line 1249
    sget-object v2, Lcom/smartisanos/launcher/data/Constants$HandHabit;->LEFT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    .line 1252
    .end local v4    # "index":I
    :cond_3
    if-eqz v2, :cond_a

    .line 1253
    sget-object v12, Lcom/smartisanos/launcher/data/Constants$HandHabit;->LEFT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne v2, v12, :cond_4

    .line 1254
    sget v12, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v12, v12

    sub-float v11, v12, v1

    .line 1273
    .end local v2    # "currentHabit":Lcom/smartisanos/launcher/data/Constants$HandHabit;
    :cond_4
    :goto_1
    iget v3, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    .line 1274
    .local v3, "dockHeight":F
    sget v12, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    move/from16 v0, p1

    if-ne v0, v12, :cond_5

    .line 1275
    sget v12, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v12}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v12

    iget v3, v12, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    .line 1278
    :cond_5
    move v8, v11

    .line 1279
    .local v8, "minX":F
    add-float v6, v11, v1

    .line 1280
    .local v6, "maxX":F
    new-instance v7, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1281
    .local v7, "minLoc":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v5, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v5}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1282
    .local v5, "maxLoc":Lcom/smartisanos/smengine/math/Vector3f;
    sget v12, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v12, v12

    invoke-static {v8, v3, v12, v3, v7}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 1283
    const/4 v12, 0x0

    sget v13, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v13, v13

    invoke-static {v6, v12, v13, v3, v5}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 1284
    new-instance v10, Lcom/smartisanos/smengine/BoundingRect;

    new-instance v12, Lcom/smartisanos/smengine/math/Vector2f;

    iget v13, v7, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v14, v7, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-direct {v12, v13, v14}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    new-instance v13, Lcom/smartisanos/smengine/math/Vector2f;

    iget v14, v5, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v15, v5, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-direct {v13, v14, v15}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    invoke-direct {v10, v12, v13}, Lcom/smartisanos/smengine/BoundingRect;-><init>(Lcom/smartisanos/smengine/math/Vector2f;Lcom/smartisanos/smengine/math/Vector2f;)V

    .line 1285
    .local v10, "rect":Lcom/smartisanos/smengine/BoundingRect;
    sget-boolean v12, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v12, :cond_6

    sget-object v12, Lcom/smartisanos/launcher/view/DockView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v13, "A140"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getDockCellArea rect min ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Lcom/smartisanos/smengine/BoundingRect;->getMinPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "], max ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Lcom/smartisanos/smengine/BoundingRect;->getMaxPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    :cond_6
    return-object v10

    .line 1230
    .end local v3    # "dockHeight":F
    .end local v5    # "maxLoc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v6    # "maxX":F
    .end local v7    # "minLoc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v8    # "minX":F
    .end local v10    # "rect":Lcom/smartisanos/smengine/BoundingRect;
    .end local v11    # "w":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_8

    .line 1231
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1233
    :cond_8
    sget v12, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    div-int/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    mul-int/2addr v12, v13

    int-to-float v1, v12

    goto/16 :goto_0

    .line 1236
    :cond_9
    sget v12, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v12, v12

    iget v13, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    sub-float/2addr v12, v13

    iget v13, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_right:F

    sub-float v1, v12, v13

    goto/16 :goto_0

    .line 1259
    .restart local v2    # "currentHabit":Lcom/smartisanos/launcher/data/Constants$HandHabit;
    .restart local v11    # "w":F
    :cond_a
    sget-object v12, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object v13, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne v12, v13, :cond_4

    .line 1260
    sget v12, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v12, v12

    sub-float v11, v12, v1

    goto/16 :goto_1

    .line 1266
    .end local v2    # "currentHabit":Lcom/smartisanos/launcher/data/Constants$HandHabit;
    :cond_b
    sget-object v12, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object v13, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne v12, v13, :cond_4

    .line 1267
    sget v12, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v12, v12

    sub-float v11, v12, v1

    goto/16 :goto_1
.end method

.method public getDockCellBoundingRect()Lcom/smartisanos/smengine/BoundingRect;
    .locals 1

    .prologue
    .line 949
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/DockView;->getDockCellBoundingRect(I)Lcom/smartisanos/smengine/BoundingRect;

    move-result-object v0

    return-object v0
.end method

.method public getDockCellBoundingRect(I)Lcom/smartisanos/smengine/BoundingRect;
    .locals 9
    .param p1, "mode"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 953
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 954
    .local v1, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v2, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    .line 955
    .local v2, "width":F
    iget v0, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    .line 958
    .local v0, "dockHeight":F
    sget v3, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne p1, v3, :cond_0

    .line 959
    new-instance v3, Lcom/smartisanos/smengine/BoundingRect;

    new-instance v4, Lcom/smartisanos/smengine/math/Vector2f;

    neg-float v5, v2

    div-float/2addr v5, v8

    neg-float v6, v0

    sub-float/2addr v6, v2

    invoke-direct {v4, v5, v6}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    new-instance v5, Lcom/smartisanos/smengine/math/Vector2f;

    div-float v6, v2, v8

    div-float v7, v0, v8

    invoke-direct {v5, v6, v7}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    invoke-direct {v3, v4, v5}, Lcom/smartisanos/smengine/BoundingRect;-><init>(Lcom/smartisanos/smengine/math/Vector2f;Lcom/smartisanos/smengine/math/Vector2f;)V

    .line 961
    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Lcom/smartisanos/smengine/BoundingRect;

    new-instance v4, Lcom/smartisanos/smengine/math/Vector2f;

    neg-float v5, v2

    div-float/2addr v5, v8

    neg-float v6, v0

    mul-float v7, v8, v2

    sub-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    new-instance v5, Lcom/smartisanos/smengine/math/Vector2f;

    div-float v6, v2, v8

    div-float v7, v0, v8

    invoke-direct {v5, v6, v7}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    invoke-direct {v3, v4, v5}, Lcom/smartisanos/smengine/BoundingRect;-><init>(Lcom/smartisanos/smengine/math/Vector2f;Lcom/smartisanos/smengine/math/Vector2f;)V

    goto :goto_0
.end method

.method public getDockCellById(J)Lcom/smartisanos/launcher/view/Cell;
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 157
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    .line 159
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 164
    .end local v1    # "i":I
    .restart local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    if-nez v0, :cond_1

    .line 165
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView;->mTrashView:Lcom/smartisanos/launcher/view/TrashView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView;->mTrashView:Lcom/smartisanos/launcher/view/TrashView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/TrashView;->getWaitingUninstallAppInfo()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 166
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView;->mTrashView:Lcom/smartisanos/launcher/view/TrashView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/TrashView;->getWaitingUninstallAppInfo()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    .line 169
    :cond_1
    return-object v0

    .line 157
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getDockCellByTouchPoint(FF)Lcom/smartisanos/launcher/view/Cell;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1109
    const/4 v1, 0x0

    .line 1110
    .local v1, "c":Lcom/smartisanos/launcher/view/Cell;
    new-instance v4, Lcom/smartisanos/smengine/math/Vector3f;

    const/4 v5, 0x0

    invoke-direct {v4, p1, p2, v5}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 1111
    .local v4, "worldP":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 1112
    iget-object v5, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 1113
    .local v2, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getWorldBoundingVolume()Lcom/smartisanos/smengine/BoundingVolume;

    move-result-object v0

    .line 1114
    .local v0, "bv":Lcom/smartisanos/smengine/BoundingVolume;
    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/BoundingVolume;->isPointInBoundingVolume(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1115
    move-object v1, v2

    .line 1119
    .end local v0    # "bv":Lcom/smartisanos/smengine/BoundingVolume;
    .end local v2    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    return-object v1

    .line 1111
    .restart local v0    # "bv":Lcom/smartisanos/smengine/BoundingVolume;
    .restart local v2    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getDockCellCount()I
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDockComponentLoc(Lcom/smartisanos/launcher/view/DockView$Component;Z)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 9
    .param p1, "cmp"    # Lcom/smartisanos/launcher/view/DockView$Component;
    .param p2, "visible"    # Z

    .prologue
    const/4 v4, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 699
    if-nez p1, :cond_0

    .line 727
    :goto_0
    return-object v4

    .line 702
    :cond_0
    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v5, v6

    .line 703
    .local v5, "windowWidth":F
    sget v6, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v6}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v6

    iget v1, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    .line 704
    .local v1, "dockHeight":F
    float-to-int v6, v5

    div-int/lit8 v0, v6, 0x4

    .line 705
    .local v0, "delta":I
    const/high16 v2, -0x40800000    # -1.0f

    .line 706
    .local v2, "leftTopX":F
    move v3, v1

    .line 707
    .local v3, "leftTopY":F
    sget-object v6, Lcom/smartisanos/launcher/view/DockView$8;->$SwitchMap$com$smartisanos$launcher$view$DockView$Component:[I

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/DockView$Component;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 709
    :pswitch_0
    sget v6, Lcom/smartisanos/launcher/data/Constants;->icon_sort_confirm_padding:I

    int-to-float v6, v6

    sub-float v2, v5, v6

    .line 710
    if-eqz p2, :cond_1

    .line 711
    sget v6, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v6}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v6

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    div-float v3, v6, v8

    .line 725
    :cond_1
    :goto_1
    new-instance v4, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 726
    .local v4, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-static {v2, v3, v5, v1, v4}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    goto :goto_0

    .line 716
    .end local v4    # "loc":Lcom/smartisanos/smengine/math/Vector3f;
    :pswitch_1
    sget v6, Lcom/smartisanos/launcher/data/Constants;->icon_sort_confirm_padding:I

    int-to-float v2, v6

    .line 717
    if-eqz p2, :cond_1

    .line 718
    sget v6, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v6}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v6

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    div-float v3, v6, v8

    goto :goto_1

    .line 707
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDotView()Lcom/smartisanos/launcher/view/DotView;
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mDotView:Lcom/smartisanos/launcher/view/DotView;

    return-object v0
.end method

.method public getGaussianBackAnimForIconSort(ZF)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .locals 26
    .param p1, "show"    # Z
    .param p2, "du"    # F

    .prologue
    .line 1715
    const-string v21, "dockgaussian_two.texture.cell"

    .line 1716
    .local v21, "meshName":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 1717
    sget v2, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v25

    .line 1718
    .local v25, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    const-string v2, "dockgaussian"

    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v3, v3

    move-object/from16 v0, v25

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v2, v3, v4, v6, v7}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/smartisanos/launcher/view/DockView;->mBackGaussianNode:Lcom/smartisanos/smengine/RectNode;

    .line 1719
    const-string v2, "TextureModularColorMaterial"

    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v20

    .line 1720
    .local v20, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/DockView;->mBackGaussianNode:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 1721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/DockView;->mBackGaussianNode:Lcom/smartisanos/smengine/RectNode;

    const-string v3, "t_blur_background"

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 1722
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/DockView;->mBackGaussianNode:Lcom/smartisanos/smengine/RectNode;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 1723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/DockView;->mBackGaussianNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 1724
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/DockView;->mBackGaussianNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40000000    # -2.0f

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 1725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/DockView;->mBackGaussianNode:Lcom/smartisanos/smengine/RectNode;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 1726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/DockView;->mBackGaussianNode:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/DockView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1727
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/DockView;->updateGeometricState()V

    .line 1728
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/DockView;->getLayStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/LayerManager;->getDockLayer(I)Lcom/smartisanos/launcher/view/LayerManager$DockLayer;

    move-result-object v19

    .line 1729
    .local v19, "dockLayer":Lcom/smartisanos/launcher/view/LayerManager$DockLayer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/DockView;->mBackGaussianNode:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v0, v19

    iget v3, v0, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOCK_BACKGROUND_LAYER:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 1730
    const/4 v5, 0x0

    .line 1731
    .local v5, "flip":Z
    move-object/from16 v23, p0

    .line 1732
    .local v23, "node":Lcom/smartisanos/smengine/SceneNode;
    new-instance v24, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v24 .. v24}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1733
    .local v24, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual/range {v23 .. v24}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 1734
    const/16 v2, 0x8

    new-array v8, v2, [F

    .line 1735
    .local v8, "uvStatus":[F
    move-object/from16 v0, v24

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v24

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v24

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v6, v6

    move-object/from16 v0, v25

    iget v7, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    invoke-static/range {v2 .. v8}, Lcom/smartisanos/launcher/data/Utils;->getUVOnScreen(FFFZFF[F)V

    .line 1736
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v2

    const-string v3, "dockgaussian_two.texture.cell"

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/MeshManager;->getMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;

    move-result-object v22

    .line 1737
    .local v22, "newMesh":Lcom/smartisanos/smengine/Mesh;
    if-nez v22, :cond_0

    .line 1738
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/DockView;->mBackGaussianNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Mesh;->clone()Lcom/smartisanos/smengine/Mesh;

    move-result-object v22

    .line 1739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/DockView;->mBackGaussianNode:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 1740
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v2

    const-string v3, "dockgaussian_two.texture.cell"

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0}, Lcom/smartisanos/smengine/MeshManager;->addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;

    .line 1742
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/Mesh;->getTexVertexArray(I)[F

    move-result-object v2

    if-nez v2, :cond_3

    .line 1743
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v8}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 1748
    .end local v5    # "flip":Z
    .end local v8    # "uvStatus":[F
    .end local v19    # "dockLayer":Lcom/smartisanos/launcher/view/LayerManager$DockLayer;
    .end local v20    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v22    # "newMesh":Lcom/smartisanos/smengine/Mesh;
    .end local v23    # "node":Lcom/smartisanos/smengine/SceneNode;
    .end local v24    # "pos":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v25    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    :cond_1
    :goto_0
    new-instance v9, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/DockView;->mBackGaussianNode:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v9, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1749
    .local v9, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/high16 v11, 0x3f800000    # 1.0f

    .line 1750
    .local v11, "fromC":F
    const/4 v15, 0x0

    .line 1751
    .local v15, "toC":F
    if-eqz p1, :cond_2

    .line 1752
    const/4 v11, 0x0

    .line 1753
    const/high16 v15, 0x3f800000    # 1.0f

    .line 1755
    :cond_2
    const/4 v10, 0x3

    move v12, v11

    move v13, v11

    move v14, v11

    move/from16 v16, v15

    move/from16 v17, v15

    move/from16 v18, v15

    invoke-virtual/range {v9 .. v18}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 1757
    move/from16 v0, p2

    invoke-virtual {v9, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 1758
    new-instance v2, Lcom/smartisanos/launcher/view/DockView$7;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/smartisanos/launcher/view/DockView$7;-><init>(Lcom/smartisanos/launcher/view/DockView;Z)V

    invoke-virtual {v9, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 1770
    return-object v9

    .line 1745
    .end local v9    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v11    # "fromC":F
    .end local v15    # "toC":F
    .restart local v5    # "flip":Z
    .restart local v8    # "uvStatus":[F
    .restart local v19    # "dockLayer":Lcom/smartisanos/launcher/view/LayerManager$DockLayer;
    .restart local v20    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .restart local v22    # "newMesh":Lcom/smartisanos/smengine/Mesh;
    .restart local v23    # "node":Lcom/smartisanos/smengine/SceneNode;
    .restart local v24    # "pos":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v25    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v8}, Lcom/smartisanos/smengine/Mesh;->updateTexVertexFloatBuffer(I[F)V

    goto :goto_0
.end method

.method public getLayStatus()I
    .locals 1

    .prologue
    .line 1907
    iget v0, p0, Lcom/smartisanos/launcher/view/DockView;->mLayerStatus:I

    return v0
.end method

.method public getPreCollideMoveIndex()I
    .locals 1

    .prologue
    .line 873
    iget v0, p0, Lcom/smartisanos/launcher/view/DockView;->preCollideMoveIndex:I

    return v0
.end method

.method public getPreCollideUpIndex()I
    .locals 1

    .prologue
    .line 861
    iget v0, p0, Lcom/smartisanos/launcher/view/DockView;->preCollideUpIndex:I

    return v0
.end method

.method public getSelectedCell()Lcom/smartisanos/launcher/view/Cell;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mSelectedCell:Lcom/smartisanos/launcher/view/Cell;

    return-object v0
.end method

.method public getSettingButton()Lcom/smartisanos/launcher/view/SettingButton;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mSettingView:Lcom/smartisanos/launcher/view/SettingButton;

    return-object v0
.end method

.method public getSettingButtonHiddenLocation()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 113
    const/4 v4, 0x0

    .line 114
    .local v4, "x":F
    sget v5, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 115
    .local v0, "multiPageLP":Lcom/smartisanos/launcher/data/LayoutProperty;
    sget v5, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    .line 116
    .local v3, "singlePageLP":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v5, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v6, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    div-float v1, v5, v6

    .line 117
    .local v1, "scalex":F
    sget v5, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    div-float v2, v5, v1

    .line 118
    .local v2, "setting_width":F
    sget-object v5, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object v6, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne v5, v6, :cond_0

    .line 119
    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    neg-float v5, v5

    div-float v4, v5, v8

    .line 123
    :goto_0
    new-instance v5, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v5, v4, v7, v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    return-object v5

    .line 121
    :cond_0
    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    div-float v4, v5, v8

    goto :goto_0
.end method

.method public getSettingButtonShowLocation()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/DockView;->getSettingButtonShowLocation(I)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getSettingButtonShowLocation(I)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 10
    .param p1, "cellCount"    # I

    .prologue
    .line 131
    const/4 v5, 0x0

    .line 132
    .local v5, "w":I
    const/4 v0, 0x0

    .line 133
    .local v0, "delta":I
    const/4 v6, 0x4

    if-ne p1, v6, :cond_0

    .line 134
    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    div-int/lit8 v6, v6, 0x4

    mul-int/lit8 v0, v6, 0x3

    .line 140
    :goto_0
    sget-object v6, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object v7, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne v6, v7, :cond_2

    .line 141
    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    sub-int/2addr v6, v0

    div-int/lit8 v5, v6, 0x2

    .line 146
    :goto_1
    sget v6, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v6}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v6

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v3, v6, v7

    .line 147
    .local v3, "h":F
    new-instance v4, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 148
    .local v4, "v":Lcom/smartisanos/smengine/math/Vector3f;
    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    .line 149
    .local v2, "dockWidth":I
    sget v6, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v6}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v6

    iget v1, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    .line 150
    .local v1, "dockHeight":F
    int-to-float v6, v5

    int-to-float v7, v2

    invoke-static {v6, v3, v7, v1, v4}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 151
    new-instance v6, Lcom/smartisanos/smengine/math/Vector3f;

    iget v7, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v8, v4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    return-object v6

    .line 135
    .end local v1    # "dockHeight":F
    .end local v2    # "dockWidth":I
    .end local v3    # "h":F
    .end local v4    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    if-nez p1, :cond_1

    .line 136
    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :cond_1
    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    add-int/lit8 v7, p1, 0x1

    div-int/2addr v6, v7

    mul-int v0, v6, p1

    goto :goto_0

    .line 143
    :cond_2
    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    sub-int/2addr v6, v0

    div-int/lit8 v6, v6, 0x2

    add-int v5, v0, v6

    goto :goto_1
.end method

.method public getSortButtonHideLoc()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 1299
    sget v7, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v7}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v5

    .line 1300
    .local v5, "sProp":Lcom/smartisanos/launcher/data/LayoutProperty;
    sget v7, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v7}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v4

    .line 1301
    .local v4, "mProp":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v0, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    .line 1302
    .local v0, "delta":F
    neg-float v7, v0

    div-float v6, v7, v9

    .line 1303
    .local v6, "x":F
    sget-object v7, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object v8, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne v7, v8, :cond_0

    .line 1304
    sget v7, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v7, v7

    div-float v8, v0, v9

    add-float v6, v7, v8

    .line 1306
    :cond_0
    iget v1, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    .line 1307
    .local v1, "dockHeight":F
    iget v7, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    div-float v2, v7, v9

    .line 1308
    .local v2, "h":F
    new-instance v3, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1309
    .local v3, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    sget v7, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v7, v7

    invoke-static {v6, v2, v7, v1, v3}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 1310
    return-object v3
.end method

.method public getSortButtonShowLoc()[Lcom/smartisanos/smengine/math/Vector3f;
    .locals 14

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    .line 1315
    iget-object v11, p0, Lcom/smartisanos/launcher/view/DockView;->sortButtons:[Lcom/smartisanos/smengine/RectNode;

    array-length v1, v11

    .line 1316
    .local v1, "count":I
    sget v11, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v11}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v9

    .line 1317
    .local v9, "sProp":Lcom/smartisanos/launcher/data/LayoutProperty;
    sget v11, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static {v11}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v8

    .line 1318
    .local v8, "mProp":Lcom/smartisanos/launcher/data/LayoutProperty;
    sget v11, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v11, v11

    const/high16 v12, 0x3f400000    # 0.75f

    mul-float v0, v11, v12

    .line 1319
    .local v0, "cellAreaWidth":F
    const/4 v10, 0x0

    .line 1320
    .local v10, "w":F
    sget-object v11, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object v12, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne v11, v12, :cond_0

    .line 1321
    sget v11, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v11, v11

    sub-float v10, v11, v0

    .line 1323
    :cond_0
    iget v3, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    .line 1324
    .local v3, "dockHeight":F
    int-to-float v11, v1

    div-float v2, v0, v11

    .line 1325
    .local v2, "delta":F
    iget v11, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    div-float v4, v11, v13

    .line 1326
    .local v4, "h":F
    new-array v7, v1, [Lcom/smartisanos/smengine/math/Vector3f;

    .line 1327
    .local v7, "locs":[Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 1328
    new-instance v6, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v6}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1329
    .local v6, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    div-float v11, v2, v13

    add-float/2addr v11, v10

    int-to-float v12, v5

    mul-float/2addr v12, v2

    add-float/2addr v11, v12

    sget v12, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v12, v12

    invoke-static {v11, v4, v12, v3, v6}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 1330
    aput-object v6, v7, v5

    .line 1327
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1332
    .end local v6    # "loc":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_1
    return-object v7
.end method

.method public getTrashLocationByMode(IZ)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 10
    .param p1, "mode"    # I
    .param p2, "visible"    # Z

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 812
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/smartisanos/launcher/view/DockView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTrashLocationByMode ==> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->getModeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", visible = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    :cond_0
    const/4 v4, 0x0

    .line 814
    .local v4, "w":I
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    .line 815
    .local v3, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    const/4 v0, 0x0

    .line 816
    .local v0, "cellAreaWidth":I
    iget-object v5, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 817
    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    div-int/lit8 v5, v5, 0x4

    mul-int/lit8 v0, v5, 0x3

    .line 824
    :goto_0
    sget-object v5, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object v6, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    if-ne v5, v6, :cond_4

    .line 825
    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    sub-int/2addr v5, v0

    div-int/lit8 v4, v5, 0x2

    .line 829
    :goto_1
    const/4 v1, 0x0

    .line 830
    .local v1, "h":F
    if-eqz p2, :cond_5

    .line 831
    iget v5, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    iget v6, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_display_height:F

    sub-float/2addr v5, v6

    iget v6, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_height:F

    div-float/2addr v6, v9

    add-float v1, v5, v6

    .line 835
    :goto_2
    new-instance v2, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 836
    .local v2, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    int-to-float v5, v4

    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v6, v6

    sget v7, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    .line 839
    invoke-static {v7}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v7

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    .line 836
    invoke-static {v5, v1, v6, v7, v2}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 841
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/smartisanos/launcher/view/DockView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTrashLocationByMode trash size w ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_width:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], h ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_height:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " loc ==> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    :cond_1
    return-object v2

    .line 818
    .end local v1    # "h":F
    .end local v2    # "loc":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_2
    iget-object v5, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 819
    const/4 v0, 0x0

    goto :goto_0

    .line 821
    :cond_3
    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    iget-object v6, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    div-int/2addr v5, v6

    iget-object v6, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    mul-int v0, v5, v6

    goto/16 :goto_0

    .line 827
    :cond_4
    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    add-int v4, v0, v5

    goto/16 :goto_1

    .line 833
    .restart local v1    # "h":F
    :cond_5
    iget v5, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    iget v6, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_height:F

    div-float/2addr v6, v9

    add-float v1, v5, v6

    goto :goto_2
.end method

.method public getTrashView()Lcom/smartisanos/launcher/view/TrashView;
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mTrashView:Lcom/smartisanos/launcher/view/TrashView;

    return-object v0
.end method

.method public handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;F)V
    .locals 1
    .param p1, "animType"    # Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;
    .param p2, "time"    # F

    .prologue
    .line 1520
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 1521
    return-void
.end method

.method public handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V
    .locals 1
    .param p1, "animType"    # Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;
    .param p2, "time"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;",
            "F",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1524
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->animation:Lcom/smartisanos/launcher/animations/DockViewAnimation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 1525
    return-void
.end method

.method public initSortBubble(I)V
    .locals 27
    .param p1, "index"    # I

    .prologue
    .line 613
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/DockView;->clearSortBubble()V

    .line 614
    const-string v6, "sort_bubble_texture"

    .line 615
    .local v6, "bubbleTextureName":Ljava/lang/String;
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v14, v0, [I

    const/16 v22, 0x0

    sget v23, Lcom/smartisanos/launcher/ResIds$string;->sort_by_usage_frequency:I

    aput v23, v14, v22

    const/16 v22, 0x1

    sget v23, Lcom/smartisanos/launcher/ResIds$string;->sort_by_color:I

    aput v23, v14, v22

    const/16 v22, 0x2

    sget v23, Lcom/smartisanos/launcher/ResIds$string;->sort_by_install_time:I

    aput v23, v14, v22

    const/16 v22, 0x3

    sget v23, Lcom/smartisanos/launcher/ResIds$string;->sort_by_category:I

    aput v23, v14, v22

    .line 621
    .local v14, "resIds":[I
    sget v22, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v13

    .line 622
    .local v13, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/DockView;->getLayStatus()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/smartisanos/launcher/view/LayerManager;->getDockLayer(I)Lcom/smartisanos/launcher/view/LayerManager$DockLayer;

    move-result-object v9

    .line 623
    .local v9, "dockLayer":Lcom/smartisanos/launcher/view/LayerManager$DockLayer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/DockView;->sortButtons:[Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v22, v0

    aget-object v7, v22, p1

    .line 624
    .local v7, "button":Lcom/smartisanos/smengine/RectNode;
    aget v16, v14, p1

    .line 625
    .local v16, "textResId":I
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LauncherApplication;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 626
    .local v8, "displayText":Ljava/lang/String;
    move-object/from16 v18, v6

    .line 627
    .local v18, "textureName":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v19

    .line 628
    .local v19, "tm":Lcom/smartisanos/smengine/TextureManager;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 629
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TextureManager;->getTexture(Ljava/lang/String;)Lcom/smartisanos/smengine/Texture;

    move-result-object v17

    .line 630
    .local v17, "texture":Lcom/smartisanos/smengine/Texture;
    const/4 v4, 0x0

    .line 631
    .local v4, "bt":Landroid/graphics/Bitmap;
    const/16 v20, -0x1

    .line 632
    .local v20, "w":I
    const/4 v10, -0x1

    .line 633
    .local v10, "h":I
    if-nez v17, :cond_0

    .line 634
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v0, v8}, Lcom/smartisanos/launcher/data/Utils;->getSortIconBubbleBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 635
    new-instance v17, Lcom/smartisanos/smengine/Texture;

    .end local v17    # "texture":Lcom/smartisanos/smengine/Texture;
    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Lcom/smartisanos/smengine/Texture;-><init>(Landroid/graphics/Bitmap;)V

    .line 636
    .restart local v17    # "texture":Lcom/smartisanos/smengine/Texture;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    .line 637
    const/16 v22, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Texture;->setCanRecycle(Z)V

    .line 638
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 639
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 644
    :goto_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "_rect"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v10

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-static/range {v22 .. v26}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRectWithoutMaterial(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    .line 645
    .local v5, "bubbleRect":Lcom/smartisanos/smengine/RectNode;
    const-string v22, "TextureModularColorMaterial"

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v12

    .line 646
    .local v12, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    invoke-virtual {v5, v12}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 647
    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v15

    .line 648
    .local v15, "rs":Lcom/smartisanos/smengine/RenderState;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 649
    const/high16 v22, -0x40800000    # -1.0f

    const/high16 v23, -0x40000000    # -2.0f

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 650
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 651
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 652
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 653
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 654
    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v22

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 656
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 657
    invoke-virtual {v7}, Lcom/smartisanos/smengine/RectNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    .line 658
    .local v11, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v22, v0

    iget v0, v13, Lcom/smartisanos/launcher/data/LayoutProperty;->setting_button:F

    move/from16 v23, v0

    add-float v21, v22, v23

    .line 659
    .local v21, "y":F
    sget v22, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    packed-switch v22, :pswitch_data_0

    .line 673
    :goto_1
    :pswitch_0
    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v5, v0, v1, v2}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 674
    iget v0, v9, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->TRASH_SHADOW_LAYER:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x32

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 675
    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 676
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/DockView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 677
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/smartisanos/launcher/view/DockView;->mSortBubble:Lcom/smartisanos/smengine/RectNode;

    .line 678
    return-void

    .line 641
    .end local v5    # "bubbleRect":Lcom/smartisanos/smengine/RectNode;
    .end local v11    # "loc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v12    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v15    # "rs":Lcom/smartisanos/smengine/RenderState;
    .end local v21    # "y":F
    :cond_0
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/smengine/Texture;->getWidth()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 642
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/smengine/Texture;->getHeight()F

    move-result v22

    move/from16 v0, v22

    float-to-int v10, v0

    goto/16 :goto_0

    .line 661
    .restart local v5    # "bubbleRect":Lcom/smartisanos/smengine/RectNode;
    .restart local v11    # "loc":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v12    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .restart local v15    # "rs":Lcom/smartisanos/smengine/RenderState;
    .restart local v21    # "y":F
    :pswitch_1
    const/high16 v22, 0x420c0000    # 35.0f

    sub-float v21, v21, v22

    .line 662
    goto :goto_1

    .line 665
    :pswitch_2
    const/high16 v22, 0x41a00000    # 20.0f

    sub-float v21, v21, v22

    .line 666
    goto :goto_1

    .line 669
    :pswitch_3
    const/high16 v22, 0x41a00000    # 20.0f

    sub-float v21, v21, v22

    goto :goto_1

    .line 659
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public isExistOnDock(Lcom/smartisanos/launcher/view/Cell;)Z
    .locals 2
    .param p1, "cell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 233
    if-nez p1, :cond_0

    .line 234
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "isExistOnDock cell is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Lcom/smartisanos/smengine/TMotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2042
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_1

    .line 2043
    iput-boolean v6, p0, Lcom/smartisanos/launcher/view/DockView;->mHasDoneSliding:Z

    .line 2044
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/smartisanos/launcher/view/DockView;->mStartX:F

    .line 2045
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/smartisanos/launcher/view/DockView;->mStartY:F

    .line 2046
    sget v7, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v7, v7

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    sget v8, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v8}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v8

    iget v8, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_ignore_touch_height:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    .line 2047
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_0

    .line 2048
    sget-object v6, Lcom/smartisanos/launcher/view/DockView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "A140"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nothing to do, ev.getY() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getY()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", dock_ignore_touch_height = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    .line 2049
    invoke-static {v9}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v9

    iget v9, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_ignore_touch_height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2048
    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    :cond_0
    :goto_0
    return v5

    .line 2052
    :cond_1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 2053
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getX()F

    move-result v3

    .line 2054
    .local v3, "x":F
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getY()F

    move-result v4

    .line 2055
    .local v4, "y":F
    iget v7, p0, Lcom/smartisanos/launcher/view/DockView;->mStartX:F

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 2056
    .local v0, "changeX":F
    iget v7, p0, Lcom/smartisanos/launcher/view/DockView;->mStartY:F

    sub-float v7, v4, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 2057
    .local v1, "changeY":F
    iget v7, p0, Lcom/smartisanos/launcher/view/DockView;->mTouchSlop:I

    int-to-float v7, v7

    const/high16 v8, 0x40a00000    # 5.0f

    mul-float/2addr v7, v8

    cmpl-float v7, v0, v7

    if-lez v7, :cond_3

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v7, v1

    cmpl-float v7, v0, v7

    if-lez v7, :cond_3

    move v2, v5

    .line 2058
    .local v2, "isMove":Z
    :goto_1
    if-nez v2, :cond_0

    .end local v0    # "changeX":F
    .end local v1    # "changeY":F
    .end local v2    # "isMove":Z
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_2
    move v5, v6

    .line 2062
    goto :goto_0

    .restart local v0    # "changeX":F
    .restart local v1    # "changeY":F
    .restart local v3    # "x":F
    .restart local v4    # "y":F
    :cond_3
    move v2, v6

    .line 2057
    goto :goto_1
.end method

.method private static getSlideDockActionType()I
    .locals 3

    .prologue
    sget v0, Lcom/smartisanos/launcher/data/Constants;->SLIDE_DOCK_ACTION_TYPE:I

    const-string v1, "dock_slide_reverse_enabled"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_type_done

    if-nez v0, :cond_type_swap_zero

    const/4 v0, 0x1

    goto :cond_type_done

    :cond_type_swap_zero
    const/4 v0, 0x0

    :cond_type_done
    return v0
.end method

.method public onTouchEvent(Lcom/smartisanos/smengine/TMotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    const/4 v10, 0x0

    const v9, 0x8000

    const/high16 v8, 0x44160000    # 600.0f

    const/high16 v6, -0x3bea0000    # -600.0f

    const/4 v7, 0x1

    .line 2067
    iget-boolean v5, p0, Lcom/smartisanos/launcher/view/DockView;->mHasDoneSliding:Z

    if-nez v5, :cond_3

    .line 2068
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getX()F

    move-result v3

    .line 2069
    .local v3, "x":F
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getY()F

    move-result v4

    .line 2070
    .local v4, "y":F
    iget v5, p0, Lcom/smartisanos/launcher/view/DockView;->mStartX:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 2071
    .local v0, "changeX":F
    iget v5, p0, Lcom/smartisanos/launcher/view/DockView;->mStartY:F

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 2072
    .local v1, "changeY":F
    cmpl-float v5, v0, v1

    if-lez v5, :cond_3

    .line 2073
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/DragLayer;->getVelocityTracker()Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->getXVelocity()F

    move-result v2

    .line 2074
    .local v2, "vx":F
    cmpl-float v5, v2, v8

    if-lez v5, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/DockView;->getSlideDockActionType()I

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    cmpg-float v5, v2, v6

    if-gez v5, :cond_4

    invoke-static {}, Lcom/smartisanos/launcher/view/DockView;->getSlideDockActionType()I

    move-result v5

    if-eqz v5, :cond_4

    .line 2075
    :cond_1
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v6, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v5, v6, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2076
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/smartisanos/launcher/view/PageView;->switchPageMode(Lcom/smartisanos/launcher/view/Page;)Z

    .line 2077
    iput-boolean v7, p0, Lcom/smartisanos/launcher/view/DockView;->mHasDoneSliding:Z

    .line 2079
    :cond_2
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v6, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v5, v6, :cond_3

    .line 2080
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->slidingDockRightAnimation()V

    .line 2081
    iput-boolean v7, p0, Lcom/smartisanos/launcher/view/DockView;->mHasDoneSliding:Z

    .line 2097
    .end local v0    # "changeX":F
    .end local v1    # "changeY":F
    .end local v2    # "vx":F
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_3
    :goto_0
    return v7

    .line 2083
    .restart local v0    # "changeX":F
    .restart local v1    # "changeY":F
    .restart local v2    # "vx":F
    .restart local v3    # "x":F
    .restart local v4    # "y":F
    :cond_4
    cmpg-float v5, v2, v6

    if-gez v5, :cond_5

    invoke-static {}, Lcom/smartisanos/launcher/view/DockView;->getSlideDockActionType()I

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    cmpl-float v5, v2, v8

    if-lez v5, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/view/DockView;->getSlideDockActionType()I

    move-result v5

    if-eqz v5, :cond_3

    .line 2084
    :cond_6
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v6, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v5, v6, :cond_7

    .line 2085
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/smartisanos/launcher/view/PageView;->switchPageMode(Lcom/smartisanos/launcher/view/Page;)Z

    .line 2086
    iput-boolean v7, p0, Lcom/smartisanos/launcher/view/DockView;->mHasDoneSliding:Z

    .line 2088
    const-string v5, "A260006"

    invoke-static {v5}, Lcom/smartisanos/home/tracker/LauncherAgent;->event(Ljava/lang/String;)V

    .line 2090
    :cond_7
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v6, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v5, v6, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2091
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->slidingDockLeftAnimation()V

    .line 2092
    iput-boolean v7, p0, Lcom/smartisanos/launcher/view/DockView;->mHasDoneSliding:Z

    goto :goto_0
.end method

.method public onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z
    .locals 3
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 1002
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1087
    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1005
    :pswitch_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    if-eqz v1, :cond_0

    .line 1006
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    invoke-interface {v1, p1}, Lcom/smartisanos/smengine/SceneNode$TouchListener;->onMove(Lcom/smartisanos/smengine/TouchEvent;)V

    goto :goto_0

    .line 1013
    :pswitch_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    if-eqz v1, :cond_0

    .line 1014
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    invoke-interface {v1, p1}, Lcom/smartisanos/smengine/SceneNode$TouchListener;->onDown(Lcom/smartisanos/smengine/TouchEvent;)V

    goto :goto_0

    .line 1021
    :pswitch_3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    if-eqz v1, :cond_0

    .line 1022
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    invoke-interface {v1, p1}, Lcom/smartisanos/smengine/SceneNode$TouchListener;->onUp(Lcom/smartisanos/smengine/TouchEvent;)V

    goto :goto_0

    .line 1029
    :pswitch_4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    if-eqz v1, :cond_0

    .line 1030
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    invoke-interface {v1, p1}, Lcom/smartisanos/smengine/SceneNode$TouchListener;->onUp(Lcom/smartisanos/smengine/TouchEvent;)V

    goto :goto_0

    .line 1037
    :pswitch_5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mLongPressListener:Lcom/smartisanos/smengine/SceneNode$LongPressListener;

    if-eqz v1, :cond_0

    .line 1038
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mLongPressListener:Lcom/smartisanos/smengine/SceneNode$LongPressListener;

    invoke-interface {v1, p1}, Lcom/smartisanos/smengine/SceneNode$LongPressListener;->onLongPressed(Lcom/smartisanos/smengine/TouchEvent;)V

    goto :goto_0

    .line 1045
    :pswitch_6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mCurrentDownCell:Lcom/smartisanos/launcher/view/Cell;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DockView;->canChangeCellEffect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1046
    iput-object v2, p0, Lcom/smartisanos/launcher/view/DockView;->mCurrentDownCell:Lcom/smartisanos/launcher/view/Cell;

    .line 1048
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mScaleListener:Lcom/smartisanos/smengine/SceneNode$ScaleListener;

    if-eqz v1, :cond_0

    .line 1049
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mScaleListener:Lcom/smartisanos/smengine/SceneNode$ScaleListener;

    invoke-interface {v1, p1}, Lcom/smartisanos/smengine/SceneNode$ScaleListener;->onScaleBegin(Lcom/smartisanos/smengine/TouchEvent;)V

    goto :goto_0

    .line 1056
    :pswitch_7
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mCurrentDownCell:Lcom/smartisanos/launcher/view/Cell;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DockView;->canChangeCellEffect()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1057
    iput-object v2, p0, Lcom/smartisanos/launcher/view/DockView;->mCurrentDownCell:Lcom/smartisanos/launcher/view/Cell;

    .line 1059
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mScaleListener:Lcom/smartisanos/smengine/SceneNode$ScaleListener;

    if-eqz v1, :cond_0

    .line 1060
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mScaleListener:Lcom/smartisanos/smengine/SceneNode$ScaleListener;

    invoke-interface {v1, p1}, Lcom/smartisanos/smengine/SceneNode$ScaleListener;->onScaleMove(Lcom/smartisanos/smengine/TouchEvent;)V

    goto :goto_0

    .line 1067
    :pswitch_8
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mCurrentDownCell:Lcom/smartisanos/launcher/view/Cell;

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/smartisanos/launcher/view/DockView;->canChangeCellEffect()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1068
    iput-object v2, p0, Lcom/smartisanos/launcher/view/DockView;->mCurrentDownCell:Lcom/smartisanos/launcher/view/Cell;

    .line 1070
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mScaleListener:Lcom/smartisanos/smengine/SceneNode$ScaleListener;

    if-eqz v1, :cond_0

    .line 1071
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mScaleListener:Lcom/smartisanos/smengine/SceneNode$ScaleListener;

    invoke-interface {v1, p1}, Lcom/smartisanos/smengine/SceneNode$ScaleListener;->onScaleEnd(Lcom/smartisanos/smengine/TouchEvent;)V

    goto :goto_0

    .line 1079
    :pswitch_9
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getSize()F

    move-result v1

    sget v2, Lcom/smartisanos/launcher/data/Constants;->tap_threshold_percent:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 1080
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mSingleTapListener:Lcom/smartisanos/smengine/SceneNode$SingleTapListener;

    if-eqz v1, :cond_0

    .line 1081
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mSingleTapListener:Lcom/smartisanos/smengine/SceneNode$SingleTapListener;

    invoke-interface {v1, p1}, Lcom/smartisanos/smengine/SceneNode$SingleTapListener;->onClick(Lcom/smartisanos/smengine/TouchEvent;)V

    goto/16 :goto_0

    .line 1002
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public playCellFlagDismissAnimation(Laurelienribon/tweenengine/Timeline;)V
    .locals 3
    .param p1, "timeline"    # Laurelienribon/tweenengine/Timeline;

    .prologue
    .line 1504
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 1505
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v0, :cond_0

    .line 1506
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/Cell;->playCellFlagDismissAnimation(Laurelienribon/tweenengine/Timeline;)V

    goto :goto_0

    .line 1509
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    return-void
.end method

.method public reLayoutCellByMode(Lcom/smartisanos/smengine/AnimationTimeLine;F)V
    .locals 3
    .param p1, "timeLine"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p2, "time"    # F

    .prologue
    .line 1494
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1501
    :goto_0
    return-void

    .line 1497
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1498
    .local v0, "params":Ljava/util/ArrayList;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1499
    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1500
    sget-object v1, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->DOCK_CELL_RELAYOUT:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {p0, v1, p2, v0}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    goto :goto_0
.end method

.method public refreshAppName()V
    .locals 3

    .prologue
    .line 1867
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 1868
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v0, :cond_0

    .line 1869
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->applyTheme()V

    goto :goto_0

    .line 1872
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    return-void
.end method

.method public relayoutDockByHandHabitChanged()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1432
    sget v8, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-virtual {p0, v12, v8}, Lcom/smartisanos/launcher/view/DockView;->getCellLocation(ZI)[Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    .line 1433
    .local v5, "locArr":[Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v1

    .line 1434
    .local v1, "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, v5

    if-ge v2, v8, :cond_0

    .line 1435
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 1436
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v8

    iget v3, v8, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 1437
    .local v3, "index":I
    aget-object v4, v5, v3

    .line 1438
    .local v4, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    iget v8, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v9, v4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v10, v4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v0, v8, v9, v10}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 1434
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1440
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v3    # "index":I
    .end local v4    # "loc":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    const/4 v6, 0x0

    .line 1441
    .local v6, "settingLoc":Lcom/smartisanos/smengine/math/Vector3f;
    sget v8, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v9, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v8, v9, :cond_1

    .line 1442
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DockView;->getSettingButtonHiddenLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v6

    .line 1446
    :goto_1
    iget-object v8, p0, Lcom/smartisanos/launcher/view/DockView;->mSettingView:Lcom/smartisanos/launcher/view/SettingButton;

    iget v9, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v10, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v11, v6, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v8, v9, v10, v11}, Lcom/smartisanos/launcher/view/SettingButton;->setTranslate(FFF)V

    .line 1448
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v8

    sget v9, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-virtual {v8, v9, v12}, Lcom/smartisanos/launcher/view/DockView;->getTrashLocationByMode(IZ)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    .line 1449
    .local v7, "to":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v8, p0, Lcom/smartisanos/launcher/view/DockView;->mTrashView:Lcom/smartisanos/launcher/view/TrashView;

    iget v9, v7, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v10, v7, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v11, v7, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v8, v9, v10, v11}, Lcom/smartisanos/launcher/view/TrashView;->setTranslate(FFF)V

    .line 1450
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DockView;->updateGeometricState()V

    .line 1451
    return-void

    .line 1444
    .end local v7    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DockView;->getSettingButtonShowLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v6

    goto :goto_1
.end method

.method public removeChangeThemeNode()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    .line 1796
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    if-eqz v4, :cond_0

    .line 1797
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v4, :cond_2

    .line 1798
    const-string v4, "TwoTexDifferentTexcoordMaterial"

    invoke-static {v4}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 1799
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 1800
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    const-string v5, "dock_back.png"

    invoke-static {v5, v6}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Lcom/smartisanos/smengine/RectNode;->setTextureName(ILjava/lang/String;)V

    .line 1801
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    const-string v5, "t_blur_background"

    invoke-virtual {v4, v6, v5}, Lcom/smartisanos/smengine/RectNode;->setTextureName(ILjava/lang/String;)V

    .line 1802
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 1803
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DockView;->updateUV()V

    .line 1816
    .end local v0    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DockView;->mRotateParent:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v4, :cond_1

    .line 1817
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DockView;->mRotateParent:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 1818
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DockView;->mRotateParent:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 1819
    iput-object v7, p0, Lcom/smartisanos/launcher/view/DockView;->mRotateParent:Lcom/smartisanos/smengine/SceneNode;

    .line 1821
    :cond_1
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v3

    .line 1822
    .local v3, "tm":Lcom/smartisanos/smengine/TextureManager;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "target/--/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dock_back.png"

    .line 1823
    invoke-static {v5, v6}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1822
    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/TextureManager;->getTexture(Ljava/lang/String;)Lcom/smartisanos/smengine/Texture;

    move-result-object v2

    .line 1824
    .local v2, "texturenew":Lcom/smartisanos/smengine/Texture;
    const-string v4, "dock_back.png"

    invoke-static {v4, v6}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 1825
    const-string v4, "dock_back.png"

    invoke-static {v4, v6}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    .line 1826
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "target/--/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dock_back.png"

    .line 1827
    invoke-static {v5, v6}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1826
    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/TextureManager;->removeTexture(Ljava/lang/String;)V

    .line 1828
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    const-string v5, "dock_back.png"

    invoke-static {v5, v6}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 1829
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 1830
    return-void

    .line 1805
    .end local v2    # "texturenew":Lcom/smartisanos/smengine/Texture;
    .end local v3    # "tm":Lcom/smartisanos/smengine/TextureManager;
    :cond_2
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v4

    instance-of v4, v4, Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexCoordMaterial;

    if-eqz v4, :cond_0

    .line 1806
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v1

    .line 1807
    .local v1, "mesh":Lcom/smartisanos/smengine/Mesh;
    const/4 v4, 0x3

    invoke-virtual {v1, v4, v7}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 1808
    const-string v4, "TextureModularColorMaterial"

    invoke-static {v4}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 1809
    .restart local v0    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 1810
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v5, v5, v5, v5}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 1811
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v6, v7}, Lcom/smartisanos/smengine/RectNode;->setTextureName(ILjava/lang/String;)V

    .line 1812
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    goto/16 :goto_0
.end method

.method public removeDockCell(Lcom/smartisanos/launcher/view/Cell;)V
    .locals 1
    .param p1, "cell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 240
    if-nez p1, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public resetDockCellBoundingRect()V
    .locals 7

    .prologue
    .line 967
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 968
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 969
    .local v1, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DockView;->getDockCellBoundingRect()Lcom/smartisanos/smengine/BoundingRect;

    move-result-object v0

    .line 970
    .local v0, "br":Lcom/smartisanos/smengine/BoundingRect;
    invoke-virtual {v0}, Lcom/smartisanos/smengine/BoundingRect;->getMinPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    invoke-virtual {v0}, Lcom/smartisanos/smengine/BoundingRect;->getMinPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v4

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {v0}, Lcom/smartisanos/smengine/BoundingRect;->getMaxPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    invoke-virtual {v0}, Lcom/smartisanos/smengine/BoundingRect;->getMaxPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v6

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/smartisanos/launcher/view/Cell;->setLocalBoundingVolume(FFFF)V

    goto :goto_0

    .line 972
    .end local v0    # "br":Lcom/smartisanos/smengine/BoundingRect;
    .end local v1    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DockView;->updateGeometricState()V

    .line 974
    :cond_1
    return-void
.end method

.method public resetPreCollideMoveIndex()V
    .locals 1

    .prologue
    .line 881
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/launcher/view/DockView;->preCollideMoveIndex:I

    .line 882
    return-void
.end method

.method public resetPreCollideUpIndex()V
    .locals 3

    .prologue
    .line 868
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/DockView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "A140"

    const-string v2, "resetPreCollideUpIndex !@!"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/launcher/view/DockView;->preCollideUpIndex:I

    .line 870
    return-void
.end method

.method public setCollidedUpCell(Lcom/smartisanos/launcher/view/Cell;)V
    .locals 0
    .param p1, "cell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/smartisanos/launcher/view/DockView;->collidedUpCell:Lcom/smartisanos/launcher/view/Cell;

    .line 104
    return-void
.end method

.method public setColor(FFFF)V
    .locals 3
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 1876
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 1878
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1879
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 1880
    .local v1, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/smartisanos/launcher/view/Cell;->setColor(FFFF)V

    .line 1881
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 1878
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1883
    .end local v1    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    return-void
.end method

.method public setLayerStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 1911
    iget v0, p0, Lcom/smartisanos/launcher/view/DockView;->mLayerStatus:I

    if-eq v0, p1, :cond_0

    .line 1912
    iput p1, p0, Lcom/smartisanos/launcher/view/DockView;->mLayerStatus:I

    .line 1913
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DockView;->updateLayer()V

    .line 1915
    :cond_0
    return-void
.end method

.method public setPreCollideMoveIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 877
    iput p1, p0, Lcom/smartisanos/launcher/view/DockView;->preCollideMoveIndex:I

    .line 878
    return-void
.end method

.method public setPreCollideUpIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 864
    iput p1, p0, Lcom/smartisanos/launcher/view/DockView;->preCollideUpIndex:I

    .line 865
    return-void
.end method

.method public setSelectedCell(Lcom/smartisanos/launcher/view/Cell;)V
    .locals 0
    .param p1, "cell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/smartisanos/launcher/view/DockView;->mSelectedCell:Lcom/smartisanos/launcher/view/Cell;

    .line 94
    return-void
.end method

.method public setSortButtonVisibleStatus(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .line 731
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->sortButtons:[Lcom/smartisanos/smengine/RectNode;

    if-nez v1, :cond_1

    .line 739
    :cond_0
    return-void

    .line 734
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView;->sortButtons:[Lcom/smartisanos/smengine/RectNode;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 735
    .local v0, "node":Lcom/smartisanos/smengine/RectNode;
    if-eqz v0, :cond_2

    .line 736
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 734
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setUseStaticGaussian(Z)V
    .locals 6
    .param p1, "use"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1984
    const/4 v0, 0x0

    .line 1985
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    if-eqz p1, :cond_0

    .line 1986
    const-string v1, "TwoTexDifferentTexcoordMaterial"

    invoke-static {v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 1987
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 1988
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    const-string v2, "dock_back.png"

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/smartisanos/smengine/RectNode;->setTextureName(ILjava/lang/String;)V

    .line 1989
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    const-string v2, "t_blur_background"

    invoke-virtual {v1, v3, v2}, Lcom/smartisanos/smengine/RectNode;->setTextureName(ILjava/lang/String;)V

    .line 1990
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 1991
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 1992
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DockView;->updateUV()V

    .line 2003
    :goto_0
    return-void

    .line 1994
    :cond_0
    const-string v1, "TextureModularColorMaterial"

    invoke-static {v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 1995
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 1996
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    const-string v2, "dock_back.png"

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 1997
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v3, v5}, Lcom/smartisanos/smengine/RectNode;->setTextureName(ILjava/lang/String;)V

    .line 1998
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v5}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 1999
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 2000
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 2001
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    goto :goto_0
.end method

.method public updateDockCellIndex()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 184
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 185
    .local v3, "size":I
    if-nez v3, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 189
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/Cell;->setCellIndex(I)V

    goto :goto_0

    .line 192
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 193
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Float;Lcom/smartisanos/launcher/view/Cell;>;"
    new-array v0, v3, [F

    .line 194
    .local v0, "farr":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 195
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget-object v5, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v4, v0, v1

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 198
    :cond_3
    invoke-static {v0}, Ljava/util/Arrays;->sort([F)V

    .line 199
    const/4 v1, 0x0

    :goto_2
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 200
    aget v4, v0, v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v4, v1}, Lcom/smartisanos/launcher/view/Cell;->setCellIndex(I)V

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public updateFlagVisibility()V
    .locals 3

    .prologue
    .line 1512
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 1513
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v0, :cond_0

    .line 1514
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->updateFlagVisibility()V

    goto :goto_0

    .line 1517
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    return-void
.end method

.method public updateLayer()V
    .locals 5

    .prologue
    .line 1919
    invoke-super {p0}, Lcom/smartisanos/smengine/SceneNode;->updateLayer()V

    .line 1920
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DockView;->getLayStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/LayerManager;->getDockLayer(I)Lcom/smartisanos/launcher/view/LayerManager$DockLayer;

    move-result-object v1

    .line 1921
    .local v1, "dockLayer":Lcom/smartisanos/launcher/view/LayerManager$DockLayer;
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    if-eqz v3, :cond_0

    .line 1922
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    iget v4, v1, Lcom/smartisanos/launcher/view/LayerManager$DockLayer;->DOCK_BACKGROUND_LAYER:I

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 1924
    :cond_0
    iget v3, p0, Lcom/smartisanos/launcher/view/DockView;->mLayerStatus:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1925
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1926
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 1927
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v0, :cond_1

    .line 1928
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/Cell;->setLayerStatus(I)V

    .line 1925
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1932
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1933
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DockView;->mDockCells:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 1934
    .restart local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v0, :cond_3

    .line 1935
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/Cell;->setLayerStatus(I)V

    .line 1932
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1939
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_4
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DockView;->mSettingView:Lcom/smartisanos/launcher/view/SettingButton;

    if-eqz v3, :cond_5

    .line 1940
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DockView;->mSettingView:Lcom/smartisanos/launcher/view/SettingButton;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/SettingButton;->updateLayer()V

    .line 1942
    :cond_5
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DockView;->mDotView:Lcom/smartisanos/launcher/view/DotView;

    if-eqz v3, :cond_6

    .line 1943
    iget-object v3, p0, Lcom/smartisanos/launcher/view/DockView;->mDotView:Lcom/smartisanos/launcher/view/DotView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DotView;->updateLayer()V

    .line 1945
    :cond_6
    return-void
.end method

.method public updateUV()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    .line 1948
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v7

    .line 1949
    .local v7, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    if-eqz v7, :cond_2

    instance-of v0, v7, Lcom/smartisanos/smengine/mymaterial/TwoTextureDifferentTexCoordMaterial;

    if-eqz v0, :cond_2

    .line 1950
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 1951
    const/4 v3, 0x0

    .line 1952
    .local v3, "flip":Z
    move-object v9, p0

    .line 1953
    .local v9, "node":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/DockView;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v10

    .line 1954
    .local v10, "pa":Lcom/smartisanos/smengine/SceneNode;
    if-eqz v10, :cond_0

    .line 1955
    instance-of v0, v10, Lcom/smartisanos/launcher/view/DockView;

    if-eqz v0, :cond_3

    .line 1957
    move-object v9, v10

    .line 1966
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mBackPos:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v9, v0}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 1967
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mBackMeshName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/MeshManager;->getMesh(Ljava/lang/String;)Lcom/smartisanos/smengine/Mesh;

    move-result-object v8

    .line 1968
    .local v8, "newMesh":Lcom/smartisanos/smengine/Mesh;
    if-nez v8, :cond_1

    .line 1969
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Mesh;->clone()Lcom/smartisanos/smengine/Mesh;

    move-result-object v8

    .line 1970
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mBackMeshName:Ljava/lang/String;

    invoke-virtual {v0, v1, v8}, Lcom/smartisanos/smengine/MeshManager;->addMesh(Ljava/lang/String;Lcom/smartisanos/smengine/Mesh;)Lcom/smartisanos/smengine/Mesh;

    .line 1971
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v8}, Lcom/smartisanos/smengine/RectNode;->setMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 1973
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mBackPos:Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView;->mBackPos:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView;->mBackPos:Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget-object v4, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    .line 1974
    invoke-virtual {v4}, Lcom/smartisanos/smengine/RectNode;->getWidth()F

    move-result v4

    iget-object v5, p0, Lcom/smartisanos/launcher/view/DockView;->mBackgroundNode:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/RectNode;->getHeight()F

    move-result v5

    iget-object v6, p0, Lcom/smartisanos/launcher/view/DockView;->mBackUV:[F

    .line 1973
    invoke-static/range {v0 .. v6}, Lcom/smartisanos/launcher/data/Utils;->getUVOnScreen(FFFZFF[F)V

    .line 1975
    invoke-virtual {v8, v11}, Lcom/smartisanos/smengine/Mesh;->getTexVertexArray(I)[F

    move-result-object v0

    if-nez v0, :cond_4

    .line 1976
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mBackUV:[F

    invoke-virtual {v8, v11, v0}, Lcom/smartisanos/smengine/Mesh;->setTexVertexArray(I[F)V

    .line 1981
    .end local v3    # "flip":Z
    .end local v8    # "newMesh":Lcom/smartisanos/smengine/Mesh;
    .end local v9    # "node":Lcom/smartisanos/smengine/SceneNode;
    .end local v10    # "pa":Lcom/smartisanos/smengine/SceneNode;
    :cond_2
    :goto_1
    return-void

    .line 1960
    .restart local v3    # "flip":Z
    .restart local v9    # "node":Lcom/smartisanos/smengine/SceneNode;
    .restart local v10    # "pa":Lcom/smartisanos/smengine/SceneNode;
    :cond_3
    invoke-virtual {v10}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v10

    .line 1961
    if-eqz v10, :cond_0

    instance-of v0, v10, Lcom/smartisanos/launcher/view/DockView;

    if-eqz v0, :cond_0

    .line 1962
    move-object v9, v10

    goto :goto_0

    .line 1978
    .restart local v8    # "newMesh":Lcom/smartisanos/smengine/Mesh;
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView;->mBackUV:[F

    invoke-virtual {v8, v11, v0}, Lcom/smartisanos/smengine/Mesh;->updateTexVertexFloatBuffer(I[F)V

    goto :goto_1
.end method
