.class final Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore$2;
.super Ljava/lang/Object;
.source "SearchUsageStore.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->sortForSearch(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    check-cast p1, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    check-cast p2, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore$2;->val$context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->getRecentSortTime(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;)J

    move-result-wide v1

    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore$2;->val$context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->getRecentSortTime(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_same

    if-lez v0, :cond_after

    const/4 v0, 0x1

    return v0

    :cond_after
    const/4 v0, -0x1

    return v0

    :cond_same
    const/4 v0, 0x0

    return v0
.end method
