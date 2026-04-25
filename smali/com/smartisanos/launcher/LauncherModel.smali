.class public Lcom/smartisanos/launcher/LauncherModel;
.super Ljava/lang/Object;
.source "LauncherModel.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static mIsDirtyMode:Z

.field private static mModel:Lcom/smartisanos/launcher/LauncherModel;

.field public static final pageInfoListWhenStartUp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sItemInfoIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/smartisanos/launcher/LauncherModel;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/smartisanos/launcher/LauncherModel;->mIsDirtyMode:Z

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/LauncherModel;->pageInfoListWhenStartUp:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/LauncherModel;->sItemInfoIdMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    return-void
.end method

.method public static appMsgFlagRedirection(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 691
    if-nez p0, :cond_1

    .line 692
    const/4 p0, 0x0

    .line 697
    .end local p0    # "pkg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 694
    .restart local p0    # "pkg":Ljava/lang/String;
    :cond_1
    const-string v0, "com.android.providers.telephony"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    sget-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->MMS:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    iget-object p0, v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    goto :goto_0
.end method

.method public static clearRamData()V
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/smartisanos/launcher/LauncherModel;->sItemInfoIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 105
    return-void
.end method

.method public static cloneItemMapForIconSort()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    const/4 v3, 0x0

    .line 84
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    sget-object v4, Lcom/smartisanos/launcher/LauncherModel;->sItemInfoIdMap:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 85
    const/4 v3, 0x0

    .line 93
    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    return-object v3

    .line 87
    .end local v1    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    sget-object v4, Lcom/smartisanos/launcher/LauncherModel;->sItemInfoIdMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    .restart local v1    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 89
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 90
    .local v0, "id":Ljava/lang/Long;
    sget-object v5, Lcom/smartisanos/launcher/LauncherModel;->sItemInfoIdMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 91
    .local v2, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-wide v6, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->cloneForSort()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static convertItemInfoToContentValues(Lcom/smartisanos/launcher/data/ItemInfo;)Landroid/content/ContentValues;
    .locals 5
    .param p0, "info"    # Lcom/smartisanos/launcher/data/ItemInfo;

    .prologue
    const/4 v2, 0x0

    .line 507
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 508
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "itemType"

    iget-byte v4, p0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 509
    const-string v3, "pageIndex"

    iget v4, p0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 510
    const-string v3, "cellIndex"

    iget v4, p0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 511
    const-string v3, "messagesNumber"

    iget v4, p0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 512
    const-string v3, "iconName"

    iget-object v4, p0, Lcom/smartisanos/launcher/data/ItemInfo;->iconDrawableName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-byte v3, p0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    packed-switch v3, :pswitch_data_0

    .line 532
    :goto_0
    return-object v1

    :pswitch_0
    move-object v0, p0

    .line 515
    check-cast v0, Lcom/smartisanos/launcher/data/ApplicationInfo;

    .line 516
    .local v0, "appInfo":Lcom/smartisanos/launcher/data/ApplicationInfo;
    const-string v3, "title"

    iget-object v4, v0, Lcom/smartisanos/launcher/data/ApplicationInfo;->title:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v3, "origin_index"

    iget-object v4, p0, Lcom/smartisanos/launcher/data/ItemInfo;->originIndex:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v3, "qwerty_index"

    iget-object v4, p0, Lcom/smartisanos/launcher/data/ItemInfo;->qwertyIndex:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v3, "t9_index"

    iget-object v4, p0, Lcom/smartisanos/launcher/data/ItemInfo;->t9Index:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v3, "packageName"

    iget-object v4, v0, Lcom/smartisanos/launcher/data/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v3, "componentName"

    iget-object v4, v0, Lcom/smartisanos/launcher/data/ApplicationInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v3, "newlyInstalled"

    iget-boolean v4, v0, Lcom/smartisanos/launcher/data/ApplicationInfo;->isNewlyInstalled:Z

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .end local v0    # "appInfo":Lcom/smartisanos/launcher/data/ApplicationInfo;
    :pswitch_1
    move-object v0, p0

    .line 526
    check-cast v0, Lcom/smartisanos/launcher/data/ShortcutInfo;

    .line 527
    .local v0, "appInfo":Lcom/smartisanos/launcher/data/ShortcutInfo;
    const-string v3, "title"

    iget-object v4, v0, Lcom/smartisanos/launcher/data/ShortcutInfo;->title:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v3, "intent"

    iget-object v4, v0, Lcom/smartisanos/launcher/data/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 513
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createApplicationInfoFromResolveInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Lcom/smartisanos/launcher/data/ApplicationInfo;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rsv"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v7, 0x0

    .line 482
    if-nez p1, :cond_0

    .line 483
    sget-object v4, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    const-string v6, "createFromResolveInfo return null by ResolveInfo is null"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const/4 v2, 0x0

    .line 503
    :goto_0
    return-object v2

    .line 486
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 487
    .local v3, "manager":Landroid/content/pm/PackageManager;
    new-instance v2, Lcom/smartisanos/launcher/data/ApplicationInfo;

    invoke-direct {v2}, Lcom/smartisanos/launcher/data/ApplicationInfo;-><init>()V

    .line 488
    .local v2, "info":Lcom/smartisanos/launcher/data/ApplicationInfo;
    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/smartisanos/launcher/data/ApplicationInfo;->title:Ljava/lang/String;

    .line 489
    iget-object v4, v2, Lcom/smartisanos/launcher/data/ApplicationInfo;->title:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/smartisanos/launcher/data/ApplicationInfo;->title:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 490
    :cond_1
    sget-object v4, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    const-string v6, "createFromResolveInfo return null by title is empty !"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v4, " "

    iput-object v4, v2, Lcom/smartisanos/launcher/data/ApplicationInfo;->title:Ljava/lang/String;

    .line 493
    :cond_2
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v4, v2, Lcom/smartisanos/launcher/data/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 494
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v4, v2, Lcom/smartisanos/launcher/data/ApplicationInfo;->componentName:Ljava/lang/String;

    .line 495
    iput-byte v7, v2, Lcom/smartisanos/launcher/data/ApplicationInfo;->itemType:B

    .line 496
    iput v7, v2, Lcom/smartisanos/launcher/data/ApplicationInfo;->messagesNumber:I

    .line 497
    new-instance v4, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    iget-object v5, v2, Lcom/smartisanos/launcher/data/ApplicationInfo;->title:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/smartisanos/quicksearchbox/util/IndexUtil;->parsePinYinUnit(Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;)[Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, "index":[Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v4, v1, v4

    iput-object v4, v2, Lcom/smartisanos/launcher/data/ApplicationInfo;->originIndex:Ljava/lang/String;

    .line 499
    aget-object v4, v1, v7

    iput-object v4, v2, Lcom/smartisanos/launcher/data/ApplicationInfo;->qwertyIndex:Ljava/lang/String;

    .line 500
    const/4 v4, 0x1

    aget-object v4, v1, v4

    iput-object v4, v2, Lcom/smartisanos/launcher/data/ApplicationInfo;->t9Index:Ljava/lang/String;

    .line 501
    invoke-static {p1, p0}, Lcom/smartisanos/launcher/data/Utils;->getIconDrawableName(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "drawableName":Ljava/lang/String;
    iput-object v0, v2, Lcom/smartisanos/launcher/data/ApplicationInfo;->iconDrawableName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static createFromResolveInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Lcom/smartisanos/launcher/data/ItemInfo;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rsv"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v6, 0x0

    .line 227
    if-nez p1, :cond_1

    .line 228
    sget-object v3, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    const-string v5, "createFromResolveInfo return null by ResolveInfo is null"

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/4 v1, 0x0

    .line 250
    :cond_0
    return-object v1

    .line 231
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 232
    .local v2, "manager":Landroid/content/pm/PackageManager;
    new-instance v1, Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-direct {v1}, Lcom/smartisanos/launcher/data/ItemInfo;-><init>()V

    .line 233
    .local v1, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    invoke-virtual {p1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    .line 234
    iget-object v3, v1, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 235
    :cond_2
    sget-object v3, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    const-string v5, "createFromResolveInfo return null by title is empty !"

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v3, " "

    iput-object v3, v1, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    .line 238
    :cond_3
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v3, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 239
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v3, v1, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    .line 240
    new-instance v3, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    iget-object v4, v1, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/smartisanos/quicksearchbox/util/IndexUtil;->parsePinYinUnit(Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;)[Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "index":[Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v3, v0, v3

    iput-object v3, v1, Lcom/smartisanos/launcher/data/ItemInfo;->originIndex:Ljava/lang/String;

    .line 242
    aget-object v3, v0, v6

    iput-object v3, v1, Lcom/smartisanos/launcher/data/ItemInfo;->qwertyIndex:Ljava/lang/String;

    .line 243
    const/4 v3, 0x1

    aget-object v3, v0, v3

    iput-object v3, v1, Lcom/smartisanos/launcher/data/ItemInfo;->t9Index:Ljava/lang/String;

    .line 244
    iput-byte v6, v1, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    .line 245
    iput v6, v1, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    .line 246
    invoke-static {p1, p0}, Lcom/smartisanos/launcher/data/Utils;->getIconDrawableName(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/smartisanos/launcher/data/ItemInfo;->iconDrawableName:Ljava/lang/String;

    .line 247
    iget-object v3, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 248
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "lose package name"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static dumpItemMap()V
    .locals 10

    .prologue
    .line 126
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load item count ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/smartisanos/launcher/LauncherModel;->sItemInfoIdMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 127
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    sget-object v4, Lcom/smartisanos/launcher/LauncherModel;->sItemInfoIdMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 128
    .local v2, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "################################ item table ############################"

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 129
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 130
    .local v0, "id":J
    sget-object v4, Lcom/smartisanos/launcher/LauncherModel;->sItemInfoIdMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 131
    .local v3, "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pid ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], cid ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], id ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    .end local v0    # "id":J
    .end local v3    # "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_3
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "########################################################################"

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 134
    :cond_4
    return-void
.end method

.method public static execCommand(Ljava/lang/String;)V
    .locals 7
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 114
    .local v4, "runtime":Ljava/lang/Runtime;
    :try_start_0
    invoke-virtual {v4, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 115
    .local v2, "process":Ljava/lang/Process;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 116
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 117
    .local v1, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 118
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "A140"

    invoke-virtual {v5, v6, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "process":Ljava/lang/Process;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 123
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    return-void
.end method

.method public static findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 609
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 610
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 611
    .local v2, "mainIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 614
    const-string v4, "com.sec.android.daemonapp"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_weather_skip

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/LauncherModel;->appendSpecialWeatherResolveInfos(Landroid/content/Context;Ljava/util/List;)V

    .line 614
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_weather_skip
    if-eqz v0, :cond_1

    .line 615
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 616
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget v5, v1, Landroid/content/pm/ResolveInfo;->icon:I

    if-nez v5, :cond_0

    .line 617
    sget-object v4, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "icon id == 0 for cmp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 622
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    if-eqz v0, :cond_2

    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-object v0

    .restart local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public static getAllAppsInfo(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 461
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 462
    .local v5, "manager":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    const/4 v9, 0x0

    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 463
    .local v4, "mainIntent":Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    const/4 v8, 0x0

    invoke-virtual {v5, v4, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 465
    .local v3, "mAllApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .line 466
    .local v1, "debug":Z
    if-eqz v1, :cond_0

    .line 467
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 468
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 469
    .local v7, "pkg":Ljava/lang/String;
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 470
    .local v0, "cmp":Ljava/lang/String;
    invoke-virtual {v2, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 471
    .local v6, "name":Ljava/lang/String;
    sget-object v9, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DUMP ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "], ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "], ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 474
    .end local v0    # "cmp":Ljava/lang/String;
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "pkg":Ljava/lang/String;
    :cond_0
    invoke-static {p0, v3}, Lcom/smartisanos/launcher/LauncherModel;->appendSpecialWeatherResolveInfos(Landroid/content/Context;Ljava/util/List;)V

    return-object v3
.end method

.method private static appendSpecialWeatherResolveInfos(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apps"    # Ljava/util/List;
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
    if-eqz p1, :cond_0

    const-string v0, "com.sec.android.daemonapp"

    const-string v1, "com.samsung.android.weather.app.AppSearchableActivity"

    invoke-static {p1, v0, v1}, Lcom/smartisanos/launcher/LauncherModel;->containsResolveInfo(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0, v1}, Lcom/smartisanos/launcher/LauncherModel;->createResolveInfoForActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static containsResolveInfo(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "apps"    # Ljava/util/List;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cmp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    :cond_2
    return v4
.end method

.method private static createResolveInfoForActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cmp"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v2, Landroid/content/pm/PackageItemInfo;->icon:I

    iput v4, v3, Landroid/content/pm/ResolveInfo;->icon:I

    iget v4, v2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    iput v4, v3, Landroid/content/pm/ResolveInfo;->labelRes:I

    iget-object v4, v2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v4, v3, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object p1, v3, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :cond_0

    :catch_0
    move-exception v5

    goto :cond_0
.end method

.method public static getAppInfos(I)Ljava/util/ArrayList;
    .locals 11
    .param p0, "pageIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v5, "retArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Lcom/smartisanos/launcher/LauncherModel;->getItemMap()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 143
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 144
    .local v1, "id":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/smartisanos/launcher/LauncherModel;->getItemInfo(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    .line 145
    .local v3, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    iget v7, v3, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    if-ne v7, p0, :cond_0

    .line 146
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    .end local v1    # "id":Ljava/lang/Long;
    .end local v3    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v4, v6, [Lcom/smartisanos/launcher/data/ItemInfo;

    .line 150
    .local v4, "infos":[Lcom/smartisanos/launcher/data/ItemInfo;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 151
    .restart local v3    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    iget v7, v3, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    aput-object v3, v4, v7

    .line 152
    iget-object v7, v3, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    if-nez v7, :cond_2

    .line 153
    sget-object v7, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "DEBUG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAppInfos lose icon data ==> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/ItemInfo;->toSimpleInfo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 156
    .end local v3    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v6, v4

    if-ge v0, v6, :cond_4

    .line 158
    aget-object v6, v4, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 160
    :cond_4
    return-object v5
.end method

.method public static getBitmap(J)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "id"    # J

    .prologue
    .line 164
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/LauncherModel;->getItemInfo(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    .line 165
    .local v2, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    if-nez v2, :cond_1

    .line 166
    const/4 v0, 0x0

    .line 178
    :cond_0
    :goto_0
    return-object v0

    .line 168
    :cond_1
    const/4 v1, 0x0

    .line 169
    .local v1, "buffer":[B
    const/4 v0, 0x0

    .line 170
    .local v0, "bmap":Landroid/graphics/Bitmap;
    iget-object v1, v2, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    .line 171
    if-eqz v1, :cond_2

    .line 172
    invoke-static {v1}, Lcom/smartisanos/launcher/data/Utils;->iconDataToBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    :cond_2
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public static getIconDataContentValues(JLandroid/content/pm/ResolveInfo;Landroid/content/Context;Z)Landroid/content/ContentValues;
    .locals 4
    .param p0, "itemId"    # J
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "isSystemApp"    # Z

    .prologue
    .line 299
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 300
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {p2, v1}, Lcom/smartisanos/launcher/data/Utils;->loadIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 301
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, p1, v2, v0, p4}, Lcom/smartisanos/launcher/LauncherModel;->getIconDataContentValues(JLjava/lang/String;Landroid/graphics/drawable/Drawable;Z)Landroid/content/ContentValues;

    move-result-object v2

    return-object v2
.end method

.method public static getIconDataContentValues(JLjava/lang/String;Landroid/graphics/Bitmap;Z)Landroid/content/ContentValues;
    .locals 32
    .param p0, "itemId"    # J
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "isSystemApp"    # Z

    .prologue
    .line 318
    const-wide/16 v28, 0x0

    cmp-long v27, p0, v28

    if-gtz v27, :cond_0

    .line 319
    const/4 v11, 0x0

    .line 414
    :goto_0
    return-object v11

    .line 321
    :cond_0
    if-nez p2, :cond_1

    .line 322
    sget-object v27, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    const-string v28, "getIconDataContentValues pkg is null"

    invoke-virtual/range {v27 .. v28}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 323
    const/4 v11, 0x0

    goto :goto_0

    .line 325
    :cond_1
    if-nez p3, :cond_2

    .line 326
    sget-object v27, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    const-string v28, "getIconDataContentValues bitmap is null"

    invoke-virtual/range {v27 .. v28}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 327
    const/4 v11, 0x0

    goto :goto_0

    .line 329
    :cond_2
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 330
    .local v11, "cv":Landroid/content/ContentValues;
    const/4 v12, 0x0

    .line 331
    .local v12, "darkShadowIcon":[B
    const/16 v20, 0x0

    .line 332
    .local v20, "lightShadowIcon":[B
    invoke-static/range {p3 .. p3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->calculateIconColor(Landroid/graphics/Bitmap;)Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    move-result-object v15

    .line 333
    .local v15, "iconColorInfo":Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    sget-boolean v27, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v27, :cond_3

    sget-object v27, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "["

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "]["

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "], isSystem:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", resize:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-boolean v0, v15, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->resize:Z

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 336
    :cond_3
    const/16 v19, 0x0

    .line 337
    .local v19, "justShadow":Z
    if-eqz p2, :cond_6

    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->isActiveIconApp(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 338
    const/16 v19, 0x1

    .line 339
    const/4 v8, 0x0

    .line 340
    .local v8, "btm":Landroid/graphics/Bitmap;
    sget-object v27, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->CALENDAR:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 341
    const-string v27, "calendar/bg.png"

    invoke-static/range {v27 .. v27}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 346
    :cond_4
    :goto_1
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v27

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_origin:F

    move/from16 v28, v0

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_5

    .line 348
    const/16 v22, 0x0

    .line 349
    .local v22, "sbm":Landroid/graphics/Bitmap;
    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_origin:F

    move/from16 v27, v0

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    const/16 v28, 0x1

    .line 350
    invoke-static/range {v28 .. v28}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_origin:F

    move/from16 v28, v0

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    const/16 v29, 0x1

    .line 349
    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v8, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 351
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 352
    const/4 v8, 0x0

    .line 353
    move-object/from16 v8, v22

    .line 355
    .end local v22    # "sbm":Landroid/graphics/Bitmap;
    :cond_5
    if-eqz v8, :cond_6

    .line 356
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 357
    const/16 p3, 0x0

    .line 358
    move-object/from16 p3, v8

    .line 361
    .end local v8    # "btm":Landroid/graphics/Bitmap;
    :cond_6
    const/16 v18, 0x0

    .line 362
    .local v18, "isPreinstalled":Z
    if-eqz p2, :cond_7

    invoke-static/range {p2 .. p2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->isPreinstalledApp(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 363
    const/16 v18, 0x1

    .line 365
    :cond_7
    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_origin:F

    move/from16 v27, v0

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v25, v0

    .line 366
    .local v25, "w":I
    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_origin_resize:F

    move/from16 v27, v0

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v26, v0

    .line 367
    .local v26, "wr":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 368
    .local v17, "imgWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 369
    .local v16, "imgHeight":I
    const/16 v23, 0x0

    .line 370
    .local v23, "smallIcon":Z
    move/from16 v0, v17

    move/from16 v1, v25

    if-ge v0, v1, :cond_8

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_8

    .line 371
    const/16 v23, 0x1

    .line 374
    :cond_8
    sub-int v27, v25, v26

    div-int/lit8 v24, v27, 0x2

    .line 375
    .local v24, "start":I
    sub-int v14, v25, v24

    .line 376
    .local v14, "end":I
    if-eqz p2, :cond_9

    if-nez v19, :cond_9

    if-nez p4, :cond_9

    if-nez v18, :cond_9

    if-eqz v15, :cond_9

    iget-boolean v0, v15, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->resize:Z

    move/from16 v27, v0

    if-eqz v27, :cond_9

    if-nez v23, :cond_9

    .line 383
    sget-object v27, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    const-string v28, "DEBUG"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "resize pkg:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", isPreinstalled:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", isSystem:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", justShow:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", resize:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget-boolean v0, v15, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->resize:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", smallIcon:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    sget-object v27, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v25

    move/from16 v1, v25

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 386
    .local v7, "btResize":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 387
    .local v9, "canvas":Landroid/graphics/Canvas;
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    .line 388
    .local v21, "paint":Landroid/graphics/Paint;
    const/16 v27, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 389
    const/16 v27, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 390
    new-instance v27, Landroid/graphics/Rect;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v25

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v28, Landroid/graphics/Rect;

    move-object/from16 v0, v28

    move/from16 v1, v24

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v14, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v21

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 391
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 392
    const/16 p3, 0x0

    .line 393
    move-object/from16 p3, v7

    .line 395
    .end local v7    # "btResize":Landroid/graphics/Bitmap;
    .end local v9    # "canvas":Landroid/graphics/Canvas;
    .end local v21    # "paint":Landroid/graphics/Paint;
    :cond_9
    const/16 v27, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v27

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/smartisanos/launcher/data/Utils;->generateShadowIcons(Landroid/graphics/Bitmap;ZZ)[Landroid/graphics/Bitmap;

    move-result-object v6

    .line 396
    .local v6, "bitmaps":[Landroid/graphics/Bitmap;
    const/16 v27, 0x0

    aget-object v27, v6, v27

    invoke-static/range {v27 .. v27}, Lcom/smartisanos/launcher/data/Utils;->Bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v12

    .line 397
    const/16 v27, 0x1

    aget-object v27, v6, v27

    invoke-static/range {v27 .. v27}, Lcom/smartisanos/launcher/data/Utils;->Bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 401
    .end local v6    # "bitmaps":[Landroid/graphics/Bitmap;
    .end local v14    # "end":I
    .end local v16    # "imgHeight":I
    .end local v17    # "imgWidth":I
    .end local v18    # "isPreinstalled":Z
    .end local v23    # "smallIcon":Z
    .end local v24    # "start":I
    .end local v25    # "w":I
    .end local v26    # "wr":I
    :goto_2
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v27

    if-nez v27, :cond_a

    .line 402
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 404
    :cond_a
    const/4 v10, 0x0

    .line 405
    .local v10, "colorInfo":Ljava/lang/String;
    if-eqz v15, :cond_c

    .line 406
    invoke-virtual {v15}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->toString()Ljava/lang/String;

    move-result-object v10

    .line 410
    :goto_3
    const-string v27, "owner"

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 411
    const-string v27, "color_info"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v27, "dark_icon"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 413
    const-string v27, "light_icon"

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 342
    .end local v10    # "colorInfo":Ljava/lang/String;
    .restart local v8    # "btm":Landroid/graphics/Bitmap;
    :cond_b
    :try_start_1
    sget-object v27, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->WEATHER:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 343
    const-string v27, "weather/weather_bg.png"

    invoke-static/range {v27 .. v27}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto/16 :goto_1

    .line 398
    .end local v8    # "btm":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v13

    .line 399
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 408
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v10    # "colorInfo":Ljava/lang/String;
    :cond_c
    sget-object v27, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    const-string v28, "DEBUG"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "getIconDataContentValues error by can\'t generate color info for id ["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static getIconDataContentValues(JLjava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/content/ContentValues;
    .locals 2
    .param p0, "itemId"    # J
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/smartisanos/launcher/LauncherModel;->getIconDataContentValues(JLjava/lang/String;Landroid/graphics/drawable/Drawable;Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDataContentValues(JLjava/lang/String;Landroid/graphics/drawable/Drawable;Z)Landroid/content/ContentValues;
    .locals 4
    .param p0, "itemId"    # J
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "isSystemApp"    # Z

    .prologue
    .line 309
    invoke-static {p3}, Lcom/smartisanos/launcher/data/Utils;->drawableToBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 310
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 311
    sget-object v1, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "getIconDataContentValues bitmap is null !"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 312
    const/4 v1, 0x0

    .line 314
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, p1, p2, v0, p4}, Lcom/smartisanos/launcher/LauncherModel;->getIconDataContentValues(JLjava/lang/String;Landroid/graphics/Bitmap;Z)Landroid/content/ContentValues;

    move-result-object v1

    goto :goto_0
.end method

.method public static getIconDataContentValues(Lcom/smartisanos/launcher/data/ItemInfo;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Landroid/content/ContentValues;
    .locals 3
    .param p0, "item"    # Lcom/smartisanos/launcher/data/ItemInfo;
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 295
    iget-wide v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    iget-boolean v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    invoke-static {v0, v1, p1, p2, v2}, Lcom/smartisanos/launcher/LauncherModel;->getIconDataContentValues(JLandroid/content/pm/ResolveInfo;Landroid/content/Context;Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public static getItemInfo(J)Lcom/smartisanos/launcher/data/ItemInfo;
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 73
    sget-object v0, Lcom/smartisanos/launcher/LauncherModel;->sItemInfoIdMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/ItemInfo;

    return-object v0
.end method

.method public static getItemMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    sget-object v0, Lcom/smartisanos/launcher/LauncherModel;->sItemInfoIdMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getResolveInfos(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 12
    .param p0, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 585
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 586
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/ResolveInfo;>;"
    invoke-static {p0}, Lcom/smartisanos/launcher/LauncherModel;->getAllAppsInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    .line 587
    .local v7, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .local v6, "pkgBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v10, Lcom/smartisanos/launcher/data/Constants;->BLACK_PACKAGE_LIST:[Ljava/lang/String;

    array-length v11, v10

    move v9, v8

    :goto_0
    if-ge v9, v11, :cond_0

    aget-object v5, v10, v9

    .line 589
    .local v5, "pkg":Ljava/lang/String;
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 591
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .local v1, "cmpBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v9, Lcom/smartisanos/launcher/data/Constants;->BLACK_COMPONENT_LIST:[Ljava/lang/String;

    array-length v10, v9

    :goto_1
    if-ge v8, v10, :cond_1

    aget-object v0, v9, v8

    .line 593
    .local v0, "cmp":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 595
    .end local v0    # "cmp":Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 596
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 599
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 600
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 603
    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 605
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "key":Ljava/lang/String;
    :cond_3
    return-object v4
.end method

.method public static handleOnNewMessage(Landroid/content/Intent;)V
    .locals 12
    .param p0, "intent"    # Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v8, "extra_packagename"

    invoke-virtual {p0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "extra_componentname"

    invoke-virtual {p0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_pkg_from_component

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_pkg_from_component

    goto :cond_pkg_ready

    :cond_pkg_from_component
    const-string v8, "android.intent.extra.update_application_component_name"

    invoke-virtual {p0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_parse_component

    const-string v8, "com.htc.launcher.extra.COMPONENT"

    invoke-virtual {p0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_parse_component
    if-eqz v3, :cond_pkg_from_badge_package

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_pkg_from_badge_package

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :cond_pkg_from_badge_package
    if-eqz v2, :cond_read_badge_pkg

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_read_badge_pkg

    goto :cond_pkg_ready

    :cond_read_badge_pkg
    const-string v8, "badge_count_package_name"

    invoke-virtual {p0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_pkg_from_sony

    const-string v8, "badge_count_class_name"

    invoke-virtual {p0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_pkg_from_sony
    if-eqz v2, :cond_read_sony_pkg

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_read_sony_pkg

    goto :cond_pkg_ready

    :cond_read_sony_pkg
    const-string v8, "com.sonyericsson.home.intent.extra.badge.PACKAGE_NAME"

    invoke-virtual {p0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_pkg_ready

    const-string v8, "com.sonyericsson.home.intent.extra.badge.ACTIVITY_NAME"

    invoke-virtual {p0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_pkg_ready
    if-eqz v0, :cond_count

    const-string v8, "."

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_count

    if-eqz v2, :cond_count

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_count
    if-eqz v2, :cond_log

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_log

    const-string v8, "extra_message_count"

    invoke-virtual {p0, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_count_fallback

    const-string v8, "extra_message_count"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    goto :cond_fix_negative

    :cond_count_fallback
    const-string v8, "badge_count"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v8, "com.htc.launcher.extra.COUNT"

    invoke-virtual {p0, v8, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_fix_negative

    const-string v8, "android.intent.extra.update_application_message_text"

    invoke-virtual {p0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_parse_text

    const-string v8, "com.sonyericsson.home.intent.extra.badge.MESSAGE"

    invoke-virtual {p0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_parse_text
    if-eqz v5, :cond_fix_negative

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_try_parse_text

    const/4 v1, 0x0

    goto :cond_fix_negative

    :cond_try_parse_text
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :cond_fix_negative

    :catch_0
    const/4 v1, 0x1

    :cond_fix_negative
    if-gez v1, :cond_log

    const/4 v1, 0x0

    :cond_log
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RECV action=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] pkg=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] cmp=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] count=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "BadgeDiag"

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v0, v1}, Lcom/smartisanos/launcher/LauncherModel;->updateMessageCount(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static handleOnUpdateIcon(Landroid/content/Intent;)V
    .locals 8
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 734
    const-string v7, "extra_packagename"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 735
    .local v2, "extraData":Ljava/lang/String;
    const/4 v5, 0x0

    .line 736
    .local v5, "infos":[Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    if-eqz v2, :cond_0

    .line 738
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 739
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v5, v7, [Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    .line 740
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v5

    if-ge v3, v7, :cond_0

    .line 741
    new-instance v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    invoke-direct {v4}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;-><init>()V

    .line 742
    .local v4, "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 743
    .local v6, "obj":Lorg/json/JSONObject;
    const-string v7, "package"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    .line 744
    const-string v7, "component"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->componentName:Ljava/lang/String;

    .line 745
    const-string v7, "use"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->useImprovedAppIcon:Z

    .line 746
    aput-object v4, v5, v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 748
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v4    # "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .end local v6    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 749
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 753
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    if-eqz v5, :cond_1

    array-length v7, v5

    if-lez v7, :cond_1

    .line 754
    invoke-static {v5}, Lcom/smartisanos/launcher/LauncherModel;->updateAppIcon([Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V

    .line 765
    :cond_1
    return-void
.end method

.method public static insertPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 270
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/LauncherModel;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 271
    .local v2, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->isInBlackPkgList(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 272
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insertPackage return by pkg in black list ! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insertPackage begin ! matches size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", packageName ==> ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 277
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v4, "resInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 279
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->isInBlackCmpList(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 283
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 285
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    .end local v1    # "key":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v3, "params":Ljava/util/ArrayList;
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    sget-object v5, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_INSERT_APP:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 290
    .end local v3    # "params":Ljava/util/ArrayList;
    .end local v4    # "resInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_5
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    const-string v7, "insertPackage matches size == 0"

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static isDirtyMode()Z
    .locals 1

    .prologue
    .line 642
    sget-boolean v0, Lcom/smartisanos/launcher/LauncherModel;->mIsDirtyMode:Z

    return v0
.end method

.method public static mapResolveInfo(Landroid/content/Context;)Ljava/util/Map;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 536
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 537
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/ResolveInfo;>;>;"
    invoke-static/range {p0 .. p0}, Lcom/smartisanos/launcher/LauncherModel;->getAllAppsInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v13

    .line 538
    .local v13, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v12, "pkgBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "com.smartisanos.home;com.smartisanos.home.Launcher"

    .line 540
    .local v8, "launcher":Ljava/lang/String;
    sget-object v15, Lcom/smartisanos/launcher/data/Constants;->BLACK_PACKAGE_LIST:[Ljava/lang/String;

    array-length v0, v15

    move/from16 v16, v0

    const/4 v14, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_0

    aget-object v11, v15, v14

    .line 541
    .local v11, "pkg":Ljava/lang/String;
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 543
    .end local v11    # "pkg":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 544
    .local v3, "cmpBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v15, Lcom/smartisanos/launcher/data/Constants;->BLACK_COMPONENT_LIST:[Ljava/lang/String;

    array-length v0, v15

    move/from16 v16, v0

    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_1

    aget-object v2, v15, v14

    .line 545
    .local v2, "cmp":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 547
    .end local v2    # "cmp":Ljava/lang/String;
    :cond_1
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 548
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    iget-object v15, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 549
    .restart local v11    # "pkg":Ljava/lang/String;
    iget-object v15, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 550
    .restart local v2    # "cmp":Ljava/lang/String;
    invoke-interface {v12, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 553
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 556
    const-string v15, "com.smartisanos.home"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 559
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 560
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v9, :cond_3

    .line 561
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 566
    .end local v2    # "cmp":Ljava/lang/String;
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "pkg":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x1

    .line 567
    .local v1, "DBG":Z
    if-eqz v1, :cond_7

    .line 568
    sget-object v14, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    const-string v15, "###### INSTALLED APPS ######"

    invoke-virtual {v14, v15}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 569
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 570
    .local v7, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 571
    .local v6, "key":Ljava/lang/String;
    sget-object v15, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "pkg  ["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 572
    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 573
    .local v5, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_5

    .line 574
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 575
    .restart local v4    # "info":Landroid/content/pm/ResolveInfo;
    sget-object v16, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "name ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_3

    .line 579
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    .end local v5    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "key":Ljava/lang/String;
    :cond_6
    sget-object v14, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    const-string v15, "############################"

    invoke-virtual {v14, v15}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 581
    .end local v7    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    return-object v10
.end method

.method public static removeItemDataFromDataMap(Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 6
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p2, "finishCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v3, "itemInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 256
    .local v0, "id":J
    invoke-static {v0, v1}, Lcom/smartisanos/launcher/LauncherModel;->removeItemInfo(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    .line 257
    .local v2, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v2, :cond_0

    .line 258
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    .end local v0    # "id":J
    .end local v2    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v4

    invoke-virtual {v4, p0, v3, p2}, Lcom/smartisanos/launcher/view/TrashView;->handleUninstallFinish(Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V

    .line 262
    return-void
.end method

.method public static removeItemInfo(J)Lcom/smartisanos/launcher/data/ItemInfo;
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 97
    sget-object v0, Lcom/smartisanos/launcher/LauncherModel;->sItemInfoIdMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/ItemInfo;

    return-object v0
.end method

.method public static removePackage(Ljava/lang/String;)V
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 422
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removePackage begin ! ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_0
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/home/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 425
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v1, "params":Ljava/util/ArrayList;
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    sget-object v2, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_REMOVE_APP:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 428
    return-void
.end method

.method public static setDirtyMode(Z)V
    .locals 0
    .param p0, "isDirty"    # Z

    .prologue
    .line 646
    sput-boolean p0, Lcom/smartisanos/launcher/LauncherModel;->mIsDirtyMode:Z

    .line 647
    return-void
.end method

.method public static setItemInfo(Lcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 4
    .param p0, "item"    # Lcom/smartisanos/launcher/data/ItemInfo;

    .prologue
    .line 77
    if-nez p0, :cond_0

    iget-wide v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 78
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/LauncherModel;->sItemInfoIdMap:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_1
    return-void
.end method

.method public static updateAppIcon([Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V
    .locals 4
    .param p0, "infos"    # [Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    .prologue
    .line 775
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v2

    sget-object v3, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->MAIN:Lcom/smartisanos/home/Launcher$RUNNING_ENV;

    invoke-virtual {v2, v3}, Lcom/smartisanos/home/Launcher;->verifyThread(Lcom/smartisanos/home/Launcher$RUNNING_ENV;)V

    .line 776
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v0

    .line 777
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 778
    .local v1, "params":Ljava/util/ArrayList;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    sget-object v2, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UPDATE_ICON:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 781
    return-void
.end method

.method public static updateAppIcon([Ljava/lang/String;)V
    .locals 5
    .param p0, "packageNames"    # [Ljava/lang/String;

    .prologue
    .line 661
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v3

    sget-object v4, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->MAIN:Lcom/smartisanos/home/Launcher$RUNNING_ENV;

    invoke-virtual {v3, v4}, Lcom/smartisanos/home/Launcher;->verifyThread(Lcom/smartisanos/home/Launcher$RUNNING_ENV;)V

    .line 662
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v0

    .line 663
    .local v0, "context":Landroid/content/Context;
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 664
    .local v2, "pkNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 665
    .local v1, "params":Ljava/util/ArrayList;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    sget-object v3, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UPDATE_ICON:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 668
    return-void
.end method

.method public static updateAppPackage(Ljava/lang/String;)V
    .locals 10
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 435
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 436
    :cond_0
    sget-object v6, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    const-string v8, "updateAppPackage return by packageName is null"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_1
    :goto_0
    return-void

    .line 439
    :cond_2
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->isInBlackPkgList(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 440
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateAppPackage return by pkg in black list, pkg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 443
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 444
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, p0}, Lcom/smartisanos/launcher/LauncherModel;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 445
    .local v3, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_4

    sget-object v6, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateAppPackage begin ! matches size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", packageName ==> ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .local v5, "resList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 448
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 449
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->isInBlackCmpList(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 452
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 454
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "key":Ljava/lang/String;
    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v4, "params":Ljava/util/ArrayList;
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    sget-object v6, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UPDATE_APP:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v7, 0x0

    invoke-static {v6, v7, v4}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public static updateDataForLocaleChange(Landroid/content/Context;)V
    .locals 28
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    sget-boolean v23, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v23, :cond_0

    sget-object v23, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    const-string v24, "DEBUG"

    const-string v25, "updateDataForLocaleChange begin !"

    invoke-virtual/range {v23 .. v25}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 184
    .local v14, "time1":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 185
    .local v11, "manager":Landroid/content/pm/PackageManager;
    invoke-static/range {p0 .. p0}, Lcom/smartisanos/launcher/LauncherModel;->getAllAppsInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v13

    .line 186
    .local v13, "rsvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 187
    .local v16, "time2":J
    sget-boolean v23, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v23, :cond_1

    sget-object v23, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "updateDataForLocaleChange getAllAppsInfo spend time ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sub-long v26, v16, v14

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "] ms"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 188
    :cond_1
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 189
    .local v10, "labelMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 190
    .local v12, "resolve":Landroid/content/pm/ResolveInfo;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 191
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v12, v11}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 192
    .local v9, "label":Ljava/lang/String;
    invoke-virtual {v10, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 194
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "label":Ljava/lang/String;
    .end local v12    # "resolve":Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 195
    .local v18, "time3":J
    sget-boolean v23, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v23, :cond_3

    sget-object v23, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "updateDataForLocaleChange setLanguage spend time ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sub-long v26, v18, v16

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "] ms"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 196
    :cond_3
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v22, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {}, Lcom/smartisanos/launcher/LauncherModel;->getItemMap()Ljava/util/HashMap;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 198
    .local v8, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_4
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_5

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 199
    .local v5, "id":Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Lcom/smartisanos/launcher/LauncherModel;->getItemInfo(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v6

    .line 200
    .local v6, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-byte v0, v6, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    move/from16 v24, v0

    if-nez v24, :cond_4

    .line 201
    invoke-virtual {v6}, Lcom/smartisanos/launcher/data/ItemInfo;->id()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 202
    .restart local v9    # "label":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 203
    iput-object v9, v6, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    .line 204
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 205
    .local v4, "cv":Landroid/content/ContentValues;
    const-string v24, "_id"

    iget-wide v0, v6, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 206
    const-string v24, "title"

    iget-object v0, v6, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 211
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v5    # "id":Ljava/lang/Long;
    .end local v6    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v9    # "label":Ljava/lang/String;
    :cond_5
    sget-object v23, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UPDATE_ITEM_TABLE:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;)V

    .line 212
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/LauncherPreferences;->setLocaleChangedStatus(Landroid/content/Context;Z)V

    .line 213
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/LauncherPreferences;->setLanguage(Landroid/content/Context;Ljava/lang/String;)V

    .line 214
    sget-boolean v23, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v23, :cond_6

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 216
    .local v20, "time4":J
    sget-object v23, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "updateDataForLocaleChange save value spend time ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sub-long v26, v20, v18

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "] ms"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 217
    sget-object v23, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "updateDataForLocaleChange total time ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sub-long v26, v20, v14

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "] ms"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 219
    .end local v20    # "time4":J
    :cond_6
    return-void
.end method

.method private static updateIcon([Ljava/lang/String;)V
    .locals 1
    .param p0, "packageNames"    # [Ljava/lang/String;

    .prologue
    .line 767
    if-eqz p0, :cond_0

    .line 768
    array-length v0, p0

    if-lez v0, :cond_0

    .line 769
    invoke-static {p0}, Lcom/smartisanos/launcher/LauncherModel;->updateAppIcon([Ljava/lang/String;)V

    .line 772
    :cond_0
    return-void
.end method

.method public static updateMapMsgNumber(JI)Lcom/smartisanos/launcher/data/ItemInfo;
    .locals 6
    .param p0, "id"    # J
    .param p2, "number"    # I

    .prologue
    .line 626
    const/4 v0, 0x0

    .line 627
    .local v0, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    move-wide v2, p0

    .line 628
    .local v2, "key":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 629
    invoke-static {v2, v3}, Lcom/smartisanos/launcher/LauncherModel;->getItemInfo(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    .line 630
    if-eqz v0, :cond_0

    .line 631
    iget-byte v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-nez v1, :cond_1

    .line 632
    iput p2, v0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    .line 638
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v1, v0

    .line 634
    check-cast v1, Lcom/smartisanos/launcher/data/ShortcutInfo;

    iput p2, v1, Lcom/smartisanos/launcher/data/ShortcutInfo;->messagesNumber:I

    goto :goto_0
.end method

.method public static updateMessageCount(Ljava/lang/String;I)V
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "count"    # I

    .prologue
    .line 687
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/smartisanos/launcher/LauncherModel;->updateMessageCount(Ljava/lang/String;Ljava/lang/String;I)V

    .line 688
    return-void
.end method

.method public static updateMessageCount(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "cmp"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 701
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v3

    if-nez v3, :cond_0

    .line 704
    sget-object v3, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Oooopse launcher application is null, pkg["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], count ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 731
    :goto_0
    return-void

    .line 707
    :cond_0
    if-nez p0, :cond_1

    .line 708
    sget-object v3, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "updateMessageCount return by pkg is null"

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 712
    :cond_1
    invoke-static {p0}, Lcom/smartisanos/launcher/LauncherModel;->appMsgFlagRedirection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 713
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/smartisanos/home/Launcher;->isSystemAppByPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 714
    .local v1, "isSystemApp":Z
    if-nez v1, :cond_2

    .line 715
    invoke-static {p0}, Lcom/smartisanos/launcher/actions/NumFlagWhiteList;->isForbidden(Ljava/lang/String;)Z

    move-result v0

    .line 716
    .local v0, "isForbidden":Z
    if-eqz v0, :cond_2

    .line 717
    sget-object v3, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "forbidden show number flag by pkg ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 721
    .end local v0    # "isForbidden":Z
    :cond_2
    if-gez p2, :cond_3

    .line 722
    const/4 p2, 0x0

    .line 725
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 726
    .local v2, "params":Ljava/util/ArrayList;
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/smartisanos/launcher/LauncherModel;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMessageCount pkg ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] count ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :cond_4
    sget-object v3, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UPDATE_MESSAGE_COUNT:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public static updateNewlyInstall(JZ)V
    .locals 6
    .param p0, "id"    # J
    .param p2, "isNewlyInstall"    # Z

    .prologue
    .line 651
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 652
    .local v1, "value":I
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 653
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 654
    const-string v3, "newlyInstalled"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 655
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .local v2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    sget-object v3, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UPDATE_ITEM:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 658
    return-void

    .line 651
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "value":I
    .end local v2    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
