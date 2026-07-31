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
    .line 117
    const-string v0, "swipe_up_search_enabled"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/setting/SettingDB;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-string v1, "com.smartisanos.quicksearchbox"

    .line 119
    .local v1, "pkg":Ljava/lang/String;
    const-string v0, "com.smartisanos.quicksearchbox.SearchMainActivity"

    .line 120
    .local v0, "cmp":Ljava/lang/String;
    const-string v2, "A260008"

    invoke-static {v2}, Lcom/smartisanos/home/tracker/LauncherAgent;->event(Ljava/lang/String;)V

    .line 121
    invoke-static {v1, v0}, Lcom/smartisanos/launcher/actions/StartActivity;->launchByName(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 122
    :cond_0
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v1, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v0, v1, :cond_1

    .line 123
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0}, Lcom/smartisanos/home/Launcher;->getMainView()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/PageView;->switchPageMode(Lcom/smartisanos/launcher/view/Page;)Z

    .line 127
    :cond_1
    return-void
.end method
