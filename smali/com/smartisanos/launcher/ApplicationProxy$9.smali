.class Lcom/smartisanos/launcher/ApplicationProxy$9;
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
    .line 497
    iput-object p1, p0, Lcom/smartisanos/launcher/ApplicationProxy$9;->this$0:Lcom/smartisanos/launcher/ApplicationProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 500
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v4

    if-nez v4, :cond_1

    .line 501
    invoke-static {}, Lcom/smartisanos/launcher/ApplicationProxy;->access$200()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    const-string v5, "DEBUG"

    const-string v6, "mActivityBroadcastReceiver Launcher.getInstance() == null"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "action":Ljava/lang/String;
    const-string v4, "action_keyguard_on"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 506
    :cond_2
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/ApplicationProxy;->access$200()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    const-string v5, "DEBUG"

    const-string v6, "ACTION_KEYGUARD_ON begin !"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_3
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 508
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v4

    iget-boolean v4, v4, Lcom/smartisanos/home/Launcher;->mHasStartSetupWizard:Z

    if-nez v4, :cond_0

    .line 515
    :cond_4
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/home/Launcher;->setLauncherWillPreparePowerOff()V

    invoke-static {}, Lcom/smartisanos/launcher/ApplicationProxy;->access$200()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    const-string v5, "### ACTION_KEYGUARD_ON marked launcher prepare power off"

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 516
    iget-object v4, p0, Lcom/smartisanos/launcher/ApplicationProxy$9;->this$0:Lcom/smartisanos/launcher/ApplicationProxy;

    invoke-static {v4}, Lcom/smartisanos/launcher/ApplicationProxy;->access$400(Lcom/smartisanos/launcher/ApplicationProxy;)Lcom/smartisanos/smengine/Event;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/Event;->send(F)V

    .line 517
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/home/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Utils;->isHome(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4a

    invoke-static {}, Lcom/smartisanos/launcher/ApplicationProxy;->access$200()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    const-string v5, "### ACTION_KEYGUARD_ON skip init because launcher not home"

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :cond_7

    :cond_4a

    .line 519
    sget v4, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v5, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-eq v4, v5, :cond_4b

    invoke-static {}, Lcom/smartisanos/launcher/ApplicationProxy;->access$200()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    const-string v5, "### ACTION_KEYGUARD_ON skip init because current mode is not single page"

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :cond_7

    :cond_4b

    .line 520
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/smartisanos/launcher/ApplicationProxy;->access$200()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    const-string v5, "#### current is single page mode. prepare do unlock animation init."

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 521
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    if-nez v4, :cond_6

    .line 522
    invoke-static {}, Lcom/smartisanos/launcher/ApplicationProxy;->access$200()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    const-string v5, "DEBUG"

    const-string v6, "ACTION_KEYGUARD_ON MainView.getInstance() is null"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 525
    :cond_6
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    if-nez v4, :cond_7a

    .line 526
    invoke-static {}, Lcom/smartisanos/launcher/ApplicationProxy;->access$200()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    const-string v5, "DEBUG"

    const-string v6, "ACTION_KEYGUARD_ON PageView is null !!!"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 531
    :cond_7a
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->ENABLE_UNLOCK_ANIMATION:Z

    if-nez v4, :cond_7b

    invoke-static {}, Lcom/smartisanos/launcher/ApplicationProxy;->access$200()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    const-string v5, "### ACTION_KEYGUARD_ON force enable unlock animation switch"

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    const/4 v4, 0x1

    sput-boolean v4, Lcom/smartisanos/launcher/data/Constants;->ENABLE_UNLOCK_ANIMATION:Z

    :cond_7b
    invoke-static {}, Lcom/smartisanos/launcher/ApplicationProxy;->access$200()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    const-string v5, "### ACTION_KEYGUARD_ON send init unlock animation event"

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/smartisanos/launcher/ApplicationProxy$9;->this$0:Lcom/smartisanos/launcher/ApplicationProxy;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/ApplicationProxy;->createInitUnlockAnimationEvent()Lcom/smartisanos/smengine/Event;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/Event;->send(F)V

    .line 534
    :cond_7
    iget-object v4, p0, Lcom/smartisanos/launcher/ApplicationProxy$9;->this$0:Lcom/smartisanos/launcher/ApplicationProxy;

    invoke-static {v4}, Lcom/smartisanos/launcher/ApplicationProxy;->access$500(Lcom/smartisanos/launcher/ApplicationProxy;)Lcom/smartisanos/smengine/Event;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/Event;->send(F)V

    goto/16 :goto_0

    .line 535
    :cond_8
    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "action_keyguard_to_dismiss"

    .line 536
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 538
    :cond_9
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_a

    invoke-static {}, Lcom/smartisanos/launcher/ApplicationProxy;->access$200()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    const-string v5, "DEBUG"

    const-string v6, "ACTION_KEYGUARD_TO_DISMISS begin !"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    :cond_a
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/home/Launcher;->removeEmergencyUnlockEvent()V

    .line 546
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/home/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Utils;->isHome(Landroid/content/Context;)Z

    move-result v2

    .line 547
    .local v2, "isHome":Z
    move v3, v2

    .line 548
    .local v3, "needPlayUnlockAnim":Z
    if-eqz v2, :cond_b

    .line 549
    const/4 v3, 0x1

    .line 551
    :cond_b
    if-eqz v3, :cond_f

    .line 552
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_c

    invoke-static {}, Lcom/smartisanos/launcher/ApplicationProxy;->access$200()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    const-string v5, "### ACTION_KEYGUARD_TO_DISMISS,launcher is home."

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 553
    :cond_c
    sget v4, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v5, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v4, v5, :cond_0

    .line 554
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    if-nez v4, :cond_d

    .line 555
    invoke-static {}, Lcom/smartisanos/launcher/ApplicationProxy;->access$200()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    const-string v5, "DEBUG"

    const-string v6, "ACTION_KEYGUARD_TO_DISMISS MainView.getInstance() is null"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 558
    :cond_d
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    if-nez v4, :cond_e

    .line 559
    invoke-static {}, Lcom/smartisanos/launcher/ApplicationProxy;->access$200()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    const-string v5, "DEBUG"

    const-string v6, "ACTION_KEYGUARD_TO_DISMISS PageView is null !!!"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 562
    :cond_e
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->ENABLE_UNLOCK_ANIMATION:Z

    if-nez v4, :cond_e_enable_ready

    invoke-static {}, Lcom/smartisanos/launcher/ApplicationProxy;->access$200()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    const-string v5, "### ACTION_KEYGUARD_TO_DISMISS force enable unlock animation switch"

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    const/4 v4, 0x1

    sput-boolean v4, Lcom/smartisanos/launcher/data/Constants;->ENABLE_UNLOCK_ANIMATION:Z

    :cond_e_enable_ready
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/AnimationController;->isUnlockAnimationInit()Z

    move-result v4

    if-nez v4, :cond_e_has_init

    invoke-static {}, Lcom/smartisanos/launcher/ApplicationProxy;->access$200()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    const-string v5, "### ACTION_KEYGUARD_TO_DISMISS missing init before play, send init now"

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/smartisanos/launcher/ApplicationProxy$9;->this$0:Lcom/smartisanos/launcher/ApplicationProxy;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/ApplicationProxy;->createInitUnlockAnimationEvent()Lcom/smartisanos/smengine/Event;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/Event;->send(F)V

    goto :cond_e_init_done

    :cond_e_has_init
    invoke-static {}, Lcom/smartisanos/launcher/ApplicationProxy;->access$200()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    const-string v5, "### ACTION_KEYGUARD_TO_DISMISS play with existing init"

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    :cond_e_init_done
    invoke-static {}, Lcom/smartisanos/launcher/ApplicationProxy;->access$200()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    const-string v5, "### ACTION_KEYGUARD_TO_DISMISS send play unlock animation event"

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/smartisanos/launcher/ApplicationProxy$9;->this$0:Lcom/smartisanos/launcher/ApplicationProxy;

    invoke-static {v4}, Lcom/smartisanos/launcher/ApplicationProxy;->access$600(Lcom/smartisanos/launcher/ApplicationProxy;)Lcom/smartisanos/smengine/Event;

    move-result-object v1

    .line 563
    .local v1, "event":Lcom/smartisanos/smengine/Event;
    invoke-virtual {v1, v7}, Lcom/smartisanos/smengine/Event;->send(F)V

    goto/16 :goto_0

    .line 566
    .end local v1    # "event":Lcom/smartisanos/smengine/Event;
    :cond_f
    iget-object v4, p0, Lcom/smartisanos/launcher/ApplicationProxy$9;->this$0:Lcom/smartisanos/launcher/ApplicationProxy;

    invoke-static {v4}, Lcom/smartisanos/launcher/ApplicationProxy;->access$700(Lcom/smartisanos/launcher/ApplicationProxy;)Lcom/smartisanos/smengine/Event;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/Event;->send(F)V

    goto/16 :goto_0

    .line 570
    .end local v2    # "isHome":Z
    .end local v3    # "needPlayUnlockAnim":Z
    :cond_10
    invoke-static {}, Lcom/smartisanos/launcher/ApplicationProxy;->access$200()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    const-string v5, "mLockScreenReceiver execute error, Launcher.getInstance() is null"

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
