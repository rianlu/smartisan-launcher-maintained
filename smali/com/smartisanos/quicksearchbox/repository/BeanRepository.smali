.class public Lcom/smartisanos/quicksearchbox/repository/BeanRepository;
.super Ljava/lang/Object;
.source "BeanRepository.java"

# interfaces
.implements Lcom/smartisanos/quicksearchbox/repository/BeanSource;


# static fields
.field private static INSTANCE:Lcom/smartisanos/quicksearchbox/repository/BeanRepository;


# instance fields
.field private mAppSearchIndexHelper:Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;

.field private mContactSearchIndexHelper:Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

.field private mContext:Landroid/content/Context;

.field private mProfileAppSearchHelper:Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;

.field private mRemoteContext:Landroid/content/Context;

.field private mResultBoxFragment:Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->INSTANCE:Lcom/smartisanos/quicksearchbox/repository/BeanRepository;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lcom/smartisanos/quicksearchbox/util/GuavaUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->mContext:Landroid/content/Context;

    .line 54
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->getInstance(Landroid/content/Context;)Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->mContactSearchIndexHelper:Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

    .line 55
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;->getInstance(Landroid/content/Context;)Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->mAppSearchIndexHelper:Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;

    .line 56
    new-instance v0, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;

    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->mProfileAppSearchHelper:Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;

    .line 57
    return-void
.end method

.method private appendProfileAppBeans(Ljava/util/List;Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;)V
    .locals 8
    .param p2, "appSearchBean"    # Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;",
            ">;",
            "Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "showAppResultBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;>;"
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->mProfileAppSearchHelper:Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;

    if-nez v0, :cond_0

    goto :goto_1

    .line 96
    :cond_0
    invoke-virtual {v0, p2}, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;->findProfileApps(Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;)Ljava/util/List;

    move-result-object v4

    .line 97
    .local v4, "profileApps":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    .line 101
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 103
    .local v0, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;

    .line 104
    .local v1, "profileAppSearchBean":Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;
    invoke-virtual {v1}, Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "showTitle":Ljava/lang/String;
    new-instance v3, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppItemClickListener;

    iget-object v5, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->mProfileAppSearchHelper:Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;

    invoke-direct {v3, v5, v6, v1}, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppItemClickListener;-><init>(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;)V

    .line 106
    .local v3, "baseItemOnClikcListener":Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;
    new-instance v5, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/AppBean;

    invoke-virtual {v1}, Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v5, v6, v2, v3}, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/AppBean;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;)V

    .line 107
    .local v5, "profileAppBean":Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/AppBean;
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    .end local v0    # "iterator":Ljava/util/Iterator;
    .end local v1    # "profileAppSearchBean":Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;
    .end local v2    # "showTitle":Ljava/lang/String;
    .end local v3    # "baseItemOnClikcListener":Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;
    .end local v4    # "profileApps":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;>;"
    .end local v5    # "profileAppBean":Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/AppBean;
    :cond_2
    :goto_1
    return-void
.end method

.method private appendRecentProfileAppBeans(Ljava/util/List;Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;)Z
    .locals 10
    .param p2, "appSearchBean"    # Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;",
            ">;",
            "Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;",
            ")Z"
        }
    .end annotation

    const/4 v7, 0x0

    if-eqz p1, :cond_end

    if-eqz p2, :cond_end

    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->mProfileAppSearchHelper:Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;

    if-nez v0, :cond_0

    goto :goto_end

    :cond_0
    invoke-virtual {v0, p2}, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;->findProfileApps(Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_end

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_end

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_end

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;

    iget-object v8, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->mContext:Landroid/content/Context;

    invoke-static {v8, v1}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->getLastUsed(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;)J

    move-result-wide v8

    const-wide/16 v5, 0x0

    cmp-long v2, v8, v5

    if-lez v2, :cond_next

    invoke-virtual {v1}, Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppItemClickListener;

    iget-object v5, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->mProfileAppSearchHelper:Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;

    invoke-direct {v3, v5, v6, v1}, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppItemClickListener;-><init>(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;)V

    new-instance v5, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/AppBean;

    invoke-virtual {v1}, Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v5, v6, v2, v3}, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/AppBean;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    :cond_next
    goto :goto_0

    :cond_end
    :goto_end
    return v7
.end method

.method static synthetic access$000(Lcom/smartisanos/quicksearchbox/repository/BeanRepository;Ljava/util/List;Ljava/lang/String;)Lcom/smartisanos/launcher/data/ItemInfo;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/quicksearchbox/repository/BeanRepository;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->getUninstalledApp(Ljava/util/List;Ljava/lang/String;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisanos/quicksearchbox/repository/BeanRepository;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/quicksearchbox/repository/BeanRepository;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/smartisanos/quicksearchbox/repository/BeanRepository;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    sget-object v0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->INSTANCE:Lcom/smartisanos/quicksearchbox/repository/BeanRepository;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;

    invoke-direct {v0, p0}, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;-><init>(Landroid/content/Context;)V

    .line 67
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->INSTANCE:Lcom/smartisanos/quicksearchbox/repository/BeanRepository;

    goto :goto_0
.end method

.method private getUninstalledApp(Ljava/util/List;Ljava/lang/String;)Lcom/smartisanos/launcher/data/ItemInfo;
    .locals 3
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/smartisanos/launcher/data/ItemInfo;"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "unInstalledApps":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 84
    .local v0, "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-object v2, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    .end local v0    # "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createAppBeanList(ZLjava/lang/String;)Ljava/util/List;
    .locals 18
    .param p1, "isT9"    # Z
    .param p2, "keyWord"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    if-eqz p1, :cond_1

    .line 118
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->mAppSearchIndexHelper:Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;->t9Search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 123
    .local v11, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;>;"
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v14, v11, v0}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->sortForSearch(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 124
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    invoke-direct {v12, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    .local v12, "showAppResultBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;>;"
    invoke-static {}, Lcom/smartisanos/launcher/LauncherModel;->getItemMap()Ljava/util/HashMap;

    move-result-object v8

    .line 129
    .local v8, "itemInfoHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    const/4 v14, 0x1

    new-array v7, v14, [Lcom/smartisanos/launcher/data/ItemInfo;

    .line 130
    .local v7, "itemInfoArray":[Lcom/smartisanos/launcher/data/ItemInfo;
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "itemInfoArray":[Lcom/smartisanos/launcher/data/ItemInfo;
    check-cast v7, [Lcom/smartisanos/launcher/data/ItemInfo;

    .line 131
    .restart local v7    # "itemInfoArray":[Lcom/smartisanos/launcher/data/ItemInfo;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v13, "unInstalledApps":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v14, v7

    if-ge v6, v14, :cond_4

    .line 133
    aget-object v14, v7, v6

    iget-boolean v14, v14, Lcom/smartisanos/launcher/data/ItemInfo;->installed:Z

    if-nez v14, :cond_0

    .line 134
    aget-object v14, v7, v6

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 120
    .end local v6    # "i":I
    .end local v7    # "itemInfoArray":[Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v8    # "itemInfoHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v11    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;>;"
    .end local v12    # "showAppResultBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;>;"
    .end local v13    # "unInstalledApps":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->mAppSearchIndexHelper:Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;->qwertySearch(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .restart local v11    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;>;"
    goto :goto_0

    .line 126
    :cond_2
    const/4 v12, 0x0

    .line 204
    :cond_3
    return-object v12

    .line 137
    .restart local v6    # "i":I
    .restart local v7    # "itemInfoArray":[Lcom/smartisanos/launcher/data/ItemInfo;
    .restart local v8    # "itemInfoHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .restart local v12    # "showAppResultBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;>;"
    .restart local v13    # "unInstalledApps":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :cond_4
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    .line 138
    .local v2, "appSearchBean":Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;
    move-object v5, v13

    .line 139
    .local v5, "finalUnInstalledApps":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_recent_main_ready

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->mContext:Landroid/content/Context;

    invoke-static {v15, v2}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->getLastUsed(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;)J

    move-result-wide v3

    const-wide/16 v16, 0x0

    cmp-long v15, v3, v16

    if-lez v15, :cond_recent_profile_only

    goto :goto_recent_main_ready

    :cond_recent_profile_only
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->appendRecentProfileAppBeans(Ljava/util/List;Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;)Z

    goto :goto_2

    :cond_recent_main_ready
    :goto_recent_main_ready
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->getIconData()[B

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/smartisanos/quicksearchbox/util/Util;->byteToDrawable(Landroid/content/Context;[B)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 140
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->getPackageName()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->CALENDAR:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 141
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 142
    .local v9, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/smartisanos/launcher/LauncherModel;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 143
    .local v10, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->mContext:Landroid/content/Context;

    invoke-static {v15, v9, v10}, Lcom/smartisanos/launcher/data/Utils;->generateShadowIconsDrawablesfromResolveInfo(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/List;)[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 145
    .local v4, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v15, 0x1

    aget-object v3, v4, v15

    .line 150
    .end local v4    # "drawables":[Landroid/graphics/drawable/Drawable;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_5
    :goto_3
    new-instance v15, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/AppBean;

    .line 152
    invoke-virtual {v2}, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->getTitle()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Lcom/smartisanos/quicksearchbox/repository/BeanRepository$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v2}, Lcom/smartisanos/quicksearchbox/repository/BeanRepository$1;-><init>(Lcom/smartisanos/quicksearchbox/repository/BeanRepository;Ljava/util/List;Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v15, v3, v0, v1}, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/AppBean;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;)V

    .line 150
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_append_profile_apps

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->appendRecentProfileAppBeans(Ljava/util/List;Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;)Z

    goto :cond_skip_profile_apps

    :cond_append_profile_apps

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->appendProfileAppBeans(Ljava/util/List;Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;)V

    :cond_skip_profile_apps
    goto :goto_2

    .line 146
    :cond_6
    invoke-virtual {v2}, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "com.smartisanos.weather"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 147
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f020062

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/smartisanos/launcher/data/Utils;->generateShadowIconDrawables(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 148
    .restart local v4    # "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v15, 0x1

    aget-object v3, v4, v15

    goto :goto_3
.end method

.method public createContactBeanList(ZLjava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "isT9"    # Z
    .param p2, "keyWord"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    if-eqz p1, :cond_0

    .line 97
    iget-object v3, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->mContactSearchIndexHelper:Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

    invoke-virtual {v3, p2}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->t9Search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 101
    .local v1, "resultlist":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    .local v2, "showBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;

    .line 107
    .local v0, "contactBean":Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    new-instance v4, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/ContactShowBean;

    iget-object v5, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/ContactShowBean;-><init>(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 99
    .end local v0    # "contactBean":Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;
    .end local v1    # "resultlist":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;>;"
    .end local v2    # "showBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;>;"
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->mContactSearchIndexHelper:Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;

    invoke-virtual {v3, p2}, Lcom/smartisanos/quicksearchbox/repository/contact/db/helper/ContactSearchIndexHelper;->qwertySearch(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .restart local v1    # "resultlist":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/contact/bean/ContactBean;>;"
    goto :goto_0

    .line 104
    :cond_1
    const/4 v2, 0x0

    .line 109
    :cond_2
    return-object v2
.end method

.method public createSearchOnlineBean(Ljava/lang/String;)Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/SearchOnlineBean;
    .locals 2
    .param p1, "keyWord"    # Ljava/lang/String;

    .prologue
    .line 76
    new-instance v0, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/SearchOnlineBean;

    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/SearchOnlineBean;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public init3DEngineAndAnimation(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->mRemoteContext:Landroid/content/Context;

    .line 72
    return-void
.end method
