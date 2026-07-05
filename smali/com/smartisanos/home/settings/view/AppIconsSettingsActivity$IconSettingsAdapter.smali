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
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    if-eqz p2, :cond_inflate

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_inflate

    move-object v3, v0

    check-cast v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;

    goto :goto_holder_ready

    :cond_inflate
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

    const v0, 0x7f0f006d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;->officialIconLayout:Landroid/widget/FrameLayout;

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

    const v0, 0x7f0f0071

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;->unofficialIconLayout:Landroid/widget/FrameLayout;

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

    :goto_holder_ready
    move v5, p1

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->getCount()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    if-nez v2, :cond_bg_not_single

    const v0, 0x7f020250

    goto :goto_bg_ready

    :cond_bg_not_single
    if-nez v5, :cond_bg_bottom_check

    const v0, 0x7f020253

    goto :goto_bg_ready

    :cond_bg_bottom_check
    if-ne v5, v2, :cond_bg_middle

    const v0, 0x7f02024a

    goto :goto_bg_ready

    :cond_bg_middle
    const v0, 0x7f02024d

    :goto_bg_ready
    iget-object v1, v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    invoke-virtual {p0, v5}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->getPrimaryId()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;->officialIconLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;->unofficialIconLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-static {v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->access$700(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_default_icon_ready

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-virtual {v0, v4}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->loadOfficialIcon(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_default_icon_ready

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-static {v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->access$700(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_default_icon_ready
    iget-object v0, v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;->officialIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-static {v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->access$800(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    const-string v10, "\u672a\u5339\u914d"

    const/4 v11, 0x0

    iget-object v0, v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->drawableName:Ljava/lang/String;

    const-string v5, "__smartisan_default_icon__"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_not_default_marker

    const-string v10, "\u81ea\u5b9a\u4e49"

    goto :goto_set_plus_icon

    :cond_not_default_marker
    const-string v1, "__smartisan_improved_icon__"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_not_manual_improved

    if-eqz v8, :cond_load_manual_improved_icon

    goto :cond_manual_improved_icon_ready

    :cond_load_manual_improved_icon
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-virtual {v0, v4}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->loadUnOfficialIcon(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :goto_check_icon_pack

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-static {v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->access$800(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_manual_improved_icon_ready
    move-object v9, v8

    const-string v10, "\u81ea\u5b9a\u4e49"

    const/4 v11, 0x1

    goto :goto_set_right_drawable

    :cond_not_manual_improved
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_manual_icon

    goto :goto_check_improved

    :cond_manual_icon
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-static {v1, v0}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :goto_check_improved

    const-string v10, "\u81ea\u5b9a\u4e49"

    const/4 v11, 0x1

    goto :goto_set_right_drawable

    :goto_check_improved
    iget-boolean v0, v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->useImprovedAppIcon:Z

    if-eqz v0, :goto_check_icon_pack

    if-eqz v8, :cond_load_improved_icon

    goto :cond_improved_icon_ready

    :cond_load_improved_icon
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-virtual {v0, v4}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->loadUnOfficialIcon(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :goto_check_icon_pack

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-static {v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->access$800(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_improved_icon_ready
    move-object v9, v8

    const-string v10, "\u6539\u8fdb\u7248\u56fe\u6807"

    const/4 v11, 0x1

    goto :goto_set_right_drawable

    :goto_check_icon_pack
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-static {v0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->hasSelectedIconPack(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :goto_set_plus_icon

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    iget-object v1, v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    iget-object v2, v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->componentName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/smartisanos/home/settings/icons/IconPackManager;->getPackedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :goto_set_plus_icon

    const-string v10, "\u56fe\u6807\u5305"

    const/4 v11, 0x1

    goto :goto_set_right_drawable

    :goto_set_plus_icon
    iget-object v0, v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;->unofficialIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200db

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_update_frames

    :goto_set_right_drawable
    iget-object v0, v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;->unofficialIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_update_frames
    if-eqz v5, :cond_forced_default_done

    const/4 v11, 0x0

    const-string v10, "\u81ea\u5b9a\u4e49"

    :cond_forced_default_done
    iget-object v0, v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;->unofficialIconLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/16 v2, 0x8

    if-eqz v11, :cond_select_official

    iget-object v0, v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;->officialIconSelectedFrame:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;->unofficialIconSelectedFrame:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_label_ready

    :cond_select_official
    iget-object v0, v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;->officialIconSelectedFrame:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;->unofficialIconSelectedFrame:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_label_ready
    iget-object v0, v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;->authorName:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->displayName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_display_name_ready

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-static {v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->access$600(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)Lcom/smartisanos/home/settings/icons/IconManager;

    move-result-object v0

    iget-object v1, v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    iget-object v2, v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/home/settings/icons/IconManager;->getLableForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_display_name_ready
    iget-object v0, v3, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
