.class public Lcom/smartisanos/home/settings/icons/IconManager;
.super Ljava/lang/Object;
.source "IconManager.java"


# static fields
.field public static final EXTRA_PACKAGENAME:Ljava/lang/String; = "extra_packagename"

.field private static final log:Lcom/smartisanos/launcher/LOG;


# instance fields
.field private mContext:Landroid/content/Context;

.field private resolveInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/smartisanos/home/settings/icons/IconManager;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/home/settings/icons/IconManager;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "cxt"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/smartisanos/home/settings/icons/IconManager;->mContext:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Lcom/smartisanos/home/settings/icons/IconManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisanos/launcher/data/DatabaseHandler;->getResolveInfos(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/settings/icons/IconManager;->resolveInfoMap:Ljava/util/Map;

    .line 41
    return-void
.end method


# virtual methods
.method public appendResolveInfo(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 48
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 49
    .local v0, "cmp":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/smartisanos/home/settings/icons/IconManager;->resolveInfoMap:Ljava/util/Map;

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getIconRedirectedApplications()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->getIconTableData(Z)Ljava/util/Map;

    move-result-object v1

    .line 63
    .local v1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 64
    .local v3, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 66
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getLableForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "componentName"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/smartisanos/home/settings/icons/IconManager;->resolveInfoMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 82
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/smartisanos/home/settings/icons/IconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getOfficialIcon(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "info"    # Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    .prologue
    .line 86
    iget-object v4, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    .line 87
    .local v4, "pkg":Ljava/lang/String;
    iget-object v0, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->componentName:Ljava/lang/String;

    .line 88
    .local v0, "cmp":Ljava/lang/String;
    iget-object v6, p0, Lcom/smartisanos/home/settings/icons/IconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 89
    .local v3, "manager":Landroid/content/pm/PackageManager;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/smartisanos/home/settings/icons/IconManager;->resolveInfoMap:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 91
    .local v5, "rsv":Landroid/content/pm/ResolveInfo;
    if-nez v5, :cond_0

    .line 92
    const/4 v6, 0x0

    .line 97
    :goto_0
    return-object v6

    .line 95
    :cond_0
    invoke-virtual {v5, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 96
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 97
    invoke-static {v1}, Lcom/smartisanos/launcher/data/Utils;->drawableToBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public getRedirectedIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "componentName"    # Ljava/lang/String;

    .prologue
    .line 72
    const/4 v0, 0x0

    if-eqz p1, :goto_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->getRedirectIconInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    move-result-object v1

    if-eqz v1, :goto_0

    iget-boolean v2, v1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->useImprovedAppIcon:Z

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->drawableName:Ljava/lang/String;

    const-string v3, "__smartisan_improved_icon__"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :goto_0

    :cond_1
    iget-object v2, v1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->iconData:[B

    if-nez v2, :cond_2

    .line 74
    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/smartisanos/launcher/data/Utils;->iconDataToDrawable([B)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 76
    goto :goto_0

    :goto_0
    return-object v0
.end method

.method public getResolveInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cmp"    # Ljava/lang/String;

    .prologue
    .line 54
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 55
    :cond_0
    const/4 v1, 0x0

    .line 58
    :goto_0
    return-object v1

    .line 57
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/smartisanos/home/settings/icons/IconManager;->resolveInfoMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    goto :goto_0
.end method

.method public notifyIconUpdate(Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "infos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v10

    if-nez v10, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 106
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 107
    .local v6, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 108
    .local v5, "key":Ljava/lang/String;
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    .line 109
    .local v3, "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    if-eqz v3, :cond_2

    .line 112
    iget-object v8, v3, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    .line 113
    .local v8, "pkg":Ljava/lang/String;
    iget-object v1, v3, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->componentName:Ljava/lang/String;

    .line 114
    .local v1, "cmp":Ljava/lang/String;
    iget-boolean v9, v3, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->useImprovedAppIcon:Z

    .line 115
    .local v9, "use":Z
    invoke-static {v8, v1, v9}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->updateIconStatus(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 116
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 118
    .local v7, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v11, "package"

    invoke-virtual {v7, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v11, "component"

    invoke-virtual {v7, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v11, "use"

    invoke-virtual {v7, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 121
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 122
    :catch_0
    move-exception v2

    .line 123
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 126
    .end local v1    # "cmp":Ljava/lang/String;
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "obj":Lorg/json/JSONObject;
    .end local v8    # "pkg":Ljava/lang/String;
    .end local v9    # "use":Z
    :cond_3
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.smartisanos.launcher.update_icon"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v4, "intent":Landroid/content/Intent;
    const-string v10, "extra_packagename"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    iget-object v10, p0, Lcom/smartisanos/home/settings/icons/IconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
