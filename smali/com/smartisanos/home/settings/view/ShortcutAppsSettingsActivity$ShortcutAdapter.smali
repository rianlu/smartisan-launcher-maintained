.class final Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$ShortcutAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShortcutAppsSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShortcutAdapter"
.end annotation


# instance fields
.field private final shortcuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;


# direct methods
.method constructor <init>(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 325
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$ShortcutAdapter;->this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$ShortcutAdapter;->shortcuts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$ShortcutAdapter;->shortcuts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/content/pm/ShortcutInfo;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$ShortcutAdapter;->shortcuts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 323
    invoke-virtual {p0, p1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$ShortcutAdapter;->getItem(I)Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 328
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 332
    nop

    .line 333
    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$ShortcutAdapter;->this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-object v1, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$ShortcutAdapter;->this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

    .line 334
    const-string v2, "shortcut_choice_item"

    const-string v3, "layout"

    invoke-static {v1, v2, v3}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->access$200(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 335
    :cond_0
    invoke-virtual {p0, p1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$ShortcutAdapter;->getItem(I)Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    .line 336
    iget-object p3, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$ShortcutAdapter;->this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

    const-string v1, "shortcut_choice_icon"

    const-string v2, "id"

    invoke-static {p3, v1, v2}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->access$200(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 337
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$ShortcutAdapter;->this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

    const-string v3, "shortcut_choice_title"

    invoke-static {v1, v3, v2}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->access$200(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 338
    iget-object v3, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$ShortcutAdapter;->this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

    const-string v4, "shortcut_choice_action"

    invoke-static {v3, v4, v2}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->access$200(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 339
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v3

    .line 340
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v3

    .line 341
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 342
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$ShortcutAdapter;->this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

    invoke-static {v1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->access$500(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;)Landroid/content/pm/LauncherApps;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 344
    if-nez v0, :cond_3

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$ShortcutAdapter;->this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

    invoke-virtual {v1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 349
    :cond_3
    :goto_1
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    iget-object p3, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$ShortcutAdapter;->this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

    invoke-static {p3, p1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->access$100(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;Landroid/content/pm/ShortcutInfo;)Z

    move-result p1

    .line 351
    iget-object p3, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$ShortcutAdapter;->this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

    if-eqz p1, :cond_4

    const-string v0, "shortcut_apps_added_state"

    goto :goto_2

    :cond_4
    const-string v0, "shortcut_apps_add_action"

    :goto_2
    const-string v1, "string"

    invoke-static {p3, v0, v1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->access$200(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 352
    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 353
    return-object p2
.end method
