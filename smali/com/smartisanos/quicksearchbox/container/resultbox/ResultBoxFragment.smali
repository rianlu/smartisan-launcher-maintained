.class public Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;
.super Lcom/smartisanos/quicksearchbox/BaseFragment;
.source "ResultBoxFragment.java"

# interfaces
.implements Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$View;


# instance fields
.field private mContext:Landroid/content/Context;

.field mPresenter:Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$Presenter;

.field private mResultList:Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultList;

.field private mResultListAdapter:Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;

.field private mSearchMainActivity:Lcom/smartisanos/quicksearchbox/SearchMainActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;)Lcom/smartisanos/quicksearchbox/SearchMainActivity;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->mSearchMainActivity:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    return-object v0
.end method

.method public static newInstance()Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, "args":Landroid/os/Bundle;
    new-instance v1, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;

    invoke-direct {v1}, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;-><init>()V

    .line 42
    .local v1, "fragment":Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;
    invoke-virtual {v1, v0}, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    return-object v1
.end method

# virtual methods
.method public clearResult()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->mResultListAdapter:Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;

    if-eqz v0, :cond_adapter_ready

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->clearDataList()V

    .line 96
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->mResultListAdapter:Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->notifyDataSetChanged()V

    :cond_adapter_ready
    .line 97
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/SearchMainActivity;->showBackgroundHint()V

    .line 98
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->setResultListGone()V

    .line 100
    return-void
.end method

.method public hideKeyBoard()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 5
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/smartisanos/quicksearchbox/BaseFragment;->initView(Landroid/view/View;)V

    .line 64
    const v0, 0x7f0f0117

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultList;

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->mResultList:Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultList;

    .line 65
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->mResultList:Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultList;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultList;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 66
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->mResultList:Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultList;

    new-instance v1, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment$1;

    invoke-direct {v1, p0}, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment$1;-><init>(Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultList;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 78
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/smartisanos/quicksearchbox/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 49
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->mContext:Landroid/content/Context;

    .line 50
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->mSearchMainActivity:Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    .line 51
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 56
    const v1, 0x7f040058

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "root":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->initView(Landroid/view/View;)V

    .line 58
    return-object v0
.end method

.method public openFirstResult()Z
    .locals 1

    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->mResultListAdapter:Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;

    if-eqz v0, :cond_false

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->openFirstAppResult()Z

    move-result v0

    return v0

    :cond_false
    const/4 v0, 0x0

    return v0
.end method

.method public refreshResult(Ljava/util/HashMap;)V
    .locals 3
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
    .line 82
    .local p1, "dataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/ui/bean/doublesingle/DoubleSingleItemBean;>;>;"
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->mResultListAdapter:Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->mResultList:Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultList;

    new-instance v1, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;

    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    iput-object v1, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->mResultListAdapter:Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultList;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->mResultListAdapter:Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->notifyDataSetChanged()V

    .line 89
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/SearchMainActivity;->hideBackgroundHint()V

    .line 90
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->setResultListVisible()V

    .line 91
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->mResultListAdapter:Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->clearDataList()V

    .line 86
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->mResultListAdapter:Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;

    invoke-virtual {v0, p1}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultListAdapter;->init(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public setPresenter(Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$Presenter;)V
    .locals 0
    .param p1, "presenter"    # Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$Presenter;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->mPresenter:Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$Presenter;

    .line 120
    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->setPresenter(Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxContract$Presenter;)V

    return-void
.end method

.method public setResultListGone()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->mResultList:Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultList;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultList;->setVisibility(I)V

    .line 105
    return-void
.end method

.method public setResultListVisible()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/resultbox/ResultBoxFragment;->mResultList:Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/container/resultbox/resultlist/ResultList;->setVisibility(I)V

    .line 110
    return-void
.end method
