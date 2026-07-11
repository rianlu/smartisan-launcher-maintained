.class Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$4;
.super Ljava/lang/Object;
.source "ShortcutAppsSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;

# instance fields
.field final synthetic this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

# direct methods
.method constructor <init>(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$4;->this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$4;->this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

    invoke-virtual {v0}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->loadApps()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$5;

    invoke-direct {v2, v0, v1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$5;-><init>(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
