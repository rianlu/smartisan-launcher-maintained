.class Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$3;
.super Ljava/lang/Object;
.source "ShortcutAppsSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->showShortcuts(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

.field final synthetic val$shortcuts:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$3;->this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

    iput-object p2, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$3;->val$shortcuts:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 186
    iget-object p1, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$3;->val$shortcuts:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    .line 187
    iget-object p2, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$3;->this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

    invoke-static {p2, p1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->access$100(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;Landroid/content/pm/ShortcutInfo;)Z

    move-result p2

    const/4 v0, 0x0

    const-string v1, "string"

    if-eqz p2, :cond_0

    .line 188
    iget-object p1, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$3;->this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

    iget-object p2, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$3;->this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

    .line 189
    const-string v2, "shortcut_apps_already_added"

    invoke-static {p2, v2, v1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->access$200(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 188
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 189
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 190
    :cond_0
    iget-object p2, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$3;->this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

    invoke-static {p2, p1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->access$300(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;Landroid/content/pm/ShortcutInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 191
    iget-object p1, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$3;->this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

    iget-object p2, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$3;->this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

    .line 192
    const-string v2, "shortcut_apps_added"

    invoke-static {p2, v2, v1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->access$200(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 191
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 192
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 194
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$3;->this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

    iget-object p2, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$3;->this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

    .line 195
    const-string v2, "shortcut_apps_add_failed"

    invoke-static {p2, v2, v1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->access$200(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 194
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 195
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 197
    :goto_0
    return-void
.end method
