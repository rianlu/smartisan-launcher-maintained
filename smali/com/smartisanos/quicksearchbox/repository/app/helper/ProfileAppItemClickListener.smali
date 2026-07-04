.class public Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppItemClickListener;
.super Ljava/lang/Object;
.source "ProfileAppItemClickListener.java"

# interfaces
.implements Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mProfileAppSearchBean:Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;

.field private final mProfileAppSearchHelper:Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profileAppSearchHelper"    # Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;
    .param p3, "profileAppSearchBean"    # Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppItemClickListener;->mContext:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppItemClickListener;->mProfileAppSearchHelper:Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;

    .line 18
    iput-object p3, p0, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppItemClickListener;->mProfileAppSearchBean:Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;

    .line 19
    return-void
.end method


# virtual methods
.method public longClick()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .locals 4

    .prologue
    .line 24
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppItemClickListener;->mProfileAppSearchHelper:Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppItemClickListener;->mProfileAppSearchBean:Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;

    invoke-virtual {v0, v1}, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;->launch(Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppItemClickListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppItemClickListener;->mProfileAppSearchBean:Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;

    invoke-static {v0, v1}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->record(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;)V

    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppItemClickListener;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 26
    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 29
    :cond_1
    :goto_0
    return-void
.end method
