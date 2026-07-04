.class public Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ResultListAdapter.java"

# interfaces
.implements Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$ViewHolderDoubleSingleItem;,
        Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$ViewHolderTitle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListContract$Presenter;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mRealDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/repository/ui/bean/BaseBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "dataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;>;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/smartisanos/quicksearchbox/util/GuavaUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->mContext:Landroid/content/Context;

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 39
    invoke-static {p2}, Lcom/smartisanos/quicksearchbox/util/GuavaUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->init(Ljava/util/HashMap;)V

    .line 40
    return-void
.end method

.method private dataMapToDataList(Ljava/util/HashMap;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/repository/ui/bean/BaseBean;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "dataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;>;>;"
    const/4 v6, 0x1

    .line 47
    const/4 v3, 0x1

    .line 49
    .local v3, "onlySearchOnlineFlag":Z
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->mRealDataList:Ljava/util/List;

    if-nez v4, :cond_0

    .line 50
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->mRealDataList:Ljava/util/List;

    .line 52
    :cond_0
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f080278

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_recent_done

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_recent_done

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v6, :cond_recent_done

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->mRealDataList:Ljava/util/List;

    new-instance v5, Lcom/smartisanos/quicksearchbox/repository/ui/bean/title/TitleBean;

    invoke-direct {v5, v0}, Lcom/smartisanos/quicksearchbox/repository/ui/bean/title/TitleBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->mRealDataList:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_recent_done
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0800b1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "appTitle":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v6, :cond_1

    .line 54
    const/4 v3, 0x0

    .line 55
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->mRealDataList:Ljava/util/List;

    new-instance v5, Lcom/smartisanos/quicksearchbox/repository/ui/bean/title/TitleBean;

    invoke-direct {v5, v0}, Lcom/smartisanos/quicksearchbox/repository/ui/bean/title/TitleBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v5, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->mRealDataList:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    :cond_1
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0800b2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "contactTitle":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v6, :cond_2

    .line 62
    const/4 v3, 0x0

    .line 63
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->mRealDataList:Ljava/util/List;

    new-instance v5, Lcom/smartisanos/quicksearchbox/repository/ui/bean/title/TitleBean;

    invoke-direct {v5, v1}, Lcom/smartisanos/quicksearchbox/repository/ui/bean/title/TitleBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v5, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->mRealDataList:Ljava/util/List;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 67
    :cond_2
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0800b3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "moreTitle":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 69
    if-nez v3, :cond_3

    .line 70
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->mRealDataList:Ljava/util/List;

    new-instance v5, Lcom/smartisanos/quicksearchbox/repository/ui/bean/title/TitleBean;

    invoke-direct {v5, v2}, Lcom/smartisanos/quicksearchbox/repository/ui/bean/title/TitleBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_3
    iget-object v5, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->mRealDataList:Ljava/util/List;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    :cond_4
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->mRealDataList:Ljava/util/List;

    return-object v4
.end method


# virtual methods
.method public clearDataList()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->mRealDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 190
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->mRealDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->mRealDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/quicksearchbox/repository/ui/bean/BaseBean;

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/repository/ui/bean/BaseBean;->getType()I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public init(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "dataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;>;>;"
    invoke-direct {p0, p1}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->dataMapToDataList(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->mRealDataList:Ljava/util/List;

    .line 44
    return-void
.end method

.method public openFirstAppResult()Z
    .locals 5

    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->mRealDataList:Ljava/util/List;

    if-eqz v0, :cond_false

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_loop
    if-ge v1, v2, :cond_false

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/AppBean;

    if-eqz v4, :cond_next

    check-cast v3, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;

    invoke-virtual {v3}, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;->getBaseItemOnClikcListener()Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;

    move-result-object v3

    if-eqz v3, :cond_next

    invoke-interface {v3}, Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;->onClick()V

    const/4 v0, 0x1

    return v0

    :cond_next
    add-int/lit8 v1, v1, 0x1

    goto :goto_loop

    :cond_false
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const v6, 0x7f0201ac

    const/4 v5, 0x0

    .line 115
    instance-of v4, p1, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$ViewHolderTitle;

    if-eqz v4, :cond_1

    .line 116
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->mRealDataList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/quicksearchbox/repository/ui/bean/title/TitleBean;

    .line 117
    .local v3, "titleBean":Lcom/smartisanos/quicksearchbox/repository/ui/bean/title/TitleBean;
    invoke-virtual {v3}, Lcom/smartisanos/quicksearchbox/repository/ui/bean/title/TitleBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "text":Ljava/lang/String;
    check-cast p1, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$ViewHolderTitle;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$ViewHolderTitle;->getTitleView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "titleBean":Lcom/smartisanos/quicksearchbox/repository/ui/bean/title/TitleBean;
    :cond_0
    :goto_0
    return-void

    .line 119
    .restart local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    instance-of v4, p1, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$ViewHolderDoubleSingleItem;

    if-eqz v4, :cond_0

    .line 121
    check-cast p1, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$ViewHolderDoubleSingleItem;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p1}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$ViewHolderDoubleSingleItem;->getItemDoubleSingle()Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;

    move-result-object v1

    .line 123
    .local v1, "itemDoubleSingle":Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->mRealDataList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;

    .line 124
    .local v0, "doubleSingleItemBean":Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;
    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 129
    :pswitch_0
    invoke-virtual {v1, v5}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->setLongClickable(Z)V

    .line 130
    invoke-virtual {v1, v6}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->setBackgroundResource(I)V

    .line 131
    invoke-virtual {v1, v0}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->create(Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;)V

    goto :goto_0

    .line 135
    :pswitch_1
    invoke-virtual {v1, v6}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->setBackgroundResource(I)V

    .line 136
    new-instance v4, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$1;

    invoke-direct {v4, p0}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$1;-><init>(Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;)V

    invoke-virtual {v0, v4}, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;->setBaseItemOnClikcListener(Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;)V

    .line 147
    invoke-virtual {v1, v0}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->create(Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;)V

    .line 148
    invoke-virtual {v1, v5}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->setLongClickable(Z)V

    goto :goto_0

    .line 152
    :pswitch_2
    const v4, 0x7f0201ab

    invoke-virtual {v1, v4}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->setBackgroundResource(I)V

    .line 153
    new-instance v4, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$2;

    invoke-direct {v4, p0}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$2;-><init>(Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;)V

    invoke-virtual {v0, v4}, Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;->setBaseItemOnClikcListener(Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;)V

    .line 164
    invoke-virtual {v1, v0}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->create(Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;)V

    .line 165
    invoke-virtual {v1, v5}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;->setLongClickable(Z)V

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x3868
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v6, 0x0

    .line 89
    packed-switch p2, :pswitch_data_0

    .line 109
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 91
    :pswitch_0
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04005b

    invoke-virtual {v4, v5, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/title/ItemTitle;

    .line 92
    .local v1, "itemTitle":Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/title/ItemTitle;
    new-instance v3, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$ViewHolderTitle;

    invoke-direct {v3, p0, v1}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$ViewHolderTitle;-><init>(Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;Landroid/view/View;)V

    .local v3, "viewHolderTitle":Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$ViewHolderTitle;
    move-object v2, v3

    .line 93
    goto :goto_0

    .line 96
    .end local v1    # "itemTitle":Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/title/ItemTitle;
    .end local v3    # "viewHolderTitle":Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$ViewHolderTitle;
    :pswitch_1
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04005a

    invoke-virtual {v4, v5, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;

    .line 97
    .local v0, "itemDoubleSingle":Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;
    new-instance v2, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$ViewHolderDoubleSingleItem;

    invoke-direct {v2, p0, v0}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$ViewHolderDoubleSingleItem;-><init>(Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;Landroid/view/View;)V

    .line 98
    .local v2, "viewHolderDoubleSingleItem":Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$ViewHolderDoubleSingleItem;
    goto :goto_0

    .line 104
    .end local v0    # "itemDoubleSingle":Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;
    .end local v2    # "viewHolderDoubleSingleItem":Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$ViewHolderDoubleSingleItem;
    :pswitch_2
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040059

    invoke-virtual {v4, v5, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;

    .line 105
    .restart local v0    # "itemDoubleSingle":Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/item/doublesingle/ItemDoubleSingle;
    new-instance v2, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$ViewHolderDoubleSingleItem;

    invoke-direct {v2, p0, v0}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$ViewHolderDoubleSingleItem;-><init>(Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;Landroid/view/View;)V

    .line 106
    .restart local v2    # "viewHolderDoubleSingleItem":Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter$ViewHolderDoubleSingleItem;
    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x3867
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
