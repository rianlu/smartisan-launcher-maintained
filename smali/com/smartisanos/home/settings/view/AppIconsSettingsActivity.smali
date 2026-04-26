.class public Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;
.super Lcom/smartisanos/home/settings/BaseActivity;
.source "AppIconsSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/smartisanos/home/settings/icons/IconLoader$Callback;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;
    }
.end annotation


# static fields
.field private static final log:Lcom/smartisanos/launcher/LOG;


# instance fields
.field private listView:Landroid/widget/ListView;

.field private mAppIconSettingView:Landroid/widget/LinearLayout;

.field private mCacheOfficial:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheUnOfficial:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mChangeIconDemoView:Landroid/widget/LinearLayout;

.field private mChangedPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIconInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIconManager:Lcom/smartisanos/home/settings/icons/IconManager;

.field private mIconPackDialogPackages:[Ljava/lang/String;

.field private mIconPackSettingView:Landroid/view/View;

.field private mIconPackSummaryView:Landroid/widget/TextView;

.field private mIconSettingsAdapter:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;

.field private mImageLoader:Lcom/smartisanos/home/settings/icons/IconLoader;

.field private mItemUseImprovedAppIcon:Lcom/smartisanos/home/settings/SettingItemSwitch;

.field private mRuleSummaryView:Landroid/widget/TextView;

.field private refreshIconListReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/smartisanos/home/settings/BaseActivity;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconInfoList:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mCacheOfficial:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mCacheUnOfficial:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mChangedPackages:Ljava/util/Map;

    .line 75
    new-instance v0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$1;-><init>(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)V

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mHandler:Landroid/os/Handler;

    .line 208
    new-instance v0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$3;-><init>(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)V

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->refreshIconListReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconSettingsAdapter:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->removePackageInDataList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mChangedPackages:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->updateEmptyView()V

    return-void
.end method

.method static synthetic access$500()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$600(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)Lcom/smartisanos/home/settings/icons/IconManager;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconManager:Lcom/smartisanos/home/settings/icons/IconManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mCacheOfficial:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mCacheUnOfficial:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mAppIconSettingView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->initApplicationList()V

    return-void
.end method

.method static synthetic access$1100(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->refreshAllIcons()V

    return-void
.end method

.method private appendIcons(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    .prologue
    .line 172
    new-instance v0, Lcom/smartisanos/home/settings/icons/IconLoader;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p0}, Lcom/smartisanos/home/settings/icons/IconLoader;-><init>(Landroid/content/Context;ILcom/smartisanos/home/settings/icons/IconLoader$Callback;)V

    .line 173
    .local v0, "appender":Lcom/smartisanos/home/settings/icons/IconLoader;
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/settings/icons/IconLoader;->setHandler(Landroid/os/Handler;)V

    .line 175
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/settings/icons/IconLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 176
    return-void
.end method

.method public static inflateListTransparentHeader(Landroid/content/Context;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z

    .prologue
    .line 525
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04006a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private initApplicationList()V
    .locals 14

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v1, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v10, 0x0

    invoke-virtual {v7, v1, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    new-instance v10, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v10, v7}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v8, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v11, Lcom/smartisanos/home/HomeConfig;->DISABLE_LIST_IN_SWITCH_ICON_VIEW:[Ljava/lang/String;

    array-length v12, v11

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v12, :cond_0

    aget-object v13, v11, v10

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->getIconTableData(Z)Ljava/util/Map;

    move-result-object v5

    iget-object v10, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconInfoList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconManager:Lcom/smartisanos/home/settings/icons/IconManager;

    invoke-virtual {v10, v9}, Lcom/smartisanos/home/settings/icons/IconManager;->appendResolveInfo(Landroid/content/pm/ResolveInfo;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    if-nez v0, :cond_2

    new-instance v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    invoke-direct {v0}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;-><init>()V

    iput-object v4, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v10, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->componentName:Ljava/lang/String;

    :cond_2
    iget-object v10, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconInfoList:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void
.end method

.method private buildRuleSummary()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SYNC_APP_ICON:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->hasSelectedIconPack(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "当前规则：改进版图标 > 图标包 > 默认图标\n设置页只更新当前预览，返回桌面后统一生效"

    return-object v0

    :cond_0
    const-string v0, "当前规则：改进版图标 > 默认图标\n设置页只更新当前预览，返回桌面后统一生效"

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->hasSelectedIconPack(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "当前规则：图标包 > 默认图标\n设置页只更新当前预览，返回桌面后统一生效"

    return-object v0

    :cond_2
    const-string v0, "当前规则：默认图标\n设置页只更新当前预览，返回桌面后统一生效"

    return-object v0
.end method

.method private getSelectedIconPackSummary()Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->getSelectedIconPackPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "默认图标"

    return-object v4

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :cond_1
    const-string v4, "默认图标"

    return-object v4

    :catch_0
    move-exception v4

    const-string v4, "默认图标"

    return-object v4
.end method

.method private refreshLauncherIcons()V
    .locals 10

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    iget-object v6, v5, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    new-array v1, v7, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v7, :cond_3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lcom/smartisanos/launcher/LauncherModel;->updateAppIcon([Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private refreshAllIcons()V
    .locals 1

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mCacheOfficial:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mCacheUnOfficial:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->updateHeaderState()V

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->initImageLoaderAndStartLoad()V

    return-void
.end method

.method private showIconPackChooser()V
    .locals 14

    invoke-static {p0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->getIconPackPackages(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    new-array v3, v10, [Ljava/lang/CharSequence;

    new-array v4, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "默认图标"

    aput-object v11, v3, v10

    const/4 v10, 0x0

    const-string v11, ""

    aput-object v11, v4, v10

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v7, v10

    add-int/lit8 v8, v2, 0x1

    :try_start_0
    const/4 v10, 0x0

    invoke-virtual {v6, v7, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_0

    aput-object v10, v3, v8

    goto :goto_1

    :cond_0
    aput-object v7, v3, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v10

    aput-object v7, v3, v8

    :goto_1
    aput-object v7, v4, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-object v4, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconPackDialogPackages:[Ljava/lang/String;

    new-instance v9, Landroid/view/ContextThemeWrapper;

    const v10, 0x103012b

    invoke-direct {v9, p0, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v10, "选择图标包"

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v3, p0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private updateHeaderState()V
    .locals 2

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconPackSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->getSelectedIconPackSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mRuleSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->buildRuleSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private initImageLoaderAndStartLoad()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 165
    new-instance v0, Lcom/smartisanos/home/settings/icons/IconLoader;

    invoke-direct {v0, p0, v3, p0}, Lcom/smartisanos/home/settings/icons/IconLoader;-><init>(Landroid/content/Context;ILcom/smartisanos/home/settings/icons/IconLoader$Callback;)V

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mImageLoader:Lcom/smartisanos/home/settings/icons/IconLoader;

    .line 166
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mImageLoader:Lcom/smartisanos/home/settings/icons/IconLoader;

    iget-object v1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/settings/icons/IconLoader;->setIconList(Ljava/util/List;)V

    .line 167
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mImageLoader:Lcom/smartisanos/home/settings/icons/IconLoader;

    iget-object v1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/settings/icons/IconLoader;->setHandler(Landroid/os/Handler;)V

    .line 168
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mImageLoader:Lcom/smartisanos/home/settings/icons/IconLoader;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/util/HashMap;

    iget-object v2, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mCacheOfficial:Ljava/util/HashMap;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mCacheUnOfficial:Ljava/util/HashMap;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/settings/icons/IconLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 169
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 199
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 200
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.smartisanos.home.ACTION_REQUEST_REFRESH_ICON_LIST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->refreshIconListReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    return-void
.end method

.method private removePackageInDataList(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 327
    if-nez p1, :cond_1

    .line 342
    :cond_0
    return-void

    .line 330
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v0, "illegalList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;>;"
    iget-object v2, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    .line 335
    .local v1, "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    iget-object v3, v1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 336
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 339
    .end local v1    # "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    .line 340
    .restart local v1    # "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    iget-object v3, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 384
    invoke-static {p1, p2, p0}, Lcom/smartisanos/launcher/data/LauncherSettings;->updateAndNotice(Ljava/lang/String;ZLandroid/content/Context;)V

    .line 385
    return-void
.end method

.method private unregisterReceiver()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->refreshIconListReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 206
    return-void
.end method

.method private updateEmptyView()V
    .locals 0

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 530
    invoke-super {p0}, Lcom/smartisanos/home/settings/BaseActivity;->finish()V

    .line 531
    const v0, 0x7f050021

    .line 532
    .local v0, "slide_in_from_left":I
    const v1, 0x7f050024

    .line 533
    .local v1, "slide_out_to_right":I
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->overridePendingTransition(II)V

    .line 534
    return-void
.end method

.method public loadOfficialIcon(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "info"    # Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    iget-object v1, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/smartisanos/home/settings/icons/IconPackManager;->getPackedIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconManager:Lcom/smartisanos/home/settings/icons/IconManager;

    invoke-virtual {v0, p1}, Lcom/smartisanos/home/settings/icons/IconManager;->getOfficialIcon(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadUnOfficialIcon(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "info"    # Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    .prologue
    .line 499
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconManager:Lcom/smartisanos/home/settings/icons/IconManager;

    iget-object v1, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/home/settings/icons/IconManager;->getRedirectedIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 376
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mItemUseImprovedAppIcon:Lcom/smartisanos/home/settings/SettingItemSwitch;

    invoke-virtual {v0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->getSwitch()Lsmartisanos/widget/SwitchEx;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 377
    const-string v0, "DEBUG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged mItemUseImprovedAppIcon changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    sget-object v0, Lcom/smartisanos/launcher/data/InterfaceDefine;->ENABLE_SYNC_APP_ICON:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->setBoolean(Ljava/lang/String;Z)V

    sput-boolean p2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SYNC_APP_ICON:Z

    invoke-static {p0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->markLauncherRefreshPending(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->updateHeaderState()V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconSettingsAdapter:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;

    invoke-virtual {v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->notifyDataSetChanged()V

    if-eqz p2, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_REQUEST_FETCH_ICON:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v0}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)V

    .line 381
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconPackSettingView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->showIconPackChooser()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconPackDialogPackages:[Ljava/lang/String;

    if-eqz v0, :cond_1

    if-ltz p2, :cond_1

    array-length v1, v0

    if-lt p2, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object v0, v0, p2

    invoke-static {p0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->getSelectedIconPackPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0, v0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->setSelectedIconPackPackage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->markLauncherRefreshPending(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->refreshAllIcons()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v12, 0x7f0f0057

    const/4 v11, -0x1

    const/4 v10, -0x2

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 89
    invoke-super {p0, p1}, Lcom/smartisanos/home/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/smartisanos/home/settings/icons/IconPackManager;->warmUpIconPackList(Landroid/content/Context;)V

    .line 90
    invoke-virtual {p0, v7}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->requestWindowFeature(I)Z

    .line 91
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/smartisanos/launcher/data/Utils;->applyTransparentStatusBar(Landroid/content/Context;Landroid/view/Window;)V

    .line 92
    invoke-static {p0, v7}, Lcom/smartisanos/launcher/data/Utils;->setMiuiStatusBarDarkMode(Landroid/app/Activity;Z)Z

    .line 93
    const v6, 0x7f04001f

    invoke-virtual {p0, v6}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->setContentView(I)V

    .line 94
    invoke-virtual {p0, v12}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->setupBackBtnOnTitle(I)V

    .line 96
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mAppIconSettingView:Landroid/widget/LinearLayout;

    .line 97
    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mAppIconSettingView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 98
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v8, 0x7f040069

    invoke-virtual {v6, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconPackSettingView:Landroid/view/View;

    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconPackSettingView:Landroid/view/View;

    const v8, 0x7f0f0160

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v8, "图标包"

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconPackSettingView:Landroid/view/View;

    const v8, 0x7f0f0161

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconPackSummaryView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconPackSettingView:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconPackSettingView:Landroid/view/View;

    const v8, 0x7f020253

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 99
    new-instance v6, Lcom/smartisanos/home/settings/SettingItemSwitch;

    invoke-direct {v6, p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mItemUseImprovedAppIcon:Lcom/smartisanos/home/settings/SettingItemSwitch;

    .line 99
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 101
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 102
    .local v1, "left":I
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 103
    .local v3, "right":I
    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 104
    .local v5, "top":I
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09014f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 105
    .local v0, "bottom":I
    invoke-virtual {v2, v1, v5, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 106
    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mItemUseImprovedAppIcon:Lcom/smartisanos/home/settings/SettingItemSwitch;

    invoke-virtual {v6, v2}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mItemUseImprovedAppIcon:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const v8, 0x7f02024d

    invoke-virtual {v6, v8}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setBackgroundResource(I)V

    .line 107
    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mItemUseImprovedAppIcon:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v8, "优先使用改进版图标"

    invoke-virtual {v6, v8}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mItemUseImprovedAppIcon:Lcom/smartisanos/home/settings/SettingItemSwitch;

    sget-boolean v7, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SYNC_APP_ICON:Z

    invoke-virtual {v6, v7}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setChecked(Z)V

    .line 110
    .line 115
    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mAppIconSettingView:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconPackSettingView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mAppIconSettingView:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mItemUseImprovedAppIcon:Lcom/smartisanos/home/settings/SettingItemSwitch;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Lcom/smartisanos/home/widget/sys/TipsView;

    invoke-direct {v6, p0}, Lcom/smartisanos/home/widget/sys/TipsView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mRuleSummaryView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mRuleSummaryView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v8, 0x7f0e0094

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mRuleSummaryView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v8, 0x7f090136

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mRuleSummaryView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v8, 0x7f090137

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v8, 0x7f09013b

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v6, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v9, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mRuleSummaryView:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mAppIconSettingView:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mRuleSummaryView:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mAppIconSettingView:Landroid/widget/LinearLayout;

    const v7, 0x7f0900c5

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setTop(I)V

    .line 120
    new-instance v6, Lcom/smartisanos/home/settings/icons/IconManager;

    invoke-direct {v6, p0}, Lcom/smartisanos/home/settings/icons/IconManager;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconManager:Lcom/smartisanos/home/settings/icons/IconManager;

    .line 121
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->initApplicationList()V

    const/4 v9, 0x0

    .line 124
    const v6, 0x7f0f0078

    invoke-virtual {p0, v6}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->listView:Landroid/widget/ListView;

    .line 125
    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->listView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-static {p0, v7, v9}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->inflateListTransparentHeader(Landroid/content/Context;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->listView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mAppIconSettingView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 126
    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->listView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-static {p0, v7, v9}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->inflateListTransparentHeader(Landroid/content/Context;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 127
    new-instance v6, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;

    invoke-direct {v6, p0, p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;-><init>(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconSettingsAdapter:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;

    .line 128
    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->listView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconSettingsAdapter:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->updateHeaderState()V

    .line 130
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->updateEmptyView()V

    .line 131
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->initImageLoaderAndStartLoad()V

    .line 132
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->registerReceiver()V

    .line 134
    invoke-virtual {p0, v12}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/home/widget/sys/Title;

    .line 135
    .local v4, "title":Lcom/smartisanos/home/widget/sys/Title;
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08006f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/smartisanos/home/widget/sys/Title;->setTitle(Ljava/lang/CharSequence;)V

    .line 136
    const v6, 0x7f0800f3

    invoke-virtual {v4, v6}, Lcom/smartisanos/home/widget/sys/Title;->setBackButtonText(I)V

    .line 137
    new-instance v6, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$2;

    invoke-direct {v6, p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$2;-><init>(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)V

    invoke-virtual {v4, v6}, Lcom/smartisanos/home/widget/sys/Title;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    .line 143
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Lcom/smartisanos/home/settings/BaseActivity;->onDestroy()V

    .line 148
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->unregisterReceiver()V

    .line 149
    return-void
.end method

.method public onLoadFailed()V
    .locals 0

    .prologue
    .line 515
    return-void
.end method

.method public onLoadFinished()V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconSettingsAdapter:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;

    invoke-virtual {v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->notifyDataSetChanged()V

    .line 510
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Lcom/smartisanos/home/settings/BaseActivity;->onPause()V

    .line 181
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mChangedPackages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconManager:Lcom/smartisanos/home/settings/icons/IconManager;

    iget-object v1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mChangedPackages:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/settings/icons/IconManager;->notifyIconUpdate(Ljava/util/Map;)V

    .line 184
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mChangedPackages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 186
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Lcom/smartisanos/home/settings/BaseActivity;->onResume()V

    .line 154
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mItemUseImprovedAppIcon:Lcom/smartisanos/home/settings/SettingItemSwitch;

    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SYNC_APP_ICON:Z

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setChecked(Z)V

    .line 155
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mItemUseImprovedAppIcon:Lcom/smartisanos/home/settings/SettingItemSwitch;

    invoke-virtual {v0, p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->updateHeaderState()V

    .line 156
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Lcom/smartisanos/home/settings/BaseActivity;->onStop()V

    .line 161
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mItemUseImprovedAppIcon:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 162
    return-void
.end method
