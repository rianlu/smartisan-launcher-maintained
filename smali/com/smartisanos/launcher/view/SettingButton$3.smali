.class Lcom/smartisanos/launcher/view/SettingButton$3;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "SettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/SettingButton;->handleTap(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/SettingButton;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/SettingButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/SettingButton;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/smartisanos/launcher/view/SettingButton$3;->this$0:Lcom/smartisanos/launcher/view/SettingButton;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 316
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SettingButton$3;->this$0:Lcom/smartisanos/launcher/view/SettingButton;

    iput-boolean v3, v0, Lcom/smartisanos/launcher/view/SettingButton;->buttonAlreadyDown:Z

    .line 317
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SettingButton$3;->this$0:Lcom/smartisanos/launcher/view/SettingButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/SettingButton;->access$202(Lcom/smartisanos/launcher/view/SettingButton;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 318
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SettingButton$3;->this$0:Lcom/smartisanos/launcher/view/SettingButton;

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/view/SettingButton;->access$300(Lcom/smartisanos/launcher/view/SettingButton;Z)V

    .line 319
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SettingButton$3;->this$0:Lcom/smartisanos/launcher/view/SettingButton;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/SettingButton;->access$400(Lcom/smartisanos/launcher/view/SettingButton;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    const-string v1, "***settingbuttondown***"

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->unLockHardKey()V

    .line 323
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->unLockTouchEvent()V

    .line 324
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 325
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const v1, 0x8000

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 326
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/MainView;->updateStatusBarText(I)V

    .line 327
    return-void
.end method
