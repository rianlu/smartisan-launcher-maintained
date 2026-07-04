.class final Lcom/smartisanos/launcher/actions/StartActivity$2;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/StartActivity;->startActivitySafely(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$launcher:Lcom/smartisanos/home/Launcher;


# direct methods
.method constructor <init>(Lcom/smartisanos/home/Launcher;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/StartActivity$2;->val$launcher:Lcom/smartisanos/home/Launcher;

    iput-object p2, p0, Lcom/smartisanos/launcher/actions/StartActivity$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/smartisanos/launcher/actions/StartActivity$2;->val$launcher:Lcom/smartisanos/home/Launcher;

    iget-object v2, p0, Lcom/smartisanos/launcher/actions/StartActivity$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/smartisanos/home/Launcher;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/smartisanos/launcher/actions/StartActivity$2;->val$launcher:Lcom/smartisanos/home/Launcher;

    iget-object v2, p0, Lcom/smartisanos/launcher/actions/StartActivity$2;->val$intent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->recordIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 170
    iget-object v1, p0, Lcom/smartisanos/launcher/actions/StartActivity$2;->val$launcher:Lcom/smartisanos/home/Launcher;

    iget-object v2, p0, Lcom/smartisanos/launcher/actions/StartActivity$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    const v3, 0x7f050025

    const v4, 0x7f050026

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.smartisanos.quicksearchbox.SearchMainActivity"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.smartisanos.home.settings.view.SettingMainActivity"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const v3, 0x7f05000c

    const v4, 0x7f05000d

    :cond_1
    invoke-virtual {v1, v3, v4}, Lcom/smartisanos/home/Launcher;->overridePendingTransition(II)V

    .line 172
    iget-object v1, p0, Lcom/smartisanos/launcher/actions/StartActivity$2;->val$launcher:Lcom/smartisanos/home/Launcher;

    invoke-virtual {v1}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/smartisanos/launcher/actions/StartActivity$2$1;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/actions/StartActivity$2$1;-><init>(Lcom/smartisanos/launcher/actions/StartActivity$2;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 190
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->hideCellClickShadow()V

    .line 184
    iget-object v1, p0, Lcom/smartisanos/launcher/actions/StartActivity$2;->val$launcher:Lcom/smartisanos/home/Launcher;

    sget v2, Lcom/smartisanos/launcher/ResIds$string;->activity_not_found:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 185
    invoke-static {}, Lcom/smartisanos/launcher/actions/StartActivity;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch. intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/actions/StartActivity$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->hideCellClickShadow()V

    .line 188
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
