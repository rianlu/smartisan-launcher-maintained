.class Lcom/smartisanos/launcher/ApplicationProxy$5;
.super Lcom/smartisanos/smengine/Event;
.source "ApplicationProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/ApplicationProxy;->createInitUnlockAnimationEvent()Lcom/smartisanos/smengine/Event;
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
    .line 381
    iput-object p1, p0, Lcom/smartisanos/launcher/ApplicationProxy$5;->this$0:Lcom/smartisanos/launcher/ApplicationProxy;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 384
    invoke-static {}, Lcom/smartisanos/launcher/ApplicationProxy;->access$200()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    const-string v2, "### init unlock animation event run"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/ApplicationProxy;->access$200()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    const-string v2, "### init unlock anmiation ####"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 385
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    .line 386
    .local v0, "mainView":Lcom/smartisanos/launcher/view/MainView;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 387
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/ApplicationProxy;->access$200()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    const-string v2, "DEBUG"

    const-string v3, "### cancel previous uncompleted touch event while init unlock anmiation###"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_1
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->forceCancelMotionEvent()V

    .line 389
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->initUnlockScreenAnimation()V

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/AnimationController;->isUnlockAnimationInit()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {}, Lcom/smartisanos/launcher/ApplicationProxy;->access$200()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    const-string v2, "### init unlock animation event result hasInit=true"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_1a

    :cond_1a
    invoke-static {}, Lcom/smartisanos/launcher/ApplicationProxy;->access$200()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    const-string v2, "### init unlock animation event result hasInit=false"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    :goto_1a

    .line 390
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 392
    :cond_2
    return-void
.end method
