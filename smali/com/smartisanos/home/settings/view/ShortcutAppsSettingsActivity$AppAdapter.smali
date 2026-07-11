.class final Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShortcutAppsSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;


# direct methods
.method private constructor <init>(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppAdapter;->this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$1;)V
    .locals 0

    .line 300
    invoke-direct {p0, p1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppAdapter;-><init>(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppAdapter;->this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

    invoke-static {v0}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->access$400(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppAdapter;->this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

    invoke-static {v0}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->access$400(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 300
    invoke-virtual {p0, p1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppAdapter;->getItem(I)Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 303
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 308
    instance-of v0, p2, Lcom/smartisanos/home/settings/SettingItemTextVertical;

    if-eqz v0, :cond_0

    .line 309
    check-cast p2, Lcom/smartisanos/home/settings/SettingItemTextVertical;

    goto :goto_0

    .line 311
    :cond_0
    iget-object p2, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppAdapter;->this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppAdapter;->this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

    .line 312
    const-string v1, "setting_shortcut_app_item"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->access$200(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/home/settings/SettingItemTextVertical;

    .line 314
    :goto_0
    invoke-virtual {p0, p1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppAdapter;->getItem(I)Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;

    move-result-object p1

    .line 315
    iget-object p3, p1, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/smartisanos/home/settings/SettingItemTextVertical;->setTitle(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p2}, Lcom/smartisanos/home/settings/SettingItemTextVertical;->getSubTitle()Landroid/widget/TextView;

    move-result-object p3

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    iget-object p1, p1, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Lcom/smartisanos/home/settings/SettingItemTextVertical;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/smartisanos/home/settings/SettingItemTextVertical;->setArrowVisible(Z)V

    .line 319
    return-object p2
.end method
