.class public Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;
.super Ljava/lang/Object;
.source "DatabaseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/data/DatabaseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageTask"
.end annotation


# static fields
.field public static final ADD_PACKAGE:I = 0x1

.field public static final REMOVE_PACKAGE:I = 0x2

.field public static final UPDATE_ICON:I = 0x4

.field public static final UPDATE_PACKAGE:I = 0x3

.field private static mHandleTaskRunning:Z

.field private static mPause:Z

.field private static mTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public actionType:I

.field public itemInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->mTasks:Ljava/util/List;

    .line 1491
    sput-boolean v1, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->mHandleTaskRunning:Z

    .line 1492
    sput-boolean v1, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->mPause:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    const/4 v1, 0x0

    .line 1443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1439
    iput-object v1, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->packageName:Ljava/lang/String;

    .line 1440
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->actionType:I

    .line 1441
    iput-object v1, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->itemInfos:Ljava/util/List;

    .line 1444
    if-nez p1, :cond_0

    .line 1445
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PackageTask lose pkg"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1447
    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    .line 1451
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PackageTask error action type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1453
    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1454
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PackageTask lose item info"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1456
    :cond_3
    iput-object p1, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->packageName:Ljava/lang/String;

    .line 1457
    iput p2, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->actionType:I

    .line 1458
    iput-object p3, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->itemInfos:Ljava/util/List;

    .line 1459
    return-void
.end method

.method public static appendTask(Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;)V
    .locals 5
    .param p0, "task"    # Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;

    .prologue
    .line 1471
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v1

    sget-object v2, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->GL:Lcom/smartisanos/home/Launcher$RUNNING_ENV;

    invoke-virtual {v1, v2}, Lcom/smartisanos/home/Launcher;->verifyThread(Lcom/smartisanos/home/Launcher$RUNNING_ENV;)V

    .line 1472
    if-nez p0, :cond_0

    .line 1489
    :goto_0
    return-void

    .line 1475
    :cond_0
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    const-string v2, "A140"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PackageTask appendTask action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->actionType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    :cond_1
    iget v1, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->actionType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1477
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1478
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    const-string v2, "ON_CELL_IN_TRASH is true, set remove task to top"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1479
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TrashView;->getWaitingUninstallAppInfo()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    .line 1480
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v0, :cond_3

    .line 1481
    iget-object v1, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1482
    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->mTasks:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1488
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_3
    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->mTasks:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static handleInstallApps(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1607
    .local p0, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v2

    const-string v3, "handle install apps begin !"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 1608
    :cond_0
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v2

    sget-object v3, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->GL:Lcom/smartisanos/home/Launcher$RUNNING_ENV;

    invoke-virtual {v2, v3}, Lcom/smartisanos/home/Launcher;->verifyThread(Lcom/smartisanos/home/Launcher$RUNNING_ENV;)V

    .line 1609
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->isViewAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1610
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1612
    .local v1, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    new-instance v3, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    iget-object v4, v1, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/smartisanos/quicksearchbox/util/IndexUtil;->parsePinYinUnit(Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;)[Ljava/lang/String;

    move-result-object v0

    .line 1613
    .local v0, "index":[Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v3, v0, v3

    iput-object v3, v1, Lcom/smartisanos/launcher/data/ItemInfo;->originIndex:Ljava/lang/String;

    .line 1614
    const/4 v3, 0x0

    aget-object v3, v0, v3

    iput-object v3, v1, Lcom/smartisanos/launcher/data/ItemInfo;->qwertyIndex:Ljava/lang/String;

    .line 1615
    const/4 v3, 0x1

    aget-object v3, v0, v3

    iput-object v3, v1, Lcom/smartisanos/launcher/data/ItemInfo;->t9Index:Ljava/lang/String;

    .line 1616
    invoke-static {v1}, Lcom/smartisanos/launcher/LauncherModel;->setItemInfo(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 1617
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/smartisanos/launcher/view/PageView;->addCellToPage(Lcom/smartisanos/launcher/data/ItemInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1618
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addCellToPage failed ! by id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1619
    iget-wide v4, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v4, v5}, Lcom/smartisanos/launcher/LauncherModel;->removeItemInfo(J)Lcom/smartisanos/launcher/data/ItemInfo;

    goto :goto_0

    .line 1623
    .end local v0    # "index":[Ljava/lang/String;
    .end local v1    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_2
    return-void
.end method

.method public static handleTaskList()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/16 v11, 0x800

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1499
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v9

    sget-object v10, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->GL:Lcom/smartisanos/home/Launcher$RUNNING_ENV;

    invoke-virtual {v9, v10}, Lcom/smartisanos/home/Launcher;->verifyThread(Lcom/smartisanos/home/Launcher$RUNNING_ENV;)V

    .line 1500
    sget-boolean v9, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->mHandleTaskRunning:Z

    if-eqz v9, :cond_1

    .line 1604
    .local v4, "mainView":Lcom/smartisanos/launcher/view/MainView;
    :cond_0
    :goto_0
    return-void

    .line 1503
    .end local v4    # "mainView":Lcom/smartisanos/launcher/view/MainView;
    :cond_1
    sget-object v9, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->mTasks:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 1504
    sput-boolean v8, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->mHandleTaskRunning:Z

    goto :goto_0

    .line 1507
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v9

    const/16 v10, 0x1000

    invoke-virtual {v9, v10, v7}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 1508
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/home/Launcher;->getPauseEventStatus()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1509
    sget-boolean v7, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v7

    const-string v9, "PackageTask handleTaskList return by pause event status is true"

    invoke-virtual {v7, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1510
    :cond_3
    sput-boolean v8, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->mHandleTaskRunning:Z

    goto :goto_0

    .line 1513
    :cond_4
    sget-boolean v9, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->mPause:Z

    if-eqz v9, :cond_5

    .line 1514
    sget-boolean v7, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v7

    const-string v8, "DEBUG"

    const-string v9, "mPause is true, so handleTaskList return when try to execute task"

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1518
    :cond_5
    sput-boolean v7, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->mHandleTaskRunning:Z

    .line 1519
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    .line 1520
    .restart local v4    # "mainView":Lcom/smartisanos/launcher/view/MainView;
    if-eqz v4, :cond_5_release_running

    .line 1523
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v9

    if-eqz v9, :cond_5_release_running

    .line 1526
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v9

    if-eqz v9, :cond_5_release_running

    .line 1529
    goto :cond_6

    :cond_5_release_running
    sput-boolean v8, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->mHandleTaskRunning:Z

    goto :goto_0

    .line 1529
    :cond_6
    :goto_1
    sget-object v9, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->mTasks:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_7

    .line 1530
    sget-boolean v9, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->mPause:Z

    if-eqz v9, :cond_8

    .line 1531
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v7

    const-string v9, "DEBUG"

    const-string v10, "mPause is true, so handleTaskList break when task running"

    invoke-virtual {v7, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    :cond_7
    :goto_2
    sput-boolean v8, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->mHandleTaskRunning:Z

    goto :goto_0

    .line 1534
    :cond_8
    sget-object v9, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->mTasks:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;

    .line 1535
    .local v6, "task":Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;
    iget v0, v6, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->actionType:I

    .line 1536
    .local v0, "action":I
    const/4 v5, 0x0

    .line 1537
    .local v5, "needCache":Z
    if-ne v0, v7, :cond_c

    .line 1538
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/StatusManager;->canUpdateAndAddApp()Z

    move-result v9

    if-nez v9, :cond_b

    move v5, v7

    .line 1547
    :cond_9
    :goto_3
    if-eqz v5, :cond_12

    .line 1548
    sget-boolean v7, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v7, :cond_a

    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PackageTask handleTaskList return by needCache is true, by action="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1549
    :cond_a
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/StatusManager;->dumpStatus()V

    goto :goto_2

    :cond_b
    move v5, v8

    .line 1538
    goto :goto_3

    .line 1539
    :cond_c
    if-ne v0, v13, :cond_e

    .line 1540
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/StatusManager;->canUpdateAndAddApp()Z

    move-result v9

    if-nez v9, :cond_d

    move v5, v7

    :goto_4
    goto :goto_3

    :cond_d
    move v5, v8

    goto :goto_4

    .line 1541
    :cond_e
    if-ne v0, v12, :cond_10

    .line 1542
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/StatusManager;->canUninstallApp()Z

    move-result v9

    if-nez v9, :cond_f

    move v5, v7

    :goto_5
    goto :goto_3

    :cond_f
    move v5, v8

    goto :goto_5

    .line 1543
    :cond_10
    const/4 v9, 0x4

    if-ne v0, v9, :cond_9

    .line 1544
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/StatusManager;->canUpdateAndAddApp()Z

    move-result v9

    if-nez v9, :cond_11

    move v5, v7

    :goto_6
    goto :goto_3

    :cond_11
    move v5, v8

    goto :goto_6

    .line 1552
    :cond_12
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 1553
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->lockTouchEvent()V

    .line 1554
    sget-object v9, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->mTasks:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "task":Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;
    check-cast v6, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;

    .line 1555
    .restart local v6    # "task":Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;
    sget-object v9, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->mTasks:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_15

    move v3, v7

    .line 1556
    .local v3, "isLastTask":Z
    :goto_7
    if-eqz v3, :cond_13

    .line 1557
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v9

    const/16 v10, 0x1000

    invoke-virtual {v9, v10, v8}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 1559
    :cond_13
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v9

    invoke-virtual {v9, v11, v7}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 1560
    iget-object v2, v6, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->itemInfos:Ljava/util/List;

    .line 1562
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/TrashView;->isTrashAnimRunning()Z

    move-result v9

    if-eqz v9, :cond_14

    .line 1563
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/TrashView;->forceFinishTrashAnim()V

    .line 1565
    :cond_14
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v1

    .line 1566
    .local v1, "controller":Lcom/smartisanos/launcher/view/AnimationController;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/AnimationController;->allAnimationForceFinish()V

    .line 1568
    if-ne v0, v7, :cond_16

    .line 1569
    invoke-static {v2}, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->handleInstallApps(Ljava/util/List;)V

    .line 1570
    if-eqz v3, :cond_6

    .line 1571
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v9

    invoke-virtual {v9, v11, v8}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 1572
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->unLockHardKey()V

    .line 1573
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->unLockTouchEvent()V

    goto/16 :goto_1

    .end local v1    # "controller":Lcom/smartisanos/launcher/view/AnimationController;
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v3    # "isLastTask":Z
    :cond_15
    move v3, v8

    .line 1555
    goto :goto_7

    .line 1575
    .restart local v1    # "controller":Lcom/smartisanos/launcher/view/AnimationController;
    .restart local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .restart local v3    # "isLastTask":Z
    :cond_16
    if-ne v0, v13, :cond_17

    .line 1576
    invoke-static {v2}, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->handleUpdateApps(Ljava/util/List;)V

    .line 1577
    if-eqz v3, :cond_6

    .line 1578
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v9

    invoke-virtual {v9, v11, v8}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 1579
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->unLockHardKey()V

    .line 1580
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->unLockTouchEvent()V

    goto/16 :goto_1

    .line 1582
    :cond_17
    if-ne v0, v12, :cond_18

    .line 1583
    new-instance v9, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask$1;

    invoke-direct {v9, v3}, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask$1;-><init>(Z)V

    invoke-static {v2, v9}, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->handleUninstallApps(Ljava/util/List;Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 1594
    :cond_18
    const/4 v9, 0x4

    if-ne v0, v9, :cond_6

    .line 1595
    invoke-static {v2}, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->handleUpdateAppIcons(Ljava/util/List;)V

    .line 1596
    if-eqz v3, :cond_6

    .line 1597
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v9

    invoke-virtual {v9, v11, v8}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 1598
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->unLockHardKey()V

    .line 1599
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->unLockTouchEvent()V

    goto/16 :goto_1
.end method

.method private static handleUninstallApps(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "finishCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1626
    .local p0, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v4

    sget-object v5, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->GL:Lcom/smartisanos/home/Launcher$RUNNING_ENV;

    invoke-virtual {v4, v5}, Lcom/smartisanos/home/Launcher;->verifyThread(Lcom/smartisanos/home/Launcher$RUNNING_ENV;)V

    .line 1627
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1628
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .line 1629
    .local v3, "pkgName":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1630
    .local v2, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    if-nez v3, :cond_1

    .line 1631
    iget-object v3, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 1638
    :cond_0
    iget-wide v6, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1632
    :cond_1
    iget-object v5, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1633
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1634
    .local v1, "in":Lcom/smartisanos/launcher/data/ItemInfo;
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleUninstallApps pkg ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], cmp ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 1636
    .end local v1    # "in":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "handleUninstallApps error, different package name"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1640
    .end local v2    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_3
    invoke-static {v3, v0, p1}, Lcom/smartisanos/launcher/LauncherModel;->removeItemDataFromDataMap(Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V

    .line 1641
    return-void
.end method

.method private static handleUpdateAppIcons(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1667
    .local p0, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v5

    sget-object v6, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->GL:Lcom/smartisanos/home/Launcher$RUNNING_ENV;

    invoke-virtual {v5, v6}, Lcom/smartisanos/home/Launcher;->verifyThread(Lcom/smartisanos/home/Launcher$RUNNING_ENV;)V

    .line 1668
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1669
    .local v1, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-wide v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 1670
    .local v2, "id":J
    invoke-static {v2, v3}, Lcom/smartisanos/launcher/LauncherModel;->getItemInfo(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v4

    .line 1671
    .local v4, "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v4, :cond_1

    .line 1672
    iget-object v6, v1, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    iput-object v6, v4, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    .line 1673
    iget-object v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    .line 1674
    .local v0, "color":Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    if-eqz v0, :cond_0

    .line 1675
    iput-object v4, v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->owner:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1676
    iput-object v0, v4, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    .line 1678
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v6

    iget-wide v8, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v6, v8, v9}, Lcom/smartisanos/launcher/view/PageView;->updateCell(J)V

    goto :goto_0

    .line 1680
    .end local v0    # "color":Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v6

    const-string v7, "DEBUG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleUpdateAppIcons error by can\'t find item by id ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1683
    .end local v1    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v2    # "id":J
    .end local v4    # "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_2
    return-void
.end method

.method private static handleUpdateApps(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1644
    .local p0, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v3

    sget-object v4, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->GL:Lcom/smartisanos/home/Launcher$RUNNING_ENV;

    invoke-virtual {v3, v4}, Lcom/smartisanos/home/Launcher;->verifyThread(Lcom/smartisanos/home/Launcher$RUNNING_ENV;)V

    .line 1645
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1646
    .local v1, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-wide v4, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v4, v5}, Lcom/smartisanos/launcher/LauncherModel;->getItemInfo(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    .line 1647
    .local v2, "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v2, :cond_0

    .line 1648
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    const-string v5, "A140"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleUpdateApps pindex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", cindex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    iget v4, v2, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    iput v4, v1, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 1650
    iget v4, v2, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    iput v4, v1, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 1652
    new-instance v4, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    iget-object v5, v1, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/smartisanos/quicksearchbox/util/IndexUtil;->parsePinYinUnit(Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;)[Ljava/lang/String;

    move-result-object v0

    .line 1653
    .local v0, "index":[Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v4, v0, v4

    iput-object v4, v1, Lcom/smartisanos/launcher/data/ItemInfo;->originIndex:Ljava/lang/String;

    .line 1654
    const/4 v4, 0x0

    aget-object v4, v0, v4

    iput-object v4, v1, Lcom/smartisanos/launcher/data/ItemInfo;->qwertyIndex:Ljava/lang/String;

    .line 1655
    const/4 v4, 0x1

    aget-object v4, v0, v4

    iput-object v4, v1, Lcom/smartisanos/launcher/data/ItemInfo;->t9Index:Ljava/lang/String;

    .line 1656
    iget-wide v4, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v4, v5}, Lcom/smartisanos/launcher/LauncherModel;->removeItemInfo(J)Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1657
    invoke-static {v1}, Lcom/smartisanos/launcher/LauncherModel;->setItemInfo(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 1658
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    iget-wide v6, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v4, v6, v7}, Lcom/smartisanos/launcher/view/PageView;->updateCell(J)V

    goto :goto_0

    .line 1660
    .end local v0    # "index":[Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lose item by id ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1664
    .end local v1    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v2    # "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_1
    return-void
.end method

.method public static listTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1467
    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->mTasks:Ljava/util/List;

    return-object v0
.end method

.method public static setTaskPauseStatus(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .prologue
    .line 1495
    sput-boolean p0, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->mPause:Z

    .line 1496
    return-void
.end method

.method public static taskCount()I
    .locals 2

    .prologue
    .line 1462
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->GL:Lcom/smartisanos/home/Launcher$RUNNING_ENV;

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/Launcher;->verifyThread(Lcom/smartisanos/home/Launcher$RUNNING_ENV;)V

    .line 1463
    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->mTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
