.class public Lcom/smartisanos/launcher/view/CellStatusForDock;
.super Ljava/lang/Object;
.source "CellStatusForDock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/CellStatusForDock$SingleTapListenerForDockCell;,
        Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;
    }
.end annotation


# static fields
.field private static final log:Lcom/smartisanos/launcher/LOG;


# instance fields
.field private cellCollideUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

.field private cellMoveTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

.field private dockCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

.field private isCollidedUp:Z

.field private mCell:Lcom/smartisanos/launcher/view/Cell;

.field private mIconBeginPosition:Lcom/smartisanos/smengine/math/Vector3f;

.field private mNeedMoveX:F

.field private mNeedMoveY:F

.field private narrowed:Z

.field private onUpRunning:Z

.field public relayoutCellAreaCellsTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

.field private singleTapListener:Lcom/smartisanos/launcher/view/CellStatusForDock$SingleTapListenerForDockCell;

.field private touchListener:Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/launcher/view/Cell;)V
    .locals 4
    .param p1, "cell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;-><init>(Lcom/smartisanos/launcher/view/CellStatusForDock;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->touchListener:Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;

    .line 46
    new-instance v0, Lcom/smartisanos/launcher/view/CellStatusForDock$SingleTapListenerForDockCell;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/CellStatusForDock$SingleTapListenerForDockCell;-><init>(Lcom/smartisanos/launcher/view/CellStatusForDock;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->singleTapListener:Lcom/smartisanos/launcher/view/CellStatusForDock$SingleTapListenerForDockCell;

    .line 47
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->isCollidedUp:Z

    .line 48
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->onUpRunning:Z

    .line 49
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->narrowed:Z

    .line 242
    iput-object v1, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->dockCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 681
    iput v3, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mNeedMoveX:F

    .line 682
    iput v3, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mNeedMoveY:F

    .line 747
    iput-object v1, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->relayoutCellAreaCellsTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 749
    iput-object v1, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellMoveTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 750
    iput-object v1, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellCollideUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 63
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/launcher/view/CellStatusForDock;)Lcom/smartisanos/launcher/view/Cell;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/CellStatusForDock;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    return-object v0
.end method

.method static synthetic access$100()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$202(Lcom/smartisanos/launcher/view/CellStatusForDock;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/CellStatusForDock;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->onUpRunning:Z

    return p1
.end method

.method static synthetic access$300(Lcom/smartisanos/launcher/view/CellStatusForDock;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/CellStatusForDock;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->dockCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object v0
.end method

.method static synthetic access$302(Lcom/smartisanos/launcher/view/CellStatusForDock;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/CellStatusForDock;
    .param p1, "x1"    # Lcom/smartisanos/smengine/AnimationTimeLine;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->dockCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object p1
.end method

.method static synthetic access$400(Lcom/smartisanos/launcher/view/CellStatusForDock;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/CellStatusForDock;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/CellStatusForDock;->handleOnUp()V

    return-void
.end method

.method static synthetic access$502(Lcom/smartisanos/launcher/view/CellStatusForDock;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/CellStatusForDock;
    .param p1, "x1"    # Lcom/smartisanos/smengine/AnimationTimeLine;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellCollideUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object p1
.end method

.method static synthetic access$602(Lcom/smartisanos/launcher/view/CellStatusForDock;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/CellStatusForDock;
    .param p1, "x1"    # Lcom/smartisanos/smengine/AnimationTimeLine;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellMoveTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object p1
.end method

.method private cellAreaRelayoutAnimStart(Lcom/smartisanos/launcher/view/Cell;)V
    .locals 6
    .param p1, "cell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 801
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "A140"

    const-string v4, "cellAreaRelayoutAnimStart !"

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->relayoutCellAreaCellsTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v2, :cond_1

    .line 803
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->relayoutCellAreaCellsTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 805
    :cond_1
    new-instance v2, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->relayoutCellAreaCellsTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 806
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->relayoutCellAreaCellsTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    new-instance v3, Lcom/smartisanos/launcher/view/CellStatusForDock$3;

    invoke-direct {v3, p0}, Lcom/smartisanos/launcher/view/CellStatusForDock$3;-><init>(Lcom/smartisanos/launcher/view/CellStatusForDock;)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 812
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    .line 813
    .local v0, "dockView":Lcom/smartisanos/launcher/view/DockView;
    if-eqz p1, :cond_3

    .line 814
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    iget-object v4, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v4

    iget-wide v4, v4, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 815
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/DockView;->removeDockCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 820
    :cond_2
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 821
    .local v1, "params":Ljava/util/List;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->relayoutCellAreaCellsTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 822
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    sget-object v2, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->RELAYOUT_BY_ENTER_OR_EXIT_CELL_AREA:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v2, v3, v1}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 824
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->relayoutCellAreaCellsTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 825
    return-void

    .line 818
    .end local v1    # "params":Ljava/util/List;
    :cond_3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/DockView;->removeDockCell(Lcom/smartisanos/launcher/view/Cell;)V

    goto :goto_0
.end method

.method private cellCenterInTrash()Z
    .locals 5

    .prologue
    .line 1025
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v1

    .line 1026
    .local v1, "dockView":Lcom/smartisanos/launcher/view/DockView;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v3

    .line 1027
    .local v3, "trashView":Lcom/smartisanos/launcher/view/TrashView;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/TrashView;->getWorldBoundingVolume()Lcom/smartisanos/smengine/BoundingVolume;

    move-result-object v0

    .line 1028
    .local v0, "bv":Lcom/smartisanos/smengine/BoundingVolume;
    new-instance v2, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1029
    .local v2, "pointer":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v4, v2}, Lcom/smartisanos/launcher/view/Cell;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 1030
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/BoundingVolume;->isPointInBoundingVolume(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v4

    return v4
.end method

.method private cellCollideMoveAnim(Lcom/smartisanos/launcher/view/Cell;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .locals 9
    .param p1, "cell"    # Lcom/smartisanos/launcher/view/Cell;
    .param p2, "to"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 1011
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v0, p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1012
    .local v0, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 1013
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 1014
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v8

    .line 1015
    .local v8, "from":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v1, 0x0

    iget v2, v8, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, v8, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, v8, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v5, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v6, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v7, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 1016
    return-object v0
.end method

.method private cellCollideMoveLogic(I)V
    .locals 24
    .param p1, "pointToAreaIndex"    # I

    .prologue
    .line 925
    sget-boolean v20, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v20, :cond_0

    sget-object v20, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    const-string v21, "A140"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "cellCollideMoveLogic begin ! pointToAreaIndex="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v9

    .line 927
    .local v9, "dockView":Lcom/smartisanos/launcher/view/DockView;
    iget-object v0, v9, Lcom/smartisanos/launcher/view/DockView;->cellsLoc:[Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/DockView;->getDockCellCount()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 928
    new-instance v20, Ljava/lang/IllegalArgumentException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "cellsLoc.length ["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v9, Lcom/smartisanos/launcher/view/DockView;->cellsLoc:[Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "], dockCellCount ["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/DockView;->getDockCellCount()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 930
    :cond_1
    const/4 v8, 0x0

    .line 931
    .local v8, "changed":Z
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/DockView;->getPreCollideMoveIndex()I

    move-result v17

    .line 932
    .local v17, "preCollideMoveIndex":I
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 933
    move/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/smartisanos/launcher/view/DockView;->setPreCollideMoveIndex(I)V

    .line 934
    const/4 v8, 0x1

    .line 943
    :cond_2
    :goto_0
    if-eqz v8, :cond_c

    .line 944
    sget-boolean v20, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v20, :cond_3

    sget-object v20, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    const-string v21, "A140"

    const-string v22, "cellCollideMoveLogic changed=true"

    invoke-virtual/range {v20 .. v22}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellMoveTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellMoveTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/AnimationTimeLine;->kill()V

    .line 948
    :cond_4
    new-instance v20, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct/range {v20 .. v20}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellMoveTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellMoveTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v20, v0

    new-instance v21, Lcom/smartisanos/launcher/view/CellStatusForDock$6;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/CellStatusForDock$6;-><init>(Lcom/smartisanos/launcher/view/CellStatusForDock;)V

    invoke-virtual/range {v20 .. v21}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 960
    iget-object v12, v9, Lcom/smartisanos/launcher/view/DockView;->cellsLoc:[Lcom/smartisanos/smengine/math/Vector3f;

    .line 961
    .local v12, "locs":[Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v7

    .line 962
    .local v7, "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 963
    .local v4, "cellCount":I
    add-int/lit8 v20, v4, -0x1

    move/from16 v0, v20

    new-array v5, v0, [I

    .line 964
    .local v5, "cellIndexes":[I
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 965
    .local v18, "tmpCells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-wide v14, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 966
    .local v14, "mCellId":J
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 967
    .local v6, "cellMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_9

    .line 968
    const/4 v11, 0x0

    .line 969
    .local v11, "index":I
    :cond_5
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_9

    .line 970
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Cell;

    .line 971
    .local v3, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    move-wide/from16 v20, v0

    cmp-long v20, v20, v14

    if-eqz v20, :cond_5

    .line 974
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    move/from16 v20, v0

    aput v20, v5, v11

    .line 975
    aget v20, v5, v11

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 976
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 977
    .local v2, "c":Lcom/smartisanos/launcher/view/Cell;
    sget-object v21, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "dump dock cell index ==> "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 936
    .end local v2    # "c":Lcom/smartisanos/launcher/view/Cell;
    .end local v3    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v4    # "cellCount":I
    .end local v5    # "cellIndexes":[I
    .end local v6    # "cellMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v7    # "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v11    # "index":I
    .end local v12    # "locs":[Lcom/smartisanos/smengine/math/Vector3f;
    .end local v14    # "mCellId":J
    .end local v18    # "tmpCells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_6
    move/from16 v0, v17

    move/from16 v1, p1

    if-eq v0, v1, :cond_2

    .line 937
    move/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/smartisanos/launcher/view/DockView;->setPreCollideMoveIndex(I)V

    .line 938
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 979
    .restart local v3    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .restart local v4    # "cellCount":I
    .restart local v5    # "cellIndexes":[I
    .restart local v6    # "cellMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/smartisanos/launcher/view/Cell;>;"
    .restart local v7    # "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    .restart local v11    # "index":I
    .restart local v12    # "locs":[Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v14    # "mCellId":J
    .restart local v18    # "tmpCells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_7
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "duplicate cell index !"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 981
    :cond_8
    aget v20, v5, v11

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    add-int/lit8 v11, v11, 0x1

    .line 983
    goto/16 :goto_1

    .line 985
    .end local v3    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v11    # "index":I
    :cond_9
    invoke-static {v5}, Ljava/util/Arrays;->sort([I)V

    .line 986
    add-int/lit8 v13, v4, -0x1

    .line 987
    .local v13, "maxIndex":I
    sub-int v16, v13, p1

    .line 988
    .local v16, "moveRightCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    move/from16 v0, v16

    if-ge v10, v0, :cond_a

    .line 990
    add-int v20, p1, v10

    aget v11, v5, v20

    .line 991
    .restart local v11    # "index":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Cell;

    .line 992
    .restart local v3    # "cell":Lcom/smartisanos/launcher/view/Cell;
    add-int v20, p1, v10

    add-int/lit8 v20, v20, 0x1

    aget-object v19, v12, v20

    .line 993
    .local v19, "to":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellMoveTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellCollideMoveAnim(Lcom/smartisanos/launcher/view/Cell;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 988
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 995
    .end local v3    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v11    # "index":I
    .end local v19    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_a
    move/from16 v0, v16

    if-eq v0, v13, :cond_b

    .line 997
    const/4 v10, 0x0

    :goto_4
    move/from16 v0, p1

    if-ge v10, v0, :cond_b

    .line 998
    aget v11, v5, v10

    .line 999
    .restart local v11    # "index":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Cell;

    .line 1000
    .restart local v3    # "cell":Lcom/smartisanos/launcher/view/Cell;
    aget-object v19, v12, v10

    .line 1001
    .restart local v19    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellMoveTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellCollideMoveAnim(Lcom/smartisanos/launcher/view/Cell;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 997
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1004
    .end local v3    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v11    # "index":I
    .end local v19    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellMoveTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellMoveTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 1008
    .end local v4    # "cellCount":I
    .end local v5    # "cellIndexes":[I
    .end local v6    # "cellMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v7    # "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v10    # "i":I
    .end local v12    # "locs":[Lcom/smartisanos/smengine/math/Vector3f;
    .end local v13    # "maxIndex":I
    .end local v14    # "mCellId":J
    .end local v16    # "moveRightCount":I
    .end local v18    # "tmpCells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_c
    return-void
.end method

.method private cellCollideUpLogic(I)V
    .locals 14
    .param p1, "pointToAreaIndex"    # I

    .prologue
    const/4 v13, -0x1

    .line 829
    sget-boolean v9, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v9, :cond_0

    sget-object v9, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cellCollideUpLogic to index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 830
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v5

    .line 831
    .local v5, "dockView":Lcom/smartisanos/launcher/view/DockView;
    invoke-virtual {v5, p1}, Lcom/smartisanos/launcher/view/DockView;->getCellByIndex(I)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v4

    .line 832
    .local v4, "collided":Lcom/smartisanos/launcher/view/Cell;
    const/4 v3, 0x0

    .line 833
    .local v3, "collideIndexChanged":Z
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/DockView;->getPreCollideUpIndex()I

    move-result v8

    .line 834
    .local v8, "preCollideUpIndex":I
    if-ne v8, v13, :cond_4

    .line 835
    sget-boolean v9, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v9, :cond_1

    sget-object v9, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "A140"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "collideIndexChanged, preCollideUpIndex ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "], index ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    :cond_1
    invoke-virtual {v5, p1}, Lcom/smartisanos/launcher/view/DockView;->setPreCollideUpIndex(I)V

    .line 837
    const/4 v3, 0x1

    .line 846
    :cond_2
    :goto_0
    if-eqz v3, :cond_9

    .line 847
    const/4 v7, 0x0

    .line 848
    .local v7, "killAnim":Z
    iget-object v9, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellCollideUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v9, :cond_3

    .line 849
    iget-object v9, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellCollideUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v9}, Lcom/smartisanos/smengine/AnimationTimeLine;->kill()V

    .line 850
    const/4 v7, 0x1

    .line 852
    :cond_3
    const/4 v0, -0x1

    .line 853
    .local v0, "alreadyUpCellIndex":I
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/DockView;->getCollidedUpCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 854
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/DockView;->getCollidedUpCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v9

    iget v0, v9, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 855
    if-ne v0, v13, :cond_6

    .line 856
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "cellCollideUpLogic error, collided cell index is -1"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 839
    .end local v0    # "alreadyUpCellIndex":I
    .end local v7    # "killAnim":Z
    :cond_4
    if-eq v8, p1, :cond_2

    .line 840
    sget-boolean v9, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v9, :cond_5

    sget-object v9, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "A140"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "collideIndexChanged, preCollideUpIndex ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "], index ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    :cond_5
    invoke-virtual {v5, p1}, Lcom/smartisanos/launcher/view/DockView;->setPreCollideUpIndex(I)V

    .line 842
    const/4 v3, 0x1

    goto :goto_0

    .line 859
    .restart local v0    # "alreadyUpCellIndex":I
    .restart local v7    # "killAnim":Z
    :cond_6
    if-ne v0, v13, :cond_a

    .line 861
    sget-boolean v9, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v9, :cond_7

    sget-object v9, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "A140"

    const-string v11, "nothing is up, make collided up"

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    :cond_7
    new-instance v9, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v9}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    iput-object v9, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellCollideUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 863
    iget-object v9, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellCollideUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    new-instance v10, Lcom/smartisanos/launcher/view/CellStatusForDock$4;

    invoke-direct {v10, p0}, Lcom/smartisanos/launcher/view/CellStatusForDock$4;-><init>(Lcom/smartisanos/launcher/view/CellStatusForDock;)V

    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 874
    iget-object v9, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellCollideUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {p0, v9, v4}, Lcom/smartisanos/launcher/view/CellStatusForDock;->getCellCollideUpAnim(Lcom/smartisanos/smengine/AnimationTimeLine;Lcom/smartisanos/launcher/view/Cell;)V

    .line 914
    :cond_8
    :goto_1
    iget-object v9, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellCollideUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v9, :cond_9

    .line 915
    iget-object v9, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellCollideUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v9}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 918
    .end local v0    # "alreadyUpCellIndex":I
    .end local v7    # "killAnim":Z
    :cond_9
    return-void

    .line 876
    .restart local v0    # "alreadyUpCellIndex":I
    .restart local v7    # "killAnim":Z
    :cond_a
    if-eq v0, p1, :cond_8

    .line 880
    new-instance v9, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v9}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    iput-object v9, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellCollideUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 881
    iget-object v9, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellCollideUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    new-instance v10, Lcom/smartisanos/launcher/view/CellStatusForDock$5;

    invoke-direct {v10, p0}, Lcom/smartisanos/launcher/view/CellStatusForDock$5;-><init>(Lcom/smartisanos/launcher/view/CellStatusForDock;)V

    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 892
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/DockView;->getCollidedUpCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v6

    .line 893
    .local v6, "fallDownCell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v6, :cond_c

    .line 894
    sget-boolean v9, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v9, :cond_b

    sget-object v9, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "A140"

    const-string v11, "make cell fall down !"

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    :cond_b
    iget-object v9, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellCollideUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {p0, v9, v6}, Lcom/smartisanos/launcher/view/CellStatusForDock;->getCellCollideDownAnim(Lcom/smartisanos/smengine/AnimationTimeLine;Lcom/smartisanos/launcher/view/Cell;)V

    .line 897
    :cond_c
    if-eqz v7, :cond_e

    .line 898
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v2

    .line 899
    .local v2, "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_d
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 900
    .local v1, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 903
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 906
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v10

    iget v10, v10, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getSaveData()Lcom/smartisanos/launcher/view/Cell$SaveData;

    move-result-object v11

    iget-object v11, v11, Lcom/smartisanos/launcher/view/Cell$SaveData;->oldLocation:Lcom/smartisanos/smengine/math/Vector3f;

    iget v11, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_d

    .line 907
    iget-object v10, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellCollideUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v11, 0x0

    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/CellStatusForDock;->dockCellBackAnim(Lcom/smartisanos/launcher/view/Cell;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto :goto_2

    .line 911
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_e
    iget-object v9, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellCollideUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {p0, v9, v4}, Lcom/smartisanos/launcher/view/CellStatusForDock;->getCellCollideUpAnim(Lcom/smartisanos/smengine/AnimationTimeLine;Lcom/smartisanos/launcher/view/Cell;)V

    goto :goto_1
.end method

.method private dockCellBackAnim(Lcom/smartisanos/launcher/view/Cell;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .locals 10
    .param p1, "cell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 767
    if-nez p1, :cond_0

    .line 768
    const/4 v0, 0x0

    .line 776
    :goto_0
    return-object v0

    .line 770
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v0, p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 771
    .local v0, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 772
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 773
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v8

    .line 774
    .local v8, "from":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getSaveData()Lcom/smartisanos/launcher/view/Cell$SaveData;

    move-result-object v1

    iget-object v9, v1, Lcom/smartisanos/launcher/view/Cell$SaveData;->oldLocation:Lcom/smartisanos/smengine/math/Vector3f;

    .line 775
    .local v9, "to":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v1, 0x0

    iget v2, v8, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, v8, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, v8, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v5, v9, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v6, v9, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v7, v9, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    goto :goto_0
.end method

.method private fingerInTrash(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1020
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    .line 1021
    .local v0, "dockView":Lcom/smartisanos/launcher/view/DockView;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v1

    .line 1022
    .local v1, "trashView":Lcom/smartisanos/launcher/view/TrashView;
    invoke-virtual {v1, p1, p2}, Lcom/smartisanos/launcher/view/TrashView;->isTransformedTouchPointInView(FF)Z

    move-result v2

    return v2
.end method

.method private getCellCollideUpAnim(Lcom/smartisanos/smengine/AnimationTimeLine;Lcom/smartisanos/launcher/view/Cell;)V
    .locals 13
    .param p1, "timeLine"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p2, "collided"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 780
    if-nez p2, :cond_0

    .line 798
    :goto_0
    return-void

    .line 783
    :cond_0
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/Cell;->getCellDockStatus()Lcom/smartisanos/launcher/view/CellStatusForDock;

    move-result-object v1

    iget-boolean v1, v1, Lcom/smartisanos/launcher/view/CellStatusForDock;->isCollidedUp:Z

    if-eqz v1, :cond_1

    .line 784
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cell already float up !"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 786
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v8

    .line 787
    .local v8, "dockView":Lcom/smartisanos/launcher/view/DockView;
    invoke-virtual {v8, p2}, Lcom/smartisanos/launcher/view/DockView;->setCollidedUpCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 788
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/smartisanos/launcher/view/Cell;->setCollidedUpStatus(Z)V

    .line 789
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    const/high16 v2, 0x40800000    # 4.0f

    div-float v10, v1, v2

    .line 790
    .local v10, "move":F
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v9

    .line 791
    .local v9, "from":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/Cell;->getSaveData()Lcom/smartisanos/launcher/view/Cell$SaveData;

    move-result-object v1

    iget-object v11, v1, Lcom/smartisanos/launcher/view/Cell$SaveData;->oldLocation:Lcom/smartisanos/smengine/math/Vector3f;

    .line 792
    .local v11, "oldLoc":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v12, Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    add-float/2addr v2, v10

    iget v3, v11, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-direct {v12, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 793
    .local v12, "to":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v0, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 794
    .local v0, "moveAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 795
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 796
    const/4 v1, 0x0

    iget v2, v9, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, v9, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, v9, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v5, v12, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v6, v12, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v7, v12, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 797
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto :goto_0
.end method

.method private handleLongPress()Z
    .locals 25

    .prologue
    .line 124
    sget-boolean v21, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v21, :cond_0

    sget-object v21, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    const-string v22, "DEBUG"

    const-string v23, "DockCell handleLongPress begin !!!"

    invoke-virtual/range {v21 .. v23}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v12

    .line 126
    .local v12, "mainView":Lcom/smartisanos/launcher/view/MainView;
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v14

    .line 127
    .local v14, "pageView":Lcom/smartisanos/launcher/view/PageView;
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/MainView;->isEditMode()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 128
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/smartisanos/launcher/view/PageView;->setSelectedCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 129
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v21

    const/16 v22, 0x2

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 130
    const/16 v21, 0x0

    .line 229
    :goto_0
    return v21

    .line 132
    :cond_1
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v8

    .line 133
    .local v8, "dockView":Lcom/smartisanos/launcher/view/DockView;
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 135
    sget-object v21, Lcom/smartisanos/launcher/view/Cell;->cellLongPressAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-nez v21, :cond_b

    .line 136
    new-instance v21, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct/range {v21 .. v21}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    sput-object v21, Lcom/smartisanos/launcher/view/Cell;->cellLongPressAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 143
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/smengine/World;->getInputManager()Lcom/smartisanos/smengine/InputManager;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/smartisanos/smengine/InputManager;->setBatchMode(Z)V

    .line 144
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/smartisanos/launcher/view/DockView;->setCollidedUpCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 145
    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/PageView;->doNotCreateEmptyPage()Z

    move-result v21

    if-nez v21, :cond_2

    .line 146
    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/PageView;->createEmptyScreen()V

    .line 148
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/smartisanos/launcher/view/Cell;->FLOAT_STATUS:Z

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/smartisanos/launcher/view/Cell;->setInteractionState(I)V

    .line 150
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/smartisanos/launcher/view/PageView;->setSelectedCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/smartisanos/launcher/view/DockView;->setSelectedCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v19

    .line 153
    .local v19, "v":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/Cell;->getSaveData()Lcom/smartisanos/launcher/view/Cell$SaveData;

    move-result-object v21

    new-instance v22, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(Lcom/smartisanos/smengine/math/Vector3f;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/smartisanos/launcher/view/Cell$SaveData;->oldLocation:Lcom/smartisanos/smengine/math/Vector3f;

    .line 154
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/DockView;->getDockCellCount()I

    move-result v6

    .line 156
    .local v6, "cellCount":I
    const/4 v13, 0x1

    .line 157
    .local v13, "needUpdateTrashLoc":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/Cell;->getCellIndex()I

    move-result v7

    .line 158
    .local v7, "cellIndex":I
    sget v21, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v22, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v7, v0, :cond_6

    const/16 v21, 0x2

    move/from16 v0, v21

    if-lt v6, v0, :cond_6

    .line 160
    if-eqz v7, :cond_3

    add-int/lit8 v21, v6, -0x1

    move/from16 v0, v21

    if-ne v7, v0, :cond_6

    .line 161
    :cond_3
    const/4 v4, 0x0

    .line 162
    .local v4, "appearOnLeft":Z
    add-int/lit8 v21, v6, -0x1

    move/from16 v0, v21

    if-ne v7, v0, :cond_4

    .line 163
    const/4 v4, 0x1

    .line 165
    :cond_4
    const/16 v20, 0x0

    .line 166
    .local v20, "w":I
    sget v21, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static/range {v21 .. v21}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v16

    .line 167
    .local v16, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    const/4 v5, 0x0

    .line 168
    .local v5, "cellAreaWidth":I
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ne v6, v0, :cond_d

    .line 169
    sget v21, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    div-int/lit8 v21, v21, 0x4

    mul-int/lit8 v5, v21, 0x3

    .line 176
    :goto_1
    if-eqz v4, :cond_f

    .line 177
    sget v21, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    sub-int v21, v21, v5

    div-int/lit8 v20, v21, 0x2

    .line 181
    :goto_2
    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_height:F

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v21, v21, v22

    const/high16 v22, 0x3f800000    # 1.0f

    add-float v9, v21, v22

    .line 182
    .local v9, "h":F
    new-instance v11, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v11}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 183
    .local v11, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    sget v22, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sget v23, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    .line 186
    invoke-static/range {v23 .. v23}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    move/from16 v23, v0

    .line 183
    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v9, v1, v2, v11}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 188
    sget-boolean v21, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v21, :cond_5

    sget-object v21, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    const-string v22, "DEBUG"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "handleLongPress() trash translate to ==> "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_5
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v21

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v22, v0

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v23, v0

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v24, v0

    invoke-virtual/range {v21 .. v24}, Lcom/smartisanos/launcher/view/TrashView;->setTranslate(FFF)V

    .line 190
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/DockView;->updateGeometricState()V

    .line 191
    const/4 v13, 0x0

    .line 194
    .end local v4    # "appearOnLeft":Z
    .end local v5    # "cellAreaWidth":I
    .end local v9    # "h":F
    .end local v11    # "loc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v16    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v20    # "w":I
    :cond_6
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v10

    .line 195
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-eqz v21, :cond_7

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 196
    :cond_7
    sget v21, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v22, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 197
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v18

    .line 198
    .local v18, "tv":Lcom/smartisanos/launcher/view/TrashView;
    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/TrashView;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    .line 199
    .restart local v11    # "loc":Lcom/smartisanos/smengine/math/Vector3f;
    const/16 v21, 0x0

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v22, v0

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/launcher/view/TrashView;->setTranslate(FFF)V

    .line 200
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/DockView;->updateGeometricState()V

    .line 201
    const/4 v13, 0x0

    .line 205
    .end local v11    # "loc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v18    # "tv":Lcom/smartisanos/launcher/view/TrashView;
    :cond_8
    if-eqz v13, :cond_9

    .line 206
    sget v21, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lcom/smartisanos/launcher/view/DockView;->getTrashLocationByMode(IZ)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    .line 207
    .restart local v11    # "loc":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v21

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v22, v0

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v23, v0

    iget v0, v11, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v24, v0

    invoke-virtual/range {v21 .. v24}, Lcom/smartisanos/launcher/view/TrashView;->setTranslate(FFF)V

    .line 208
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/DockView;->updateGeometricState()V

    .line 212
    .end local v11    # "loc":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_9
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v17

    .line 213
    .local v17, "trashView":Lcom/smartisanos/launcher/view/TrashView;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v15, "params":Ljava/util/ArrayList;
    sget-object v21, Lcom/smartisanos/launcher/view/Cell;->cellLongPressAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v21, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_APPEAR:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    const v22, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v15}, Lcom/smartisanos/launcher/view/TrashView;->handleAnimation(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v21, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->RELAYOUT_BY_LONG_PRESSED:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    const v22, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1, v15}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 218
    sget-object v21, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->CELL_NARROWED:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    const v22, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1, v15}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 219
    sget-boolean v21, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    if-eqz v21, :cond_a

    sget v21, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v22, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/smartisanos/launcher/view/Cell;->enableShowAppName(Z)V

    .line 222
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/view/Cell;->longPressCommonInvoke()V

    .line 223
    sget-object v21, Lcom/smartisanos/launcher/view/Cell;->cellLongPressAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 226
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/smartisanos/launcher/view/TrashView;->setWaitingUninstallCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 227
    sget v21, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v23, v0

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v8, v0, v1, v2}, Lcom/smartisanos/launcher/view/DockView;->getDockCellArea(IZLcom/smartisanos/launcher/view/Cell;)Lcom/smartisanos/smengine/BoundingRect;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v8, Lcom/smartisanos/launcher/view/DockView;->dockCellAreaRect:Lcom/smartisanos/smengine/BoundingRect;

    .line 228
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/DockView;->getDockCellCount()I

    move-result v21

    iget-object v0, v8, Lcom/smartisanos/launcher/view/DockView;->dockCellAreaRect:Lcom/smartisanos/smengine/BoundingRect;

    move-object/from16 v22, v0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lcom/smartisanos/launcher/view/DockView;->calculateCellsLocation(ILcom/smartisanos/smengine/BoundingRect;)V

    .line 229
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 138
    .end local v6    # "cellCount":I
    .end local v7    # "cellIndex":I
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v13    # "needUpdateTrashLoc":Z
    .end local v15    # "params":Ljava/util/ArrayList;
    .end local v17    # "trashView":Lcom/smartisanos/launcher/view/TrashView;
    .end local v19    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_b
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/smartisanos/launcher/view/PageView;->setSelectedCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 139
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v21

    const/16 v22, 0x2

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 140
    sget-boolean v21, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v21, :cond_c

    sget-object v21, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    const-string v22, "DEBUG"

    const-string v23, "handleLongPress() return by cellLongPressAnimationTimeLine is not null !"

    invoke-virtual/range {v21 .. v23}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_c
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 170
    .restart local v4    # "appearOnLeft":Z
    .restart local v5    # "cellAreaWidth":I
    .restart local v6    # "cellCount":I
    .restart local v7    # "cellIndex":I
    .restart local v13    # "needUpdateTrashLoc":Z
    .restart local v16    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    .restart local v19    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v20    # "w":I
    :cond_d
    if-nez v6, :cond_e

    .line 171
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 173
    :cond_e
    sget v21, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    add-int/lit8 v22, v6, 0x1

    div-int v21, v21, v22

    mul-int v5, v21, v6

    goto/16 :goto_1

    .line 179
    :cond_f
    sget v21, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    sub-int v21, v21, v5

    div-int/lit8 v21, v21, 0x2

    add-int v20, v5, v21

    goto/16 :goto_2
.end method

.method private handleOnUp()V
    .locals 43

    .prologue
    .line 260
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v22

    .line 261
    .local v22, "mainView":Lcom/smartisanos/launcher/view/MainView;
    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v17

    .line 262
    .local v17, "dockView":Lcom/smartisanos/launcher/view/DockView;
    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v26

    .line 264
    .local v26, "pageView":Lcom/smartisanos/launcher/view/PageView;
    invoke-virtual/range {v26 .. v26}, Lcom/smartisanos/launcher/view/PageView;->forceUpdateGeometricState()V

    .line 265
    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 266
    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/MainView;->lockTouchEvent()V

    .line 267
    invoke-virtual/range {v26 .. v26}, Lcom/smartisanos/launcher/view/PageView;->disableAllPageForceRender()V

    .line 268
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/DockView;->resetPreCollideUpIndex()V

    .line 269
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/DockView;->resetPreCollideMoveIndex()V

    .line 270
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getCellBackgroundAnimation()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 271
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getCellBackgroundAnimation()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 274
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/Cell;->setLayerStatus(I)V

    .line 275
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->onUpRunning:Z

    .line 276
    sget-object v5, Lcom/smartisanos/launcher/view/Cell;->cellLongPressAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v5, :cond_1

    .line 277
    sget-object v5, Lcom/smartisanos/launcher/view/Cell;->cellLongPressAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 278
    const/4 v5, 0x0

    sput-object v5, Lcom/smartisanos/launcher/view/Cell;->cellLongPressAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 280
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 281
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 282
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/FloatPageNode;->forceFinishFloatPageAnimation()V

    .line 285
    :cond_2
    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/AnimationController;->clearAllAnimationEventInQueue()V

    .line 288
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/World;->getInputManager()Lcom/smartisanos/smengine/InputManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/InputManager;->setBatchMode(Z)V

    .line 290
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/Cell;->setShowLongPressAppName(Z)V

    .line 293
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 294
    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/MainView;->showStatusBar()V

    .line 296
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 297
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/smartisanos/launcher/view/Cell;->FLOAT_STATUS:Z

    .line 298
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_4

    sget-object v5, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CellStatusForDock, onUp, name ==> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellMoveTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v5, :cond_5

    .line 300
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellMoveTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 302
    :cond_5
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_6

    sget-object v5, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCell.getName() ===> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_6
    const/16 v24, 0x0

    .line 305
    .local v24, "needBackToParentView":Z
    const/4 v14, 0x0

    .line 306
    .local v14, "cellWillBeUninstall":Z
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/TrashView;->isAnyCellInTrashArea()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 308
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/TrashView;->getWaitingUninstallAppInfo()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v13

    .line 309
    .local v13, "cell":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    iget-wide v6, v5, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    iget-wide v8, v5, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_14

    .line 310
    new-instance v40, Lcom/smartisanos/launcher/actions/UninstallApp;

    invoke-direct/range {v40 .. v40}, Lcom/smartisanos/launcher/actions/UninstallApp;-><init>()V

    .line 311
    .local v40, "uninstall":Lcom/smartisanos/launcher/actions/UninstallApp;
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    iget-byte v6, v5, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    const/4 v7, 0x1

    if-eq v6, v7, :cond_shortcut_removable_done

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Utils;->isRemovable(Lcom/smartisanos/launcher/data/ItemInfo;)Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_shortcut_removable_done
    .line 312
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->taskCount()I

    move-result v5

    if-lez v5, :cond_d

    .line 314
    const/16 v24, 0x1

    .line 315
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_7

    sget-object v5, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "handle unfinished task first"

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 355
    :cond_7
    :goto_0
    if-eqz v24, :cond_8

    .line 356
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 357
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/DockView;->removeDockCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 365
    .end local v13    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v40    # "uninstall":Lcom/smartisanos/launcher/actions/UninstallApp;
    :cond_8
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_9

    sget-object v5, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "CellStatusForDock onUp begin !"

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 366
    :cond_9
    new-instance v5, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v5}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->dockCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 367
    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/MainView;->lockTouchEvent()V

    .line 368
    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 369
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v27, "params":Ljava/util/ArrayList;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->dockCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->dockCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    const v7, 0x3e99999a    # 0.3f

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/view/Cell;->hideLongPressAppName(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    .line 373
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/DockView;->getCollidedUpCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v15

    .line 374
    .local v15, "collidedUpCell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v15, :cond_17

    .line 375
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v6, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v5, v6, :cond_b

    .line 377
    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/Cell;->getCellDockStatus()Lcom/smartisanos/launcher/view/CellStatusForDock;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/CellStatusForDock;->getNarrowed()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 378
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v15, v5, v6, v7}, Lcom/smartisanos/launcher/view/Cell;->setScale(FFF)V

    .line 380
    :cond_a
    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 383
    :cond_b
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_c

    sget-object v5, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "collidedUpCell ==> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/Cell;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v33

    .line 386
    .local v33, "target":Lcom/smartisanos/smengine/SceneNode;
    if-nez v33, :cond_16

    .line 387
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "ERROR,cell back to target is not NULL!!!!!!!!!!!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 317
    .end local v15    # "collidedUpCell":Lcom/smartisanos/launcher/view/Cell;
    .end local v27    # "params":Ljava/util/ArrayList;
    .end local v33    # "target":Lcom/smartisanos/smengine/SceneNode;
    .restart local v13    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .restart local v40    # "uninstall":Lcom/smartisanos/launcher/actions/UninstallApp;
    :cond_d
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 318
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v19

    .line 319
    .local v19, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 320
    .local v28, "pkg":Ljava/lang/String;
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    if-eqz v5, :cond_profile_shortcut_check_intent

    const-string v6, "#profileSerial="

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_profile_shortcut_check_intent

    goto :cond_profile_shortcut_remove_entry

    :cond_profile_shortcut_check_intent
    move-object/from16 v5, v19

    instance-of v5, v5, Lcom/smartisanos/launcher/data/ShortcutInfo;

    if-eqz v5, :cond_profile_shortcut_continue

    move-object/from16 v5, v19

    check-cast v5, Lcom/smartisanos/launcher/data/ShortcutInfo;

    iget-object v5, v5, Lcom/smartisanos/launcher/data/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_profile_shortcut_continue

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_profile_shortcut_continue

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.smartisanos.launcher.StartActivityForSearch"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_profile_shortcut_continue

    :cond_profile_shortcut_remove_entry
    const/16 v24, 0x1

    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v5

    if-eqz v5, :cond_profile_shortcut_toast_done

    new-instance v6, Lcom/smartisanos/launcher/view/CellStatusForDock$7;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/smartisanos/launcher/view/CellStatusForDock$7;-><init>(Lcom/smartisanos/launcher/view/CellStatusForDock;)V

    invoke-virtual {v5, v6}, Lcom/smartisanos/home/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_profile_shortcut_toast_done

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/TrashView;->setWaitingUninstallCell(Lcom/smartisanos/launcher/view/Cell;)V

    goto/16 :goto_0

    :cond_profile_shortcut_continue
    const/16 v41, 0x0

    .line 325
    .local v41, "uninstallByTrash":Z
    move-object/from16 v0, v19

    iget-byte v5, v0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    const/4 v6, 0x1

    if-ne v5, v6, :cond_shortcut_uninstall_by_trash_continue

    const/16 v41, 0x1

    goto :goto_1

    :cond_shortcut_uninstall_by_trash_continue
    const-string v5, "com.smartisanos.weather"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 326
    const/16 v41, 0x1

    .line 330
    :cond_e
    :goto_1
    if-eqz v41, :cond_11

    .line 331
    sget-object v5, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    const-string v7, "uninstall embedded app by trash"

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v5

    const/16 v6, 0x40

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 333
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    const v6, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6}, Lcom/smartisanos/launcher/actions/UninstallApp;->uninstallAppOrShortcut(Lcom/smartisanos/launcher/view/Cell;F)V

    .line 334
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v5

    const/16 v6, 0x40

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 335
    const/4 v5, 0x0

    sput-object v5, Lcom/smartisanos/launcher/view/Cell;->cellLongPressAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 336
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/DockView;->removeDockCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 337
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->onUpRunning:Z

    .line 589
    .end local v13    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v19    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v28    # "pkg":Ljava/lang/String;
    .end local v40    # "uninstall":Lcom/smartisanos/launcher/actions/UninstallApp;
    .end local v41    # "uninstallByTrash":Z
    :cond_f
    :goto_2
    return-void

    .line 327
    .restart local v13    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .restart local v19    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .restart local v28    # "pkg":Ljava/lang/String;
    .restart local v40    # "uninstall":Lcom/smartisanos/launcher/actions/UninstallApp;
    .restart local v41    # "uninstallByTrash":Z
    :cond_10
    move-object/from16 v0, v19

    iget-boolean v5, v0, Lcom/smartisanos/launcher/data/ItemInfo;->installed:Z

    if-nez v5, :cond_e

    .line 328
    const/16 v41, 0x1

    goto :goto_1

    .line 340
    :cond_11
    const/4 v14, 0x1

    .line 341
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/TrashView;->getAnimation()Lcom/smartisanos/launcher/animations/TrashAnimation;

    move-result-object v5

    iget-object v5, v5, Lcom/smartisanos/launcher/animations/TrashAnimation;->trashFloatUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v5, :cond_12

    .line 342
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/TrashView;->getAnimation()Lcom/smartisanos/launcher/animations/TrashAnimation;

    move-result-object v5

    iget-object v5, v5, Lcom/smartisanos/launcher/animations/TrashAnimation;->trashFloatUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 344
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellCollideUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v5, :cond_7

    .line 345
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellCollideUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    goto/16 :goto_0

    .line 350
    .end local v19    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v28    # "pkg":Ljava/lang/String;
    .end local v41    # "uninstallByTrash":Z
    :cond_13
    const/16 v24, 0x1

    .line 352
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/Cell;->showToastForCannotRemoveSystemApp()V

    .line 353
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/TrashView;->setWaitingUninstallCell(Lcom/smartisanos/launcher/view/Cell;)V

    goto/16 :goto_0

    .line 361
    .end local v40    # "uninstall":Lcom/smartisanos/launcher/actions/UninstallApp;
    :cond_14
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_15

    sget-object v5, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "there are some bugs happened ! throw exception !!!, current id ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v8

    iget-wide v8, v8, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], target id ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v8

    iget-wide v8, v8, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_15
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "TrashView().getWaitingUninstallPageCell() is null !!!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v13    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .restart local v15    # "collidedUpCell":Lcom/smartisanos/launcher/view/Cell;
    .restart local v27    # "params":Ljava/util/ArrayList;
    .restart local v33    # "target":Lcom/smartisanos/smengine/SceneNode;
    :cond_16
    move-object/from16 v35, v33

    .line 390
    check-cast v35, Lcom/smartisanos/launcher/view/Page;

    .line 393
    .local v35, "targetPage":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v36

    .line 394
    .local v36, "targetRowIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v34

    .line 395
    .local v34, "targetColIndex":I
    move/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v15, v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 396
    move/from16 v0, v36

    move/from16 v1, v34

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/Page;->getBackgroundImageName(II)Ljava/lang/String;

    move-result-object v25

    .line 397
    .local v25, "newBackgroundImageName":Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/smartisanos/launcher/view/Cell;->setBackgroundImageName(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/Cell;->setNeedDisplay()V

    .line 400
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v15, v5}, Lcom/smartisanos/launcher/view/Cell;->setLastConvertProgress(F)V

    .line 401
    const v5, 0x3e99999a    # 0.3f

    move-object/from16 v0, v35

    invoke-virtual {v15, v0, v5}, Lcom/smartisanos/launcher/view/Cell;->cellUpReturnToPage(Lcom/smartisanos/launcher/view/Page;F)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v32

    .line 402
    .local v32, "returnAnimation":Lcom/smartisanos/smengine/AnimationTimeLine;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->dockCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v6, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v5, v6, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 405
    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/Cell;->getCellDockStatus()Lcom/smartisanos/launcher/view/CellStatusForDock;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/CellStatusForDock;->setNarrowed(Z)V

    .line 406
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/smartisanos/launcher/view/DockView;->removeDockCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/DockView;->addDockCellToList(Lcom/smartisanos/launcher/view/Cell;)Z

    .line 409
    .end local v25    # "newBackgroundImageName":Ljava/lang/String;
    .end local v32    # "returnAnimation":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v33    # "target":Lcom/smartisanos/smengine/SceneNode;
    .end local v34    # "targetColIndex":I
    .end local v35    # "targetPage":Lcom/smartisanos/launcher/view/Page;
    .end local v36    # "targetRowIndex":I
    :cond_17
    const/16 v38, 0x0

    .line 410
    .local v38, "toDock":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    if-nez v5, :cond_1e

    .line 411
    const/16 v38, 0x1

    .line 424
    :cond_18
    :goto_3
    move/from16 v23, v38

    .line 425
    .local v23, "moveToDock":Z
    if-eqz v38, :cond_25

    .line 427
    if-nez v15, :cond_19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    if-eqz v5, :cond_19

    .line 429
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v36

    .line 430
    .restart local v36    # "targetRowIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v34

    .line 431
    .restart local v34    # "targetColIndex":I
    invoke-virtual/range {v26 .. v26}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/AnimationController;->cellPullWhenCellIntoDockFromPage()Z

    move-result v5

    if-nez v5, :cond_19

    .line 432
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v30

    check-cast v30, Lcom/smartisanos/launcher/view/Page;

    .line 433
    .local v30, "preParent":Lcom/smartisanos/launcher/view/Page;
    if-eqz v30, :cond_19

    .line 434
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v36

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/smartisanos/launcher/view/Page;->createEmptyCell(IIZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/launcher/view/Cell;

    .line 435
    invoke-virtual/range {v30 .. v30}, Lcom/smartisanos/launcher/view/Page;->reSortChildren()V

    .line 436
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v6, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v5, v6, :cond_21

    sget-boolean v5, Lcom/smartisanos/launcher/theme/ThemeManager;->mNeedResetBackgroundInMultiPageMode:Z

    if-nez v5, :cond_21

    .line 460
    .end local v30    # "preParent":Lcom/smartisanos/launcher/view/Page;
    .end local v34    # "targetColIndex":I
    .end local v36    # "targetRowIndex":I
    :cond_19
    :goto_4
    const/16 v37, 0x0

    .line 461
    .local v37, "to":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/DockView;->addDockCellToList(Lcom/smartisanos/launcher/view/Cell;)Z

    .line 462
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/DockView;->updateDockCellIndex()V

    .line 463
    const/4 v5, 0x0

    sget v6, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Lcom/smartisanos/launcher/view/DockView;->getCellLocation(ZI)[Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v21

    .line 464
    .local v21, "locArr":[Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v21

    array-length v5, v0

    if-lez v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getCellIndex()I

    move-result v5

    move-object/from16 v0, v21

    array-length v6, v0

    if-ge v5, v6, :cond_1a

    .line 465
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getCellIndex()I

    move-result v5

    aget-object v37, v21, v5

    .line 467
    :cond_1a
    new-instance v4, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {v4, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 468
    .local v4, "moveAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v5, 0x3e99999a    # 0.3f

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 469
    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 470
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v18

    .line 471
    .local v18, "from":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v5, 0x0

    move-object/from16 v0, v18

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v18

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v18

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v37

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v37

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v37

    iget v11, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v4 .. v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 472
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->dockCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    const/4 v6, -0x2

    iput v6, v5, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 474
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/DockView;->getDockCellBoundingRect()Lcom/smartisanos/smengine/BoundingRect;

    move-result-object v12

    .line 475
    .local v12, "br":Lcom/smartisanos/smengine/BoundingRect;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/BoundingRect;->getMinPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v6

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    invoke-virtual {v12}, Lcom/smartisanos/smengine/BoundingRect;->getMinPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v7

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {v12}, Lcom/smartisanos/smengine/BoundingRect;->getMaxPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v8

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    invoke-virtual {v12}, Lcom/smartisanos/smengine/BoundingRect;->getMaxPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v9

    iget v9, v9, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/smartisanos/launcher/view/Cell;->setLocalBoundingVolume(FFFF)V

    .line 476
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 477
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->dockCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    const v7, 0x3e99999a    # 0.3f

    invoke-static {v5, v6, v7}, Lcom/smartisanos/launcher/view/CellConvertAnimation;->ConvertAnimSlotToDock(Lcom/smartisanos/smengine/AnimationTimeLine;Lcom/smartisanos/launcher/view/Cell;F)V

    .line 481
    if-nez v15, :cond_24

    .line 482
    const v5, 0x3e99999a    # 0.3f

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/PageView;->cleanEmptyScreen(F)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v31

    .line 483
    .local v31, "removePageAnim":Lcom/smartisanos/smengine/AnimationTimeLine;
    if-eqz v31, :cond_1b

    .line 484
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->dockCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v6, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v5, v6, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 500
    .end local v31    # "removePageAnim":Lcom/smartisanos/smengine/AnimationTimeLine;
    :cond_1b
    :goto_5
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_1c

    sget-object v5, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onUp, cell go to dock, dock cell size ==> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    .end local v4    # "moveAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v18    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v21    # "locArr":[Lcom/smartisanos/smengine/math/Vector3f;
    .end local v37    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_1c
    :goto_6
    sget-object v5, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->RELAYOUT_BY_UP:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    const v6, 0x3e99999a    # 0.3f

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v5, v6, v1}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 522
    sget-object v5, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->CELL_BROADED:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    const v6, 0x3e99999a    # 0.3f

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v5, v6, v1}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 523
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v5

    sget-object v6, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_REDUCE:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    const v7, 0x3e99999a    # 0.3f

    move-object/from16 v0, v27

    invoke-virtual {v5, v6, v7, v0}, Lcom/smartisanos/launcher/view/TrashView;->handleAnimation(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 524
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v5

    sget-object v6, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_FALL:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    const v7, 0x3e99999a    # 0.3f

    move-object/from16 v0, v27

    invoke-virtual {v5, v6, v7, v0}, Lcom/smartisanos/launcher/view/TrashView;->handleAnimation(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->dockCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    new-instance v6, Lcom/smartisanos/launcher/view/CellStatusForDock$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v15}, Lcom/smartisanos/launcher/view/CellStatusForDock$1;-><init>(Lcom/smartisanos/launcher/view/CellStatusForDock;Lcom/smartisanos/launcher/view/Cell;)V

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->dockCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 567
    if-eqz v14, :cond_f

    .line 568
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/TrashView;->getWaitingUninstallAppInfo()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v42

    .line 569
    .local v42, "uninstallCell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v42, :cond_1d

    .line 570
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/TrashView;->setWaitingUninstallCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 573
    :cond_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->dockCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 576
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/PageView;->setSelectedCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 577
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/DockView;->setSelectedCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v20

    .line 581
    .local v20, "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 582
    .local v29, "pkgName":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v5

    new-instance v6, Lcom/smartisanos/launcher/view/CellStatusForDock$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v6, v0, v1}, Lcom/smartisanos/launcher/view/CellStatusForDock$2;-><init>(Lcom/smartisanos/launcher/view/CellStatusForDock;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/smartisanos/home/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 412
    .end local v12    # "br":Lcom/smartisanos/smengine/BoundingRect;
    .end local v20    # "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v23    # "moveToDock":Z
    .end local v29    # "pkgName":Ljava/lang/String;
    .end local v42    # "uninstallCell":Lcom/smartisanos/launcher/view/Cell;
    :cond_1e
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 413
    const/16 v38, 0x1

    goto/16 :goto_3

    .line 415
    :cond_1f
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 416
    .local v16, "dockCellCount":I
    sget v5, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_app_count:I

    move/from16 v0, v16

    if-ge v0, v5, :cond_20

    .line 417
    if-nez v24, :cond_18

    .line 418
    const/16 v38, 0x1

    goto/16 :goto_3

    .line 420
    :cond_20
    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/DockView;->getCollidedUpCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 421
    const/16 v38, 0x1

    goto/16 :goto_3

    .line 439
    .end local v16    # "dockCellCount":I
    .restart local v23    # "moveToDock":Z
    .restart local v30    # "preParent":Lcom/smartisanos/launcher/view/Page;
    .restart local v34    # "targetColIndex":I
    .restart local v36    # "targetRowIndex":I
    :cond_21
    const/16 v39, 0x0

    .line 440
    .local v39, "totalDelay":F
    invoke-virtual/range {v26 .. v26}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/AnimationController;->hasAnimationPlaying()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 441
    const v39, 0x3ecccccd    # 0.4f

    .line 445
    :goto_7
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v5, :cond_23

    .line 446
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->dockCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual/range {v26 .. v26}, Lcom/smartisanos/launcher/view/PageView;->resetAllPageBackground()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v6

    move/from16 v0, v39

    invoke-virtual {v5, v0, v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto/16 :goto_4

    .line 443
    :cond_22
    const v39, 0x3dcccccd    # 0.1f

    goto :goto_7

    .line 448
    :cond_23
    invoke-virtual/range {v26 .. v26}, Lcom/smartisanos/launcher/view/PageView;->resetAllPageBackgroundNoAnimation()V

    goto/16 :goto_4

    .line 487
    .end local v30    # "preParent":Lcom/smartisanos/launcher/view/Page;
    .end local v34    # "targetColIndex":I
    .end local v36    # "targetRowIndex":I
    .end local v39    # "totalDelay":F
    .restart local v4    # "moveAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .restart local v12    # "br":Lcom/smartisanos/smengine/BoundingRect;
    .restart local v18    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v21    # "locArr":[Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v37    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_24
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v5, :cond_1b

    .line 493
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/Cell;->setDrawWithPostEffect(Z)V

    goto/16 :goto_5

    .line 502
    .end local v4    # "moveAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v12    # "br":Lcom/smartisanos/smengine/BoundingRect;
    .end local v18    # "from":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v21    # "locArr":[Lcom/smartisanos/smengine/math/Vector3f;
    .end local v37    # "to":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_25
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_26

    sget-object v5, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    const-string v7, "onUp, cell back to page"

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :cond_26
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 504
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v33

    .line 505
    .restart local v33    # "target":Lcom/smartisanos/smengine/SceneNode;
    if-nez v33, :cond_27

    .line 506
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "ERROR,cell back to target is not NULL!!!!!!!!!!!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_27
    move-object/from16 v35, v33

    .line 508
    check-cast v35, Lcom/smartisanos/launcher/view/Page;

    .line 510
    .restart local v35    # "targetPage":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v36

    .line 511
    .restart local v36    # "targetRowIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v34

    .line 512
    .restart local v34    # "targetColIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v5, v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setRowCol(II)V

    .line 513
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    const v6, 0x3e99999a    # 0.3f

    move-object/from16 v0, v35

    invoke-virtual {v5, v0, v6}, Lcom/smartisanos/launcher/view/Cell;->cellUpReturnToPage(Lcom/smartisanos/launcher/view/Page;F)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v32

    .line 514
    .restart local v32    # "returnAnimation":Lcom/smartisanos/smengine/AnimationTimeLine;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    move-object/from16 v0, v35

    iget v6, v0, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    iput v6, v5, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 515
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->dockCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v6, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v5, v6, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 516
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getPageCellForegroundBoundingRect()Lcom/smartisanos/smengine/BoundingRect;

    move-result-object v12

    .line 517
    .restart local v12    # "br":Lcom/smartisanos/smengine/BoundingRect;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/BoundingRect;->getMinPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v6

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    invoke-virtual {v12}, Lcom/smartisanos/smengine/BoundingRect;->getMinPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v7

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {v12}, Lcom/smartisanos/smengine/BoundingRect;->getMaxPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v8

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    invoke-virtual {v12}, Lcom/smartisanos/smengine/BoundingRect;->getMaxPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v9

    iget v9, v9, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/smartisanos/launcher/view/Cell;->setLocalBoundingVolume(FFFF)V

    .line 518
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 519
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->reSetPageCellListener()V

    goto/16 :goto_6
.end method


# virtual methods
.method public endDragIcon()V
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->touchListener:Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->touchListener:Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;

    new-instance v1, Lcom/smartisanos/smengine/TouchEvent;

    invoke-direct {v1}, Lcom/smartisanos/smengine/TouchEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;->onUp(Lcom/smartisanos/smengine/TouchEvent;)V

    .line 745
    :cond_0
    return-void
.end method

.method public forceFinishCellUpAnim()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->dockCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->dockCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 248
    :cond_0
    return-void
.end method

.method public forceInvokeUp()V
    .locals 2

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->onUpRunning:Z

    if-eqz v0, :cond_1

    .line 252
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "### up first."

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/CellStatusForDock;->handleOnUp()V

    .line 256
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/CellStatusForDock;->forceFinishCellUpAnim()V

    goto :goto_0
.end method

.method public getCellCollideDownAnim(Lcom/smartisanos/smengine/AnimationTimeLine;Lcom/smartisanos/launcher/view/Cell;)V
    .locals 10
    .param p1, "timeLine"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p2, "cell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    const/4 v1, 0x0

    .line 753
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "getCellCollideDownAnim !"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 754
    :cond_0
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/Cell;->getCellDockStatus()Lcom/smartisanos/launcher/view/CellStatusForDock;

    move-result-object v2

    iput-boolean v1, v2, Lcom/smartisanos/launcher/view/CellStatusForDock;->isCollidedUp:Z

    .line 755
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "DEBUG"

    const-string v4, "getCellCollideDownAnim, setCollidedUpCell is null"

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/DockView;->setCollidedUpCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 757
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v8

    .line 758
    .local v8, "from":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v9, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/Cell;->getSaveData()Lcom/smartisanos/launcher/view/Cell$SaveData;

    move-result-object v2

    iget-object v2, v2, Lcom/smartisanos/launcher/view/Cell$SaveData;->oldLocation:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v9, v2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 759
    .local v9, "to":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v0, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 760
    .local v0, "moveAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 761
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 762
    iget v2, v8, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, v8, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, v8, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v5, v9, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v6, v9, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v7, v9, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 763
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 764
    return-void
.end method

.method public getCellMoveTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellMoveTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object v0
.end method

.method public getNarrowed()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->narrowed:Z

    return v0
.end method

.method public getSingleTapListener()Lcom/smartisanos/launcher/view/CellStatusForDock$SingleTapListenerForDockCell;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->singleTapListener:Lcom/smartisanos/launcher/view/CellStatusForDock$SingleTapListenerForDockCell;

    return-object v0
.end method

.method public getTouchListener()Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->touchListener:Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;

    return-object v0
.end method

.method public initDragIcon()V
    .locals 0

    .prologue
    .line 696
    return-void
.end method

.method public moveOnDock(FF)V
    .locals 24
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1033
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v9

    .line 1034
    .local v9, "dockView":Lcom/smartisanos/launcher/view/DockView;
    iget-object v0, v9, Lcom/smartisanos/launcher/view/DockView;->dockCellAreaRect:Lcom/smartisanos/smengine/BoundingRect;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 1035
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "Oooops ! dockCellAreaRect is null"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 1037
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v17

    .line 1038
    .local v17, "pointer":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v0, v9, Lcom/smartisanos/launcher/view/DockView;->dockCellAreaRect:Lcom/smartisanos/smengine/BoundingRect;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Lcom/smartisanos/smengine/BoundingRect;->isPointInBoundingVolume(FFF)Z

    move-result v13

    .line 1039
    .local v13, "isInDockCellArea":Z
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v8

    .line 1040
    .local v8, "dockCells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    const/4 v11, 0x0

    .line 1041
    .local v11, "inDockList":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1042
    const/4 v11, 0x1

    .line 1044
    :cond_1
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v19

    .line 1045
    .local v19, "trashView":Lcom/smartisanos/launcher/view/TrashView;
    if-nez v13, :cond_a

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellMoveTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellMoveTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 1049
    :cond_2
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/DockView;->getCollidedUpCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v10

    .line 1050
    .local v10, "fallDownCell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v10, :cond_4

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellCollideUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellCollideUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 1054
    :cond_3
    new-instance v20, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct/range {v20 .. v20}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellCollideUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellCollideUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Lcom/smartisanos/launcher/view/CellStatusForDock;->getCellCollideDownAnim(Lcom/smartisanos/smengine/AnimationTimeLine;Lcom/smartisanos/launcher/view/Cell;)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellCollideUpAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 1058
    :cond_4
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/DockView;->resetPreCollideUpIndex()V

    .line 1059
    if-eqz v11, :cond_5

    .line 1060
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellAreaRelayoutAnimStart(Lcom/smartisanos/launcher/view/Cell;)V

    .line 1062
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellCenterInTrash()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 1065
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/smartisanos/launcher/view/PageView;->changeScreen(I)V

    .line 1068
    new-instance v4, Lcom/smartisanos/smengine/CollisionData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Lcom/smartisanos/smengine/CollisionData;-><init>(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode;)V

    .line 1069
    .local v4, "collideData":Lcom/smartisanos/smengine/CollisionData;
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/TrashView;->enterTrash(Lcom/smartisanos/smengine/CollisionData;)I

    .line 1070
    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/TrashView;->getWaitingUninstallAppInfo()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v20

    if-nez v20, :cond_7

    .line 1071
    sget-boolean v20, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v20, :cond_6

    sget-object v20, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    const-string v21, "DEBUG"

    const-string v22, "setWaitingUninstallCell ... "

    invoke-virtual/range {v20 .. v22}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    :cond_6
    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/TrashView;->getWaitingUninstallAppInfo()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v20

    if-nez v20, :cond_8

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/smartisanos/launcher/view/TrashView;->setWaitingUninstallCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 1150
    .end local v10    # "fallDownCell":Lcom/smartisanos/launcher/view/Cell;
    :cond_7
    :goto_0
    return-void

    .line 1074
    .restart local v10    # "fallDownCell":Lcom/smartisanos/launcher/view/Cell;
    :cond_8
    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/TrashView;->getWaitingUninstallAppInfo()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/smartisanos/launcher/view/TrashView;->setWaitingUninstallCell(Lcom/smartisanos/launcher/view/Cell;)V

    goto :goto_0

    .line 1080
    .end local v4    # "collideData":Lcom/smartisanos/smengine/CollisionData;
    :cond_9
    new-instance v4, Lcom/smartisanos/smengine/CollisionData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Lcom/smartisanos/smengine/CollisionData;-><init>(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode;)V

    .line 1081
    .restart local v4    # "collideData":Lcom/smartisanos/smengine/CollisionData;
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/TrashView;->exitTrash(Lcom/smartisanos/smengine/CollisionData;)I

    .line 1082
    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/smartisanos/launcher/view/TrashView;->setWaitingUninstallCell(Lcom/smartisanos/launcher/view/Cell;)V

    goto :goto_0

    .line 1086
    .end local v4    # "collideData":Lcom/smartisanos/smengine/CollisionData;
    .end local v10    # "fallDownCell":Lcom/smartisanos/launcher/view/Cell;
    :cond_a
    new-instance v4, Lcom/smartisanos/smengine/CollisionData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Lcom/smartisanos/smengine/CollisionData;-><init>(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode;)V

    .line 1087
    .restart local v4    # "collideData":Lcom/smartisanos/smengine/CollisionData;
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/TrashView;->exitTrash(Lcom/smartisanos/smengine/CollisionData;)I

    .line 1088
    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/smartisanos/launcher/view/TrashView;->setWaitingUninstallCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 1089
    sget v20, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static/range {v20 .. v20}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v20

    move-object/from16 v0, v20

    iget v14, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_app_count:I

    .line 1090
    .local v14, "max":I
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/DockView;->getDockCellCount()I

    move-result v2

    .line 1091
    .local v2, "cellCount":I
    const/4 v7, 0x0

    .line 1092
    .local v7, "doCollide":Z
    if-eqz v11, :cond_b

    .line 1094
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v2, v0, :cond_7

    .line 1098
    const/4 v7, 0x1

    .line 1112
    :goto_1
    if-eqz v7, :cond_7

    .line 1115
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/smartisanos/launcher/view/PageView;->changeScreen(I)V

    .line 1118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->relayoutCellAreaCellsTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    .line 1119
    sget-object v20, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    const-string v21, "relayoutCellAreaCellsTimeLine is running, return !"

    invoke-virtual/range {v20 .. v21}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1101
    :cond_b
    if-ge v2, v14, :cond_c

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/smartisanos/launcher/view/DockView;->addDockCellToList(Lcom/smartisanos/launcher/view/Cell;)Z

    .line 1103
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/DockView;->getDockCellCount()I

    move-result v5

    .line 1104
    .local v5, "count":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v5, v0, :cond_7

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellAreaRelayoutAnimStart(Lcom/smartisanos/launcher/view/Cell;)V

    goto :goto_1

    .line 1109
    .end local v5    # "count":I
    :cond_c
    const/4 v7, 0x1

    goto :goto_1

    .line 1122
    :cond_d
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/DockView;->getDockCellCount()I

    move-result v5

    .line 1123
    .restart local v5    # "count":I
    if-le v5, v14, :cond_e

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/smartisanos/launcher/view/DockView;->removeDockCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 1126
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/DockView;->getDockCellCount()I

    move-result v5

    .line 1128
    :cond_e
    iget-object v0, v9, Lcom/smartisanos/launcher/view/DockView;->dockCellAreaRect:Lcom/smartisanos/smengine/BoundingRect;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/BoundingRect;->getMaxPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v20

    move-object/from16 v0, v20

    iget v15, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 1129
    .local v15, "maxX":F
    iget-object v0, v9, Lcom/smartisanos/launcher/view/DockView;->dockCellAreaRect:Lcom/smartisanos/smengine/BoundingRect;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/smengine/BoundingRect;->getMinPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v16, v0

    .line 1130
    .local v16, "minX":F
    sub-float v20, v15, v16

    int-to-float v0, v5

    move/from16 v21, v0

    div-float v6, v20, v21

    .line 1131
    .local v6, "d":F
    move-object/from16 v0, v17

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v18, v0

    .line 1132
    .local v18, "pointerX":F
    cmpl-float v20, v18, v15

    if-lez v20, :cond_f

    .line 1133
    move/from16 v18, v15

    .line 1135
    :cond_f
    cmpg-float v20, v18, v16

    if-gez v20, :cond_10

    .line 1136
    move/from16 v18, v16

    .line 1138
    :cond_10
    sub-float v20, v18, v16

    div-float v20, v20, v6

    move/from16 v0, v20

    float-to-int v12, v0

    .line 1139
    .local v12, "index":I
    if-gez v12, :cond_11

    .line 1140
    const/4 v12, 0x0

    .line 1142
    :cond_11
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v3

    .line 1143
    .local v3, "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    if-ne v5, v14, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_12

    .line 1144
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellCollideUpLogic(I)V

    goto/16 :goto_0

    .line 1146
    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/smartisanos/launcher/view/CellStatusForDock;->cellCollideMoveLogic(I)V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z
    .locals 3
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    const/4 v0, 0x1

    .line 79
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 120
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 82
    :sswitch_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->touchListener:Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->touchListener:Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;->onMove(Lcom/smartisanos/smengine/TouchEvent;)V

    goto :goto_1

    .line 90
    :sswitch_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->touchListener:Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->touchListener:Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;->onMove(Lcom/smartisanos/smengine/TouchEvent;)V

    goto :goto_1

    .line 98
    :sswitch_2
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "CellStatusForDock TouchEvent.GESTURE_LONG_PRESSED mSomethingIsFloat set true"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 99
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 100
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/CellStatusForDock;->handleLongPress()Z

    goto :goto_0

    .line 105
    :sswitch_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->singleTapListener:Lcom/smartisanos/launcher/view/CellStatusForDock$SingleTapListenerForDockCell;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->singleTapListener:Lcom/smartisanos/launcher/view/CellStatusForDock$SingleTapListenerForDockCell;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/CellStatusForDock$SingleTapListenerForDockCell;->onClick(Lcom/smartisanos/smengine/TouchEvent;)V

    goto :goto_0

    .line 113
    :sswitch_4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->touchListener:Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->touchListener:Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;->onUp(Lcom/smartisanos/smengine/TouchEvent;)V

    goto :goto_1

    .line 79
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

.method public setCollidedUpStatus(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->isCollidedUp:Z

    .line 60
    return-void
.end method

.method public setNarrowed(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->narrowed:Z

    .line 56
    return-void
.end method

.method public startDragIcon(Lcom/smartisanos/launcher/view/Cell;)Z
    .locals 3
    .param p1, "cell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 686
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    .line 688
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 689
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/CellStatusForDock;->handleLongPress()Z

    move-result v0

    return v0
.end method

.method public translateCellToDock()V
    .locals 5

    .prologue
    .line 233
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "translateCellToDock begin !"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 234
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    .line 235
    .local v1, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pid ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], cid ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 236
    :cond_1
    new-instance v0, Lcom/smartisanos/smengine/TouchEvent;

    invoke-direct {v0}, Lcom/smartisanos/smengine/TouchEvent;-><init>()V

    .line 237
    .local v0, "event":Lcom/smartisanos/smengine/TouchEvent;
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/TouchEvent;->set(I)V

    .line 238
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/CellStatusForDock;->onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    .line 239
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/smartisanos/launcher/view/CellStatusForDock;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "translateCellToDock done !"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 240
    :cond_2
    return-void
.end method

.method public updateDragIcon(FFFF)V
    .locals 15
    .param p1, "changeX"    # F
    .param p2, "changeY"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 703
    iget-object v11, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v11

    if-nez v11, :cond_0

    .line 735
    :goto_0
    return-void

    .line 708
    :cond_0
    iget-object v11, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    iget v11, v11, Lcom/smartisanos/launcher/view/Cell;->mDragPointX:F

    sub-float v11, p3, v11

    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    sub-float v3, v11, v12

    .line 709
    .local v3, "curX":F
    sget v11, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    iget-object v12, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    iget v12, v12, Lcom/smartisanos/launcher/view/Cell;->mDragPointY:F

    add-float v12, v12, p4

    sub-float v4, v11, v12

    .line 711
    .local v4, "curY":F
    sget v11, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    cmpl-float v11, v4, v11

    if-lez v11, :cond_3

    .line 712
    sget v11, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v4, v11

    .line 717
    :cond_1
    :goto_1
    iget-object v11, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v7

    .line 718
    .local v7, "t":Lcom/smartisanos/smengine/math/Transform;
    invoke-virtual {v7}, Lcom/smartisanos/smengine/math/Transform;->inverse()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v9

    .line 719
    .local v9, "tinv":Lcom/smartisanos/smengine/math/Transform;
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v8

    .line 720
    .local v8, "tempVars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v6, v8, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    .line 721
    .local v6, "resultL":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v5, v8, Lcom/smartisanos/smengine/util/TempVars;->vect2:Lcom/smartisanos/smengine/math/Vector3f;

    .line 722
    .local v5, "inputL":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v11, 0x0

    invoke-virtual {v5, v3, v4, v11}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 723
    invoke-virtual {v9, v5, v6}, Lcom/smartisanos/smengine/math/Transform;->transformVector(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v6

    .line 724
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/CameraManager;->getCurrentCamera()Lcom/smartisanos/smengine/Camera;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/Camera;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v2

    .line 725
    .local v2, "cameraZ":F
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const v14, 0x3f866666    # 1.05f

    invoke-virtual {v11, v12, v13, v2, v14}, Lcom/smartisanos/launcher/view/PageView;->createZFromScale(FFFF)F

    move-result v10

    .line 726
    .local v10, "upZ":F
    iget-object v11, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    iget v12, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v13, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-virtual {v11, v12, v13, v10}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 727
    invoke-virtual {v8}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 728
    iget-object v11, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 730
    iget-object v11, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/Cell;->forceFinishCellLongPressAnimation()V

    .line 731
    iget-object v11, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/Cell;->isAway()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 732
    iget-object v11, p0, Lcom/smartisanos/launcher/view/CellStatusForDock;->mCell:Lcom/smartisanos/launcher/view/Cell;

    const/4 v12, 0x0

    const v13, 0x3dcccccd    # 0.1f

    invoke-virtual {v11, v12, v13}, Lcom/smartisanos/launcher/view/Cell;->hideLongPressAppName(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    .line 734
    :cond_2
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/CellStatusForDock;->moveOnDock(FF)V

    goto/16 :goto_0

    .line 713
    .end local v2    # "cameraZ":F
    .end local v5    # "inputL":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v6    # "resultL":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v7    # "t":Lcom/smartisanos/smengine/math/Transform;
    .end local v8    # "tempVars":Lcom/smartisanos/smengine/util/TempVars;
    .end local v9    # "tinv":Lcom/smartisanos/smengine/math/Transform;
    .end local v10    # "upZ":F
    :cond_3
    sget v11, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    cmpg-float v11, v4, v11

    if-gez v11, :cond_1

    .line 714
    sget v11, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v4, v11

    goto/16 :goto_1
.end method
