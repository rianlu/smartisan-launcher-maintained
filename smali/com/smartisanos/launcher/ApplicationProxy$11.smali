.class Lcom/smartisanos/launcher/ApplicationProxy$11;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/ApplicationProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/ApplicationProxy;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/ApplicationProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/ApplicationProxy;

    .prologue
    .line 628
    iput-object p1, p0, Lcom/smartisanos/launcher/ApplicationProxy$11;->this$0:Lcom/smartisanos/launcher/ApplicationProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 632
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 633
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 641
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v1

    iget-boolean v1, v1, Lcom/smartisanos/home/Launcher;->ENABLE_RECEIVER:Z

    if-nez v1, :cond_3

    .line 642
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/ApplicationProxy$11;->this$0:Lcom/smartisanos/launcher/ApplicationProxy;

    invoke-static {v1}, Lcom/smartisanos/launcher/ApplicationProxy;->access$800(Lcom/smartisanos/launcher/ApplicationProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :cond_0

    .line 645
    :cond_3
    invoke-static {p2}, Lcom/smartisanos/launcher/LauncherModel;->handleOnNewMessage(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
