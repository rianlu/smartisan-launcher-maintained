.class Lcom/smartisanos/launcher/ApplicationProxy$17;
.super Lcom/smartisanos/smengine/Event;
.source "ApplicationProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/ApplicationProxy;->onConfigChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/ApplicationProxy;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/ApplicationProxy;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/ApplicationProxy;
    .param p2, "type"    # I

    .prologue
    iput-object p1, p0, Lcom/smartisanos/launcher/ApplicationProxy$17;->this$0:Lcom/smartisanos/launcher/ApplicationProxy;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    invoke-static {}, Lcom/smartisanos/launcher/view/TextView;->initTextPaints()V

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    if-eqz v0, :cond_update_world

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v1

    if-eqz v1, :cond_dock

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->getAllPages()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_dock

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_pages
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_dock

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Page;

    if-eqz v4, :goto_pages

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->refreshAppName()V

    goto :goto_pages

    :cond_dock
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v1

    if-eqz v1, :cond_update_world

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->refreshAppName()V

    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/DockView;->enableShowAppName(Z)V

    :cond_update_world
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->updateGLView()V

    return-void
.end method
