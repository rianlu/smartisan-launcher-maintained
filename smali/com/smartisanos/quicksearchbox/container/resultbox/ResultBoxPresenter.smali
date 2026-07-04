.class public Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxPresenter;
.super Ljava/lang/Object;
.source "ResultBoxPresenter.java"

# interfaces
.implements Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$Presenter;


# instance fields
.field private mBeanRepository:Lcom/smartisanos/quicksearchbox/repository/BeanRepository;

.field private mContext:Landroid/content/Context;

.field private mResultBoxView:Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/repository/BeanRepository;Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "beanRepository"    # Lcom/smartisanos/quicksearchbox/repository/BeanRepository;
    .param p3, "resultBoxView"    # Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$View;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxPresenter;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxPresenter;->mBeanRepository:Lcom/smartisanos/quicksearchbox/repository/BeanRepository;

    .line 29
    iput-object p3, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxPresenter;->mResultBoxView:Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$View;

    .line 30
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxPresenter;->mResultBoxView:Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$View;

    invoke-interface {v0, p0}, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$View;->setPresenter(Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method private createAppResult(ZLjava/util/HashMap;Ljava/lang/String;)V
    .locals 4
    .param p1, "isT9"    # Z
    .param p3, "keyWord"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    .local p2, "dataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;>;>;"
    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxPresenter;->mBeanRepository:Lcom/smartisanos/quicksearchbox/repository/BeanRepository;

    invoke-virtual {v1, p1, p3}, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->createAppBeanList(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 70
    .local v0, "appShowBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;>;"
    invoke-static {p2}, Lcom/smartisanos/quicksearchbox/util/GuavaUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f0800b1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method private createContactResult(ZLjava/util/HashMap;Ljava/lang/String;)V
    .locals 4
    .param p1, "isT9"    # Z
    .param p3, "keyWord"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    .local p2, "dataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;>;>;"
    const-string v1, "search_contacts_enabled"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_contact_search_enabled

    return-void

    :cond_contact_search_enabled
    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxPresenter;->mBeanRepository:Lcom/smartisanos/quicksearchbox/repository/BeanRepository;

    invoke-virtual {v1, p1, p3}, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->createContactBeanList(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 75
    .local v0, "contactShowBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;>;"
    invoke-static {p2}, Lcom/smartisanos/quicksearchbox/util/GuavaUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f0800b2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method private createSearchOnlineResult(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 5
    .param p2, "keyWord"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "dataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;>;>;"
    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxPresenter;->mBeanRepository:Lcom/smartisanos/quicksearchbox/repository/BeanRepository;

    invoke-virtual {v2, p2}, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->createSearchOnlineBean(Ljava/lang/String;)Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/SearchOnlineBean;

    move-result-object v0

    .line 63
    .local v0, "searchOnlineBean":Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/SearchOnlineBean;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v1, "searchOnlineList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {p1}, Lcom/smartisanos/quicksearchbox/util/GuavaUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxPresenter;->mContext:Landroid/content/Context;

    const v4, 0x7f0800b3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method


# virtual methods
.method public clearQueryResultShowBackground()V
    .locals 5

    .prologue
    .line 80
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxPresenter;->mBeanRepository:Lcom/smartisanos/quicksearchbox/repository/BeanRepository;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->createAppBeanList(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_clear

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_recent

    :cond_clear
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxPresenter;->mResultBoxView:Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$View;

    invoke-interface {v0}, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$View;->clearResult()V

    .line 81
    return-void

    :cond_recent
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f080278

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxPresenter;->mResultBoxView:Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$View;

    invoke-interface {v4, v1}, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$View;->refreshResult(Ljava/util/HashMap;)V

    return-void
.end method

.method public createQwertyQueryResult(Ljava/lang/String;)V
    .locals 2
    .param p1, "keyWord"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v0, "dataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;>;>;"
    invoke-direct {p0, v0, p1}, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxPresenter;->createSearchOnlineResult(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, v1, v0, p1}, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxPresenter;->createContactResult(ZLjava/util/HashMap;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, v1, v0, p1}, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxPresenter;->createAppResult(ZLjava/util/HashMap;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxPresenter;->mResultBoxView:Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$View;

    invoke-interface {v1, v0}, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$View;->refreshResult(Ljava/util/HashMap;)V

    .line 47
    return-void
.end method

.method public createT9QueryResult(Ljava/lang/String;)V
    .locals 2
    .param p1, "keyWord"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v0, "dataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;>;>;"
    invoke-direct {p0, v0, p1}, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxPresenter;->createSearchOnlineResult(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0, v1, v0, p1}, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxPresenter;->createContactResult(ZLjava/util/HashMap;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, v1, v0, p1}, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxPresenter;->createAppResult(ZLjava/util/HashMap;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxPresenter;->mResultBoxView:Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$View;

    invoke-interface {v1, v0}, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$View;->refreshResult(Ljava/util/HashMap;)V

    .line 58
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method
