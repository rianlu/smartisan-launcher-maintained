.class Lcom/smartisanos/launcher/ApplicationProxy$16;
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
    iput-object p1, p0, Lcom/smartisanos/launcher/ApplicationProxy$16;->this$0:Lcom/smartisanos/launcher/ApplicationProxy;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const-string v0, "launcher_hide_lable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_names_hidden

    const/4 v0, 0x1

    goto :goto_names_ready

    :cond_names_hidden
    const/4 v0, 0x0

    :goto_names_ready
    sput-boolean v0, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/DockView;->enableShowAppName(Z)V

    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->updateGLView()V

    return-void
.end method
