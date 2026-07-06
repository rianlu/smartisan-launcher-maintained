.class public Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;
.super Lcom/smartisanos/home/settings/BaseActivity;
.source "AppIconsSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/smartisanos/home/settings/icons/IconLoader$Callback;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

.field private mAllIconInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mDestroyed:Z

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

.field private mRefreshLauncherSettingView:Landroid/view/View;

.field private mIconSizeSettingView:Landroid/view/View;

.field private mIconSizeSummaryView:Landroid/widget/TextView;

.field private mIconSettingsAdapter:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;

.field private mIconFilterMode:I

.field private mIconFilterSettingView:Landroid/view/View;

.field private mIconFilterSummaryView:Landroid/widget/TextView;

.field private mImageLoader:Lcom/smartisanos/home/settings/icons/IconLoader;

.field private mImprovedIconLoadingDialog:Landroid/app/ProgressDialog;

.field private mItemUseImprovedAppIcon:Lcom/smartisanos/home/settings/SettingItemSwitch;

.field private mLoadingFooterView:Landroid/view/View;

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mAllIconInfoList:Ljava/util/ArrayList;

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

.method static synthetic access$1200(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->restartLauncherForIconSizeChange()V

    return-void
.end method

.method static synthetic access$1300(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;
    .param p1, "x1"    # I

    invoke-direct {p0, p1}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->getIconSizeLabel(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Landroid/widget/ImageView;
    .param p3, "x3"    # Landroid/widget/ImageView;
    .param p4, "x4"    # I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->updateIconSizePreview(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->initImageLoaderAndStartLoad()V

    return-void
.end method

.method static synthetic access$1600(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    iget-boolean v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->dismissImprovedIconLoadingDialog()V

    return-void
.end method

.method private dismissImprovedIconLoadingDialog()V
    .locals 2

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mImprovedIconLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_done

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_clear

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_clear
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mImprovedIconLoadingDialog:Landroid/app/ProgressDialog;

    :cond_done
    return-void
.end method

.method private getIconSizeLabel(I)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # I

    if-nez p1, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x6e

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :goto_0

    const/16 p1, 0x78

    :goto_0
    const-string v0, "%d%%"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private restartLauncherForIconSizeChange()V
    .locals 3

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->updateHeaderState()V

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->finish()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.smartisanos.home"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x12000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method private normalizeIconSizePercent(I)I
    .locals 1
    .param p1, "value"    # I

    if-nez p1, :cond_0

    const/16 v0, 0x64

    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 v0, 0x6e

    return v0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const/16 v0, 0x78

    return v0

    :cond_2
    const/16 v0, 0x32

    if-ge p1, v0, :cond_3

    return v0

    :cond_3
    const/16 v0, 0x96

    if-le p1, v0, :cond_4

    return v0

    :cond_4
    return p1
.end method

.method private showIconSizeDialog()V
    .locals 15

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103012b

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string v1, "launcher_icon_size"

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->normalizeIconSizePercent(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v1, 0x7f04007b

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v1, 0x7f0f018b

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    add-int/lit8 v1, v3, -0x32

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    move v14, v1

    mul-int/lit8 v13, v14, 0xa

    add-int/lit8 v13, v13, 0x32

    invoke-direct {p0, v13}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->getIconSizeLabel(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f018c

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/SeekBar;

    invoke-virtual {v7, v14}, Landroid/widget/SeekBar;->setProgress(I)V

    new-instance v1, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$4;

    invoke-direct {v1, p0, v6}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$4;-><init>(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Landroid/widget/TextView;)V

    invoke-virtual {v7, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080270

    invoke-virtual {p0, v1}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v1, 0x7f08009e

    new-instance v9, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$5;

    invoke-direct {v9, p0, v7, v13}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$5;-><init>(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Landroid/widget/SeekBar;I)V

    invoke-virtual {v8, v1, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private updateIconSizePreview(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V
    .locals 7
    .param p1, "smallPreview"    # Landroid/widget/ImageView;
    .param p2, "mediumPreview"    # Landroid/widget/ImageView;
    .param p3, "largePreview"    # Landroid/widget/ImageView;
    .param p4, "value"    # I

    const-string v0, "launcher_mode"

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v3, 0x10

    if-ne v0, v3, :cond_preview_mode_9

    const v0, 0x7f0c00f3

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_preview_mode

    :cond_preview_mode_9
    move v0, v2

    :goto_preview_mode
    int-to-float v1, p4

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setScaleY(F)V

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

.method private appendShortcutIconItems(Ljava/util/Map;)V
    .locals 13
    .param p1, "iconMap"    # Ljava/util/Map;

    invoke-static {}, Lcom/smartisanos/launcher/LauncherModel;->getItemMap()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_shortcut_db_fallback

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    goto :cond_shortcut_source_ready

    :cond_shortcut_db_fallback
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listShortcuts(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    :cond_shortcut_source_ready
    if-eqz v0, :cond_return

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_loop
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_return

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/smartisanos/launcher/data/ShortcutInfo;

    if-eqz v3, :goto_loop

    check-cast v2, Lcom/smartisanos/launcher/data/ShortcutInfo;

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Utils;->isProfileShortcut(Lcom/smartisanos/launcher/data/ItemInfo;)Z

    move-result v3

    if-nez v3, :goto_loop

    iget-wide v4, v2, Lcom/smartisanos/launcher/data/ShortcutInfo;->id:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :goto_loop

    iget-object v6, v2, Lcom/smartisanos/launcher/data/ShortcutInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :goto_loop

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shortcut:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->getRedirectIconInfo(J)Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    move-result-object v9

    if-nez v9, :cond_info_ready

    if-eqz p1, :cond_create_info

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    :cond_create_info
    if-nez v9, :cond_info_ready

    new-instance v9, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    invoke-direct {v9}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;-><init>()V

    :cond_info_ready
    iput-wide v4, v9, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->ownerId:J

    iput-object v6, v9, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    iput-object v7, v9, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->componentName:Ljava/lang/String;

    iget-object v10, v2, Lcom/smartisanos/launcher/data/ShortcutInfo;->title:Ljava/lang/String;

    iput-object v10, v9, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->displayName:Ljava/lang/String;

    const/4 v3, 0x0

    iput-boolean v3, v9, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->useImprovedAppIcon:Z

    iget-object v10, v9, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->iconData:[B

    if-eqz v10, :cond_copy_shortcut_icon

    array-length v10, v10

    if-lez v10, :cond_copy_shortcut_icon

    goto :cond_add

    :cond_copy_shortcut_icon
    iget-object v10, v2, Lcom/smartisanos/launcher/data/ShortcutInfo;->iconData:[B

    iput-object v10, v9, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->iconData:[B

    :cond_add
    iget-object v10, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mAllIconInfoList:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_loop

    :cond_return
    return-void
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

    iget-object v10, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mAllIconInfoList:Ljava/util/ArrayList;

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

    sget-boolean v10, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SYNC_APP_ICON:Z

    iput-boolean v10, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->useImprovedAppIcon:Z

    :cond_2
    iget-object v10, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mAllIconInfoList:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-direct {p0, v5}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->appendShortcutIconItems(Ljava/util/Map;)V

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->applyIconFilter()V

    return-void
.end method

.method private buildRuleSummary()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SYNC_APP_ICON:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->hasSelectedIconPack(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "优先级：自定义 > 改进版图标 > 图标包 > 未匹配\n图标包切换后需手动应用到桌面\n改进版图标开启后自动下载并应用\n单个图标会自动生效"

    return-object v0

    :cond_0
    const-string v0, "优先级：自定义 > 改进版图标 > 未匹配\n改进版图标开启后自动下载并应用\n单个图标会自动生效"

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->hasSelectedIconPack(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "优先级：自定义 > 图标包 > 未匹配\n图标包切换后需手动应用到桌面\n单个图标会自动生效"

    return-object v0

    :cond_2
    const-string v0, "优先级：自定义 > 未匹配\n单个图标会自动生效"

    return-object v0
.end method

.method private getIconFilterLabel(I)Ljava/lang/String;
    .locals 1
    .param p1, "mode"    # I

    packed-switch p1, :pswitch_data_0

    const-string v0, "全部应用"

    return-object v0

    :pswitch_1
    const-string v0, "自定义"

    return-object v0

    :pswitch_2
    const-string v0, "改进版图标"

    return-object v0

    :pswitch_3
    const-string v0, "图标包"

    return-object v0

    :pswitch_4
    const-string v0, "未匹配"

    return-object v0

    :pswitch_5
    const-string v0, "快捷方式"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getIconSourceMode(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)I
    .locals 7
    .param p1, "info"    # Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    const/4 v6, 0x4

    if-nez p1, :cond_info

    return v6

    :cond_info
    iget-object v0, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->drawableName:Ljava/lang/String;

    const-string v1, "__smartisan_default_icon__"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_not_forced_default

    const/4 v0, 0x1

    return v0

    :cond_not_forced_default
    const-string v1, "__smartisan_improved_icon__"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_not_forced_improved

    const/4 v0, 0x1

    return v0

    :cond_not_forced_improved
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_manual

    goto :goto_check_improved

    :cond_manual
    const/4 v0, 0x1

    return v0

    :goto_check_improved
    iget-boolean v0, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->useImprovedAppIcon:Z

    if-eqz v0, :cond_check_pack

    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->getPrimaryId()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mCacheUnOfficial:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_load_improved

    const/4 v0, 0x2

    return v0

    :cond_load_improved
    invoke-virtual {p0, p1}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->loadUnOfficialIcon(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_check_pack

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mCacheUnOfficial:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    return v0

    :cond_check_pack
    invoke-static {p0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->hasSelectedIconPack(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_default

    iget-object v4, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->componentName:Ljava/lang/String;

    invoke-static {p0, v4, v5}, Lcom/smartisanos/home/settings/icons/IconPackManager;->hasPackedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_default

    const/4 v0, 0x2

    return v0

    :cond_default
    return v6
.end method

.method private shouldShowIconForFilter(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;I)Z
    .locals 1
    .param p1, "info"    # Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .param p2, "mode"    # I

    if-nez p2, :cond_check

    const/4 v0, 0x1

    return v0

    :cond_check
    const/4 v0, 0x5

    if-ne p2, v0, :cond_source_check

    if-eqz p1, :cond_no

    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->isShortcutIcon()Z

    move-result v0

    return v0

    :cond_source_check
    invoke-direct {p0, p1}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->getIconSourceMode(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)I

    move-result v0

    if-ne v0, p2, :cond_no

    const/4 v0, 0x1

    return v0

    :cond_no
    const/4 v0, 0x0

    return v0
.end method

.method private applyIconFilter()V
    .locals 4

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mAllIconInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_loop
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_done

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    iget v2, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconFilterMode:I

    invoke-direct {p0, v1, v2}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->shouldShowIconForFilter(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;I)Z

    move-result v2

    if-eqz v2, :goto_loop

    iget-object v3, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_loop

    :cond_done
    return-void
.end method

.method private updateIconFilterSummary()V
    .locals 2

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconFilterSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_done

    iget v1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconFilterMode:I

    invoke-direct {p0, v1}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->getIconFilterLabel(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_done
    return-void
.end method

.method private showIconFilterChooser()V
    .locals 6

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const-string v1, "全部应用"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "自定义"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "改进版图标"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "图标包"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "未匹配"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "快捷方式"

    aput-object v1, v2, v0

    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v0, 0x103012b

    invoke-direct {v3, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "筛选应用"

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget v3, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconFilterMode:I

    new-instance v5, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$9;

    invoke-direct {v5, p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$9;-><init>(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)V

    invoke-virtual {v4, v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public setIconFilterMode(I)V
    .locals 2
    .param p1, "mode"    # I

    if-ltz p1, :cond_reset

    const/4 v0, 0x5

    if-gt p1, v0, :cond_reset

    goto :goto_mode_ready

    :cond_reset
    const/4 p1, 0x0

    :goto_mode_ready
    iput p1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconFilterMode:I

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->applyIconFilter()V

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->updateIconFilterSummary()V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconSettingsAdapter:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;

    if-eqz v0, :cond_done

    invoke-virtual {v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->listView:Landroid/widget/ListView;

    if-eqz v1, :cond_done

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_done
    return-void
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
    .locals 5

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mAllIconInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_done

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_done

    new-array v2, v1, [Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    const/4 v3, 0x0

    :goto_loop
    if-ge v3, v1, :cond_update

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_loop

    :cond_update
    invoke-static {v2}, Lcom/smartisanos/launcher/LauncherModel;->updateAppIcon([Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V

    :cond_done
    return-void
.end method

.method private refreshAllIcons()V
    .locals 1

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mCacheOfficial:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mCacheUnOfficial:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->updateHeaderState()V

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->applyIconFilter()V

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->initImageLoaderAndStartLoad()V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconSettingsAdapter:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;

    if-eqz v0, :cond_refresh_done

    invoke-virtual {v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->notifyDataSetChanged()V

    :cond_refresh_done

    return-void
.end method

.method private dpToPx(I)I
    .locals 3
    .param p1, "dp"    # I

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v0, v1

    return v0
.end method

.method public showIconPackDrawableChooser(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    invoke-static {p0, p1}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->showRecommendedChooser(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V

    return-void
.end method

.method private showIconPackChooser()V
    .locals 14

    invoke-static {}, Lcom/smartisanos/home/settings/icons/IconPackManager;->resetCache()V

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

.method private showIconSourceChooser(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V
    .locals 8
    .param p1, "info"    # Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103012b

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {p0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->hasSelectedIconPack(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_two_items

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v3, "使用当前图标包"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "使用改进版图标"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "选择图标"

    aput-object v3, v2, v1

    goto :goto_items_ready

    :cond_two_items
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v3, "使用当前图标包"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "使用改进版图标"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "选择图标"

    aput-object v3, v2, v1

    :goto_items_ready
    iget-object v7, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->drawableName:Ljava/lang/String;

    const-string v4, "__smartisan_default_icon__"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_checked_base

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_check_improved

    nop

    const/4 v5, 0x2

    goto :goto_checked_ready

    :cond_check_improved
    iget-boolean v5, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->useImprovedAppIcon:Z

    if-eqz v5, :cond_checked_base

    const/4 v5, 0x1

    goto :goto_checked_ready

    :cond_checked_base
    const/4 v5, 0x0

    :goto_checked_ready

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "选择应用图标"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$7;

    invoke-direct {v4, p0, p1}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$7;-><init>(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V

    invoke-virtual {v3, v2, v5, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

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
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconSizeSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const-string v1, "launcher_icon_size"

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;I)I

    move-result v1

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconSizeSummaryView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->getIconSizeLabel(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mRuleSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->buildRuleSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->updateIconFilterSummary()V

    return-void
.end method

.method private initImageLoaderAndStartLoad()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mLoadingFooterView:Landroid/view/View;

    if-eqz v0, :cond_loading_footer_visible

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_loading_footer_visible

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
    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mAllIconInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mAllIconInfoList:Ljava/util/ArrayList;

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

    iget-object v3, v1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->applyIconFilter()V

    return-void
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

.method private showLauncherIconRefreshLoadingDialog()V
    .locals 4

    iget-boolean v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mDestroyed:Z

    if-nez v0, :cond_done

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mImprovedIconLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_create

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_create

    return-void

    :cond_create
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103012b

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const-string v2, "正在刷新桌面图标"

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iput-object v1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mImprovedIconLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    const v0, 0x102000d

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/ProgressBar;

    if-eqz v2, :cond_done

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_done

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_done

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_done
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

.method public applyAutoIconChoice(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SYNC_APP_ICON:Z

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->applyIconSourceChoice(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;Z)V

    return-void
.end method

.method private persistIconChoice(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    if-nez p1, :cond_info

    return-void

    :cond_info
    iget-object v0, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->componentName:Ljava/lang/String;

    iget-object v2, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->drawableName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->isShortcutIcon()Z

    move-result v3

    if-eqz v3, :cond_simple

    iget-object v3, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->iconData:[B

    if-eqz v3, :cond_simple

    array-length v3, v3

    if-lez v3, :cond_simple

    iget-object v3, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->md5:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_md5_ready

    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->getPrimaryId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->md5:Ljava/lang/String;

    :cond_md5_ready
    invoke-static {p1}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->updateIcon(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)Z

    return-void

    :cond_simple
    invoke-static {v0, v1, v2}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->updateIconDrawableName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public applyDefaultIconChoice(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V
    .locals 8
    .param p1, "info"    # Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_return

    iget-object v1, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->componentName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_return

    const-string v2, "__smartisan_default_icon__"

    iput-object v2, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->drawableName:Ljava/lang/String;

    const/4 v3, 0x0

    iput-boolean v3, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->useImprovedAppIcon:Z

    invoke-direct {p0, p1}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->persistIconChoice(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V

    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->getPrimaryId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mCacheOfficial:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->loadOfficialIcon(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_cache_done

    iget-object v5, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mCacheOfficial:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_cache_done
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->applyIconFilter()V

    iget-object v5, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconSettingsAdapter:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;

    if-eqz v5, :cond_update_launcher

    invoke-virtual {v5}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->notifyDataSetChanged()V

    :cond_update_launcher
    const/4 v5, 0x1

    new-array v7, v5, [Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    const/4 v5, 0x0

    aput-object p1, v7, v5

    invoke-static {v7}, Lcom/smartisanos/launcher/LauncherModel;->updateAppIcon([Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V

    :cond_return
    return-void
.end method

.method public applyIconSourceChoice(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;Z)V
    .locals 7
    .param p1, "info"    # Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .param p2, "useImproved"    # Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_return

    iget-object v1, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->componentName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_return

    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->isShortcutIcon()Z

    move-result v2

    if-eqz v2, :cond_not_shortcut

    invoke-virtual {p0, p1}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->applyDefaultIconChoice(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V

    return-void

    :cond_not_shortcut
    const-string v2, ""

    iput-object v2, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->drawableName:Ljava/lang/String;

    iput-boolean p2, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->useImprovedAppIcon:Z

    invoke-static {v0, v1, v2}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->updateIconDrawableName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, p2}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->updateIconStatus(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->getPrimaryId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mCacheOfficial:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->loadOfficialIcon(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_cache_done

    iget-object v3, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mCacheOfficial:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_cache_done

    iget-object v2, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconManager:Lcom/smartisanos/home/settings/icons/IconManager;

    if-eqz v2, :cond_notify_done

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->getPrimaryId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/smartisanos/home/settings/icons/IconManager;->notifyIconUpdate(Ljava/util/Map;)V

    :cond_notify_done
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->applyIconFilter()V

    iget-object v2, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconSettingsAdapter:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;

    if-eqz v2, :cond_return

    invoke-virtual {v2}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->notifyDataSetChanged()V

    :cond_return
    return-void
.end method

.method public applyIconPackDrawableChoice(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;Ljava/lang/String;)V
    .locals 8
    .param p1, "info"    # Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .param p2, "drawableName"    # Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "__smartisan_improved_icon__"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_load_icon_pack_drawable

    invoke-virtual {p0, p1}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->loadUnOfficialIcon(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_drawable_checked

    :cond_load_icon_pack_drawable
    invoke-static {p0, p2}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_drawable_checked
    if-eqz v4, :cond_missing

    iget-object v1, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_return

    iget-object v2, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->componentName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_return

    iput-object p2, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->drawableName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->useImprovedAppIcon:Z

    invoke-direct {p0, p1}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->persistIconChoice(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V

    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->getPrimaryId()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mCacheOfficial:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->applyIconFilter()V

    iget-object v5, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconSettingsAdapter:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;

    if-eqz v5, :cond_update_launcher

    invoke-virtual {v5}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->notifyDataSetChanged()V

    :cond_update_launcher
    const/4 v5, 0x1

    new-array v6, v5, [Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    const/4 v5, 0x0

    aput-object p1, v6, v5

    invoke-static {v6}, Lcom/smartisanos/launcher/LauncherModel;->updateAppIcon([Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V

    return-void

    :cond_missing
    const-string v1, "图标资源不存在"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    :cond_return
    return-void
.end method

.method public loadOfficialIcon(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "info"    # Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    if-eqz p1, :cond_manager

    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->isShortcutIcon()Z

    move-result v0

    if-eqz v0, :cond_manager

    iget-object v0, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->iconData:[B

    if-eqz v0, :cond_manager

    array-length v1, v0

    if-lez v1, :cond_manager

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Utils;->iconDataToDrawable([B)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_manager
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
    .locals 5
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

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mAllIconInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_update_item_status
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_update_item_status_done

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->isShortcutIcon()Z

    move-result v0

    if-eqz v0, :cond_update_normal_icon_status

    goto :goto_update_item_status

    :cond_update_normal_icon_status
    iget-object v0, v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->drawableName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_apply_global_icon_status

    const-string v1, "__smartisan_improved_icon__"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_clear_global_drawable

    iget-boolean v1, v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->useImprovedAppIcon:Z

    if-eqz v1, :goto_update_item_status

    :cond_clear_global_drawable

    const-string v0, ""

    iput-object v0, v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->drawableName:Ljava/lang/String;

    :cond_apply_global_icon_status

    iput-boolean p2, v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->useImprovedAppIcon:Z

    iget-object v0, v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :goto_update_item_status

    iget-object v1, v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->componentName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :goto_update_item_status

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->updateIconDrawableName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, p2}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->updateIconStatus(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_update_item_status

    :cond_update_item_status_done

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mCacheOfficial:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mCacheUnOfficial:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->updateHeaderState()V

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->applyIconFilter()V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconSettingsAdapter:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;

    invoke-virtual {v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->refreshLauncherIcons()V

    if-eqz p2, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_REQUEST_FETCH_ICON:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v0}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)V

    .line 381
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v1, p3, v0

    if-ltz v1, :cond_return

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->showIconPackDrawableChooser(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V

    :cond_return
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconPackSettingView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->showIconPackChooser()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mRefreshLauncherSettingView:Landroid/view/View;

    if-ne p1, v0, :cond_refresh_done

    invoke-static {p0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->clearLauncherRefreshPending(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->showLauncherIconRefreshLoadingDialog()V

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->refreshLauncherIcons()V

    return-void

    :cond_refresh_done
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconSizeSettingView:Landroid/view/View;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->showIconSizeDialog()V

    :cond_1
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconFilterSettingView:Landroid/view/View;

    if-ne p1, v0, :cond_filter_done

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->showIconFilterChooser()V

    return-void

    :cond_filter_done
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f006d

    if-ne v0, v1, :cond_2

    goto :goto_icon_click

    :cond_2
    const v1, 0x7f0f0071

    if-ne v0, v1, :cond_return

    :goto_icon_click
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    if-eqz v3, :cond_return

    check-cast v2, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    const v1, 0x7f0f006d

    if-ne v0, v1, :cond_unofficial_icon

    invoke-virtual {p0, v2}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->applyDefaultIconChoice(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V

    return-void

    :cond_unofficial_icon
    invoke-virtual {p0, v2}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->showIconPackDrawableChooser(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V

    return-void

    :cond_choose_icon_pack_first
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->showIconPackChooser()V

    :cond_return
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

    iput-boolean v9, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mDestroyed:Z

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

    const v8, 0x7f0201cc

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v8, 0x7f040069

    invoke-virtual {v6, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mRefreshLauncherSettingView:Landroid/view/View;

    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mRefreshLauncherSettingView:Landroid/view/View;

    const v8, 0x7f0f0160

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v8, "应用图标包到桌面"

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mRefreshLauncherSettingView:Landroid/view/View;

    const v8, 0x7f0f0161

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v8, "切换图标包后点击生效"

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mRefreshLauncherSettingView:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mRefreshLauncherSettingView:Landroid/view/View;

    const v8, 0x7f0201cc

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v8, 0x7f040069

    invoke-virtual {v6, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconFilterSettingView:Landroid/view/View;

    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconFilterSettingView:Landroid/view/View;

    const v8, 0x7f0f0160

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v8, "筛选应用"

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconFilterSettingView:Landroid/view/View;

    const v8, 0x7f0f0161

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconFilterSummaryView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconFilterSettingView:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconFilterSettingView:Landroid/view/View;

    const v8, 0x7f0201cc

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 99
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v8, 0x7f040069

    invoke-virtual {v6, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconSizeSettingView:Landroid/view/View;

    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconSizeSettingView:Landroid/view/View;

    const v8, 0x7f0f0160

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v8, 0x7f080270

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconSizeSettingView:Landroid/view/View;

    const v8, 0x7f0f0161

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconSizeSummaryView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconSizeSettingView:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconSizeSettingView:Landroid/view/View;

    const v8, 0x7f0201ce

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

    iget-object v8, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconSizeSettingView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mAppIconSettingView:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconPackSettingView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mAppIconSettingView:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconFilterSettingView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mAppIconSettingView:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mRefreshLauncherSettingView:Landroid/view/View;

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

    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040021

    iget-object v10, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v7, v8, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mLoadingFooterView:Landroid/view/View;

    const v8, 0x7f0f0085

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_icon_loading_footer_ready

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_icon_loading_footer_ready
    invoke-virtual {v6, v7}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 127
    new-instance v6, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;

    invoke-direct {v6, p0, p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;-><init>(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconSettingsAdapter:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;

    .line 128
    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->listView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconSettingsAdapter:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v6, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v6, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->updateHeaderState()V

    .line 130
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->updateEmptyView()V

    .line 131
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$6;

    invoke-direct {v7, p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$6;-><init>(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

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
    .locals 2

    .prologue
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mDestroyed:Z

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->dismissImprovedIconLoadingDialog()V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mImageLoader:Lcom/smartisanos/home/settings/icons/IconLoader;

    if-eqz v0, :cond_skip_cancel_loader

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/settings/icons/IconLoader;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mImageLoader:Lcom/smartisanos/home/settings/icons/IconLoader;

    :cond_skip_cancel_loader
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_skip_clear_handler

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_skip_clear_handler
    .line 147
    invoke-super {p0}, Lcom/smartisanos/home/settings/BaseActivity;->onDestroy()V

    .line 148
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->unregisterReceiver()V

    .line 149
    return-void
.end method

.method public onLoadFailed()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mDestroyed:Z

    if-nez v0, :cond_load_failed_done

    .line 515
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mLoadingFooterView:Landroid/view/View;

    if-eqz v0, :cond_load_failed_done

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_load_failed_done
    return-void
.end method

.method public onLoadFinished()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mDestroyed:Z

    if-nez v0, :cond_load_finished_done

    .line 509
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mLoadingFooterView:Landroid/view/View;

    if-eqz v0, :cond_load_finished_notify

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_load_finished_notify
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->mIconSettingsAdapter:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;

    if-eqz v0, :cond_load_finished_done

    invoke-virtual {v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$IconSettingsAdapter;->notifyDataSetChanged()V

    :cond_load_finished_done
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
