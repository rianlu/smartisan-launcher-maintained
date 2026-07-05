.class public Lcom/smartisanos/launcher/data/ShortcutIconHelper;
.super Ljava/lang/Object;
.source "ShortcutIconHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static tryUpdateShortcutIcon(Landroid/content/Context;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;Ljava/util/ArrayList;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .param p2, "itemInfoList"    # Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-eqz p1, :cond_return_false

    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->isShortcutIcon()Z

    move-result v3

    if-eqz v3, :cond_return_false

    const/4 v0, 0x1

    iget-wide v1, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->ownerId:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listItem(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_return_true

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_return_true

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v13, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->drawableName:Ljava/lang/String;

    const-string v6, "__smartisan_default_icon__"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_use_original

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_check_improved

    goto :cond_use_original

    :cond_check_improved
    const-string v6, "__smartisan_improved_icon__"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_load_icon_pack

    goto :cond_use_original

    :cond_use_original
    iget-object v6, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->iconData:[B

    if-eqz v6, :cond_load_original_db

    array-length v4, v6

    if-lez v4, :cond_load_original_db

    invoke-static {v6}, Lcom/smartisanos/launcher/data/Utils;->iconDataToDrawable([B)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :cond_drawable_ready

    :cond_load_original_db
    invoke-static {v1, v2}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->getRedirectIcon(J)[B

    move-result-object v6

    if-eqz v6, :cond_return_true

    invoke-static {v6}, Lcom/smartisanos/launcher/data/Utils;->iconDataToDrawable([B)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :cond_drawable_ready

    :cond_load_icon_pack
    invoke-static {p0, v5}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :cond_drawable_ready
    if-eqz v7, :cond_return_true

    invoke-static {v1, v2, v13, v7}, Lcom/smartisanos/launcher/LauncherModel;->getIconDataContentValues(JLjava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/content/ContentValues;

    move-result-object v8

    if-eqz v8, :cond_return_true

    invoke-static {v8}, Lcom/smartisanos/launcher/data/handler/IconDB;->saveIconData(Landroid/content/ContentValues;)Z

    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->ICON_TYPE:Lcom/smartisanos/launcher/data/Constants$IconType;

    sget-object v5, Lcom/smartisanos/launcher/data/Constants$IconType;->Dark:Lcom/smartisanos/launcher/data/Constants$IconType;

    if-eq v4, v5, :cond_dark_icon

    const-string v4, "light_icon"

    goto :cond_column_ready

    :cond_dark_icon
    const-string v4, "dark_icon"

    :cond_column_ready
    invoke-virtual {v8, v4}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v9

    const-string v4, "color_info"

    invoke-virtual {v8, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/LauncherModel;->getItemInfo(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v11

    if-eqz v11, :cond_item_ready

    move-object v10, v11

    :cond_item_ready
    iput-wide v1, v10, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    iput-object v9, v10, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    iput-object v13, v10, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v12}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->toColorInfo(Ljava/lang/String;)Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    move-result-object v11

    if-eqz v11, :cond_add_item

    invoke-virtual {v11, v10}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->setOwner(Lcom/smartisanos/launcher/data/ItemInfo;)V

    iput-object v11, v10, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    :cond_add_item
    if-eqz p2, :cond_return_true

    move-object/from16 v3, p2

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_return_true
    return v0

    :cond_return_false
    return v0
.end method
