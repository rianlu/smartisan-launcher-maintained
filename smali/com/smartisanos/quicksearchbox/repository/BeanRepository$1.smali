.class Lcom/smartisanos/quicksearchbox/repository/BeanRepository$1;
.super Ljava/lang/Object;
.source "BeanRepository.java"

# interfaces
.implements Lcom/smartisanos/quicksearchbox/ibase/BaseItemOnClikcListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->createAppBeanList(ZLjava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/quicksearchbox/repository/BeanRepository;

.field final synthetic val$appSearchBean:Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

.field final synthetic val$finalUnInstalledApps:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/smartisanos/quicksearchbox/repository/BeanRepository;Ljava/util/List;Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/quicksearchbox/repository/BeanRepository;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository$1;->this$0:Lcom/smartisanos/quicksearchbox/repository/BeanRepository;

    iput-object p2, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository$1;->val$finalUnInstalledApps:Ljava/util/List;

    iput-object p3, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository$1;->val$appSearchBean:Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public longClick()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 161
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository$1;->this$0:Lcom/smartisanos/quicksearchbox/repository/BeanRepository;

    iget-object v5, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository$1;->val$finalUnInstalledApps:Ljava/util/List;

    iget-object v6, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository$1;->val$appSearchBean:Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    invoke-virtual {v6}, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->access$000(Lcom/smartisanos/quicksearchbox/repository/BeanRepository;Ljava/util/List;Ljava/lang/String;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    .line 163
    .local v1, "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v1, :cond_1

    .line 165
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 166
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 167
    .local v2, "msg":Landroid/os/Message;
    const/16 v4, 0x6f

    iput v4, v2, Landroid/os/Message;->what:I

    .line 168
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/Object;

    .line 169
    .local v3, "objects":[Ljava/lang/Object;
    aput-object v1, v3, v7

    .line 170
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository$1;->this$0:Lcom/smartisanos/quicksearchbox/repository/BeanRepository;

    invoke-static {v5}, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->access$100(Lcom/smartisanos/quicksearchbox/repository/BeanRepository;)Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    .line 171
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 172
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 200
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "objects":[Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository$1;->val$appSearchBean:Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    invoke-virtual {v4}, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.smartisanos.home.settings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 177
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository$1;->this$0:Lcom/smartisanos/quicksearchbox/repository/BeanRepository;

    invoke-static {v4}, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->access$100(Lcom/smartisanos/quicksearchbox/repository/BeanRepository;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository$1;->val$appSearchBean:Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    invoke-static {v4, v5}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->record(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;)V

    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository$1;->this$0:Lcom/smartisanos/quicksearchbox/repository/BeanRepository;

    invoke-static {v4}, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->access$100(Lcom/smartisanos/quicksearchbox/repository/BeanRepository;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/smartisanos/home/settings/view/SettingMainActivity;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 178
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository$1;->this$0:Lcom/smartisanos/quicksearchbox/repository/BeanRepository;

    invoke-static {v4}, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->access$100(Lcom/smartisanos/quicksearchbox/repository/BeanRepository;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 179
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository$1;->this$0:Lcom/smartisanos/quicksearchbox/repository/BeanRepository;

    invoke-static {v4}, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->access$100(Lcom/smartisanos/quicksearchbox/repository/BeanRepository;)Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/quicksearchbox/SearchMainActivity;

    const v5, 0x7f050025

    const v6, 0x7f050026

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/quicksearchbox/SearchMainActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 184
    :cond_2
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository$1;->val$appSearchBean:Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    invoke-virtual {v4}, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.smartisanos.quicksearchbox"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 185
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository$1;->this$0:Lcom/smartisanos/quicksearchbox/repository/BeanRepository;

    invoke-static {v4}, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->access$100(Lcom/smartisanos/quicksearchbox/repository/BeanRepository;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository$1;->this$0:Lcom/smartisanos/quicksearchbox/repository/BeanRepository;

    invoke-static {v5}, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->access$100(Lcom/smartisanos/quicksearchbox/repository/BeanRepository;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0800b8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 189
    :cond_3
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository$1;->val$appSearchBean:Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    invoke-virtual {v4}, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.smartisanos.weather"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 190
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->showWeatherInfoToast()V

    goto :goto_0

    .line 194
    :cond_4
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository$1;->val$appSearchBean:Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    invoke-virtual {v5}, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository$1;->val$appSearchBean:Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    invoke-virtual {v6}, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->getComponentName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 195
    const/high16 v4, 0x10200000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 196
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository$1;->this$0:Lcom/smartisanos/quicksearchbox/repository/BeanRepository;

    invoke-static {v4}, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->access$100(Lcom/smartisanos/quicksearchbox/repository/BeanRepository;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository$1;->val$appSearchBean:Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    invoke-static {v4, v5}, Lcom/smartisanos/quicksearchbox/repository/app/helper/SearchUsageStore;->record(Landroid/content/Context;Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;)V

    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/repository/BeanRepository$1;->this$0:Lcom/smartisanos/quicksearchbox/repository/BeanRepository;

    invoke-static {v4}, Lcom/smartisanos/quicksearchbox/repository/BeanRepository;->access$100(Lcom/smartisanos/quicksearchbox/repository/BeanRepository;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
