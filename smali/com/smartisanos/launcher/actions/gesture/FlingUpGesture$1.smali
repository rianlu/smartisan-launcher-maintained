.class final Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture$1;
.super Lcom/smartisanos/smengine/Event;
.source "FlingUpGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->tryToFling(FFJFFJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->getSwipeUpAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_open_search

    const-string v2, "A260007"

    invoke-static {v2}, Lcom/smartisanos/home/tracker/LauncherAgent;->event(Ljava/lang/String;)V

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    if-eqz v0, :cond_end

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    if-eqz v0, :cond_end

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/PageView;->switchPageMode(Lcom/smartisanos/launcher/view/Page;)Z

    goto :cond_end

    :cond_open_search
    .line 117
    const-string v1, "com.smartisanos.quicksearchbox"

    .line 118
    .local v1, "pkg":Ljava/lang/String;
    const-string v0, "com.smartisanos.quicksearchbox.SearchMainActivity"

    .line 119
    .local v0, "cmp":Ljava/lang/String;
    const-string v2, "A260008"

    invoke-static {v2}, Lcom/smartisanos/home/tracker/LauncherAgent;->event(Ljava/lang/String;)V

    .line 120
    invoke-static {v1, v0}, Lcom/smartisanos/launcher/actions/StartActivity;->launchByName(Ljava/lang/String;Ljava/lang/String;)V

    :cond_end
    .line 121
    return-void
.end method
