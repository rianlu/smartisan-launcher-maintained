.class public Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;
.super Lcom/smartisanos/quicksearchbox/BaseFragment;
.source "EditBoxFragment.java"

# interfaces
.implements Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxContract$View;


# instance fields
.field private mClearButton:Lcom/smartisanos/quicksearchbox/container/editbox/clearbutton/ClearButton;

.field private mContext:Landroid/app/Activity;

.field private mEngineList:Lcom/smartisanos/quicksearchbox/container/editbox/enginelist/EngineList;

.field private mKeyWordEditor:Lcom/smartisanos/quicksearchbox/container/editbox/keywordeditor/KeyWordEditor;

.field private mPresenter:Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxContract$Presenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/smartisanos/quicksearchbox/BaseFragment;-><init>()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;)Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxContract$Presenter;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->mPresenter:Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxContract$Presenter;

    return-object v0
.end method

.method public static newInstance()Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    .local v0, "args":Landroid/os/Bundle;
    new-instance v1, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;

    invoke-direct {v1}, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;-><init>()V

    .line 57
    .local v1, "fragment":Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;
    invoke-virtual {v1, v0}, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->setArguments(Landroid/os/Bundle;)V

    .line 58
    return-object v1
.end method


# virtual methods
.method public clearKeyWordEditor()V
    .locals 1

    .prologue
    .line 210
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->setKeyWordEditorText(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public getActivityContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public getKeyWordEditor()Lcom/smartisanos/quicksearchbox/container/editbox/keywordeditor/KeyWordEditor;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->mKeyWordEditor:Lcom/smartisanos/quicksearchbox/container/editbox/keywordeditor/KeyWordEditor;

    return-object v0
.end method

.method public getKeyWordEditorText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->mKeyWordEditor:Lcom/smartisanos/quicksearchbox/container/editbox/keywordeditor/KeyWordEditor;

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/container/editbox/keywordeditor/KeyWordEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 91
    const v0, 0x7f0f00a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/quicksearchbox/container/editbox/keywordeditor/KeyWordEditor;

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->mKeyWordEditor:Lcom/smartisanos/quicksearchbox/container/editbox/keywordeditor/KeyWordEditor;

    .line 92
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->mKeyWordEditor:Lcom/smartisanos/quicksearchbox/container/editbox/keywordeditor/KeyWordEditor;

    new-instance v1, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment$1;

    invoke-direct {v1, p0}, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment$1;-><init>(Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/container/editbox/keywordeditor/KeyWordEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 106
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->mKeyWordEditor:Lcom/smartisanos/quicksearchbox/container/editbox/keywordeditor/KeyWordEditor;

    new-instance v1, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment$2;

    invoke-direct {v1, p0}, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment$2;-><init>(Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/container/editbox/keywordeditor/KeyWordEditor;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 115
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->mKeyWordEditor:Lcom/smartisanos/quicksearchbox/container/editbox/keywordeditor/KeyWordEditor;

    new-instance v1, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment$3;

    invoke-direct {v1, p0}, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment$3;-><init>(Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/container/editbox/keywordeditor/KeyWordEditor;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v0, 0x7f0f00a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/quicksearchbox/container/editbox/clearbutton/ClearButton;

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->mClearButton:Lcom/smartisanos/quicksearchbox/container/editbox/clearbutton/ClearButton;

    .line 123
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->mClearButton:Lcom/smartisanos/quicksearchbox/container/editbox/clearbutton/ClearButton;

    new-instance v1, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment$4;

    invoke-direct {v1, p0}, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment$4;-><init>(Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/container/editbox/clearbutton/ClearButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->setClearButtonInvisible()V

    .line 134
    const v0, 0x7f0f00a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/quicksearchbox/container/editbox/enginelist/EngineList;

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->mEngineList:Lcom/smartisanos/quicksearchbox/container/editbox/enginelist/EngineList;

    .line 135
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->mEngineList:Lcom/smartisanos/quicksearchbox/container/editbox/enginelist/EngineList;

    new-instance v1, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment$5;

    invoke-direct {v1, p0}, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment$5;-><init>(Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/container/editbox/enginelist/EngineList;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    return-void
.end method

.method public isClearButtonVisible()Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->mClearButton:Lcom/smartisanos/quicksearchbox/container/editbox/clearbutton/ClearButton;

    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/container/editbox/clearbutton/ClearButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 237
    const/4 v0, 0x1

    .line 239
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/smartisanos/quicksearchbox/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 71
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->mContext:Landroid/app/Activity;

    .line 72
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    const v1, 0x7f040026

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, "root":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->initView(Landroid/view/View;)V

    .line 78
    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/smartisanos/quicksearchbox/BaseFragment;->onResume()V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->showKeyBoard(Z)V

    return-void
.end method

.method public query(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->isClearButtonVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->setClearButtonInvisible()V

    .line 147
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->mPresenter:Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxContract$Presenter;

    invoke-interface {v0}, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxContract$Presenter;->clearResultBoxShowBackGround()V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->setClearButtonVisible()V

    .line 150
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->mPresenter:Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxContract$Presenter;

    invoke-interface {v0, p1}, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxContract$Presenter;->startQuery(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setClearButtonInvisible()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->mClearButton:Lcom/smartisanos/quicksearchbox/container/editbox/clearbutton/ClearButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/container/editbox/clearbutton/ClearButton;->setVisibility(I)V

    .line 250
    return-void
.end method

.method public setClearButtonVisible()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->mClearButton:Lcom/smartisanos/quicksearchbox/container/editbox/clearbutton/ClearButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/container/editbox/clearbutton/ClearButton;->setVisibility(I)V

    .line 245
    return-void
.end method

.method public setKeyWordEditorKeyCode(I)V
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 230
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 231
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->mKeyWordEditor:Lcom/smartisanos/quicksearchbox/container/editbox/keywordeditor/KeyWordEditor;

    invoke-virtual {v1, p1, v0}, Lcom/smartisanos/quicksearchbox/container/editbox/keywordeditor/KeyWordEditor;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 232
    return-void
.end method

.method public setKeyWordEditorText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->mKeyWordEditor:Lcom/smartisanos/quicksearchbox/container/editbox/keywordeditor/KeyWordEditor;

    invoke-virtual {v0, p1}, Lcom/smartisanos/quicksearchbox/container/editbox/keywordeditor/KeyWordEditor;->setText(Ljava/lang/CharSequence;)V

    .line 221
    return-void
.end method

.method public setPresenter(Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxContract$Presenter;)V
    .locals 1
    .param p1, "presenter"    # Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxContract$Presenter;

    .prologue
    .line 267
    invoke-static {p1}, Lcom/smartisanos/quicksearchbox/util/GuavaUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxContract$Presenter;

    iput-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->mPresenter:Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxContract$Presenter;

    .line 268
    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->setPresenter(Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxContract$Presenter;)V

    .line 431
    return-void
.end method

.method public setShowSoftInputOnFocus(Z)V
    .locals 7
    .param p1, "isShow"    # Z

    .prologue
    const/16 v6, 0x15

    const/16 v5, 0xe

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 165
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_1

    .line 166
    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->mKeyWordEditor:Lcom/smartisanos/quicksearchbox/container/editbox/keywordeditor/KeyWordEditor;

    invoke-virtual {v2, p1}, Lcom/smartisanos/quicksearchbox/container/editbox/keywordeditor/KeyWordEditor;->setShowSoftInputOnFocus(Z)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v6, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v5, :cond_3

    .line 169
    if-eqz p1, :cond_2

    .line 171
    :try_start_0
    const-class v2, Landroid/widget/EditText;

    const-string v3, "setShowSoftInputOnFocus"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 172
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 173
    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->mKeyWordEditor:Lcom/smartisanos/quicksearchbox/container/editbox/keywordeditor/KeyWordEditor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 179
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-class v2, Landroid/widget/EditText;

    const-string v3, "setShowSoftInputOnFocus"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 180
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 181
    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->mKeyWordEditor:Lcom/smartisanos/quicksearchbox/container/editbox/keywordeditor/KeyWordEditor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 182
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    .line 183
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 187
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v2, v5, :cond_0

    .line 189
    if-eqz p1, :cond_4

    .line 190
    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->mKeyWordEditor:Lcom/smartisanos/quicksearchbox/container/editbox/keywordeditor/KeyWordEditor;

    invoke-virtual {v2, v3}, Lcom/smartisanos/quicksearchbox/container/editbox/keywordeditor/KeyWordEditor;->setInputType(I)V

    goto :goto_0

    .line 192
    :cond_4
    iget-object v2, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->mKeyWordEditor:Lcom/smartisanos/quicksearchbox/container/editbox/keywordeditor/KeyWordEditor;

    invoke-virtual {v2, v4}, Lcom/smartisanos/quicksearchbox/container/editbox/keywordeditor/KeyWordEditor;->setInputType(I)V

    goto :goto_0
.end method

.method public showEngineList()V
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment$6;

    invoke-direct {v1, p0}, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment$6;-><init>(Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method

.method public showKeyBoard(Z)V
    .locals 1
    .param p1, "cleanEditor"    # Z

    .prologue
    .line 200
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/container/editbox/EditBoxFragment;->mContext:Landroid/app/Activity;

    check-cast v0, Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    .line 202
    invoke-virtual {v0, p1}, Lcom/smartisanos/quicksearchbox/SearchMainActivity;->showT9KeyBoard(Z)V

    return-void
.end method
