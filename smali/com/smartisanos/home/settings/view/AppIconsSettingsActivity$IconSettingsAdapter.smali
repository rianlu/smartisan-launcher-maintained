.class Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppIconsSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IconSettingsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 391
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 392
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-static {v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->access$000(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 401
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-static {v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->access$000(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 406
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    const/4 v7, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v7, 0x1

    :cond_1
    if-eqz p2, :cond_2

    if-eqz v7, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;-><init>(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;)V

    const v0, 0x7f0f006c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;->layout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0f006f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;->officialIcon:Landroid/widget/ImageView;

    const v0, 0x7f0f0070

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;->officialIconSelectedFrame:Landroid/widget/ImageView;

    const v0, 0x7f0f006e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;->officialIconBg:Landroid/widget/ImageView;

    const v0, 0x7f0f0073

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;->unofficialIcon:Landroid/widget/ImageView;

    const v0, 0x7f0f0074

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;->unofficialIconSelectedFrame:Landroid/widget/ImageView;

    const v0, 0x7f0f0072

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;->unofficialIconBg:Landroid/widget/ImageView;

    const v0, 0x7f0f0076

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    const v0, 0x7f0f0077

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;->authorName:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;

    :goto_0
    move v5, p1

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->getCount()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    const/4 v0, 0x1

    if-le v2, v0, :cond_6

    if-nez v5, :cond_4

    const v0, 0x7f020253

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v2, -0x1

    if-ne v5, v1, :cond_5

    const v0, 0x7f02024a

    goto :goto_1

    :cond_5
    const v0, 0x7f02024d

    goto :goto_1

    :cond_6
    const/4 v0, 0x1

    if-ne v2, v0, :cond_7

    const v0, 0x7f020250

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_1
    iget-object v1, v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    invoke-virtual {p0, v5}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->getPrimaryId()Ljava/lang/String;

    move-result-object v6

    # --- get base icon (icon pack or default) from mCacheOfficial ---

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-static {v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->access$700(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Drawable;

    # --- get improved icon from mCacheUnOfficial ---

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-static {v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->access$800(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/Drawable;

    # --- determine effective icon: improved > base ---

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SYNC_APP_ICON:Z

    if-eqz v0, :cond_use_base

    if-eqz v8, :cond_use_base

    move-object v7, v8

    :cond_use_base
    iget-object v0, v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;->officialIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    # --- determine source label ---

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SYNC_APP_ICON:Z

    if-eqz v0, :cond_no_improved

    if-eqz v8, :cond_no_improved

    const-string v9, "\u6539\u8fdb\u7248\u56fe\u6807"

    goto :goto_set_label

    :cond_no_improved
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-static {v0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->hasSelectedIconPack(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_default_icon

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    iget-object v1, v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/smartisanos/home/settings/icons/IconPackManager;->hasPackedIcon(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_default_icon

    const-string v9, "\u56fe\u6807\u5305"

    goto :goto_set_label

    :cond_default_icon
    const-string v9, "\u9ed8\u8ba4\u56fe\u6807"

    :goto_set_label
    iget-object v0, v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;->authorName:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    # --- set app name ---

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-static {v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->access$600(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)Lcom/smartisanos/home/settings/icons/IconManager;

    move-result-object v0

    iget-object v1, v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    iget-object v2, v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/home/settings/icons/IconManager;->getLableForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
