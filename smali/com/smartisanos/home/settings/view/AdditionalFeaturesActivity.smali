.class public Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;
.super Lcom/smartisanos/home/settings/BaseActivity;
.source "AdditionalFeaturesActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mHideNavigationBarSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

.field private mHideDockLabelSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

.field private mIconLabelSizeItem:Landroid/view/View;

.field private mSwipeUpSearchSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

.field private mSearchDefaultT9KeyboardSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

.field private mSearchContactsSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

.field private mSearchRecentAppsSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

.field private mSearchUsageSortSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

.field private mTransparentThemeGridLinesSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

.field private mUnlockAnimationCompatSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/smartisanos/home/settings/BaseActivity;-><init>()V

    return-void
.end method

.method private findSwitch(Ljava/lang/String;)Lcom/smartisanos/home/settings/SettingItemSwitch;
    .locals 4
    .param p1, "idName"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/smartisanos/home/settings/SettingItemSwitch;

    if-eqz v1, :cond_null

    check-cast v0, Lcom/smartisanos/home/settings/SettingItemSwitch;

    return-object v0

    :cond_null
    const/4 v0, 0x0

    return-object v0
.end method

.method private findTextItem(Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .param p1, "idName"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private handleSwitchChanged(Landroid/widget/CompoundButton;Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "itemSwitch"    # Lcom/smartisanos/home/settings/SettingItemSwitch;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "state"    # Z

    .prologue
    if-eqz p2, :cond_false

    invoke-virtual {p2}, Lcom/smartisanos/home/settings/SettingItemSwitch;->getSwitch()Lsmartisanos/widget/SwitchEx;

    move-result-object v0

    if-ne p1, v0, :cond_false

    invoke-static {p3, p4, p0}, Lcom/smartisanos/launcher/data/LauncherSettings;->updateAndNotice(Ljava/lang/String;ZLandroid/content/Context;)V

    const/4 v0, 0x1

    return v0

    :cond_false
    const/4 v0, 0x0

    return v0
.end method

.method private registerCheckedButton()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mHideNavigationBarSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    if-eqz v0, :cond_swipe

    invoke-virtual {v0, p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_swipe
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mHideDockLabelSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    if-eqz v0, :cond_grid_lines

    invoke-virtual {v0, p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_grid_lines
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mTransparentThemeGridLinesSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    if-eqz v0, :cond_swipe_search

    invoke-virtual {v0, p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_swipe_search
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mUnlockAnimationCompatSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    if-eqz v0, :cond_swipe_search_ready

    invoke-virtual {v0, p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_swipe_search_ready
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSwipeUpSearchSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    if-eqz v0, :cond_t9

    invoke-virtual {v0, p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_t9
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSearchDefaultT9KeyboardSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    if-eqz v0, :cond_contacts

    invoke-virtual {v0, p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_contacts
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSearchUsageSortSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    if-eqz v0, :cond_recent_apps

    invoke-virtual {v0, p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_recent_apps
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSearchRecentAppsSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    if-eqz v0, :cond_search_contacts

    invoke-virtual {v0, p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_search_contacts
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSearchContactsSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    if-eqz v0, :cond_end

    invoke-virtual {v0, p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_end
    return-void
.end method

.method private syncSwitch(Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "itemSwitch"    # Lcom/smartisanos/home/settings/SettingItemSwitch;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # Z

    .prologue
    if-eqz p1, :cond_end

    invoke-static {p2, p3}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setChecked(Z)V

    :cond_end
    return-void
.end method

.method private getStringByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fallback"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_fallback

    invoke-virtual {p0, v3}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_fallback
    return-object p2
.end method

.method public getIconLabelSizeName(I)Ljava/lang/String;
    .locals 3
    .param p1, "size"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->normalizeIconLabelSizePercent(I)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private normalizeIconLabelSizePercent(I)I
    .locals 2
    .param p1, "size"    # I

    .prologue
    if-nez p1, :cond_not_0

    const/16 p1, 0x50

    return p1

    :cond_not_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_not_1

    const/16 p1, 0x5a

    return p1

    :cond_not_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_not_2

    const/16 p1, 0x64

    return p1

    :cond_not_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_not_3

    const/16 p1, 0x82

    return p1

    :cond_not_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_range

    const/16 p1, 0x96

    return p1

    :cond_range
    const/16 v0, 0x32

    if-lt p1, v0, :cond_standard

    const/16 v0, 0xc8

    if-gt p1, v0, :cond_standard

    return p1

    :cond_standard
    const/16 p1, 0x64

    return p1
.end method

.method private updateIconLabelSizeSummary()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mIconLabelSizeItem:Landroid/view/View;

    if-eqz v0, :cond_end

    const-string v0, "launcher_icon_label_size"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->normalizeIconLabelSizePercent(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->getIconLabelSizeName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mIconLabelSizeItem:Landroid/view/View;

    const v3, 0x7f0f0161

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_end
    return-void
.end method

.method private showIconLabelSizeDialogInternal()V
    .locals 12

    .prologue
    new-instance v11, Landroid/view/ContextThemeWrapper;

    const v1, 0x103012b

    invoke-direct {v11, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string v0, "launcher_icon_label_size"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->normalizeIconLabelSizePercent(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v1, "icon_label_size_dialog"

    const-string v2, "layout"

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v2, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v1, 0x7f0f018b

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->getIconLabelSizeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f018c

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/SeekBar;

    const/16 v1, 0xf

    invoke-virtual {v7, v1}, Landroid/widget/SeekBar;->setMax(I)V

    const/16 v1, 0x32

    sub-int v1, v3, v1

    div-int/lit8 v1, v1, 0xa

    invoke-virtual {v7, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    new-instance v1, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity$1;

    invoke-direct {v1, p0, v6}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity$1;-><init>(Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;Landroid/widget/TextView;)V

    invoke-virtual {v7, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "icon_label_size_label"

    const-string v1, "图标名称字体大小"

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->getStringByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v1, 0x7f08009e

    new-instance v10, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity$2;

    invoke-direct {v10, p0, v7, v3}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity$2;-><init>(Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;Landroid/widget/SeekBar;I)V

    invoke-virtual {v8, v1, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public setIconLabelSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->normalizeIconLabelSizePercent(I)I

    move-result p1

    const-string v0, "launcher_icon_label_size"

    invoke-static {v0, p1, p0}, Lcom/smartisanos/launcher/data/LauncherSettings;->updateAndNotice(Ljava/lang/String;ILandroid/content/Context;)V

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->updateIconLabelSizeSummary()V

    return-void
.end method

.method public showIconLabelSizeDialog(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->showIconLabelSizeDialogInternal()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mIconLabelSizeItem:Landroid/view/View;

    if-ne p1, v0, :cond_end

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->showIconLabelSizeDialogInternal()V

    :cond_end
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/smartisanos/home/settings/BaseActivity;->finish()V

    const v0, 0x7f050021

    const v1, 0x7f050024

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/smartisanos/home/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/data/Utils;->applyTransparentStatusBar(Landroid/content/Context;Landroid/view/Window;)V

    invoke-static {p0, v4}, Lcom/smartisanos/launcher/data/Utils;->setMiuiStatusBarDarkMode(Landroid/app/Activity;Z)Z

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "setting_additional_features"

    const-string v2, "layout"

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->setContentView(I)V

    const v0, 0x7f0f0057

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->setupBackBtnOnTitle(I)V

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->getTitleView()Lcom/smartisanos/home/widget/sys/Title;

    move-result-object v0

    const v1, 0x7f0800f3

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/widget/sys/Title;->setBackButtonText(I)V

    const-string v0, "item_id_hide_navigation_bar"

    invoke-direct {p0, v0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->findSwitch(Ljava/lang/String;)Lcom/smartisanos/home/settings/SettingItemSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mHideNavigationBarSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v0, "item_id_transparent_theme_grid_lines"

    invoke-direct {p0, v0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->findSwitch(Ljava/lang/String;)Lcom/smartisanos/home/settings/SettingItemSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mTransparentThemeGridLinesSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v0, "item_id_icon_label_size"

    invoke-direct {p0, v0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->findTextItem(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mIconLabelSizeItem:Landroid/view/View;

    if-eqz v0, :cond_icon_label_item_ready

    const v1, 0x7f0f0160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "icon_label_size_label"

    const-string v3, "图标名称字体大小"

    invoke-direct {p0, v2, v3}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->getStringByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_icon_label_item_ready

    const-string v0, "item_id_hide_dock_label"

    invoke-direct {p0, v0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->findSwitch(Ljava/lang/String;)Lcom/smartisanos/home/settings/SettingItemSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mHideDockLabelSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v0, "item_id_unlock_animation_compat"

    invoke-direct {p0, v0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->findSwitch(Ljava/lang/String;)Lcom/smartisanos/home/settings/SettingItemSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mUnlockAnimationCompatSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v0, "item_id_swipe_up_search"

    invoke-direct {p0, v0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->findSwitch(Ljava/lang/String;)Lcom/smartisanos/home/settings/SettingItemSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSwipeUpSearchSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v0, "item_id_search_default_t9_keyboard"

    invoke-direct {p0, v0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->findSwitch(Ljava/lang/String;)Lcom/smartisanos/home/settings/SettingItemSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSearchDefaultT9KeyboardSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v0, "item_id_search_usage_sort"

    invoke-direct {p0, v0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->findSwitch(Ljava/lang/String;)Lcom/smartisanos/home/settings/SettingItemSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSearchUsageSortSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v0, "item_id_search_recent_apps"

    invoke-direct {p0, v0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->findSwitch(Ljava/lang/String;)Lcom/smartisanos/home/settings/SettingItemSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSearchRecentAppsSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v0, "item_id_search_contacts"

    invoke-direct {p0, v0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->findSwitch(Ljava/lang/String;)Lcom/smartisanos/home/settings/SettingItemSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSearchContactsSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->registerCheckedButton()V

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->updateIconLabelSizeSummary()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "state"    # Z

    .prologue
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mHideNavigationBarSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v1, "launcher_hide_navigation_bar"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->handleSwitchChanged(Landroid/widget/CompoundButton;Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_end

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mHideDockLabelSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v1, "launcher_hide_dock_label"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->handleSwitchChanged(Landroid/widget/CompoundButton;Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_end

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mTransparentThemeGridLinesSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v1, "transparent_theme_grid_lines_enabled"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->handleSwitchChanged(Landroid/widget/CompoundButton;Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_end

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mUnlockAnimationCompatSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v1, "unlock_animation_compat_mode"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->handleSwitchChanged(Landroid/widget/CompoundButton;Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_end

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSwipeUpSearchSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v1, "swipe_up_search_enabled"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->handleSwitchChanged(Landroid/widget/CompoundButton;Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_end

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSearchDefaultT9KeyboardSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v1, "search_default_t9_keyboard"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->handleSwitchChanged(Landroid/widget/CompoundButton;Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_end

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSearchUsageSortSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v1, "search_usage_sort_enabled"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->handleSwitchChanged(Landroid/widget/CompoundButton;Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_end

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSearchRecentAppsSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v1, "search_recent_apps_enabled"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->handleSwitchChanged(Landroid/widget/CompoundButton;Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_end

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSearchContactsSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v1, "search_contacts_enabled"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->handleSwitchChanged(Landroid/widget/CompoundButton;Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)Z

    :cond_end
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-super {p0}, Lcom/smartisanos/home/settings/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mHideNavigationBarSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v1, "launcher_hide_navigation_bar"

    invoke-direct {p0, v0, v1, v2}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->syncSwitch(Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mHideDockLabelSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v1, "launcher_hide_dock_label"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->syncSwitch(Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->updateIconLabelSizeSummary()V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mTransparentThemeGridLinesSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v1, "transparent_theme_grid_lines_enabled"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->syncSwitch(Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mUnlockAnimationCompatSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v1, "unlock_animation_compat_mode"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->syncSwitch(Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSwipeUpSearchSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v1, "swipe_up_search_enabled"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->syncSwitch(Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSearchDefaultT9KeyboardSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v1, "search_default_t9_keyboard"

    invoke-direct {p0, v0, v1, v2}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->syncSwitch(Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSearchUsageSortSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v1, "search_usage_sort_enabled"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->syncSwitch(Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSearchRecentAppsSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v1, "search_recent_apps_enabled"

    invoke-direct {p0, v0, v1, v2}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->syncSwitch(Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->mSearchContactsSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v1, "search_contacts_enabled"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->syncSwitch(Lcom/smartisanos/home/settings/SettingItemSwitch;Ljava/lang/String;Z)V

    return-void
.end method
