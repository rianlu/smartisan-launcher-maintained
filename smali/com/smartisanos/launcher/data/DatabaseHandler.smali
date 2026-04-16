.class public Lcom/smartisanos/launcher/data/DatabaseHandler;
.super Ljava/lang/Object;
.source "DatabaseHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;
    }
.end annotation


# static fields
.field private static final DEBUG_DB_PARAMETERS:Z

.field public static volatile FETCH_ICON_RUNNING:Z

.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static final mWorker:Landroid/os/Handler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    const-class v0, Lcom/smartisanos/launcher/data/DatabaseHandler;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    .line 67
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DatabaseHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseHandler;->sWorkerThread:Landroid/os/HandlerThread;

    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lcom/smartisanos/launcher/data/DatabaseHandler;->FETCH_ICON_RUNNING:Z

    .line 119
    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseHandler;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 151
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseHandler$1;

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseHandler;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/data/DatabaseHandler$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseHandler;->mWorker:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseHandler;->sWorkerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$100()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$200(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/smartisanos/launcher/data/DatabaseHandler;->debugParams(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/List;

    .prologue
    .line 64
    invoke-static {p0}, Lcom/smartisanos/launcher/data/DatabaseHandler;->handleInit(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/smartisanos/launcher/data/DatabaseHandler;->run(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private static appendUpdateDatabaseTask(Ljava/util/Map;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "params"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;",
            "Ljava/util/ArrayList;",
            ")V"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "task":Ljava/util/Map;, "Ljava/util/Map<Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 133
    :cond_0
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    const-string v5, "can\'t append empty task !"

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_1
    :goto_0
    return-void

    .line 136
    :cond_2
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 137
    .local v0, "actionType":Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;
    if-nez v0, :cond_3

    .line 138
    sget-object v3, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    const-string v5, "task key is null ! return !"

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_3
    sget-object v3, Lcom/smartisanos/launcher/data/DatabaseHandler;->mWorker:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 142
    .local v2, "updateMsg":Landroid/os/Message;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v1, "dataList":Ljava/util/ArrayList;
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 145
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_4
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 148
    sget-object v3, Lcom/smartisanos/launcher/data/DatabaseHandler;->mWorker:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private static cleanInvalidItemData()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 585
    const-string v4, "pageIndex=-1 or cellIndex=-1"

    .line 587
    .local v4, "whereCaseInvalidIndex":Ljava/lang/String;
    invoke-static {v4}, Lcom/smartisanos/launcher/data/handler/ItemDB;->removeItemDataByWhereCase(Ljava/lang/String;)V

    .line 588
    sget-object v7, Lcom/smartisanos/launcher/data/Constants;->BLACK_PACKAGE_LIST:[Ljava/lang/String;

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_0

    aget-object v1, v7, v5

    .line 589
    .local v1, "pkg":Ljava/lang/String;
    invoke-static {v1}, Lcom/smartisanos/launcher/data/handler/ItemDB;->removeItemDataByPackage(Ljava/lang/String;)V

    .line 588
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 591
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_0
    sget-object v7, Lcom/smartisanos/launcher/data/Constants;->BLACK_COMPONENT_LIST:[Ljava/lang/String;

    array-length v8, v7

    move v5, v6

    :goto_1
    if-ge v5, v8, :cond_1

    aget-object v2, v7, v5

    .line 592
    .local v2, "str":Ljava/lang/String;
    const-string v9, ";"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 593
    .local v3, "strs":[Ljava/lang/String;
    aget-object v1, v3, v6

    .line 594
    .restart local v1    # "pkg":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v0, v3, v9

    .line 595
    .local v0, "cmp":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/smartisanos/launcher/data/handler/ItemDB;->removeItemDataByPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 597
    .end local v0    # "cmp":Ljava/lang/String;
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "strs":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static correctionCellIndex(Ljava/util/List;)V
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
    .line 927
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 950
    :cond_0
    :goto_0
    return-void

    .line 930
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [Lcom/smartisanos/launcher/data/ItemInfo;

    .line 931
    .local v0, "cellArr":[Lcom/smartisanos/launcher/data/ItemInfo;
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 932
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 933
    const/4 v1, 0x1

    .line 934
    .local v1, "consecutive":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_3

    .line 935
    aget-object v5, v0, v3

    iget v5, v5, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    if-eq v5, v3, :cond_2

    .line 936
    aget-object v5, v0, v3

    iput v3, v5, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 937
    const/4 v1, 0x0

    .line 934
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 940
    :cond_3
    if-nez v1, :cond_0

    .line 941
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 942
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v3, 0x0

    :goto_2
    array-length v5, v0

    if-ge v3, v5, :cond_4

    .line 943
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 944
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v5, "_id"

    aget-object v6, v0, v3

    iget-wide v6, v6, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 945
    const-string v5, "cellIndex"

    aget-object v6, v0, v3

    iget v6, v6, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 946
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 942
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 948
    .end local v2    # "cv":Landroid/content/ContentValues;
    :cond_4
    invoke-static {v4}, Lcom/smartisanos/launcher/data/handler/ItemDB;->updateById(Ljava/util/List;)Z

    goto :goto_0
.end method

.method private static dataInit(Landroid/content/Context;Z)V
    .locals 34
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isOta"    # Z

    .prologue
    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 400
    .local v6, "beginTime":J
    invoke-static {}, Lcom/smartisanos/launcher/LauncherModel;->clearRamData()V

    .line 401
    invoke-static/range {p0 .. p0}, Lcom/smartisanos/launcher/LauncherModel;->mapResolveInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v14

    .line 410
    .local v14, "installedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/ResolveInfo;>;>;"
    invoke-static/range {p0 .. p0}, Lcom/smartisanos/launcher/data/LauncherPreferences;->isFirstEnter(Landroid/content/Context;)Z

    move-result v16

    .line 411
    .local v16, "isFirst":Z
    if-nez v16, :cond_0

    .line 412
    invoke-static {}, Lcom/smartisanos/launcher/data/handler/ItemDB;->count()I

    move-result v29

    if-nez v29, :cond_0

    .line 413
    const/16 v16, 0x1

    .line 416
    :cond_0
    if-eqz v16, :cond_3

    .line 417
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/smartisanos/launcher/data/DatabaseHandler;->insertPreLoadApps(Landroid/content/Context;Ljava/util/Map;)V

    .line 418
    sget-boolean v29, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v29, :cond_1

    sget-object v29, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v30, "launcher is first init. done !"

    invoke-virtual/range {v29 .. v30}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 423
    :cond_1
    :goto_0
    invoke-static {v14}, Lcom/smartisanos/launcher/data/DatabaseHandler;->updateSystemAppInfo(Ljava/util/Map;)V

    .line 425
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->cleanInvalidItemData()V

    .line 426
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->dumpDatabase()V

    .line 428
    invoke-static {}, Lcom/smartisanos/launcher/data/handler/ItemDB;->mapAllItems()Ljava/util/Map;

    move-result-object v5

    .line 430
    .local v5, "cachedItemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .local v27, "unSyncAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v15, "invalidAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    .line 435
    .local v28, "updateAppMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/smartisanos/launcher/data/ItemInfo;Landroid/content/pm/ResolveInfo;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 437
    .local v8, "cachedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_2
    :goto_1
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_7

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 438
    .local v23, "pkg":Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    .line 439
    .local v19, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v18

    .line 440
    .local v18, "itemSize":I
    invoke-static/range {v23 .. v23}, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->isEmbeddedApp(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_2

    .line 443
    move-object/from16 v0, v23

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/List;

    .line 444
    .local v25, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v25, :cond_4

    .line 446
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 420
    .end local v5    # "cachedItemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    .end local v8    # "cachedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "invalidAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v18    # "itemSize":I
    .end local v19    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v23    # "pkg":Ljava/lang/String;
    .end local v25    # "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v27    # "unSyncAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v28    # "updateAppMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/smartisanos/launcher/data/ItemInfo;Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->dumpDatabase()V

    goto :goto_0

    .line 452
    .restart local v5    # "cachedItemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    .restart local v8    # "cachedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "invalidAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .restart local v18    # "itemSize":I
    .restart local v19    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .restart local v23    # "pkg":Ljava/lang/String;
    .restart local v25    # "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v27    # "unSyncAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .restart local v28    # "updateAppMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/smartisanos/launcher/data/ItemInfo;Landroid/content/pm/ResolveInfo;>;"
    :cond_4
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v26

    .line 453
    .local v26, "size":I
    :cond_5
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v30

    if-lez v30, :cond_2

    .line 454
    const/16 v30, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 455
    .local v17, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    move-object/from16 v0, v17

    iget-byte v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_5

    .line 458
    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    .line 459
    .local v9, "cmp":Ljava/lang/String;
    const/16 v30, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-static {v14, v0, v9, v1}, Lcom/smartisanos/launcher/data/DatabaseHandler;->getResolveInfo(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/pm/ResolveInfo;

    move-result-object v24

    .line 460
    .local v24, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v24, :cond_5

    .line 461
    const/16 v30, 0x1

    move/from16 v0, v18

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    const/16 v30, 0x1

    move/from16 v0, v26

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    .line 463
    const/16 v30, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 466
    :cond_6
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 472
    .end local v9    # "cmp":Ljava/lang/String;
    .end local v17    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v18    # "itemSize":I
    .end local v19    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v23    # "pkg":Ljava/lang/String;
    .end local v24    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v25    # "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v26    # "size":I
    :cond_7
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/DatabaseHandler;->updateApp(Ljava/util/Map;Landroid/content/Context;)V

    .line 474
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 475
    .local v11, "installedAppPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_8
    :goto_3
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_9

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 476
    .restart local v23    # "pkg":Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_8

    .line 478
    move-object/from16 v0, v23

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 479
    .local v4, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 484
    .end local v4    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v23    # "pkg":Ljava/lang/String;
    :cond_9
    invoke-static {v15}, Lcom/smartisanos/launcher/data/DatabaseHandler;->removeInvalidData(Ljava/util/List;)V

    .line 486
    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 487
    invoke-static {}, Lcom/smartisanos/launcher/data/handler/ItemDB;->mapAllItems()Ljava/util/Map;

    move-result-object v5

    .line 488
    invoke-static {v5}, Lcom/smartisanos/launcher/data/DatabaseHandler;->resetIndex(Ljava/util/Map;)V

    .line 489
    invoke-static/range {p0 .. p0}, Lcom/smartisanos/launcher/data/DatabaseHandler;->switchLauncherBaseModeIfNeeded(Landroid/content/Context;)Z

    .line 492
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->verifyOverMaxCellCount()V

    .line 494
    invoke-static {}, Lcom/smartisanos/launcher/LauncherModel;->clearRamData()V

    .line 495
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listItem(Z)Ljava/util/List;

    move-result-object v19

    .line 496
    .restart local v19    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-eqz v19, :cond_f

    .line 497
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_4
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_f

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 498
    .restart local v17    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 499
    .restart local v23    # "pkg":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->isEmbeddedApp(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_a

    .line 501
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    .line 502
    const-string v30, "com.smartisanos.home.settings"

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_b

    .line 503
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    .line 504
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->installed:Z

    .line 519
    :cond_a
    :goto_5
    invoke-static/range {v17 .. v17}, Lcom/smartisanos/launcher/LauncherModel;->setItemInfo(Lcom/smartisanos/launcher/data/ItemInfo;)V

    goto :goto_4

    .line 505
    :cond_b
    const-string v30, "com.smartisanos.weather"

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_c

    .line 506
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    .line 507
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->installed:Z

    goto :goto_5

    .line 508
    :cond_c
    const-string v30, "com.smartisanos.quicksearchbox"

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_d

    .line 509
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    .line 510
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->installed:Z

    goto :goto_5

    .line 512
    :cond_d
    move-object/from16 v0, v23

    invoke-interface {v14, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_e

    .line 513
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->installed:Z

    goto :goto_5

    .line 515
    :cond_e
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->installed:Z

    goto :goto_5

    .line 523
    .end local v17    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v23    # "pkg":Ljava/lang/String;
    :cond_f
    invoke-static/range {p0 .. p0}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    .line 524
    .local v22, "oldLan":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v21

    .line 525
    .local v21, "newLan":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getLocaleChangedStatus(Landroid/content/Context;)Z

    move-result v20

    .line 526
    .local v20, "localeChanged":Z
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_10

    if-eqz v20, :cond_12

    .line 527
    :cond_10
    sget-object v29, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "switch language from ["

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "] to ["

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "], localeChanged ["

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 528
    if-eqz v20, :cond_11

    .line 529
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/LauncherPreferences;->setLocaleChangedStatus(Landroid/content/Context;Z)V

    .line 531
    :cond_11
    invoke-static/range {p0 .. p0}, Lcom/smartisanos/launcher/LauncherModel;->updateDataForLocaleChange(Landroid/content/Context;)V

    .line 533
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/DatabaseHandler;->syncApps(Landroid/content/Context;Ljava/util/List;)V

    .line 534
    invoke-static {}, Lcom/smartisanos/launcher/LauncherModel;->getItemMap()Ljava/util/HashMap;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/smartisanos/launcher/data/handler/IconDB;->loadIconToItem(Landroid/content/Context;Ljava/util/Map;Z)V

    .line 537
    sget-object v29, Lcom/smartisanos/launcher/LauncherModel;->pageInfoListWhenStartUp:Ljava/util/List;

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->clear()V

    .line 538
    sget-object v29, Lcom/smartisanos/launcher/LauncherModel;->pageInfoListWhenStartUp:Ljava/util/List;

    invoke-static {}, Lcom/smartisanos/launcher/data/handler/PageDB;->listPage()Ljava/util/List;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 539
    sget-boolean v29, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v29, :cond_13

    sget-object v29, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "load page count ["

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget-object v31, Lcom/smartisanos/launcher/LauncherModel;->pageInfoListWhenStartUp:Ljava/util/List;

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 540
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 541
    .local v12, "endTime":J
    sget-boolean v29, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v29, :cond_14

    sget-object v29, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v30, "A140"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "data init     time ["

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sub-long v32, v12, v6

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " ms]"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :cond_14
    const/4 v10, 0x0

    .line 543
    .local v10, "dataEmpty":Z
    sget-object v29, Lcom/smartisanos/launcher/LauncherModel;->pageInfoListWhenStartUp:Ljava/util/List;

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v29

    if-nez v29, :cond_15

    .line 544
    sget-object v29, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v30, "DEBUG"

    const-string v31, "page data size is 0"

    invoke-virtual/range {v29 .. v31}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const/4 v10, 0x1

    .line 547
    :cond_15
    invoke-static {}, Lcom/smartisanos/launcher/LauncherModel;->getItemMap()Ljava/util/HashMap;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->size()I

    move-result v29

    if-nez v29, :cond_16

    .line 548
    sget-object v29, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v30, "DEBUG"

    const-string v31, "item data size is 0"

    invoke-virtual/range {v29 .. v31}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const/4 v10, 0x1

    .line 551
    :cond_16
    if-eqz v10, :cond_17

    .line 552
    sget-object v29, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v30, "DEBUG"

    const-string v31, "something is wrong, dataEmpty true, clean all data & launcher reboot"

    invoke-virtual/range {v29 .. v31}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-static {}, Lcom/smartisanos/launcher/data/DBHelper;->resetDB()V

    .line 554
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/smartisanos/launcher/LauncherApplication;->getProxy()Lcom/smartisanos/launcher/ApplicationProxy;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/smartisanos/launcher/ApplicationProxy;->forceStop()V

    .line 557
    :cond_17
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->fetchIconIfNeed()V

    .line 558
    return-void
.end method

.method private static dataInitProtected(Landroid/content/Context;Z)Z
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "isOta"    # Z

    .prologue
    .line 356
    const/4 v1, 0x0

    .line 358
    .local v1, "success":Z
    :try_start_0
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/data/DatabaseHandler;->dataInit(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    const/4 v1, 0x1

    .line 363
    :goto_0
    return v1

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static debugParams(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "actionType"    # Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;
    .param p2, "additionParams"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, "contentValueList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    return-void
.end method

.method public static dumpDatabase()V
    .locals 1

    .prologue
    .line 1232
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-nez v0, :cond_0

    .line 1237
    :goto_0
    return-void

    .line 1235
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/data/handler/ItemDB;->dump()V

    .line 1236
    invoke-static {}, Lcom/smartisanos/launcher/data/handler/PageDB;->dump()V

    goto :goto_0
.end method

.method private static fetchIconIfNeed()V
    .locals 5

    .prologue
    .line 562
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SYNC_APP_ICON:Z

    if-eqz v1, :cond_2

    .line 563
    const/4 v0, 0x0

    .line 564
    .local v0, "netstatus":Z
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_CELLULAR:Z

    if-eqz v1, :cond_1

    .line 565
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->isWifiConnected()Z

    move-result v0

    .line 569
    :goto_0
    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "network status ==> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    if-eqz v0, :cond_0

    .line 572
    const/4 v1, 0x0

    sput-boolean v1, Lcom/smartisanos/home/net/StatusReceiver;->batteryLow:Z

    .line 573
    invoke-static {}, Lcom/smartisanos/home/net/StatusReceiver;->updateStatus()V

    .line 574
    invoke-static {}, Lcom/smartisanos/home/net/StatusReceiver;->tryToFetch()V

    .line 579
    .end local v0    # "netstatus":Z
    :cond_0
    :goto_1
    return-void

    .line 567
    .restart local v0    # "netstatus":Z
    :cond_1
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->isNetworkConnected()Z

    move-result v0

    goto :goto_0

    .line 577
    .end local v0    # "netstatus":Z
    :cond_2
    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "USER DON\'T NEED SYNC ICON !"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static formatIndex(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1044
    .local p0, "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    .local p1, "pageItemMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    sget-boolean v33, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v33, :cond_0

    sget-object v33, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v34, "A140"

    const-string v35, "formatIndex begin !"

    invoke-virtual/range {v33 .. v35}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1046
    .local v4, "beginTime":J
    new-instance v16, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v33

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1047
    .local v16, "indexList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v33

    move/from16 v0, v33

    new-array v15, v0, [Ljava/lang/Integer;

    .line 1048
    .local v15, "indexArr":[Ljava/lang/Integer;
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1049
    invoke-static {v15}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1051
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 1052
    .local v26, "pageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/smartisanos/launcher/data/PageInfo;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :goto_0
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_1

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/smartisanos/launcher/data/PageInfo;

    .line 1053
    .local v23, "p":Lcom/smartisanos/launcher/data/PageInfo;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1055
    .end local v23    # "p":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_1
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 1056
    .local v21, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/smartisanos/launcher/data/PageInfo;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    array-length v0, v15

    move/from16 v33, v0

    move/from16 v0, v33

    new-array v0, v0, [Lcom/smartisanos/launcher/data/PageInfo;

    move-object/from16 v25, v0

    .line 1057
    .local v25, "pageInfos":[Lcom/smartisanos/launcher/data/PageInfo;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    array-length v0, v15

    move/from16 v33, v0

    move/from16 v0, v33

    if-ge v11, v0, :cond_3

    .line 1058
    aget-object v14, v15, v11

    .line 1059
    .local v14, "index":Ljava/lang/Integer;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    .line 1060
    .local v20, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/smartisanos/launcher/data/PageInfo;

    .line 1061
    .local v28, "pinfo":Lcom/smartisanos/launcher/data/PageInfo;
    if-nez v28, :cond_2

    .line 1062
    new-instance v28, Lcom/smartisanos/launcher/data/PageInfo;

    .end local v28    # "pinfo":Lcom/smartisanos/launcher/data/PageInfo;
    invoke-direct/range {v28 .. v28}, Lcom/smartisanos/launcher/data/PageInfo;-><init>()V

    .line 1063
    .restart local v28    # "pinfo":Lcom/smartisanos/launcher/data/PageInfo;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, v28

    iput v0, v1, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    .line 1064
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v28

    iput v0, v1, Lcom/smartisanos/launcher/data/PageInfo;->status:I

    .line 1065
    const-string v33, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/data/PageInfo;->setPageName(Ljava/lang/String;)V

    .line 1067
    :cond_2
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    aput-object v28, v25, v11

    .line 1057
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1070
    .end local v14    # "index":Ljava/lang/Integer;
    .end local v20    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v28    # "pinfo":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_3
    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->clear()V

    .line 1071
    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1073
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1074
    .local v24, "pageCV":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1075
    .local v19, "itemCV":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v11, 0x0

    :goto_2
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    if-ge v11, v0, :cond_5

    .line 1076
    aget-object v27, v25, v11

    .line 1077
    .local v27, "pi":Lcom/smartisanos/launcher/data/PageInfo;
    move-object/from16 v0, v27

    iget v0, v0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-eq v0, v11, :cond_4

    .line 1079
    move-object/from16 v0, v27

    iput v11, v0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    .line 1080
    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    .line 1081
    .restart local v20    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :goto_3
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_4

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1082
    .local v17, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1083
    .local v7, "cv":Landroid/content/ContentValues;
    const-string v34, "_id"

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1084
    const-string v34, "pageIndex"

    move-object/from16 v0, v27

    iget v0, v0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1085
    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1088
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v17    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v20    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :cond_4
    invoke-virtual/range {v27 .. v27}, Lcom/smartisanos/launcher/data/PageInfo;->toContentValues()Landroid/content/ContentValues;

    move-result-object v33

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1075
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1090
    .end local v27    # "pi":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_5
    sget v33, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static/range {v33 .. v33}, Lcom/smartisanos/launcher/view/MainView;->getMaxPageCount(I)I

    move-result v22

    .line 1091
    .local v22, "max":I
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v29

    .line 1092
    .local v29, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual/range {v29 .. v29}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 1093
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1096
    :try_start_0
    const-string v33, "DELETE FROM table_pageinfos"

    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1097
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v31

    .line 1098
    .local v31, "size":I
    const/4 v10, 0x0

    .line 1099
    .local v10, "effectiveArea":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/16 v18, 0x0

    .line 1100
    .local v18, "invalidRegion":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    move/from16 v0, v31

    move/from16 v1, v22

    if-le v0, v1, :cond_6

    .line 1101
    const/16 v33, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v33

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    .line 1102
    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v18

    .line 1106
    :goto_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v31

    .line 1107
    const/4 v11, 0x0

    :goto_5
    move/from16 v0, v31

    if-ge v11, v0, :cond_7

    .line 1108
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 1109
    .restart local v7    # "cv":Landroid/content/ContentValues;
    const-string v33, "_id"

    add-int/lit8 v34, v11, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1110
    const-string v33, "table_pageinfos"

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v8, v0, v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1107
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1104
    .end local v7    # "cv":Landroid/content/ContentValues;
    :cond_6
    move-object/from16 v10, v24

    goto :goto_4

    .line 1113
    :cond_7
    move/from16 v0, v31

    rsub-int v6, v0, 0x3e8

    .line 1114
    .local v6, "count":I
    const/4 v11, 0x0

    :goto_6
    if-ge v11, v6, :cond_8

    .line 1115
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1116
    .restart local v7    # "cv":Landroid/content/ContentValues;
    const-string v33, "_id"

    add-int v34, v31, v11

    add-int/lit8 v34, v34, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1117
    const-string v33, "pageIndex"

    const/16 v34, -0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1118
    const-string v33, "status"

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1119
    const-string v33, "pageTitle"

    const-string v34, ""

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    const-string v33, "table_pageinfos"

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v8, v0, v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1114
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 1123
    .end local v7    # "cv":Landroid/content/ContentValues;
    :cond_8
    if-eqz v18, :cond_9

    .line 1124
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v30

    .line 1125
    .local v30, "s":I
    const/4 v11, 0x0

    :goto_7
    move/from16 v0, v30

    if-ge v11, v0, :cond_9

    .line 1126
    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 1127
    .restart local v7    # "cv":Landroid/content/ContentValues;
    const-string v33, "_id"

    add-int/lit16 v0, v11, 0x3e8

    move/from16 v34, v0

    add-int/lit8 v34, v34, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1128
    const-string v33, "table_pageinfos"

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v8, v0, v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1125
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 1133
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v30    # "s":I
    :cond_9
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :goto_8
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_c

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/ContentValues;

    .line 1134
    .local v32, "value":Landroid/content/ContentValues;
    const-string v34, "table_iteminfos"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "_id="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "_id"

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    .line 1137
    .end local v6    # "count":I
    .end local v10    # "effectiveArea":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v18    # "invalidRegion":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v31    # "size":I
    .end local v32    # "value":Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 1138
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1141
    :try_start_2
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1146
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1147
    .local v12, "endTime":J
    sget-boolean v33, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v33, :cond_a

    sget-object v33, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v34, "A140"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "data is not consecutive, spend ["

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    sub-long v36, v12, v4

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "]"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v33 .. v35}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    :cond_a
    sget-boolean v33, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v33, :cond_b

    sget-object v33, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v34, "A140"

    const-string v35, "formatIndex done"

    invoke-virtual/range {v33 .. v35}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    :cond_b
    return-void

    .line 1136
    .end local v12    # "endTime":J
    .restart local v6    # "count":I
    .restart local v10    # "effectiveArea":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v18    # "invalidRegion":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v31    # "size":I
    :cond_c
    :try_start_3
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1141
    :try_start_4
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_9

    .line 1142
    :catch_1
    move-exception v9

    .line 1143
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 1142
    .end local v6    # "count":I
    .end local v10    # "effectiveArea":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v18    # "invalidRegion":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v31    # "size":I
    :catch_2
    move-exception v9

    .line 1143
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 1140
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v33

    .line 1141
    :try_start_5
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1144
    :goto_a
    throw v33

    .line 1142
    :catch_3
    move-exception v9

    .line 1143
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method private static getResolveInfo(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cmp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, "installedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/ResolveInfo;>;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/smartisanos/launcher/data/DatabaseHandler;->getResolveInfo(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getResolveInfo(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/pm/ResolveInfo;
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cmp"    # Ljava/lang/String;
    .param p3, "ignoreCmp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "installedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/ResolveInfo;>;>;"
    const/4 v2, 0x0

    .line 372
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v3, v2

    .line 393
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v3

    .line 375
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 376
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    move-object v3, v2

    .line 377
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "info":Landroid/content/pm/ResolveInfo;
    goto :goto_0

    .line 379
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 380
    .local v6, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_5

    .line 381
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 383
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 384
    .local v0, "cmpName":Ljava/lang/String;
    if-eqz p2, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 385
    move-object v2, v5

    .line 380
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 388
    .end local v0    # "cmpName":Ljava/lang/String;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_5
    if-nez v2, :cond_6

    .line 389
    if-eqz p3, :cond_6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 390
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .restart local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_6
    move-object v3, v2

    .line 393
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "info":Landroid/content/pm/ResolveInfo;
    goto :goto_0
.end method

.method public static getResolveInfos(Landroid/content/Context;)Ljava/util/Map;
    .locals 13
    .param p0, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 2547
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2548
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/ResolveInfo;>;"
    invoke-static {p0}, Lcom/smartisanos/launcher/LauncherModel;->getAllAppsInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    .line 2549
    .local v8, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2550
    .local v7, "pkgBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "com.smartisanos.home;com.smartisanos.home.Launcher"

    .line 2551
    .local v4, "launcher":Ljava/lang/String;
    sget-object v11, Lcom/smartisanos/launcher/data/Constants;->BLACK_PACKAGE_LIST:[Ljava/lang/String;

    array-length v12, v11

    move v10, v9

    :goto_0
    if-ge v10, v12, :cond_0

    aget-object v6, v11, v10

    .line 2552
    .local v6, "pkg":Ljava/lang/String;
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2551
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2554
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2555
    .local v1, "cmpBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v10, Lcom/smartisanos/launcher/data/Constants;->BLACK_COMPONENT_LIST:[Ljava/lang/String;

    array-length v11, v10

    :goto_1
    if-ge v9, v11, :cond_1

    aget-object v0, v10, v9

    .line 2556
    .local v0, "cmp":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2555
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2558
    .end local v0    # "cmp":Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 2559
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v10, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2560
    .restart local v6    # "pkg":Ljava/lang/String;
    iget-object v10, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2561
    .restart local v0    # "cmp":Ljava/lang/String;
    const-string v10, "com.smartisanos.home"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 2564
    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 2567
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2568
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 2571
    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2573
    .end local v0    # "cmp":Ljava/lang/String;
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_3
    return-object v5
.end method

.method private static handleEventAddOrUpdateApp(Ljava/util/List;Ljava/util/List;)V
    .locals 47
    .param p1, "additionParams"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1702
    .local p0, "contentValueList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v42

    if-nez v42, :cond_1

    .line 1703
    :cond_0
    sget-boolean v42, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v42, :cond_1

    sget-object v42, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v43, "DEBUG"

    const-string v44, "handleEventAddOrUpdateApp return, additionParams size = 0"

    invoke-virtual/range {v42 .. v44}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    :cond_1
    const/16 v42, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    .line 1706
    .local v32, "pkgName":Ljava/lang/String;
    const/16 v42, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/List;

    .line 1707
    .local v29, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v29, :cond_3

    .line 1708
    sget-boolean v42, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v42, :cond_2

    sget-object v42, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v43, "DEBUG"

    const-string v44, "handleEventAddOrUpdateApp return, matches null"

    invoke-virtual/range {v42 .. v44}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    :cond_2
    :goto_0
    return-void

    .line 1711
    :cond_3
    sget-boolean v42, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v42, :cond_4

    sget-object v42, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v43, "DEBUG"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "insert or update begin ! ["

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "], matches size ["

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "]"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v42 .. v44}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    :cond_4
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "packageName =\'"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "\'"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 1713
    .local v41, "whereCase":Ljava/lang/String;
    invoke-static/range {v41 .. v41}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listItem(Ljava/lang/String;)Ljava/util/List;

    move-result-object v33

    .line 1714
    .local v33, "queryList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/smartisanos/launcher/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    .line 1715
    .local v15, "context":Landroid/content/Context;
    move-object/from16 v0, v32

    invoke-static {v15, v0}, Lcom/smartisanos/home/Launcher;->isSystemAppByPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v27

    .line 1716
    .local v27, "isSystem":Z
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v42

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_6

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v42

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_6

    .line 1718
    const/16 v42, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1719
    .local v28, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    const/16 v42, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/pm/ResolveInfo;

    .line 1720
    .local v36, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1721
    .local v10, "cmp":Ljava/lang/String;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_6

    .line 1723
    sget-boolean v42, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v42, :cond_5

    sget-object v42, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v43, "DEBUG"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "replace cmp, old ["

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "], new ["

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "]"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v42 .. v44}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    :cond_5
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1725
    .local v18, "cvs":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 1726
    .local v17, "cv":Landroid/content/ContentValues;
    const-string v42, "_id"

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    move-wide/from16 v44, v0

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    move-object/from16 v0, v17

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1727
    const-string v42, "componentName"

    move-object/from16 v0, v17

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1729
    invoke-static/range {v18 .. v18}, Lcom/smartisanos/launcher/data/handler/ItemDB;->updateById(Ljava/util/List;)Z

    .line 1730
    const/16 v42, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/smartisanos/launcher/data/ItemInfo;

    move-object/from16 v0, v42

    iput-object v10, v0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    .line 1735
    .end local v10    # "cmp":Ljava/lang/String;
    .end local v17    # "cv":Landroid/content/ContentValues;
    .end local v18    # "cvs":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v28    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v36    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1736
    .local v8, "addList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v42

    if-lez v42, :cond_1c

    .line 1739
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 1741
    .local v40, "updateList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    new-instance v34, Ljava/util/HashMap;

    invoke-direct/range {v34 .. v34}, Ljava/util/HashMap;-><init>()V

    .line 1742
    .local v34, "queryMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v42

    :cond_7
    :goto_1
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_8

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1743
    .local v7, "aInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v7, :cond_7

    .line 1744
    iget-object v0, v7, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v43

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1747
    .end local v7    # "aInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_8
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v42

    :cond_9
    :goto_2
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_11

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/pm/ResolveInfo;

    .line 1748
    .local v38, "rsvInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v38, :cond_9

    .line 1751
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1752
    .local v16, "cpName":Ljava/lang/String;
    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1753
    .local v30, "oldInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v30, :cond_10

    .line 1755
    move-object/from16 v0, v38

    invoke-static {v15, v0}, Lcom/smartisanos/launcher/LauncherModel;->createFromResolveInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v9

    .line 1756
    .local v9, "appInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v9, :cond_9

    .line 1759
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    move/from16 v43, v0

    if-nez v43, :cond_e

    const/16 v26, 0x0

    .line 1760
    .local v26, "isNew":Z
    :goto_3
    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1761
    .restart local v7    # "aInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-wide v0, v7, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    move-wide/from16 v22, v0

    .line 1762
    .local v22, "id":J
    move-wide/from16 v0, v22

    iput-wide v0, v9, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 1763
    iget-byte v0, v7, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    move/from16 v43, v0

    move/from16 v0, v43

    iput-byte v0, v9, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    .line 1764
    move/from16 v0, v26

    iput-boolean v0, v9, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    .line 1765
    move/from16 v0, v27

    iput-boolean v0, v9, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    .line 1766
    iget-object v0, v9, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    move-object/from16 v43, v0

    iget-byte v0, v7, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    move/from16 v44, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v43

    move/from16 v3, v26

    move/from16 v4, v44

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smartisanos/launcher/data/DatabaseHandler;->updateItemInfoInDatabase(JLjava/lang/CharSequence;ZI)V

    .line 1769
    move-object/from16 v0, v38

    invoke-static {v7, v0, v15}, Lcom/smartisanos/launcher/LauncherModel;->getIconDataContentValues(Lcom/smartisanos/launcher/data/ItemInfo;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v21

    .line 1770
    .local v21, "iconValues":Landroid/content/ContentValues;
    if-eqz v21, :cond_f

    .line 1771
    const-string v6, "dark_icon"

    .line 1772
    .local v6, "COLUMN_NAME":Ljava/lang/String;
    sget-object v43, Lcom/smartisanos/launcher/data/Constants;->ICON_TYPE:Lcom/smartisanos/launcher/data/Constants$IconType;

    sget-object v44, Lcom/smartisanos/launcher/data/Constants$IconType;->Light:Lcom/smartisanos/launcher/data/Constants$IconType;

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    if-ne v0, v1, :cond_a

    .line 1773
    const-string v6, "light_icon"

    .line 1775
    :cond_a
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v9, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    .line 1776
    const-string v43, "color_info"

    move-object/from16 v0, v21

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1777
    .local v14, "colorInfoStr":Ljava/lang/String;
    invoke-static {v14}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->toColorInfo(Ljava/lang/String;)Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    move-result-object v13

    .line 1778
    .local v13, "color":Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    iput-object v9, v13, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->owner:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1779
    iput-object v13, v9, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    .line 1780
    invoke-static/range {v21 .. v21}, Lcom/smartisanos/launcher/data/handler/IconDB;->saveIconData(Landroid/content/ContentValues;)Z

    .line 1781
    sget-boolean v43, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v43, :cond_b

    sget-object v43, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v44, "A140"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v14}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    .end local v6    # "COLUMN_NAME":Ljava/lang/String;
    .end local v13    # "color":Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    .end local v14    # "colorInfoStr":Ljava/lang/String;
    :cond_b
    :goto_4
    sget-boolean v43, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v43, :cond_c

    sget-object v43, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v44, "DEBUG"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "isNewlyInstalled set "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " by EVENT_UPDATE_APP, name ["

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget-object v0, v9, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "], pkg ["

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget-object v0, v9, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "], cmp ["

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget-object v0, v9, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "]"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    :cond_c
    sget-boolean v43, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v43, :cond_d

    sget-object v43, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "update app "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual {v9}, Lcom/smartisanos/launcher/data/ItemInfo;->toSimpleInfo()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1788
    :cond_d
    move-object/from16 v0, v40

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1789
    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1759
    .end local v7    # "aInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v21    # "iconValues":Landroid/content/ContentValues;
    .end local v22    # "id":J
    .end local v26    # "isNew":Z
    :cond_e
    const/16 v26, 0x1

    goto/16 :goto_3

    .line 1783
    .restart local v7    # "aInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    .restart local v21    # "iconValues":Landroid/content/ContentValues;
    .restart local v22    # "id":J
    .restart local v26    # "isNew":Z
    :cond_f
    sget-boolean v43, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v43, :cond_b

    sget-object v43, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v44, "DEBUG"

    const-string v45, "update app error for lose iconValues"

    invoke-virtual/range {v43 .. v45}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1793
    .end local v7    # "aInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v9    # "appInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v21    # "iconValues":Landroid/content/ContentValues;
    .end local v22    # "id":J
    .end local v26    # "isNew":Z
    :cond_10
    move-object/from16 v0, v38

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1797
    .end local v16    # "cpName":Ljava/lang/String;
    .end local v30    # "oldInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v38    # "rsvInfo":Landroid/content/pm/ResolveInfo;
    :cond_11
    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->size()I

    move-result v42

    if-lez v42, :cond_16

    .line 1798
    sget-boolean v42, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v42, :cond_12

    sget-object v42, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v43, "DEBUG"

    const-string v44, "there are some record need to remove !"

    invoke-virtual/range {v42 .. v44}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    :cond_12
    new-instance v12, Ljava/util/ArrayList;

    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1801
    .local v12, "cmpNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 1802
    .local v35, "removeList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v42

    :cond_13
    :goto_5
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_15

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1803
    .local v11, "cmpName":Ljava/lang/String;
    sget-boolean v43, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v43, :cond_14

    sget-object v43, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v44, "DEBUG"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "remove by name => "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v43 .. v45}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    :cond_14
    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1805
    .local v24, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v24, :cond_13

    .line 1806
    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    move-wide/from16 v44, v0

    invoke-static/range {v44 .. v45}, Lcom/smartisanos/launcher/data/DatabaseHandler;->removeItemRecordById(J)V

    .line 1807
    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1810
    .end local v11    # "cmpName":Ljava/lang/String;
    .end local v24    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_15
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v42

    if-lez v42, :cond_16

    .line 1811
    new-instance v31, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;

    const/16 v42, 0x2

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v42

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 1812
    .local v31, "pTask":Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;
    new-instance v42, Lcom/smartisanos/launcher/data/DatabaseHandler$2;

    const/16 v43, 0x65

    move-object/from16 v0, v42

    move/from16 v1, v43

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/DatabaseHandler$2;-><init>(ILcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;)V

    const/16 v43, 0x0

    .line 1818
    invoke-virtual/range {v42 .. v43}, Lcom/smartisanos/launcher/data/DatabaseHandler$2;->send(F)V

    .line 1821
    .end local v12    # "cmpNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v31    # "pTask":Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;
    .end local v35    # "removeList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :cond_16
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v42

    if-lez v42, :cond_17

    .line 1822
    new-instance v31, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;

    const/16 v42, 0x3

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v42

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 1823
    .restart local v31    # "pTask":Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;
    invoke-static/range {v40 .. v40}, Lcom/smartisanos/launcher/data/DatabaseHandler;->preSetModleInfo(Ljava/util/List;)V

    .line 1824
    new-instance v42, Lcom/smartisanos/launcher/data/DatabaseHandler$3;

    const/16 v43, 0x65

    move-object/from16 v0, v42

    move/from16 v1, v43

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/DatabaseHandler$3;-><init>(ILcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;)V

    const/16 v43, 0x0

    .line 1830
    invoke-virtual/range {v42 .. v43}, Lcom/smartisanos/launcher/data/DatabaseHandler$3;->send(F)V

    .line 1840
    .end local v31    # "pTask":Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;
    .end local v34    # "queryMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v40    # "updateList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :cond_17
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v42

    if-lez v42, :cond_21

    .line 1842
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v39

    .line 1843
    .local v39, "size":I
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1844
    .local v25, "installAppList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_6
    move/from16 v0, v19

    move/from16 v1, v39

    if-ge v0, v1, :cond_1f

    .line 1845
    move/from16 v0, v19

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/pm/ResolveInfo;

    .line 1846
    .local v37, "rsv":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v37

    invoke-static {v15, v0}, Lcom/smartisanos/launcher/LauncherModel;->createFromResolveInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v24

    .line 1847
    .restart local v24    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v24, :cond_1b

    .line 1848
    sget-object v42, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->BROWSER:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_18

    .line 1849
    move/from16 v0, v27

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    .line 1851
    :cond_18
    if-nez v27, :cond_1e

    const/16 v42, 0x1

    :goto_7
    move/from16 v0, v42

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    .line 1852
    sget-boolean v42, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v42, :cond_19

    sget-object v42, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "installAppList add ["

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "] isNewlyInstalled["

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "]"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1854
    :cond_19
    invoke-static/range {v24 .. v24}, Lcom/smartisanos/launcher/data/handler/ItemDB;->insert(Lcom/smartisanos/launcher/data/ItemInfo;)J

    move-result-wide v42

    move-wide/from16 v0, v42

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 1856
    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-static {v0, v1, v15}, Lcom/smartisanos/launcher/LauncherModel;->getIconDataContentValues(Lcom/smartisanos/launcher/data/ItemInfo;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v20

    .line 1857
    .local v20, "iconValue":Landroid/content/ContentValues;
    const-string v6, "dark_icon"

    .line 1858
    .restart local v6    # "COLUMN_NAME":Ljava/lang/String;
    sget-object v42, Lcom/smartisanos/launcher/data/Constants;->ICON_TYPE:Lcom/smartisanos/launcher/data/Constants$IconType;

    sget-object v43, Lcom/smartisanos/launcher/data/Constants$IconType;->Dark:Lcom/smartisanos/launcher/data/Constants$IconType;

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    if-eq v0, v1, :cond_1a

    .line 1859
    const-string v6, "light_icon"

    .line 1861
    :cond_1a
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    .line 1862
    const-string v42, "color_info"

    move-object/from16 v0, v20

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1863
    .restart local v14    # "colorInfoStr":Ljava/lang/String;
    invoke-static {v14}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->toColorInfo(Ljava/lang/String;)Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    move-result-object v13

    .line 1864
    .restart local v13    # "color":Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->owner:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1865
    move-object/from16 v0, v24

    iput-object v13, v0, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    .line 1866
    invoke-static/range {v20 .. v20}, Lcom/smartisanos/launcher/data/handler/IconDB;->saveIconData(Landroid/content/ContentValues;)Z

    .line 1868
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1844
    .end local v6    # "COLUMN_NAME":Ljava/lang/String;
    .end local v13    # "color":Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    .end local v14    # "colorInfoStr":Ljava/lang/String;
    .end local v20    # "iconValue":Landroid/content/ContentValues;
    :cond_1b
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_6

    .line 1834
    .end local v19    # "i":I
    .end local v24    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v25    # "installAppList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v37    # "rsv":Landroid/content/pm/ResolveInfo;
    .end local v39    # "size":I
    :cond_1c
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v42

    :cond_1d
    :goto_8
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_17

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/pm/ResolveInfo;

    .line 1835
    .restart local v38    # "rsvInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v38, :cond_1d

    .line 1836
    move-object/from16 v0, v38

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1851
    .end local v38    # "rsvInfo":Landroid/content/pm/ResolveInfo;
    .restart local v19    # "i":I
    .restart local v24    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    .restart local v25    # "installAppList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .restart local v37    # "rsv":Landroid/content/pm/ResolveInfo;
    .restart local v39    # "size":I
    :cond_1e
    const/16 v42, 0x0

    goto/16 :goto_7

    .line 1871
    .end local v24    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v37    # "rsv":Landroid/content/pm/ResolveInfo;
    :cond_1f
    sget-boolean v42, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v42, :cond_20

    sget-object v42, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "installAppList size == "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 1872
    :cond_20
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v42

    if-lez v42, :cond_21

    .line 1873
    new-instance v31, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;

    const/16 v42, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v42

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 1874
    .restart local v31    # "pTask":Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;
    new-instance v42, Lcom/smartisanos/launcher/data/DatabaseHandler$4;

    const/16 v43, 0x65

    move-object/from16 v0, v42

    move/from16 v1, v43

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/DatabaseHandler$4;-><init>(ILcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;)V

    const/16 v43, 0x0

    .line 1880
    invoke-virtual/range {v42 .. v43}, Lcom/smartisanos/launcher/data/DatabaseHandler$4;->send(F)V

    .line 1883
    .end local v19    # "i":I
    .end local v25    # "installAppList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v31    # "pTask":Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;
    .end local v39    # "size":I
    :cond_21
    sget-object v42, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_INSERT_APP:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    move-object/from16 v0, v42

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/DatabaseHandler;->syncIconData(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static handleEventFetchIcons()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 72
    sget-boolean v10, Lcom/smartisanos/launcher/data/DatabaseHandler;->FETCH_ICON_RUNNING:Z

    if-eqz v10, :cond_0

    .line 73
    sget-object v10, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "DEBUG"

    const-string v12, "handleEventFetchIcons return by FETCH_ICON_RUNNING true"

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :goto_0
    return-void

    .line 76
    .end local v4    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :cond_0
    const/4 v10, 0x1

    sput-boolean v10, Lcom/smartisanos/launcher/data/DatabaseHandler;->FETCH_ICON_RUNNING:Z

    .line 78
    invoke-static {v14}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listItem(Z)Ljava/util/List;

    move-result-object v4

    .line 79
    .restart local v4    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-nez v4, :cond_1

    .line 80
    sget-object v10, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "DEBUG"

    const-string v12, "handleEventFetchIcons return by items is null"

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sput-boolean v14, Lcom/smartisanos/launcher/data/DatabaseHandler;->FETCH_ICON_RUNNING:Z

    goto :goto_0

    .line 84
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 85
    .local v3, "itemInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-eqz v4, :cond_3

    .line 86
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v7, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 88
    .local v2, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-object v6, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 90
    .local v6, "pkg":Ljava/lang/String;
    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 93
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->id()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 98
    .end local v2    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v0, "iconInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;>;"
    invoke-static {}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->listAllInfo()Ljava/util/List;

    move-result-object v8

    .line 100
    .local v8, "redirectIconInfos":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    .line 101
    .local v1, "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->getPrimaryId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 103
    .end local v1    # "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    :cond_4
    sget-object v10, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "DEBUG"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fetchIcons item size ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "], icon size ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v10

    if-nez v10, :cond_6

    .line 105
    :cond_5
    sget-object v10, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "DEBUG"

    const-string v12, "fetchIcons return by itemInfoMap is empty"

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sput-boolean v14, Lcom/smartisanos/launcher/data/DatabaseHandler;->FETCH_ICON_RUNNING:Z

    goto/16 :goto_0

    .line 109
    :cond_6
    new-instance v9, Lcom/smartisanos/home/net/NetworkHandler$Task;

    invoke-direct {v9}, Lcom/smartisanos/home/net/NetworkHandler$Task;-><init>()V

    .line 110
    .local v9, "task":Lcom/smartisanos/home/net/NetworkHandler$Task;
    sget-object v10, Lcom/smartisanos/home/net/NetworkHandler$Action;->FETCH_ICON:Lcom/smartisanos/home/net/NetworkHandler$Action;

    iput-object v10, v9, Lcom/smartisanos/home/net/NetworkHandler$Task;->act:Lcom/smartisanos/home/net/NetworkHandler$Action;

    .line 111
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v5, "params":Ljava/util/List;
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iput-object v5, v9, Lcom/smartisanos/home/net/NetworkHandler$Task;->params:Ljava/util/List;

    .line 115
    invoke-static {v9}, Lcom/smartisanos/home/net/NetworkHandler;->postTask(Lcom/smartisanos/home/net/NetworkHandler$Task;)V

    goto/16 :goto_0
.end method

.method private static handleEventInstallShortcut(Ljava/util/List;Ljava/util/List;)V
    .locals 34
    .param p1, "params"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2390
    .local p0, "contentValueList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/16 v23, 0x0

    .line 2391
    .local v23, "shortcutInfo":Lcom/smartisanos/launcher/data/ShortcutInfo;
    const/4 v7, 0x0

    .line 2393
    .local v7, "context":Landroid/content/Context;
    const/16 v29, 0x0

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v29

    check-cast v0, Lcom/smartisanos/launcher/data/ShortcutInfo;

    move-object/from16 v23, v0

    .line 2394
    const/16 v29, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v29

    check-cast v0, Landroid/content/Context;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2398
    :goto_0
    if-nez v23, :cond_1

    .line 2399
    sget-object v29, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v30, "handleEventInstallShortcut return, shortcutInfo is null"

    invoke-virtual/range {v29 .. v30}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 2487
    :cond_0
    :goto_1
    return-void

    .line 2395
    :catch_0
    move-exception v9

    .line 2396
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2402
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1
    if-nez v7, :cond_2

    .line 2403
    sget-object v29, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v30, "handleEventInstallShortcut return, context is null"

    invoke-virtual/range {v29 .. v30}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 2406
    :cond_2
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ShortcutInfo;->title:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 2407
    .local v25, "title":Ljava/lang/String;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ShortcutInfo;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    .line 2408
    .local v19, "launchIntent":Landroid/content/Intent;
    if-eqz v19, :cond_0

    if-eqz v25, :cond_0

    .line 2411
    const-wide/16 v12, -0x1

    .line 2412
    .local v12, "id":J
    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    .line 2413
    .local v28, "whereArgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v29, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v17

    .line 2414
    .local v17, "intentUri":Ljava/lang/String;
    const-string v29, "intent"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2415
    invoke-static/range {v28 .. v28}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listShortcuts(Ljava/util/Map;)Ljava/util/List;

    move-result-object v10

    .line 2416
    .local v10, "existList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ShortcutInfo;>;"
    const/4 v8, 0x0

    .line 2417
    .local v8, "count":I
    if-eqz v10, :cond_3

    .line 2418
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    .line 2420
    :cond_3
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ShortcutInfo;->icon:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    .line 2421
    .local v20, "origImg":Landroid/graphics/Bitmap;
    const/16 v29, 0x1

    move/from16 v0, v29

    if-le v8, v0, :cond_5

    .line 2422
    sget-object v29, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v30, "Oooopse, multi shortcut exist !"

    invoke-virtual/range {v29 .. v30}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 2423
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_2
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_4

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/smartisanos/launcher/data/ShortcutInfo;

    .line 2424
    .local v15, "info":Lcom/smartisanos/launcher/data/ShortcutInfo;
    sget-object v30, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "remove duplicate shortcut ["

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    iget-wide v0, v15, Lcom/smartisanos/launcher/data/ShortcutInfo;->id:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "], ["

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    iget-object v0, v15, Lcom/smartisanos/launcher/data/ShortcutInfo;->title:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "], ["

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    iget-object v0, v15, Lcom/smartisanos/launcher/data/ShortcutInfo;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "], ["

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "]"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 2427
    .end local v15    # "info":Lcom/smartisanos/launcher/data/ShortcutInfo;
    :cond_4
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 2428
    .local v16, "infos":Ljava/util/List;
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-interface {v10, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2429
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/DatabaseHandler;->handleEventUninstallShortcut(Ljava/util/List;Ljava/util/List;)V

    .line 2431
    .end local v16    # "infos":Ljava/util/List;
    :cond_5
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v8, v0, :cond_8

    .line 2433
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "shortcutInfo":Lcom/smartisanos/launcher/data/ShortcutInfo;
    check-cast v23, Lcom/smartisanos/launcher/data/ShortcutInfo;

    .line 2434
    .restart local v23    # "shortcutInfo":Lcom/smartisanos/launcher/data/ShortcutInfo;
    move-object/from16 v0, v23

    iget-wide v12, v0, Lcom/smartisanos/launcher/data/ShortcutInfo;->id:J

    .line 2435
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/smartisanos/launcher/data/ShortcutInfo;->title:Ljava/lang/String;

    .line 2436
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 2437
    .local v27, "values":Landroid/content/ContentValues;
    const-string v29, "_id"

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/smartisanos/launcher/data/ShortcutInfo;->id:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2438
    const-string v29, "title"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 2440
    .local v26, "valueList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface/range {v26 .. v27}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2441
    invoke-static/range {v26 .. v26}, Lcom/smartisanos/launcher/data/handler/ItemDB;->updateById(Ljava/util/List;)Z

    .line 2450
    .end local v26    # "valueList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v27    # "values":Landroid/content/ContentValues;
    :cond_6
    move-object/from16 v0, v23

    iput-wide v12, v0, Lcom/smartisanos/launcher/data/ShortcutInfo;->id:J

    .line 2452
    if-nez v20, :cond_7

    .line 2453
    sget-object v29, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "origImg is null, ["

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ShortcutInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 2455
    :cond_7
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ShortcutInfo;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-static {v7, v0, v1}, Lcom/smartisanos/launcher/data/Utils;->generateShortcutIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 2456
    .local v14, "img":Landroid/graphics/Bitmap;
    if-nez v14, :cond_9

    .line 2457
    sget-object v29, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v30, "generateShortcutIcon return null"

    invoke-virtual/range {v29 .. v30}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2444
    .end local v14    # "img":Landroid/graphics/Bitmap;
    :cond_8
    invoke-static/range {v23 .. v23}, Lcom/smartisanos/launcher/data/handler/ItemDB;->insertShortcut(Lcom/smartisanos/launcher/data/ShortcutInfo;)J

    move-result-wide v12

    .line 2445
    const-wide/16 v30, 0x0

    cmp-long v29, v12, v30

    if-gtz v29, :cond_6

    .line 2446
    sget-object v29, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "handleEventInstallShortcut insert failed, id = -1, ["

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ShortcutInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2460
    .restart local v14    # "img":Landroid/graphics/Bitmap;
    :cond_9
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ShortcutInfo;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v12, v13, v0, v14, v1}, Lcom/smartisanos/launcher/LauncherModel;->getIconDataContentValues(JLjava/lang/String;Landroid/graphics/Bitmap;Z)Landroid/content/ContentValues;

    move-result-object v11

    .line 2461
    .local v11, "iconValue":Landroid/content/ContentValues;
    const-string v4, "dark_icon"

    .line 2462
    .local v4, "COLUMN_NAME":Ljava/lang/String;
    sget-object v29, Lcom/smartisanos/launcher/data/Constants;->ICON_TYPE:Lcom/smartisanos/launcher/data/Constants$IconType;

    sget-object v30, Lcom/smartisanos/launcher/data/Constants$IconType;->Dark:Lcom/smartisanos/launcher/data/Constants$IconType;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_a

    .line 2463
    const-string v4, "light_icon"

    .line 2465
    :cond_a
    invoke-virtual {v11, v4}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/smartisanos/launcher/data/ShortcutInfo;->iconData:[B

    .line 2466
    const-string v29, "color_info"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2467
    .local v6, "colorInfoStr":Ljava/lang/String;
    invoke-static {v6}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->toColorInfo(Ljava/lang/String;)Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    move-result-object v5

    .line 2468
    .local v5, "color":Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    move-object/from16 v0, v23

    iput-object v0, v5, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->owner:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 2469
    move-object/from16 v0, v23

    iput-object v5, v0, Lcom/smartisanos/launcher/data/ShortcutInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    .line 2470
    invoke-static {v11}, Lcom/smartisanos/launcher/data/handler/IconDB;->saveIconData(Landroid/content/ContentValues;)Z

    .line 2472
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ShortcutInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2473
    .local v22, "pkg":Ljava/lang/String;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2474
    .local v18, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2475
    const/16 v24, 0x1

    .line 2476
    .local v24, "taskType":I
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v8, v0, :cond_b

    .line 2477
    const/16 v24, 0x3

    .line 2479
    :cond_b
    new-instance v21, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v24

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 2480
    .local v21, "pTask":Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;
    new-instance v29, Lcom/smartisanos/launcher/data/DatabaseHandler$11;

    const/16 v30, 0x64

    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/DatabaseHandler$11;-><init>(ILcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;)V

    const/16 v30, 0x0

    .line 2486
    invoke-virtual/range {v29 .. v30}, Lcom/smartisanos/launcher/data/DatabaseHandler$11;->send(F)V

    goto/16 :goto_1
.end method

.method private static handleEventRemoveApp(Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .param p1, "additionParams"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1987
    .local p0, "contentValueList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1988
    .local v2, "packageName":Ljava/lang/String;
    sget-boolean v8, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleEventRemoveApp ! ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 2022
    :cond_1
    :goto_0
    return-void

    .line 1992
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1993
    .local v5, "queryShortcutMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "packageName"

    invoke-interface {v5, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1994
    invoke-static {v5}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listShortcuts(Ljava/util/Map;)Ljava/util/List;

    move-result-object v6

    .line 1995
    .local v6, "shortcutInfos":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ShortcutInfo;>;"
    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 1996
    sget-object v8, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleEventRemoveApp remove shortcut first ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1997
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/ShortcutInfo;

    .line 1998
    .local v0, "info":Lcom/smartisanos/launcher/data/ShortcutInfo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1999
    .local v3, "params":Ljava/util/List;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2000
    const/4 v9, 0x0

    invoke-static {v9, v3}, Lcom/smartisanos/launcher/data/DatabaseHandler;->handleEventUninstallShortcut(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    .line 2004
    .end local v0    # "info":Lcom/smartisanos/launcher/data/ShortcutInfo;
    .end local v3    # "params":Ljava/util/List;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "packageName =\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2005
    .local v7, "whereCase":Ljava/lang/String;
    invoke-static {v7}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listItem(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 2006
    .local v4, "queryList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 2008
    invoke-static {v2}, Lcom/smartisanos/launcher/data/handler/ItemDB;->removeItemDataByPackage(Ljava/lang/String;)V

    .line 2009
    new-instance v1, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;

    const/4 v8, 0x2

    invoke-direct {v1, v2, v8, v4}, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 2010
    .local v1, "pTask":Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;
    new-instance v8, Lcom/smartisanos/launcher/data/DatabaseHandler$5;

    const/16 v9, 0x65

    invoke-direct {v8, v9, v1}, Lcom/smartisanos/launcher/data/DatabaseHandler$5;-><init>(ILcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;)V

    const/4 v9, 0x0

    .line 2017
    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/data/DatabaseHandler$5;->send(F)V

    .line 2021
    .end local v1    # "pTask":Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;
    :goto_2
    sget-object v8, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_REMOVE_APP:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v8, v2}, Lcom/smartisanos/launcher/data/DatabaseHandler;->syncIconData(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2019
    :cond_4
    sget-object v8, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "can\'t find record by pkg name ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static handleEventRemoveMultiApps(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .param p1, "params"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2374
    .local p0, "contentValueList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v1, 0x0

    .line 2376
    .local v1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/List;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2378
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 2386
    :cond_0
    :goto_1
    return-void

    .line 2381
    :cond_1
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/home/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2382
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    .line 2385
    :cond_2
    invoke-static {v1}, Lcom/smartisanos/launcher/data/handler/ItemDB;->removeItemDataByPackageList(Ljava/util/List;)V

    goto :goto_1

    .line 2377
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static handleEventRemoveNewFlagByIntent(Ljava/util/List;Ljava/util/List;)V
    .locals 17
    .param p1, "additionParams"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2244
    .local p0, "contentValueList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2245
    .local v4, "data":Ljava/lang/String;
    const/4 v10, 0x0

    .line 2246
    .local v10, "pkg":Ljava/lang/String;
    const-string v13, "/"

    invoke-virtual {v4, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2247
    const-string v13, "/"

    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2248
    .local v11, "strs":[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v10, v11, v13

    .line 2250
    .end local v11    # "strs":[Ljava/lang/String;
    :cond_0
    if-nez v10, :cond_1

    .line 2251
    sget-object v13, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v14, "DEBUG"

    const-string v15, "handleEventRemoveNewFlagByIntent return by pkg is null"

    invoke-virtual {v13, v14, v15}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2294
    :goto_0
    return-void

    .line 2254
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "packageName =\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2255
    .local v12, "whereCase":Ljava/lang/String;
    invoke-static {v12}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listItem(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 2256
    .local v9, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2257
    .local v5, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 2258
    .local v8, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-boolean v14, v8, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    if-eqz v14, :cond_2

    .line 2259
    iget-wide v14, v8, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2262
    .end local v8    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_4

    .line 2263
    sget-object v13, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v14, "DEBUG"

    const-string v15, "handleEventRemoveNewFlagByIntent ids size 0"

    invoke-virtual {v13, v14, v15}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2266
    :cond_4
    sget-boolean v13, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v13, :cond_5

    sget-object v13, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v14, "DEBUG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handleEventRemoveNewFlagByIntent by pkg ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2267
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2268
    .local v3, "cvs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 2269
    .local v6, "id":J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2270
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v13, "_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v2, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2271
    const-string v13, "newlyInstalled"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2272
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2274
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v6    # "id":J
    :cond_6
    invoke-static {v3}, Lcom/smartisanos/launcher/data/handler/ItemDB;->updateById(Ljava/util/List;)Z

    .line 2275
    new-instance v13, Lcom/smartisanos/launcher/data/DatabaseHandler$9;

    const/16 v14, 0x64

    invoke-direct {v13, v14, v5}, Lcom/smartisanos/launcher/data/DatabaseHandler$9;-><init>(ILjava/util/List;)V

    const/4 v14, 0x0

    .line 2293
    invoke-virtual {v13, v14}, Lcom/smartisanos/launcher/data/DatabaseHandler$9;->send(F)V

    goto/16 :goto_0
.end method

.method private static handleEventRollBackDB(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "params"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2370
    .local p0, "contentValueList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    return-void
.end method

.method private static handleEventUninstall(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .param p1, "additionParams"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1687
    .local p0, "contentValueList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1688
    .local v1, "pkg":Ljava/lang/String;
    sget-object v2, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEventUninstall for ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1690
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationManager;

    .line 1691
    .local v0, "am":Landroid/content/pm/ApplicationManager;
    if-eqz v0, :cond_0

    .line 1692
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationManager;->unInstallPackage(Ljava/lang/String;)V

    .line 1695
    .end local v0    # "am":Landroid/content/pm/ApplicationManager;
    :cond_0
    return-void
.end method

.method private static handleEventUninstallShortcut(Ljava/util/List;Ljava/util/List;)V
    .locals 16
    .param p1, "params"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "contentValueList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v13, 0x0

    .line 2491
    const/4 v9, 0x0

    .line 2493
    .local v9, "shortcutInfo":Lcom/smartisanos/launcher/data/ShortcutInfo;
    const/4 v12, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lcom/smartisanos/launcher/data/ShortcutInfo;

    move-object v9, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2497
    :goto_0
    if-nez v9, :cond_1

    .line 2498
    sget-object v12, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v13, "handleEventUninstallShortcut return by shortcut is null"

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 2532
    :cond_0
    :goto_1
    return-void

    .line 2494
    :catch_0
    move-exception v2

    .line 2495
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2501
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v8, v9, Lcom/smartisanos/launcher/data/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 2502
    .local v8, "launchIntent":Landroid/content/Intent;
    invoke-virtual {v8, v13}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    .line 2503
    .local v7, "intentUri":Ljava/lang/String;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 2504
    .local v11, "whereMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v12, "intent"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2505
    invoke-static {v11}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listShortcuts(Ljava/util/Map;)Ljava/util/List;

    move-result-object v10

    .line 2506
    .local v10, "shortcutInfos":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ShortcutInfo;>;"
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-eqz v12, :cond_0

    .line 2509
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2510
    .local v3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/data/ShortcutInfo;

    .line 2511
    .local v6, "info":Lcom/smartisanos/launcher/data/ShortcutInfo;
    iget-wide v4, v6, Lcom/smartisanos/launcher/data/ShortcutInfo;->id:J

    .line 2512
    .local v4, "id":J
    const-wide/16 v14, 0x0

    cmp-long v13, v4, v14

    if-lez v13, :cond_2

    .line 2515
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2517
    .end local v4    # "id":J
    .end local v6    # "info":Lcom/smartisanos/launcher/data/ShortcutInfo;
    :cond_3
    invoke-static {v3}, Lcom/smartisanos/launcher/data/handler/ItemDB;->removeItemDataById(Ljava/util/List;)V

    .line 2518
    invoke-static {v3}, Lcom/smartisanos/launcher/data/handler/IconDB;->removeIconDataByOwnerId(Ljava/util/List;)V

    .line 2519
    new-instance v12, Lcom/smartisanos/launcher/data/DatabaseHandler$12;

    const/16 v13, 0x64

    invoke-direct {v12, v13, v10}, Lcom/smartisanos/launcher/data/DatabaseHandler$12;-><init>(ILjava/util/List;)V

    const/4 v13, 0x0

    .line 2531
    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/data/DatabaseHandler$12;->send(F)V

    goto :goto_1
.end method

.method private static handleEventUpdateIcon(Ljava/util/List;Ljava/util/List;)V
    .locals 33
    .param p1, "additionParams"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2069
    .local p0, "contentValueList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    sget-boolean v26, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v26, :cond_0

    sget-object v26, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v27, "DEBUG"

    const-string v28, "handleEventUpdateIcon begin"

    invoke-virtual/range {v26 .. v28}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2070
    :cond_0
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    .line 2071
    .local v7, "context":Landroid/content/Context;
    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    move-object/from16 v24, v26

    check-cast v24, [Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    .line 2072
    .local v24, "redirectIconArray":[Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 2073
    .local v20, "itmeInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v28, v0

    const/16 v26, 0x0

    move/from16 v27, v26

    :goto_0
    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_d

    aget-object v23, v24, v27

    .line 2074
    .local v23, "redirectIcon":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2075
    .local v22, "pkgName":Ljava/lang/String;
    sget-boolean v26, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v26, :cond_1

    sget-object v26, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v29, "DEBUG"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "update icon by pkgName "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    :cond_1
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "packageName=\'"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v29, "\'"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 2078
    .local v25, "whereCase":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listItem(Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    .line 2079
    .local v19, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 2080
    .local v8, "cursorMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_1
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_2

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 2081
    .local v18, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    move-object/from16 v0, v18

    iget-wide v12, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 2082
    .local v12, "id":J
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    .line 2083
    .local v5, "cmpName":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ";"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 2084
    .local v21, "key":Ljava/lang/String;
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2087
    .end local v5    # "cmpName":Ljava/lang/String;
    .end local v12    # "id":J
    .end local v18    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v21    # "key":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v22

    invoke-static {v7, v0}, Lcom/smartisanos/launcher/data/Utils;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 2088
    .local v16, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v16, :cond_4

    .line 2089
    sget-object v26, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v29, "DEBUG"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "update icon by Utils.findActivitiesForPackage return null, pkgName "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2073
    :cond_3
    add-int/lit8 v26, v27, 0x1

    move/from16 v27, v26

    goto/16 :goto_0

    .line 2092
    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_5
    :goto_2
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_3

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 2093
    .local v15, "info":Landroid/content/pm/ResolveInfo;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v30, ";"

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 2094
    .restart local v21    # "key":Ljava/lang/String;
    const-wide/16 v12, -0x1

    .line 2095
    .restart local v12    # "id":J
    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    if-eqz v26, :cond_6

    .line 2096
    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 2098
    :cond_6
    sget-boolean v26, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v26, :cond_7

    sget-object v26, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v30, "launcher_update_icon"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "update icon for id ["

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "], package "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    :cond_7
    const-wide/16 v30, 0x0

    cmp-long v26, v12, v30

    if-gez v26, :cond_8

    .line 2100
    sget-object v26, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v30, "launcher_update_icon"

    const-string v31, "continue by id is error !"

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2103
    :cond_8
    move-object/from16 v0, v22

    invoke-static {v7, v0}, Lcom/smartisanos/home/Launcher;->isSystemAppByPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    .line 2104
    .local v17, "isSystem":Z
    const/4 v11, 0x0

    .line 2106
    .local v11, "iconValue":Landroid/content/ContentValues;
    const/4 v10, 0x0

    .line 2107
    .local v10, "iconData":[B
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->useImprovedAppIcon:Z

    move/from16 v26, v0

    if-eqz v26, :cond_b

    .line 2108
    invoke-static {v12, v13}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->getRedirectIcon(J)[B

    move-result-object v10

    .line 2109
    if-eqz v10, :cond_b

    .line 2112
    invoke-static {v10}, Lcom/smartisanos/launcher/data/Utils;->iconDataToDrawable([B)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 2113
    .local v9, "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v22

    invoke-static {v12, v13, v0, v9}, Lcom/smartisanos/launcher/LauncherModel;->getIconDataContentValues(JLjava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/content/ContentValues;

    move-result-object v11

    .line 2118
    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_3
    const-string v4, "dark_icon"

    .line 2119
    .local v4, "COLUMN_NAME":Ljava/lang/String;
    sget-object v26, Lcom/smartisanos/launcher/data/Constants;->ICON_TYPE:Lcom/smartisanos/launcher/data/Constants$IconType;

    sget-object v30, Lcom/smartisanos/launcher/data/Constants$IconType;->Dark:Lcom/smartisanos/launcher/data/Constants$IconType;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_9

    .line 2120
    const-string v4, "light_icon"

    .line 2122
    :cond_9
    invoke-virtual {v11, v4}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v14

    .line 2123
    .local v14, "imgData":[B
    const-string v26, "color_info"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2124
    .local v6, "colorInfoStr":Ljava/lang/String;
    if-nez v6, :cond_a

    .line 2125
    sget-boolean v26, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v26, :cond_a

    sget-object v26, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v30, "DEBUG"

    const-string v31, "IconColor.calculateIconColor return null"

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    :cond_a
    invoke-static {v11}, Lcom/smartisanos/launcher/data/handler/IconDB;->saveIconData(Landroid/content/ContentValues;)Z

    .line 2130
    new-instance v18, Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-direct/range {v18 .. v18}, Lcom/smartisanos/launcher/data/ItemInfo;-><init>()V

    .line 2131
    .restart local v18    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    move-object/from16 v0, v18

    iput-wide v12, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 2132
    move-object/from16 v0, v18

    iput-object v14, v0, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    .line 2133
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 2134
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    if-nez v26, :cond_c

    .line 2135
    new-instance v26, Ljava/lang/IllegalArgumentException;

    const-string v27, "lose package name"

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 2115
    .end local v4    # "COLUMN_NAME":Ljava/lang/String;
    .end local v6    # "colorInfoStr":Ljava/lang/String;
    .end local v14    # "imgData":[B
    .end local v18    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_b
    move/from16 v0, v17

    invoke-static {v12, v13, v15, v7, v0}, Lcom/smartisanos/launcher/LauncherModel;->getIconDataContentValues(JLandroid/content/pm/ResolveInfo;Landroid/content/Context;Z)Landroid/content/ContentValues;

    move-result-object v11

    goto :goto_3

    .line 2137
    .restart local v4    # "COLUMN_NAME":Ljava/lang/String;
    .restart local v6    # "colorInfoStr":Ljava/lang/String;
    .restart local v14    # "imgData":[B
    .restart local v18    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_c
    new-instance v26, Lcom/smartisanos/launcher/data/DatabaseHandler$6;

    const/16 v30, 0x65

    move-object/from16 v0, v26

    move/from16 v1, v30

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/smartisanos/launcher/data/DatabaseHandler$6;-><init>(ILcom/smartisanos/launcher/data/ItemInfo;Ljava/lang/String;Ljava/util/ArrayList;)V

    const/16 v30, 0x0

    .line 2169
    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/data/DatabaseHandler$6;->send(F)V

    goto/16 :goto_2

    .line 2173
    .end local v4    # "COLUMN_NAME":Ljava/lang/String;
    .end local v6    # "colorInfoStr":Ljava/lang/String;
    .end local v8    # "cursorMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v10    # "iconData":[B
    .end local v11    # "iconValue":Landroid/content/ContentValues;
    .end local v12    # "id":J
    .end local v14    # "imgData":[B
    .end local v15    # "info":Landroid/content/pm/ResolveInfo;
    .end local v16    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v17    # "isSystem":Z
    .end local v18    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v19    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v21    # "key":Ljava/lang/String;
    .end local v22    # "pkgName":Ljava/lang/String;
    .end local v23    # "redirectIcon":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .end local v25    # "whereCase":Ljava/lang/String;
    :cond_d
    new-instance v26, Lcom/smartisanos/launcher/data/DatabaseHandler$7;

    const/16 v27, 0x65

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/data/DatabaseHandler$7;-><init>(ILjava/util/ArrayList;)V

    const/16 v27, 0x0

    .line 2190
    invoke-virtual/range {v26 .. v27}, Lcom/smartisanos/launcher/data/DatabaseHandler$7;->send(F)V

    .line 2191
    return-void
.end method

.method private static handleEventUpdateItem(Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .param p1, "additionParams"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2026
    .local p0, "contentValueList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 2027
    :cond_0
    sget-object v7, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "DEBUG"

    const-string v9, "handleEventUpdateItem data size is 0"

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    :goto_0
    return-void

    .line 2031
    :cond_1
    const/4 v7, 0x0

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 2032
    .local v5, "value":Landroid/content/ContentValues;
    sget-boolean v7, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "DEBUG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleEventUpdateItem update ContentValues ==> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2033
    :cond_2
    const/4 v6, 0x0

    .line 2034
    .local v6, "whereCase":Ljava/lang/String;
    const-string v7, "_id"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2035
    const-string v7, "_id"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2036
    .local v2, "id":I
    const-string v7, "_id"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2037
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2060
    .end local v2    # "id":I
    :cond_3
    :goto_1
    if-nez v6, :cond_d

    .line 2061
    sget-object v7, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "DEBUG"

    const-string v9, "handleEventUpdateItem return by whereCase is null"

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2038
    :cond_4
    const-string v7, "componentName"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "packageName"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2039
    :cond_5
    const-string v7, "packageName"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2040
    .local v3, "pkgName":Ljava/lang/String;
    const-string v7, "componentName"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2041
    .local v0, "cmpName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2042
    .local v4, "pkgNameIsNull":Z
    const/4 v1, 0x0

    .line 2043
    .local v1, "cmpNameIsNull":Z
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_7

    .line 2044
    :cond_6
    const/4 v4, 0x1

    .line 2046
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_9

    .line 2047
    :cond_8
    const/4 v1, 0x1

    .line 2049
    :cond_9
    if-nez v1, :cond_b

    if-nez v4, :cond_b

    .line 2050
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "packageName =\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "componentName"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " =\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2057
    :cond_a
    :goto_2
    const-string v7, "packageName"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2058
    const-string v7, "componentName"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2052
    :cond_b
    if-nez v1, :cond_c

    .line 2053
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "componentName =\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 2054
    :cond_c
    if-nez v4, :cond_a

    .line 2055
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "packageName =\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 2064
    .end local v0    # "cmpName":Ljava/lang/String;
    .end local v1    # "cmpNameIsNull":Z
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "pkgNameIsNull":Z
    :cond_d
    invoke-static {v5, v6}, Lcom/smartisanos/launcher/data/handler/ItemDB;->update(Landroid/content/ContentValues;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static handleEventUpdateMessageCount(Ljava/util/List;Ljava/util/List;)V
    .locals 13
    .param p1, "additionParams"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2195
    .local p0, "contentValueList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    sget-boolean v9, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v9, :cond_0

    sget-object v9, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "handleEventUpdateMessageCount begin !"

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2196
    :cond_0
    const/4 v9, 0x0

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2197
    .local v6, "pkgName":Ljava/lang/String;
    const/4 v9, 0x1

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2198
    .local v0, "cpName":Ljava/lang/String;
    const/4 v9, 0x2

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2199
    .local v5, "msgCount":I
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_3

    .line 2200
    :cond_1
    sget-object v9, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "DEBUG"

    const-string v11, "handleEventUpdateMessageCount return by pkg is null"

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2240
    :cond_2
    :goto_0
    return-void

    .line 2204
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2205
    .local v8, "where":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "packageName = \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2206
    const-string v9, " AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2207
    const-string v9, "itemType=0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2208
    if-eqz v0, :cond_4

    .line 2209
    const-string v9, " AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2210
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "componentName = \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2212
    :cond_4
    sget-boolean v9, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v9, :cond_5

    sget-object v9, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleEventUpdateMessageCount set count to ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] where ==> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2213
    :cond_5
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2214
    .local v7, "values":Landroid/content/ContentValues;
    const-string v9, "messagesNumber"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2217
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listItem(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 2218
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-nez v4, :cond_6

    .line 2219
    sget-object v9, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "can\'t get record by PACKAGE_NAME ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "], COMPONENT_NAME ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2222
    :cond_6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/smartisanos/launcher/data/handler/ItemDB;->update(Landroid/content/ContentValues;Ljava/lang/String;)I

    .line 2223
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 2224
    .local v1, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-wide v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 2225
    .local v2, "itemId":J
    new-instance v10, Lcom/smartisanos/launcher/data/DatabaseHandler$8;

    const/16 v11, 0x65

    invoke-direct {v10, v11, v2, v3, v5}, Lcom/smartisanos/launcher/data/DatabaseHandler$8;-><init>(IJI)V

    const/4 v11, 0x0

    .line 2238
    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/data/DatabaseHandler$8;->send(F)V

    goto :goto_1
.end method

.method private static handleInit(Ljava/util/List;)V
    .locals 9
    .param p0, "additionParams"    # Ljava/util/List;

    .prologue
    .line 212
    const/4 v6, 0x0

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 213
    .local v0, "context":Landroid/content/Context;
    const/4 v6, 0x1

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 214
    .local v3, "mHandler":Landroid/os/Handler;
    const-string v6, "ro.build.date.utc"

    invoke-static {v6}, Lcom/smartisanos/launcher/data/Utils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, "systemUpdateTime":Ljava/lang/String;
    invoke-static {v0}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getSystemUpdateTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, "time":Ljava/lang/String;
    const/4 v2, 0x0

    .line 217
    .local v2, "isOta":Z
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 218
    const/4 v2, 0x1

    .line 221
    :cond_0
    const/4 v1, 0x0

    .line 222
    .local v1, "count":I
    :cond_1
    invoke-static {v0, v2}, Lcom/smartisanos/launcher/data/DatabaseHandler;->dataInitProtected(Landroid/content/Context;Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 223
    add-int/lit8 v1, v1, 0x1

    .line 224
    const/4 v6, 0x5

    if-le v1, v6, :cond_1

    .line 225
    sget-object v6, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    const-string v8, "dataInitProtected 5 times, need clean database"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/smartisanos/launcher/data/DBHelper;->resetDB()V

    .line 227
    invoke-static {v0, v2}, Lcom/smartisanos/launcher/data/DatabaseHandler;->dataInitProtected(Landroid/content/Context;Z)Z

    .line 236
    :cond_2
    invoke-static {v0, v4}, Lcom/smartisanos/launcher/data/LauncherPreferences;->setSystemUpdateTime(Landroid/content/Context;Ljava/lang/String;)V

    .line 237
    const/16 v6, 0xe

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 238
    return-void
.end method

.method private static handleReloadIcons(Ljava/util/List;Ljava/util/List;)V
    .locals 15
    .param p1, "params"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2298
    .local p0, "contentValueList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v0

    .line 2299
    .local v0, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    const-string v1, "table_icons"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/launcher/data/DatabaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2300
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 2367
    :cond_0
    :goto_0
    return-void

    .line 2314
    :cond_1
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 2316
    .local v11, "iconDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;[B>;"
    :try_start_0
    const-string v1, "owner"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 2317
    .local v14, "ownerIndex":I
    const-string v6, "dark_icon"

    .line 2318
    .local v6, "COLUMN_NAME":Ljava/lang/String;
    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->ICON_TYPE:Lcom/smartisanos/launcher/data/Constants$IconType;

    sget-object v2, Lcom/smartisanos/launcher/data/Constants$IconType;->Dark:Lcom/smartisanos/launcher/data/Constants$IconType;

    if-eq v1, v2, :cond_2

    .line 2319
    const-string v6, "light_icon"

    .line 2321
    :cond_2
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 2322
    .local v10, "iconDataIndex":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2324
    :cond_3
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 2325
    .local v12, "id":J
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 2326
    .local v8, "data":[B
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2327
    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "duplicate owner id ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] in icon table !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    .line 2347
    .end local v8    # "data":[B
    .end local v12    # "id":J
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2349
    .end local v6    # "COLUMN_NAME":Ljava/lang/String;
    .end local v10    # "iconDataIndex":I
    .end local v14    # "ownerIndex":I
    :goto_2
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2350
    new-instance v1, Lcom/smartisanos/launcher/data/DatabaseHandler$10;

    const/16 v2, 0x64

    invoke-direct {v1, v2, v11}, Lcom/smartisanos/launcher/data/DatabaseHandler$10;-><init>(ILjava/util/Map;)V

    const/4 v2, 0x0

    .line 2365
    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/data/DatabaseHandler$10;->send(F)V

    goto :goto_0

    .line 2330
    .restart local v6    # "COLUMN_NAME":Ljava/lang/String;
    .restart local v8    # "data":[B
    .restart local v10    # "iconDataIndex":I
    .restart local v12    # "id":J
    .restart local v14    # "ownerIndex":I
    :cond_5
    if-nez v8, :cond_6

    .line 2331
    :try_start_1
    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lose icon data for owner id ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2343
    .end local v6    # "COLUMN_NAME":Ljava/lang/String;
    .end local v8    # "data":[B
    .end local v10    # "iconDataIndex":I
    .end local v12    # "id":J
    .end local v14    # "ownerIndex":I
    :catch_0
    move-exception v9

    .line 2344
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 2345
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2347
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2340
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v6    # "COLUMN_NAME":Ljava/lang/String;
    .restart local v8    # "data":[B
    .restart local v10    # "iconDataIndex":I
    .restart local v12    # "id":J
    .restart local v14    # "ownerIndex":I
    :cond_6
    :try_start_3
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v11, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2347
    .end local v6    # "COLUMN_NAME":Ljava/lang/String;
    .end local v8    # "data":[B
    .end local v10    # "iconDataIndex":I
    .end local v12    # "id":J
    .end local v14    # "ownerIndex":I
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private static insertPreLoadApps(Landroid/content/Context;Ljava/util/Map;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1313
    .local p1, "installedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/ResolveInfo;>;>;"
    sget-boolean v15, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v15, :cond_0

    sget-object v15, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v16, "DEBUG"

    const-string v17, "### first enter ! init database ! ###"

    invoke-virtual/range {v15 .. v17}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/smartisanos/launcher/data/LauncherPreferences;->clearFirstEnter(Landroid/content/Context;)V

    .line 1316
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/smartisanos/launcher/data/LauncherPreferences;->setLanguage(Landroid/content/Context;Ljava/lang/String;)V

    .line 1318
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1319
    .local v8, "itemValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1321
    .local v12, "pageValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v8, v1}, Lcom/smartisanos/launcher/data/DatabaseHandler;->insertPreLoadEmbeddedApp(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 1323
    const/4 v11, 0x0

    .local v11, "pageIndex":I
    :goto_0
    sget-object v15, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PREDEFINED_PAGES:[[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    array-length v15, v15

    if-ge v11, v15, :cond_4

    .line 1324
    sget-object v15, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PREDEFINED_PAGES:[[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aget-object v10, v15, v11

    .line 1325
    .local v10, "page":[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    const/4 v3, 0x0

    .local v3, "cellIndex":I
    :goto_1
    array-length v15, v10

    if-ge v3, v15, :cond_3

    .line 1326
    aget-object v2, v10, v3

    .line 1327
    .local v2, "app":Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    iget-object v13, v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    .line 1328
    .local v13, "pkg":Ljava/lang/String;
    iget-object v4, v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->cmp:Ljava/lang/String;

    .line 1329
    .local v4, "cmp":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v0, v13, v4}, Lcom/smartisanos/launcher/data/DatabaseHandler;->getResolveInfo(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 1330
    .local v6, "info":Landroid/content/pm/ResolveInfo;
    if-nez v6, :cond_2

    .line 1331
    sget-object v15, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "lose PREDEFINED_PAGES app ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->getAppId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1325
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1334
    :cond_2
    if-eqz v6, :cond_1

    .line 1335
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/smartisanos/launcher/LauncherModel;->createFromResolveInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v7

    .line 1336
    .local v7, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v7, :cond_1

    .line 1337
    iput v11, v7, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 1338
    iput v3, v7, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 1339
    invoke-static {v7}, Lcom/smartisanos/launcher/data/ItemInfo;->convertItemInfoToContentValues(Lcom/smartisanos/launcher/data/ItemInfo;)Landroid/content/ContentValues;

    move-result-object v5

    .line 1340
    .local v5, "iValue":Landroid/content/ContentValues;
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1344
    .end local v2    # "app":Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    .end local v4    # "cmp":Ljava/lang/String;
    .end local v5    # "iValue":Landroid/content/ContentValues;
    .end local v6    # "info":Landroid/content/pm/ResolveInfo;
    .end local v7    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v13    # "pkg":Ljava/lang/String;
    :cond_3
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1345
    .local v9, "pValue":Landroid/content/ContentValues;
    const-string v15, "pageIndex"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1346
    const-string v15, "pageTitle"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    const-string v15, "status"

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1348
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1323
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1351
    .end local v3    # "cellIndex":I
    .end local v9    # "pValue":Landroid/content/ContentValues;
    .end local v10    # "page":[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "cellIndex":I
    :goto_3
    sget-object v15, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PREDEFINED_DOCK:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    array-length v15, v15

    if-ge v3, v15, :cond_7

    .line 1352
    sget-object v15, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PREDEFINED_DOCK:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aget-object v2, v15, v3

    .line 1353
    .restart local v2    # "app":Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    iget-object v13, v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    .line 1354
    .restart local v13    # "pkg":Ljava/lang/String;
    iget-object v4, v2, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->cmp:Ljava/lang/String;

    .line 1355
    .restart local v4    # "cmp":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v0, v13, v4}, Lcom/smartisanos/launcher/data/DatabaseHandler;->getResolveInfo(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 1356
    .restart local v6    # "info":Landroid/content/pm/ResolveInfo;
    if-nez v6, :cond_6

    .line 1357
    sget-object v15, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "lose PREDEFINED_DOCK app ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->getAppId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1351
    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1360
    :cond_6
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/smartisanos/launcher/LauncherModel;->createFromResolveInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v7

    .line 1361
    .restart local v7    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v7, :cond_5

    .line 1362
    const/4 v15, -0x2

    iput v15, v7, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 1363
    iput v3, v7, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 1364
    invoke-static {v7}, Lcom/smartisanos/launcher/data/ItemInfo;->convertItemInfoToContentValues(Lcom/smartisanos/launcher/data/ItemInfo;)Landroid/content/ContentValues;

    move-result-object v14

    .line 1365
    .local v14, "value":Landroid/content/ContentValues;
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1368
    .end local v2    # "app":Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    .end local v4    # "cmp":Ljava/lang/String;
    .end local v6    # "info":Landroid/content/pm/ResolveInfo;
    .end local v7    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "value":Landroid/content/ContentValues;
    :cond_7
    invoke-static {v8}, Lcom/smartisanos/launcher/data/handler/ItemDB;->bulkInsert(Ljava/util/List;)I

    .line 1369
    invoke-static {v12}, Lcom/smartisanos/launcher/data/handler/PageDB;->bulkInsert(Ljava/util/List;)I

    .line 1370
    return-void
.end method

.method private static insertPreLoadEmbeddedApp(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1266
    .local p1, "itemValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .local p2, "installedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/ResolveInfo;>;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1267
    .local v8, "pageItems":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1268
    .local v1, "dockItems":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v10, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->EMBEDDED_APPS:[Lcom/smartisanos/home/apps/EmbeddedApp;

    array-length v10, v10

    if-ge v2, v10, :cond_4

    .line 1269
    sget-object v10, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->EMBEDDED_APPS:[Lcom/smartisanos/home/apps/EmbeddedApp;

    aget-object v0, v10, v2

    .line 1270
    .local v0, "app":Lcom/smartisanos/home/apps/EmbeddedApp;
    invoke-virtual {v0}, Lcom/smartisanos/home/apps/EmbeddedApp;->pkg()Ljava/lang/String;

    move-result-object v9

    .line 1271
    .local v9, "pkg":Ljava/lang/String;
    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1272
    .local v5, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x0

    .line 1273
    .local v7, "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    if-nez v5, :cond_2

    .line 1274
    invoke-virtual {v0}, Lcom/smartisanos/home/apps/EmbeddedApp;->toItemInfo()Lcom/smartisanos/launcher/data/ApplicationInfo;

    move-result-object v7

    .line 1281
    :cond_0
    if-eqz v7, :cond_1

    .line 1282
    invoke-virtual {v0}, Lcom/smartisanos/home/apps/EmbeddedApp;->isDockApp()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1283
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1268
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1276
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1277
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    invoke-static {p0, v4}, Lcom/smartisanos/launcher/LauncherModel;->createApplicationInfoFromResolveInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Lcom/smartisanos/launcher/data/ApplicationInfo;

    move-result-object v7

    .line 1279
    goto :goto_2

    .line 1285
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1289
    .end local v0    # "app":Lcom/smartisanos/home/apps/EmbeddedApp;
    .end local v5    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v9    # "pkg":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    :goto_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_6

    .line 1290
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1291
    .local v6, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-object v10, v6, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {p2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 1289
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1294
    :cond_5
    const/4 v10, 0x0

    iput v10, v6, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 1295
    iput v2, v6, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 1296
    invoke-static {v6}, Lcom/smartisanos/launcher/LauncherModel;->convertItemInfoToContentValues(Lcom/smartisanos/launcher/data/ItemInfo;)Landroid/content/ContentValues;

    move-result-object v3

    .line 1297
    .local v3, "iValue":Landroid/content/ContentValues;
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1300
    .end local v3    # "iValue":Landroid/content/ContentValues;
    .end local v6    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_6
    const/4 v2, 0x0

    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_8

    .line 1301
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1302
    .restart local v6    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-object v10, v6, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {p2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 1300
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1305
    :cond_7
    const/4 v10, -0x2

    iput v10, v6, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 1306
    iput v2, v6, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 1307
    invoke-static {v6}, Lcom/smartisanos/launcher/LauncherModel;->convertItemInfoToContentValues(Lcom/smartisanos/launcher/data/ItemInfo;)Landroid/content/ContentValues;

    move-result-object v3

    .line 1308
    .restart local v3    # "iValue":Landroid/content/ContentValues;
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1310
    .end local v3    # "iValue":Landroid/content/ContentValues;
    .end local v6    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_8
    return-void
.end method

.method public static postData(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 1
    .param p0, "actionType"    # Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;
    .param p2, "params"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/ArrayList;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez p1, :cond_0

    .line 124
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .restart local p1    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 127
    .local v0, "task":Ljava/util/Map;, "Ljava/util/Map<Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {v0, p2}, Lcom/smartisanos/launcher/data/DatabaseHandler;->appendUpdateDatabaseTask(Ljava/util/Map;Ljava/util/ArrayList;)V

    .line 129
    return-void
.end method

.method private static preSetModleInfo(Ljava/util/List;)V
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
    .line 1891
    .local p0, "newInfos":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1892
    .local v0, "newInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-wide v4, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v4, v5}, Lcom/smartisanos/launcher/LauncherModel;->getItemInfo(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    .line 1893
    .local v1, "oldInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    iget v3, v1, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    iput v3, v0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 1894
    iget v3, v1, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    iput v3, v0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 1896
    iget-wide v4, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v4, v5}, Lcom/smartisanos/launcher/LauncherModel;->removeItemInfo(J)Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1897
    invoke-static {v0}, Lcom/smartisanos/launcher/LauncherModel;->setItemInfo(Lcom/smartisanos/launcher/data/ItemInfo;)V

    goto :goto_0

    .line 1899
    .end local v0    # "newInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v1    # "oldInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_0
    return-void
.end method

.method private static removeInvalidData(Ljava/util/List;)V
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
    .line 1241
    .local p0, "invalidAppList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 1262
    :cond_0
    :goto_0
    return-void

    .line 1244
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1245
    .local v4, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 1246
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 1247
    .local v5, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1248
    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v5, :cond_3

    .line 1249
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1250
    .local v2, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-object v3, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 1251
    .local v3, "pkg":Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1252
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1254
    :cond_2
    sget-object v6, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "app is not exist id ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], name ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1255
    iget-wide v6, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1248
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1257
    .end local v2    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_3
    invoke-static {v1}, Lcom/smartisanos/launcher/data/handler/ItemDB;->removeItemDataById(Ljava/util/List;)V

    .line 1259
    .end local v0    # "i":I
    .end local v1    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v5    # "size":I
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1260
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v4}, Lcom/smartisanos/home/Launcher;->setPackageLockStatus(ZLjava/util/List;)V

    goto :goto_0
.end method

.method public static removeItemRecordById(J)V
    .locals 4
    .param p0, "id"    # J

    .prologue
    .line 1422
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-gez v1, :cond_0

    .line 1428
    :goto_0
    return-void

    .line 1425
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1426
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1427
    invoke-static {v0}, Lcom/smartisanos/launcher/data/handler/ItemDB;->removeItemDataById(Ljava/util/List;)V

    goto :goto_0
.end method

.method private static resetIndex(Ljava/util/Map;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 954
    .local p0, "cachedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->size()I

    move-result v27

    if-nez v27, :cond_2

    .line 955
    :cond_0
    sget-object v27, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v28, "resetIndex error, cachedApps is empty"

    invoke-virtual/range {v27 .. v28}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1041
    :cond_1
    :goto_0
    return-void

    .line 958
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 959
    .local v4, "beginTime":J
    sget-boolean v27, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v27, :cond_3

    sget-object v27, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v28, "resetIndex begin"

    invoke-virtual/range {v27 .. v28}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 960
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 961
    .local v6, "dockList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 962
    .local v21, "pageItemMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 963
    .local v19, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_4
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_7

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 964
    .local v26, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    .line 965
    .local v17, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_4

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 966
    .local v15, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    iget v0, v15, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    move/from16 v20, v0

    .line 967
    .local v20, "pageIndex":I
    const/16 v29, -0x2

    move/from16 v0, v20

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    .line 968
    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 970
    :cond_5
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    .line 971
    .local v16, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-nez v16, :cond_6

    .line 972
    new-instance v16, Ljava/util/ArrayList;

    .end local v16    # "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 974
    .restart local v16    # "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :cond_6
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 975
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 981
    .end local v15    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v16    # "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v17    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v20    # "pageIndex":I
    .end local v26    # "pkg":Ljava/lang/String;
    :cond_7
    invoke-static {v6}, Lcom/smartisanos/launcher/data/DatabaseHandler;->correctionCellIndex(Ljava/util/List;)V

    .line 983
    new-instance v12, Ljava/util/ArrayList;

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 984
    .local v12, "indexList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    new-array v11, v0, [Ljava/lang/Integer;

    .line 985
    .local v11, "indexArr":[Ljava/lang/Integer;
    invoke-interface {v12, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 986
    invoke-static {v11}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 987
    array-length v0, v11

    move/from16 v28, v0

    const/16 v27, 0x0

    :goto_2
    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_8

    aget-object v29, v11, v27

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 988
    .local v10, "index":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    .line 989
    .restart local v17    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-static/range {v17 .. v17}, Lcom/smartisanos/launcher/data/DatabaseHandler;->correctionCellIndex(Ljava/util/List;)V

    .line 987
    add-int/lit8 v27, v27, 0x1

    goto :goto_2

    .line 993
    .end local v10    # "index":I
    .end local v17    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/data/handler/PageDB;->listPage()Ljava/util/List;

    move-result-object v22

    .line 994
    .local v22, "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    const/4 v14, 0x1

    .line 995
    .local v14, "isPageConsecutive":Z
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v24

    .line 996
    .local v24, "pageRecordCount":I
    if-nez v24, :cond_b

    .line 997
    const/4 v14, 0x0

    .line 1009
    :cond_9
    const/4 v13, 0x1

    .line 1010
    .local v13, "isConsecutive":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    array-length v0, v11

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v7, v0, :cond_d

    .line 1011
    aget-object v27, v11, v7

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move/from16 v0, v27

    if-eq v0, v7, :cond_a

    .line 1012
    const/4 v13, 0x0

    .line 1010
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 999
    .end local v7    # "i":I
    .end local v13    # "isConsecutive":Z
    :cond_b
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    new-array v0, v0, [Lcom/smartisanos/launcher/data/PageInfo;

    move-object/from16 v25, v0

    .line 1000
    .local v25, "pinfos":[Lcom/smartisanos/launcher/data/PageInfo;
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1001
    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1002
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    move/from16 v0, v24

    if-ge v7, v0, :cond_9

    .line 1003
    aget-object v27, v25, v7

    move-object/from16 v0, v27

    iget v0, v0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v0, v7, :cond_c

    .line 1004
    const/4 v14, 0x0

    .line 1002
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1016
    .end local v25    # "pinfos":[Lcom/smartisanos/launcher/data/PageInfo;
    .restart local v13    # "isConsecutive":Z
    :cond_d
    const/16 v18, 0x0

    .line 1017
    .local v18, "needFormat":Z
    invoke-static {}, Lcom/smartisanos/launcher/data/handler/PageDB;->getRealPageRecoredCount()I

    move-result v23

    .line 1018
    .local v23, "pageRealRecordCount":I
    const/16 v27, 0x3e8

    move/from16 v0, v23

    move/from16 v1, v27

    if-ge v0, v1, :cond_10

    .line 1019
    sget-boolean v27, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v27, :cond_e

    sget-object v27, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v28, "A140"

    const-string v29, "page table is not format !"

    invoke-virtual/range {v27 .. v29}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    :cond_e
    const/16 v18, 0x1

    .line 1032
    :cond_f
    :goto_5
    if-nez v18, :cond_16

    .line 1033
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1034
    .local v8, "endTime":J
    sget-boolean v27, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v27, :cond_1

    sget-object v27, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "reset index done, data is consecutive, spend ["

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sub-long v30, v8, v4

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "]"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1021
    .end local v8    # "endTime":J
    :cond_10
    if-nez v13, :cond_12

    .line 1022
    sget-boolean v27, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v27, :cond_11

    sget-object v27, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v28, "A140"

    const-string v29, "item table isConsecutive false !"

    invoke-virtual/range {v27 .. v29}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    :cond_11
    const/16 v18, 0x1

    goto :goto_5

    .line 1024
    :cond_12
    if-nez v14, :cond_14

    .line 1025
    sget-boolean v27, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v27, :cond_13

    sget-object v27, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v28, "A140"

    const-string v29, "page table isPageConsecutive false !"

    invoke-virtual/range {v27 .. v29}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    :cond_13
    const/16 v18, 0x1

    goto :goto_5

    .line 1027
    :cond_14
    array-length v0, v11

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v24

    if-eq v0, v1, :cond_f

    .line 1028
    sget-boolean v27, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v27, :cond_15

    sget-object v27, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v28, "A140"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "indexArr.length ["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    array-length v0, v11

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "] != pageRecordCount ["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "] !"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    :cond_15
    const/16 v18, 0x1

    goto/16 :goto_5

    .line 1038
    :cond_16
    sget-boolean v27, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v27, :cond_17

    sget-object v27, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v28, "need reset page index !!!"

    invoke-virtual/range {v27 .. v28}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1039
    :cond_17
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/DatabaseHandler;->formatIndex(Ljava/util/List;Ljava/util/HashMap;)V

    .line 1040
    sget-boolean v27, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v27, :cond_1

    sget-object v27, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v28, "resetIndex done"

    invoke-virtual/range {v27 .. v28}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static run(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/List;)V
    .locals 16
    .param p0, "actionType"    # Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;
    .param p2, "additionParams"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "contentValueList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    sget-object v10, Lcom/smartisanos/launcher/data/DatabaseHandler$13;->$SwitchMap$com$smartisanos$launcher$data$DatabaseUpdater$Action:[I

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 350
    sget-object v10, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "can\'t find action by name "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 243
    :pswitch_0
    invoke-static/range {p1 .. p2}, Lcom/smartisanos/launcher/data/DatabaseHandler;->handleEventUninstall(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 252
    :pswitch_1
    invoke-static/range {p1 .. p2}, Lcom/smartisanos/launcher/data/DatabaseHandler;->handleEventAddOrUpdateApp(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 256
    :pswitch_2
    invoke-static/range {p1 .. p2}, Lcom/smartisanos/launcher/data/DatabaseHandler;->handleEventRemoveApp(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 260
    :pswitch_3
    sget-boolean v10, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v10, :cond_1

    sget-object v10, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "DEBUG"

    const-string v12, "databaseUpdateHandler EVENT_UPDATE_ITEM_TABLE begin"

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 262
    .local v6, "time1":J
    invoke-static/range {p1 .. p1}, Lcom/smartisanos/launcher/data/handler/ItemDB;->updateById(Ljava/util/List;)Z

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 264
    .local v8, "time2":J
    sget-object v10, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "DEBUG"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "EVENT_UPDATE_ITEM_TABLE time ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v14, v8, v6

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    .end local v6    # "time1":J
    .end local v8    # "time2":J
    :pswitch_4
    sget-boolean v10, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v10, :cond_2

    sget-object v10, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "EVENT_REFRESH_PAGE_TABLE begin !"

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 269
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/smartisanos/launcher/data/handler/PageDB;->refreshPageTable(Ljava/util/List;)V

    goto :goto_0

    .line 273
    :pswitch_5
    invoke-static/range {p1 .. p2}, Lcom/smartisanos/launcher/data/DatabaseHandler;->handleEventUpdateItem(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 277
    :pswitch_6
    if-eqz p1, :cond_3

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_4

    .line 278
    :cond_3
    sget-boolean v10, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v10, :cond_0

    sget-object v10, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "DEBUG"

    const-string v12, "EVENT_UPDATE_PAGE data size is 0"

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/smartisanos/launcher/data/handler/PageDB;->updatePagesDataByIndex(Ljava/util/List;)Z

    goto :goto_0

    .line 285
    :pswitch_7
    invoke-static/range {p1 .. p2}, Lcom/smartisanos/launcher/data/DatabaseHandler;->handleEventUpdateIcon(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 289
    :pswitch_8
    invoke-static/range {p1 .. p2}, Lcom/smartisanos/launcher/data/DatabaseHandler;->handleEventUpdateMessageCount(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 293
    :pswitch_9
    invoke-static/range {p1 .. p2}, Lcom/smartisanos/launcher/data/DatabaseHandler;->handleEventRemoveNewFlagByIntent(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 297
    :pswitch_a
    invoke-static/range {p1 .. p2}, Lcom/smartisanos/launcher/data/DatabaseHandler;->handleReloadIcons(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 301
    :pswitch_b
    invoke-static/range {p1 .. p2}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->handleEventSortIcon(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 305
    :pswitch_c
    invoke-static/range {p1 .. p2}, Lcom/smartisanos/launcher/data/DatabaseHandler;->handleEventRollBackDB(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 309
    :pswitch_d
    invoke-static/range {p1 .. p2}, Lcom/smartisanos/launcher/data/DatabaseHandler;->handleEventRemoveMultiApps(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 313
    :pswitch_e
    invoke-static/range {p1 .. p2}, Lcom/smartisanos/launcher/data/DatabaseHandler;->handleEventInstallShortcut(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 317
    :pswitch_f
    invoke-static/range {p1 .. p2}, Lcom/smartisanos/launcher/data/DatabaseHandler;->handleEventUninstallShortcut(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 321
    :pswitch_10
    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    .line 322
    .local v2, "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    if-eqz v2, :cond_6

    .line 323
    sget-object v10, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "DEBUG"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "EVENT_SAVE_ICON "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-static {v2}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->updateIcon(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)Z

    .line 325
    iget-boolean v10, v2, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->useImprovedAppIcon:Z

    if-eqz v10, :cond_5

    .line 327
    const/4 v10, 0x1

    new-array v3, v10, [Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    .line 328
    .local v3, "infos":[Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    const/4 v10, 0x0

    aput-object v2, v3, v10

    .line 329
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v5, "params":Ljava/util/ArrayList;
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v10, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UPDATE_ICON:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v11, 0x0

    invoke-static {v10, v11, v5}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 334
    .end local v3    # "infos":[Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .end local v5    # "params":Ljava/util/ArrayList;
    :cond_5
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.smartisanos.home.ACTION_REQUEST_REFRESH_ICON_LIST"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    .local v4, "intent":Landroid/content/Intent;
    const-string v10, "pkg"

    iget-object v11, v2, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string v10, "cmp"

    iget-object v11, v2, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v10, "action"

    const-string v11, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/smartisanos/launcher/LauncherApplication;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 340
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_6
    sget-object v10, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "DEBUG"

    const-string v12, "EVENT_SAVE_ICON error by info is null"

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 345
    .end local v2    # "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    :pswitch_11
    sget-object v10, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "A140"

    const-string v12, "EVENT_REQUEST_FETCH_ICON begin !"

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->handleEventFetchIcons()V

    goto/16 :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static switchLauncherBaseModeIfNeeded(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 1373
    invoke-static {}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getInstance()Lcom/smartisanos/launcher/data/LauncherPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getCurrentBaseMode()I

    move-result v0

    .line 1374
    .local v0, "newBaseMode":I
    invoke-static {}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getInstance()Lcom/smartisanos/launcher/data/LauncherPreferences;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getOldBaseMode(Landroid/content/Context;)I

    move-result v2

    .line 1375
    .local v2, "oldBaseMode":I
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "switchLauncherBaseModeIfNeeded newBaseMode ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], oldBaseMode ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1376
    :cond_0
    const/4 v5, -0x1

    if-ne v2, v5, :cond_4

    .line 1379
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "this is first launch, don\'t check mode."

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1380
    :cond_1
    if-eq v0, v4, :cond_2

    const/4 v4, 0x4

    if-eq v0, v4, :cond_2

    .line 1382
    sget-object v4, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "switchLauncherBaseModeIfNeeded getCurrentBaseMode error value ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    const/4 v0, 0x1

    .line 1385
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getInstance()Lcom/smartisanos/launcher/data/LauncherPreferences;

    move-result-object v4

    invoke-virtual {v4, p0, v0}, Lcom/smartisanos/launcher/data/LauncherPreferences;->saveBaseMode(Landroid/content/Context;I)V

    .line 1397
    :cond_3
    const/4 v4, 0x0

    :goto_0
    return v4

    .line 1386
    :cond_4
    if-eq v2, v0, :cond_3

    .line 1387
    const/4 v3, 0x1

    .line 1388
    .local v3, "old_mode":I
    const/4 v1, 0x4

    .line 1389
    .local v1, "new_mode":I
    if-ne v0, v4, :cond_5

    .line 1390
    const/4 v3, 0x4

    .line 1391
    const/4 v1, 0x1

    .line 1393
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getInstance()Lcom/smartisanos/launcher/data/LauncherPreferences;

    move-result-object v5

    invoke-virtual {v5, p0, v1}, Lcom/smartisanos/launcher/data/LauncherPreferences;->saveBaseMode(Landroid/content/Context;I)V

    .line 1394
    invoke-static {v3, v1}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabaseByMode(II)V

    goto :goto_0
.end method

.method private static syncApps(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 723
    .local p1, "unSyncAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sync app when launcher startup, unSyncAppList size ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 727
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 728
    .local v2, "normalApps":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 729
    .local v3, "systemApps":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 730
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    invoke-static {p0, v0}, Lcom/smartisanos/launcher/LauncherModel;->createFromResolveInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    .line 731
    .local v1, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v1, :cond_3

    .line 732
    iget-object v5, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/smartisanos/home/Launcher;->isSystemAppByPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    .line 733
    iget-boolean v5, v1, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    if-eqz v5, :cond_4

    .line 734
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 736
    :cond_4
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 740
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    .end local v1    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_5
    invoke-static {v3}, Lcom/smartisanos/launcher/data/DatabaseHandler;->syncSysApps(Ljava/util/List;)V

    .line 741
    invoke-static {v2}, Lcom/smartisanos/launcher/data/DatabaseHandler;->syncApps(Ljava/util/List;)V

    goto :goto_0
.end method

.method private static syncApps(Ljava/util/List;)V
    .locals 35
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
    .line 820
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v31

    if-nez v31, :cond_1

    .line 923
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    sget-boolean v31, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v31, :cond_2

    sget-object v31, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "sync app when launcher startup, unSyncAppList size ["

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "]"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 825
    :cond_2
    sget v31, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static/range {v31 .. v31}, Lcom/smartisanos/launcher/data/Constants;->getCellNumByMode(I)I

    move-result v18

    .line 826
    .local v18, "maxCellCount":I
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 827
    .local v17, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {}, Lcom/smartisanos/launcher/LauncherModel;->getItemMap()Ljava/util/HashMap;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 828
    .local v9, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_4

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 829
    .local v10, "id":Ljava/lang/Long;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Lcom/smartisanos/launcher/LauncherModel;->getItemInfo(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v15

    .line 830
    .local v15, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    iget v0, v15, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 831
    .local v5, "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-nez v5, :cond_3

    .line 832
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 834
    .restart local v5    # "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :cond_3
    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    iget v0, v15, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 837
    .end local v5    # "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v10    # "id":Ljava/lang/Long;
    .end local v15    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/data/handler/PageDB;->listPage()Ljava/util/List;

    move-result-object v25

    .line 838
    .local v25, "pages":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    sget-boolean v31, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v31, :cond_5

    sget-object v31, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "pages count ==> "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 839
    :cond_5
    const/16 v23, -0x1

    .line 840
    .local v23, "pIndex":I
    const/4 v4, -0x1

    .line 841
    .local v4, "cIndex":I
    const/16 v28, 0x0

    .line 842
    .local v28, "prePage":Lcom/smartisanos/launcher/data/PageInfo;
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_2
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_6

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/smartisanos/launcher/data/PageInfo;

    .line 843
    .local v27, "pinfo":Lcom/smartisanos/launcher/data/PageInfo;
    move-object/from16 v0, v27

    iget v0, v0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    move/from16 v26, v0

    .line 844
    .local v26, "pid":I
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    if-eqz v32, :cond_6

    .line 845
    move-object/from16 v28, v27

    .line 849
    goto :goto_2

    .line 851
    .end local v26    # "pid":I
    .end local v27    # "pinfo":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_6
    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    .line 852
    .local v21, "newPageList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v28, :cond_c

    .line 853
    move-object/from16 v0, v28

    iget v0, v0, Lcom/smartisanos/launcher/data/PageInfo;->status:I

    move/from16 v31, v0

    if-nez v31, :cond_8

    .line 854
    move-object/from16 v0, v28

    iget v0, v0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    move/from16 v23, v0

    .line 855
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 856
    .restart local v5    # "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v31

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 857
    sget-boolean v31, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v31, :cond_7

    sget-object v31, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "no space for cell pindex ["

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "]"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 858
    :cond_7
    const/16 v23, -0x1

    .line 864
    .end local v5    # "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :cond_8
    :goto_3
    const/16 v31, -0x1

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 865
    move-object/from16 v0, v28

    iget v0, v0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    move/from16 v31, v0

    add-int/lit8 v23, v31, 0x1

    .line 866
    const/4 v4, 0x0

    .line 871
    :cond_9
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v30

    .line 872
    .local v30, "size":I
    sget-object v31, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v32, "DEBUG"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "syncApps item count ==> "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 874
    .local v20, "newItemValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 875
    .local v14, "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    sget v31, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static/range {v31 .. v31}, Lcom/smartisanos/launcher/view/MainView;->getMaxPageCount(I)I

    move-result v19

    .line 876
    .local v19, "maxCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    move/from16 v0, v30

    if-ge v7, v0, :cond_e

    .line 877
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 878
    .restart local v15    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    if-nez v15, :cond_d

    .line 876
    :cond_a
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 860
    .end local v7    # "i":I
    .end local v14    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v15    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v19    # "maxCount":I
    .end local v20    # "newItemValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v30    # "size":I
    .restart local v5    # "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :cond_b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_3

    .line 869
    .end local v5    # "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :cond_c
    new-instance v31, Ljava/lang/IllegalArgumentException;

    const-string v32, "page table error, no data !"

    invoke-direct/range {v31 .. v32}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 881
    .restart local v7    # "i":I
    .restart local v14    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .restart local v15    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .restart local v19    # "maxCount":I
    .restart local v20    # "newItemValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v30    # "size":I
    :cond_d
    if-nez v4, :cond_10

    .line 882
    move/from16 v0, v23

    move/from16 v1, v19

    if-lt v0, v1, :cond_f

    .line 883
    sget-object v31, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "syncApps, page count is over max value ! "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 900
    .end local v15    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_e
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 901
    .local v22, "newPageValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_6
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_11

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 902
    .local v12, "index":Ljava/lang/Integer;
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 903
    .local v24, "pValue":Landroid/content/ContentValues;
    const-string v32, "pageIndex"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 904
    const-string v32, "pageTitle"

    const-string v33, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    const-string v32, "status"

    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 906
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 886
    .end local v12    # "index":Ljava/lang/Integer;
    .end local v22    # "newPageValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v24    # "pValue":Landroid/content/ContentValues;
    .restart local v15    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_f
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 888
    :cond_10
    move/from16 v0, v23

    iput v0, v15, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 889
    iput v4, v15, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 890
    invoke-static {v15}, Lcom/smartisanos/launcher/data/ItemInfo;->convertItemInfoToContentValues(Lcom/smartisanos/launcher/data/ItemInfo;)Landroid/content/ContentValues;

    move-result-object v8

    .line 891
    .local v8, "iValue":Landroid/content/ContentValues;
    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 892
    invoke-virtual {v15}, Lcom/smartisanos/launcher/data/ItemInfo;->id()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v14, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    add-int/lit8 v4, v4, 0x1

    .line 894
    move/from16 v0, v18

    if-lt v4, v0, :cond_a

    .line 896
    add-int/lit8 v23, v23, 0x1

    .line 897
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 908
    .end local v8    # "iValue":Landroid/content/ContentValues;
    .end local v15    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .restart local v22    # "newPageValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_11
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v29

    .line 909
    .local v29, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    move-object/from16 v0, v29

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/data/DatabaseProvider;->syncNewApps(Ljava/util/List;Ljava/util/List;)Z

    .line 910
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_7
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_14

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 911
    .local v6, "cv":Landroid/content/ContentValues;
    const-string v32, "_id"

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    move/from16 v0, v32

    int-to-long v10, v0

    .line 912
    .local v10, "id":J
    sget-boolean v32, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v32, :cond_12

    sget-object v32, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "new id ==> "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 913
    :cond_12
    const-wide/16 v32, 0x0

    cmp-long v32, v10, v32

    if-gtz v32, :cond_13

    .line 914
    sget-object v32, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "insert failed by "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v6}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_7

    .line 916
    :cond_13
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "packageName"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ";"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "componentName"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 917
    .local v16, "key":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 918
    .local v13, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    iput-wide v10, v13, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 919
    invoke-static {v13}, Lcom/smartisanos/launcher/LauncherModel;->setItemInfo(Lcom/smartisanos/launcher/data/ItemInfo;)V

    goto/16 :goto_7

    .line 922
    .end local v6    # "cv":Landroid/content/ContentValues;
    .end local v10    # "id":J
    .end local v13    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v16    # "key":Ljava/lang/String;
    :cond_14
    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0
.end method

.method private static syncIconData(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/lang/String;)V
    .locals 27
    .param p0, "action"    # Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1903
    if-nez p1, :cond_1

    .line 1980
    :cond_0
    :goto_0
    return-void

    .line 1906
    :cond_1
    sget-object v22, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v23, "DEBUG"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "syncIconData begin by action ==> "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->name()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", pkg ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    sget-object v22, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_INSERT_APP:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_2

    sget-object v22, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UPDATE_APP:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 1909
    :cond_2
    sget-boolean v22, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SYNC_APP_ICON:Z

    if-nez v22, :cond_3

    .line 1910
    sget-object v22, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v23, "DEBUG"

    const-string v24, "ENABLE_SYNC_APP_ICON is false"

    invoke-virtual/range {v22 .. v24}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1915
    :cond_3
    const-string v21, "packageName=?"

    .line 1917
    .local v21, "whereCase":Ljava/lang/String;
    const/16 v22, 0x0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "packageName"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object p1, v24, v25

    const/16 v25, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listItem(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 1918
    .local v15, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 1919
    .local v14, "itemInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-eqz v15, :cond_5

    .line 1920
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_4
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1921
    .local v12, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v12, :cond_4

    .line 1924
    invoke-virtual {v12}, Lcom/smartisanos/launcher/data/ItemInfo;->id()Ljava/lang/String;

    move-result-object v8

    .line 1925
    .local v8, "id":Ljava/lang/String;
    invoke-interface {v14, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1929
    .end local v8    # "id":Ljava/lang/String;
    .end local v12    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_5
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1930
    .local v6, "iconInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;>;"
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->list(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v7

    .line 1931
    .local v7, "iconList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;>;"
    if-eqz v7, :cond_7

    .line 1932
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_6
    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    .line 1933
    .local v9, "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    if-eqz v9, :cond_6

    .line 1936
    invoke-virtual {v9}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->getPrimaryId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v6, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1939
    .end local v9    # "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    :cond_7
    sget-object v22, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v23, "DEBUG"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "syncIconData item size ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "], icon size ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    if-eqz v14, :cond_8

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v22

    if-nez v22, :cond_9

    .line 1941
    :cond_8
    sget-object v22, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v23, "DEBUG"

    const-string v24, "syncIconData return by itemInfoMap is empty"

    invoke-virtual/range {v22 .. v24}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1944
    :cond_9
    new-instance v17, Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1945
    .local v17, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1946
    .local v16, "key":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1947
    .local v13, "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    .line 1948
    .local v5, "iconInfo":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    if-eqz v13, :cond_a

    .line 1949
    sget-object v23, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v24, "DEBUG"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "syncIconData itemInfo ==> "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v13}, Lcom/smartisanos/launcher/data/ItemInfo;->toSimpleInfo()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    :cond_a
    if-eqz v5, :cond_b

    .line 1952
    sget-object v23, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v24, "DEBUG"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "syncIconData iconInfo ==> "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v5}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1953
    iget-boolean v0, v5, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->useImprovedAppIcon:Z

    move/from16 v23, v0

    if-eqz v23, :cond_b

    .line 1956
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v10, v0, [Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    .line 1957
    .local v10, "infos":[Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    const/16 v23, 0x0

    aput-object v5, v10, v23

    .line 1958
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1959
    .local v20, "params":Ljava/util/ArrayList;
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/launcher/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1960
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1961
    sget-object v23, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UPDATE_ICON:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 1964
    .end local v10    # "infos":[Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .end local v20    # "params":Ljava/util/ArrayList;
    :cond_b
    new-instance v19, Lcom/smartisanos/home/net/NetworkHandler$Task;

    invoke-direct/range {v19 .. v19}, Lcom/smartisanos/home/net/NetworkHandler$Task;-><init>()V

    .line 1965
    .local v19, "nTask":Lcom/smartisanos/home/net/NetworkHandler$Task;
    sget-object v23, Lcom/smartisanos/home/net/NetworkHandler$Action;->DL_ICON:Lcom/smartisanos/home/net/NetworkHandler$Action;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/smartisanos/home/net/NetworkHandler$Task;->act:Lcom/smartisanos/home/net/NetworkHandler$Action;

    .line 1966
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1967
    .local v18, "list":Ljava/util/List;
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1968
    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1969
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/smartisanos/home/net/NetworkHandler$Task;->params:Ljava/util/List;

    .line 1970
    invoke-static/range {v19 .. v19}, Lcom/smartisanos/home/net/NetworkHandler;->postTask(Lcom/smartisanos/home/net/NetworkHandler$Task;)V

    goto/16 :goto_3

    .line 1972
    .end local v5    # "iconInfo":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .end local v6    # "iconInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;>;"
    .end local v7    # "iconList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;>;"
    .end local v13    # "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v14    # "itemInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v15    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v16    # "key":Ljava/lang/String;
    .end local v17    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "list":Ljava/util/List;
    .end local v19    # "nTask":Lcom/smartisanos/home/net/NetworkHandler$Task;
    .end local v21    # "whereCase":Ljava/lang/String;
    :cond_c
    sget-object v22, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_REMOVE_APP:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 1974
    invoke-static/range {p1 .. p1}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->cleanIllegalIconByPackageName(Ljava/lang/String;)V

    .line 1975
    new-instance v11, Landroid/content/Intent;

    const-string v22, "com.smartisanos.home.ACTION_REQUEST_REFRESH_ICON_LIST"

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1976
    .local v11, "intent":Landroid/content/Intent;
    const-string v22, "pkg"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1977
    const-string v22, "action"

    const-string v23, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1978
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lcom/smartisanos/launcher/LauncherApplication;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private static syncSysApps(Ljava/util/List;)V
    .locals 25
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
    .line 745
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v20

    if-nez v20, :cond_1

    .line 817
    :cond_0
    return-void

    .line 748
    :cond_1
    sget v20, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static/range {v20 .. v20}, Lcom/smartisanos/launcher/data/Constants;->getCellNumByMode(I)I

    move-result v13

    .line 749
    .local v13, "maxCellCount":I
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_2
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 751
    .local v10, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 752
    .local v12, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {}, Lcom/smartisanos/launcher/LauncherModel;->getItemMap()Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 753
    .local v8, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 754
    .local v6, "id":Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lcom/smartisanos/launcher/LauncherModel;->getItemInfo(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v11

    .line 755
    .local v11, "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    iget v0, v11, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 757
    .local v3, "count":Ljava/lang/Integer;
    if-nez v3, :cond_3

    .line 758
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 760
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 761
    iget v0, v11, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 763
    .end local v3    # "count":Ljava/lang/Integer;
    .end local v6    # "id":Ljava/lang/Long;
    .end local v11    # "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/data/handler/PageDB;->listPage()Ljava/util/List;

    move-result-object v18

    .line 764
    .local v18, "pages":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    const/4 v15, -0x1

    .line 765
    .local v15, "pageIndex":I
    const/4 v2, -0x1

    .line 766
    .local v2, "cellIndex":I
    const/16 v19, -0x1

    .line 767
    .local v19, "tmpPageIndex":I
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/smartisanos/launcher/data/PageInfo;

    .line 768
    .local v14, "page":Lcom/smartisanos/launcher/data/PageInfo;
    iget v0, v14, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    move/from16 v19, v0

    .line 769
    invoke-virtual {v14}, Lcom/smartisanos/launcher/data/PageInfo;->getPageName()Ljava/lang/String;

    move-result-object v17

    .line 770
    .local v17, "pageName":Ljava/lang/String;
    const/4 v9, 0x1

    .line 771
    .local v9, "isNamedPage":Z
    const-string v22, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 772
    const/4 v9, 0x0

    .line 774
    :cond_6
    iget v0, v14, Lcom/smartisanos/launcher/data/PageInfo;->status:I

    move/from16 v22, v0

    if-nez v22, :cond_5

    if-nez v9, :cond_5

    .line 775
    iget v0, v14, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 776
    .restart local v3    # "count":Ljava/lang/Integer;
    if-nez v3, :cond_8

    .line 777
    iget v15, v14, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    .line 778
    const/4 v2, 0x0

    .line 788
    .end local v3    # "count":Ljava/lang/Integer;
    .end local v9    # "isNamedPage":Z
    .end local v14    # "page":Lcom/smartisanos/launcher/data/PageInfo;
    .end local v17    # "pageName":Ljava/lang/String;
    :cond_7
    :goto_2
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v15, v0, :cond_a

    .line 789
    sget-object v21, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v22, "DEBUG"

    const-string v23, "no available page, need append page when syncSysApps!"

    invoke-virtual/range {v21 .. v23}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    add-int/lit8 v15, v19, 0x1

    .line 792
    const/4 v2, 0x0

    .line 795
    new-instance v16, Lcom/smartisanos/launcher/data/PageInfo;

    invoke-direct/range {v16 .. v16}, Lcom/smartisanos/launcher/data/PageInfo;-><init>()V

    .line 796
    .local v16, "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    move-object/from16 v0, v16

    iput v15, v0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    .line 797
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 799
    .local v5, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/smartisanos/launcher/data/PageInfo;

    .line 800
    .restart local v14    # "page":Lcom/smartisanos/launcher/data/PageInfo;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 801
    .local v4, "cv":Landroid/content/ContentValues;
    const-string v22, "pageIndex"

    iget v0, v14, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 802
    const-string v22, "pageTitle"

    invoke-virtual {v14}, Lcom/smartisanos/launcher/data/PageInfo;->getPageName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const-string v22, "status"

    iget v0, v14, Lcom/smartisanos/launcher/data/PageInfo;->status:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 804
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 781
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v5    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v16    # "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    .restart local v3    # "count":Ljava/lang/Integer;
    .restart local v9    # "isNamedPage":Z
    .restart local v17    # "pageName":Ljava/lang/String;
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    if-ge v0, v13, :cond_5

    .line 782
    iget v15, v14, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    .line 783
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 784
    goto :goto_2

    .line 806
    .end local v3    # "count":Ljava/lang/Integer;
    .end local v9    # "isNamedPage":Z
    .end local v14    # "page":Lcom/smartisanos/launcher/data/PageInfo;
    .end local v17    # "pageName":Ljava/lang/String;
    .restart local v5    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v16    # "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_9
    invoke-static {v5}, Lcom/smartisanos/launcher/data/handler/PageDB;->refreshPageTable(Ljava/util/List;)V

    .line 808
    .end local v5    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v16    # "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_a
    iput v15, v10, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 809
    iput v2, v10, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 810
    sget-object v21, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v22, "DEBUG"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "syncSysApps for ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v10}, Lcom/smartisanos/launcher/data/ItemInfo;->id()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "] pageIndex ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v10, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "], cellIndex ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v10, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    invoke-static {v10}, Lcom/smartisanos/launcher/data/handler/ItemDB;->insert(Lcom/smartisanos/launcher/data/ItemInfo;)J

    move-result-wide v6

    .line 812
    .local v6, "id":J
    iput-wide v6, v10, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 813
    const-wide/16 v22, 0x0

    cmp-long v21, v6, v22

    if-lez v21, :cond_2

    .line 814
    invoke-static {v10}, Lcom/smartisanos/launcher/LauncherModel;->setItemInfo(Lcom/smartisanos/launcher/data/ItemInfo;)V

    goto/16 :goto_0
.end method

.method private static updateApp(Ljava/util/Map;Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 698
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/smartisanos/launcher/data/ItemInfo;Landroid/content/pm/ResolveInfo;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 702
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 703
    .local v7, "size":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 704
    .local v3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 705
    .local v1, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v7, :cond_2

    .line 706
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 707
    .local v5, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 708
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    invoke-static {p1, v4}, Lcom/smartisanos/launcher/LauncherModel;->createFromResolveInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    .line 709
    .local v0, "appInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-wide v10, v5, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 711
    .local v8, "value":Landroid/content/ContentValues;
    const-string v9, "_id"

    iget-wide v10, v5, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 712
    const-string v9, "componentName"

    iget-object v10, v0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v9, "title"

    iget-object v10, v0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 717
    .end local v0    # "appInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    .end local v5    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v8    # "value":Landroid/content/ContentValues;
    :cond_2
    invoke-static {v1}, Lcom/smartisanos/launcher/data/handler/ItemDB;->updateById(Ljava/util/List;)Z

    .line 719
    invoke-static {v3}, Lcom/smartisanos/launcher/data/handler/IconDB;->removeIconDataByOwnerId(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static updateItemInfoInDatabase(JLjava/lang/CharSequence;ZI)V
    .locals 4
    .param p0, "id"    # J
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "isNew"    # Z
    .param p4, "itemType"    # I

    .prologue
    .line 1410
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1411
    .local v1, "value":Landroid/content/ContentValues;
    const-string v2, "_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1412
    const-string v2, "title"

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    if-nez p4, :cond_0

    .line 1414
    const-string v3, "newlyInstalled"

    if-eqz p3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1416
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1417
    .local v0, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1418
    invoke-static {v0}, Lcom/smartisanos/launcher/data/handler/ItemDB;->updateById(Ljava/util/List;)Z

    .line 1419
    return-void

    .line 1414
    .end local v0    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static updateSystemAppInfo(Ljava/util/Map;)V
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 601
    .local p0, "installedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/ResolveInfo;>;>;"
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 602
    .local v23, "resolveInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/ResolveInfo;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v30

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 603
    .local v19, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_0
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_1

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 604
    .local v20, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/List;

    .line 605
    .local v24, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v24, :cond_0

    .line 608
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_0
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_0

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/ResolveInfo;

    .line 609
    .local v22, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 610
    .local v7, "cmp":Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ";"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 611
    .local v16, "key":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 615
    .end local v7    # "cmp":Ljava/lang/String;
    .end local v16    # "key":Ljava/lang/String;
    .end local v20    # "pkg":Ljava/lang/String;
    .end local v22    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v24    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 616
    .local v4, "allNamesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;>;"
    sget-object v32, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SYSTEM_APPS:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v33, v0

    const/16 v30, 0x0

    move/from16 v31, v30

    :goto_1
    move/from16 v0, v31

    move/from16 v1, v33

    if-ge v0, v1, :cond_4

    aget-object v5, v32, v31

    .line 617
    .local v5, "app":Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    invoke-virtual {v5}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->getAppId()Ljava/lang/String;

    move-result-object v18

    .line 618
    .local v18, "name":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_3

    .line 616
    :cond_2
    add-int/lit8 v30, v31, 0x1

    move/from16 v31, v30

    goto :goto_1

    .line 622
    :cond_3
    move-object/from16 v0, v18

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    iget-object v0, v5, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->oldNames:[Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2

    .line 624
    iget-object v0, v5, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->oldNames:[Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v35, v0

    const/16 v30, 0x0

    :goto_2
    move/from16 v0, v30

    move/from16 v1, v35

    if-ge v0, v1, :cond_2

    aget-object v25, v34, v30

    .line 625
    .local v25, "str":Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    add-int/lit8 v30, v30, 0x1

    goto :goto_2

    .line 629
    .end local v5    # "app":Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    .end local v18    # "name":Ljava/lang/String;
    .end local v25    # "str":Ljava/lang/String;
    :cond_4
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 630
    .local v26, "systemAppMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;Landroid/content/pm/ResolveInfo;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v30

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 631
    .local v17, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_5
    :goto_3
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_6

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 632
    .restart local v16    # "key":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 633
    .restart local v5    # "app":Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    if-eqz v5, :cond_5

    .line 636
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 637
    .local v13, "info":Landroid/content/pm/ResolveInfo;
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 638
    .restart local v20    # "pkg":Ljava/lang/String;
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 639
    .restart local v7    # "cmp":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v5, v0, v7}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->setRealName(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    move-object/from16 v0, v26

    invoke-interface {v0, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 642
    .end local v5    # "app":Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    .end local v7    # "cmp":Ljava/lang/String;
    .end local v13    # "info":Landroid/content/pm/ResolveInfo;
    .end local v16    # "key":Ljava/lang/String;
    .end local v20    # "pkg":Ljava/lang/String;
    :cond_6
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 643
    .local v6, "changedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/content/pm/ResolveInfo;>;"
    const/16 v30, 0x3

    move/from16 v0, v30

    new-array v8, v0, [Ljava/lang/String;

    const/16 v30, 0x0

    const-string v31, "_id"

    aput-object v31, v8, v30

    const/16 v30, 0x1

    const-string v31, "packageName"

    aput-object v31, v8, v30

    const/16 v30, 0x2

    const-string v31, "componentName"

    aput-object v31, v8, v30

    .line 644
    .local v8, "columns":[Ljava/lang/String;
    const-string v29, "itemType=0"

    .line 645
    .local v29, "where":Ljava/lang/String;
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1, v8}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listItem(ZLjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 646
    .local v15, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-eqz v15, :cond_8

    .line 647
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_7
    :goto_4
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_8

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 648
    .local v14, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v14, :cond_7

    .line 651
    iget-wide v10, v14, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 652
    .local v10, "id":J
    iget-object v0, v14, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 653
    .restart local v20    # "pkg":Ljava/lang/String;
    iget-object v7, v14, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    .line 655
    .restart local v7    # "cmp":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ";"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 656
    .restart local v16    # "key":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    .line 657
    .restart local v5    # "app":Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    if-eqz v5, :cond_7

    .line 661
    invoke-virtual {v5}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->getRealName()Ljava/lang/String;

    move-result-object v21

    .line 662
    .local v21, "realName":Ljava/lang/String;
    if-eqz v21, :cond_7

    .line 666
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_7

    .line 668
    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 669
    .restart local v13    # "info":Landroid/content/pm/ResolveInfo;
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v6, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 674
    .end local v5    # "app":Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    .end local v7    # "cmp":Ljava/lang/String;
    .end local v10    # "id":J
    .end local v13    # "info":Landroid/content/pm/ResolveInfo;
    .end local v14    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v16    # "key":Ljava/lang/String;
    .end local v20    # "pkg":Ljava/lang/String;
    .end local v21    # "realName":Ljava/lang/String;
    :cond_8
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v30

    if-lez v30, :cond_c

    .line 675
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 676
    .local v28, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 677
    .local v12, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :cond_9
    :goto_5
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_a

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Long;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 678
    .restart local v10    # "id":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 679
    .restart local v13    # "info":Landroid/content/pm/ResolveInfo;
    if-eqz v13, :cond_9

    .line 680
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 681
    .restart local v20    # "pkg":Ljava/lang/String;
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 682
    .restart local v7    # "cmp":Ljava/lang/String;
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 683
    .local v27, "value":Landroid/content/ContentValues;
    const-string v30, "_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 684
    const-string v30, "packageName"

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const-string v30, "componentName"

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 689
    .end local v7    # "cmp":Ljava/lang/String;
    .end local v10    # "id":J
    .end local v13    # "info":Landroid/content/pm/ResolveInfo;
    .end local v20    # "pkg":Ljava/lang/String;
    .end local v27    # "value":Landroid/content/ContentValues;
    :cond_a
    sget-object v30, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v31, "DEBUG"

    const-string v32, "cleanInvalidItemData some app\'s name is changed"

    invoke-virtual/range {v30 .. v32}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_6
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_b

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    .line 691
    .local v9, "cv":Landroid/content/ContentValues;
    sget-object v31, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v32, "DEBUG"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "update component name with ==> "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 693
    .end local v9    # "cv":Landroid/content/ContentValues;
    :cond_b
    invoke-static/range {v28 .. v28}, Lcom/smartisanos/launcher/data/handler/ItemDB;->updateById(Ljava/util/List;)Z

    .line 695
    .end local v12    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v28    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_c
    return-void
.end method

.method private static verifyOverMaxCellCount()V
    .locals 29

    .prologue
    .line 1153
    invoke-static {}, Lcom/smartisanos/launcher/data/handler/ItemDB;->mapAllItemsByPageIndex()Ljava/util/Map;

    move-result-object v4

    .line 1154
    .local v4, "cachedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v24

    if-nez v24, :cond_1

    .line 1229
    :cond_0
    return-void

    .line 1157
    :cond_1
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1158
    .local v17, "overLimitedItems":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-static {}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getInstance()Lcom/smartisanos/launcher/data/LauncherPreferences;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getCurrentBaseMode()I

    move-result v2

    .line 1159
    .local v2, "baseMode":I
    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->getCellNumByMode(I)I

    move-result v14

    .line 1160
    .local v14, "maxCellCount":I
    sget v24, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static/range {v24 .. v24}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v24

    move-object/from16 v0, v24

    iget v15, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_app_count:I

    .line 1162
    .local v15, "maxDockCellCount":I
    const/16 v24, -0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 1163
    .local v7, "dockItemList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    const/4 v8, 0x0

    .line 1164
    .local v8, "error":Z
    if-eqz v7, :cond_3

    .line 1165
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 1166
    .local v6, "dockCellCount":I
    if-le v6, v15, :cond_3

    .line 1167
    sget-object v24, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v25, "DEBUG"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "verifyOverMaxCellCount dock cell count ["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "] at dock over max value ["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    const/4 v8, 0x1

    .line 1169
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_2
    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_3

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1170
    .local v11, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    iget v0, v11, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v0, v15, :cond_2

    .line 1171
    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1177
    .end local v6    # "dockCellCount":I
    .end local v11    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_3
    new-instance v20, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1178
    .local v20, "pageIndexList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_4
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_6

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 1179
    .local v10, "index":Ljava/lang/Integer;
    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 1180
    .local v13, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v22

    .line 1181
    .local v22, "size":I
    move/from16 v0, v22

    if-le v0, v14, :cond_4

    .line 1182
    sget-object v25, Lcom/smartisanos/launcher/data/DatabaseHandler;->log:Lcom/smartisanos/launcher/LOG;

    const-string v26, "DEBUG"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "verifyOverMaxCellCount cell count ["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "] at page index ["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "] over limited value ["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "]"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    const/4 v8, 0x1

    .line 1184
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_5
    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_4

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1185
    .restart local v11    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    iget v0, v11, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-lt v0, v14, :cond_5

    .line 1186
    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1192
    .end local v10    # "index":Ljava/lang/Integer;
    .end local v11    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v13    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v22    # "size":I
    :cond_6
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v16

    .line 1193
    .local v16, "overLimitedItemSize":I
    if-lez v16, :cond_b

    .line 1194
    div-int v18, v16, v14

    .line 1195
    .local v18, "pageCount":I
    rem-int v24, v16, v14

    if-lez v24, :cond_7

    .line 1196
    add-int/lit8 v18, v18, 0x1

    .line 1198
    :cond_7
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    .line 1199
    .local v3, "biggestPageIndex":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1200
    .local v12, "itemValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1201
    .local v21, "pageValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move/from16 v0, v18

    if-ge v9, v0, :cond_a

    .line 1202
    add-int v19, v3, v9

    .line 1203
    .local v19, "pageIndex":I
    const/4 v5, 0x0

    .local v5, "cellIndex":I
    :goto_3
    if-ge v5, v14, :cond_8

    .line 1204
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v24

    if-nez v24, :cond_9

    .line 1213
    :cond_8
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 1214
    .local v23, "value":Landroid/content/ContentValues;
    const-string v24, "pageIndex"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1215
    const-string v24, "pageTitle"

    const-string v25, ""

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    const-string v24, "status"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1217
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1201
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1207
    .end local v23    # "value":Landroid/content/ContentValues;
    :cond_9
    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1208
    .restart local v11    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    move/from16 v0, v19

    iput v0, v11, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 1209
    iput v5, v11, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 1210
    invoke-static {v11}, Lcom/smartisanos/launcher/data/ItemInfo;->convertItemInfoToContentValues(Lcom/smartisanos/launcher/data/ItemInfo;)Landroid/content/ContentValues;

    move-result-object v23

    .line 1211
    .restart local v23    # "value":Landroid/content/ContentValues;
    move-object/from16 v0, v23

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1203
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1219
    .end local v5    # "cellIndex":I
    .end local v11    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v19    # "pageIndex":I
    .end local v23    # "value":Landroid/content/ContentValues;
    :cond_a
    invoke-static {v12}, Lcom/smartisanos/launcher/data/handler/ItemDB;->updateById(Ljava/util/List;)Z

    .line 1220
    invoke-static/range {v21 .. v21}, Lcom/smartisanos/launcher/data/handler/PageDB;->updatePagesDataByIndex(Ljava/util/List;)Z

    .line 1221
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->dumpDatabase()V

    .line 1223
    .end local v3    # "biggestPageIndex":I
    .end local v9    # "i":I
    .end local v12    # "itemValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v18    # "pageCount":I
    .end local v21    # "pageValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_b
    if-eqz v8, :cond_0

    .line 1224
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->dumpDatabase()V

    .line 1225
    sget-boolean v24, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v24, :cond_0

    .line 1226
    new-instance v24, Ljava/lang/IllegalArgumentException;

    const-string v25, "verifyOverMaxCellCount err"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v24
.end method
