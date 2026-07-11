.class Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$5;
.super Ljava/lang/Object;
.source "ShortcutAppsSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;

# instance fields
.field final synthetic this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

.field final synthetic val$error:Ljava/lang/String;

# direct methods
.method constructor <init>(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$5;->this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

    iput-object p2, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$5;->val$error:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$5;->this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

    iget-object v1, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$5;->val$error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->completeLoading(Ljava/lang/String;)V

    return-void
.end method
