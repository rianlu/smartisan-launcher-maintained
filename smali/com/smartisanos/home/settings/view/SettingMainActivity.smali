.class public Lcom/smartisanos/home/settings/view/SettingMainActivity;
.super Lcom/smartisanos/home/settings/BaseActivity;
.source "SettingMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/home/settings/view/SettingMainActivity$LAUNCHER_MODE_VALUE;
    }
.end annotation


# static fields
.field public static final ACTION_MAIN_THEME:Ljava/lang/String; = "com.smartisanos.home.actions.MAIN_THEME"

.field public static final CATEGORY_THEME:Ljava/lang/String; = "com.smartisanos.home.categories.THEME"

.field private static DEFAULT_LAUNCHER_THEME_ID:Ljava/lang/String; = null

.field public static final REQUSET_SCROLL_ANIM:I = 0x1

.field public static final REQUEST_GAUSSIAN_WALLPAPER_PICKER:I = 0x2

.field private static final RESOURCE_THEMES_IDS:Ljava/lang/String; = "themes_ids"

.field private static final THEME_THUMBNAIL_PREFIX_DEFAULT:Ljava/lang/String; = "t/pack1080"

.field private static final THEME_THUMBNAIL_SUFFIX_16:Ljava/lang/String; = "thumbnail_settings_16.png"

.field private static final THEME_THUMBNAIL_SUFFIX_9:Ljava/lang/String; = "thumbnail_settings.png"

.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static myself:Lcom/smartisanos/home/settings/view/SettingMainActivity;


# instance fields
.field private alreadyClicked:Z

.field private mAboutUs:Landroid/view/View;

.field private mAppsView:Lcom/smartisan/moreapps/AppsView;

.field private mDefaultEngineSetter:Landroid/view/View;

.field private mEnableCellular:Lcom/smartisanos/home/settings/SettingItemSwitch;

.field private mFastLaunchTips:Lcom/smartisanos/home/widget/sys/TipsView;

.field private mFeedback:Landroid/widget/RelativeLayout;

.field private mItemHideLable:Lcom/smartisanos/home/settings/SettingItemSwitch;

.field private mHideNavigationBarSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

.field private mItemIcons:Lcom/smartisanos/home/settings/SettingItemTextVertical;

.field private mItemPageFlipAnims:Lcom/smartisanos/home/settings/SettingItemTextVertical;

.field private mItemThemes:Lcom/smartisanos/home/settings/SettingItemTextVertical;

.field private mItemLauncherWallpaper:Lcom/smartisanos/home/settings/SettingItemTextVertical;

.field private mLauncher16Grids:Lcom/smartisanos/home/settings/PreviewSettingItemView;

.field private mLauncher9Grids:Lcom/smartisanos/home/settings/PreviewSettingItemView;

.field private mLauncherSingleModeChooserView:Landroid/view/View;

.field private mLauncherSwitchDialog:Landroid/app/AlertDialog;

.field private mMultiBlockFastLaunchAppSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

.field private mNewLauncherMode:I

.field private mOldLauncherMode:I

.field private mShareItem:Landroid/widget/TextView;

.field private mShareView:Lcom/smartisanos/home/settings/ShareView;

.field private mUpdateCheck:Landroid/widget/RelativeLayout;

.field private mUserExper:Landroid/widget/RelativeLayout;

.field private mViewSwitchers:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/smartisanos/home/settings/view/SettingMainActivity;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->log:Lcom/smartisanos/launcher/LOG;

    .line 96
    const-string v0, "smartisan_theme_black"

    sput-object v0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->DEFAULT_LAUNCHER_THEME_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Lcom/smartisanos/home/settings/BaseActivity;-><init>()V

    .line 66
    iput-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mAppsView:Lcom/smartisan/moreapps/AppsView;

    .line 90
    iput-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mShareItem:Landroid/widget/TextView;

    .line 91
    iput-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mShareView:Lcom/smartisanos/home/settings/ShareView;

    .line 92
    iput-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mUpdateCheck:Landroid/widget/RelativeLayout;

    .line 93
    iput-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mFeedback:Landroid/widget/RelativeLayout;

    .line 94
    iput-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mUserExper:Landroid/widget/RelativeLayout;

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->alreadyClicked:Z

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisanos/home/settings/view/SettingMainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/settings/view/SettingMainActivity;

    .prologue
    .line 60
    iget v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mNewLauncherMode:I

    return v0
.end method

.method static synthetic access$200()Lcom/smartisanos/home/settings/view/SettingMainActivity;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->myself:Lcom/smartisanos/home/settings/view/SettingMainActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/smartisanos/home/settings/view/SettingMainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/settings/view/SettingMainActivity;

    .prologue
    .line 60
    iget v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mOldLauncherMode:I

    return v0
.end method

.method static synthetic access$400(Lcom/smartisanos/home/settings/view/SettingMainActivity;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/settings/view/SettingMainActivity;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->buildSettingInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildEvent(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 570
    new-instance v0, Lcom/smartisanos/home/settings/view/SettingMainActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/home/settings/view/SettingMainActivity$2;-><init>(Lcom/smartisanos/home/settings/view/SettingMainActivity;Landroid/content/Context;)V

    .line 587
    .local v0, "buildTask":Landroid/os/AsyncTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 588
    return-void
.end method

.method private buildSettingInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 666
    const-string v2, "1"

    .line 667
    .local v2, "open":Ljava/lang/String;
    const-string v0, "0"

    .line 669
    .local v0, "close":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 671
    .local v1, "info":Ljava/lang/StringBuilder;
    sget v4, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    packed-switch v4, :pswitch_data_0

    .line 681
    :goto_0
    :pswitch_0
    const-string v4, "allow_network:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->isEnableCellular()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    const-string v4, "theme_name:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/smartisanos/launcher/theme/ThemeManager;->getCurrentTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v5

    iget-object v5, v5, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    const-string v4, "search_engines:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->getCurrentEngineTrackType(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getPageInfo()[Ljava/lang/String;

    move-result-object v3

    .line 691
    .local v3, "pageInfo":[Ljava/lang/String;
    const-string v4, "change_page:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    const-string v4, "hide_page_num:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    const-string v4, "title_page_num:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    const-string v4, "change_page:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->getCurrentScrollAnimType()I

    move-result v5

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Utils;->getAnimIndexFromValue(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    const-string v4, "hide_icon_name:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    if-nez v4, :cond_1

    move-object v4, v2

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    const-string v4, "multi_plate:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->OPEN_APP_IN_MULTI_PAGE_MODE:Z

    if-eqz v5, :cond_2

    .end local v2    # "open":Ljava/lang/String;
    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 673
    .end local v3    # "pageInfo":[Ljava/lang/String;
    .restart local v2    # "open":Ljava/lang/String;
    :pswitch_1
    const-string v4, "grid_type:9;"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 676
    :pswitch_2
    const-string v4, "grid_type:16;"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_0
    move-object v4, v0

    .line 681
    goto/16 :goto_1

    .restart local v3    # "pageInfo":[Ljava/lang/String;
    :cond_1
    move-object v4, v0

    .line 702
    goto :goto_2

    :cond_2
    move-object v2, v0

    .line 705
    goto :goto_3

    .line 671
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 545
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/smartisanos/launcher/data/setting/SettingDB;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static getInstance()Lcom/smartisanos/home/settings/view/SettingMainActivity;
    .locals 1

    .prologue
    .line 565
    sget-object v0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->myself:Lcom/smartisanos/home/settings/view/SettingMainActivity;

    return-object v0
.end method

.method private getIntFromDB(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 523
    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/smartisanos/launcher/data/setting/SettingDB;->readInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getIntFromDB(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 554
    if-nez p1, :cond_0

    .line 555
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getInt error by key is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_0
    invoke-static {p1, p2}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getMessage(Landroid/view/View;I)Ljava/lang/String;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "originalMode"    # I

    .prologue
    .line 527
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mLauncher9Grids:Lcom/smartisanos/home/settings/PreviewSettingItemView;

    if-ne p1, v0, :cond_0

    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    .line 528
    const v0, 0x7f080046

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 530
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f080045

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPageInfo()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 642
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getAllPages()Ljava/util/ArrayList;

    move-result-object v2

    .line 643
    .local v2, "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v4, 0x0

    .line 644
    .local v4, "pageVisible":I
    const/4 v1, 0x0

    .line 645
    .local v1, "pageInvisible":I
    const/4 v3, 0x0

    .line 646
    .local v3, "pageTitleNum":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    .line 647
    .local v0, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 650
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->isVisiblePage()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 651
    add-int/lit8 v4, v4, 0x1

    .line 655
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->getTitleForRect()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 656
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 652
    :cond_2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->isPageHidden()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 653
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 659
    .end local v0    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_3
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 660
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 661
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 662
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    return-object v5
.end method

.method private isEnableCellular()Z
    .locals 1

    .prologue
    .line 511
    const-string v0, "enable_cellular"

    invoke-direct {p0, v0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isHideNavigationBar()Z
    .locals 1

    .prologue
    const-string v0, "launcher_hide_navigation_bar"

    invoke-direct {p0, v0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isMultiBlockLaunchAppOn()Z
    .locals 1

    .prologue
    .line 507
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->OPEN_APP_IN_MULTI_PAGE_MODE:Z

    return v0
.end method

.method private isUnlockAnimEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 515
    const-string v2, "launcher_unlock_animation_enabled"

    invoke-direct {p0, v2}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getIntFromDB(Ljava/lang/String;)I

    move-result v0

    .line 516
    .local v0, "value":I
    if-gez v0, :cond_0

    .line 517
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "LAUNCHER_UNLOCKANIMATION is -1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 519
    :cond_0
    if-ne v0, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private putBoolean(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 550
    invoke-static {p1, p2, p0}, Lcom/smartisanos/launcher/data/LauncherSettings;->updateAndNotice(Ljava/lang/String;ZLandroid/content/Context;)V

    .line 551
    return-void
.end method

.method private putInt(Ljava/lang/String;I)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 561
    invoke-static {p1, p2, p0}, Lcom/smartisanos/launcher/data/LauncherSettings;->updateAndNotice(Ljava/lang/String;ILandroid/content/Context;)V

    .line 562
    return-void
.end method

.method private registerCheckedButton()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mMultiBlockFastLaunchAppSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    invoke-virtual {v0, p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 199
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mItemHideLable:Lcom/smartisanos/home/settings/SettingItemSwitch;

    invoke-virtual {v0, p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 200
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mEnableCellular:Lcom/smartisanos/home/settings/SettingItemSwitch;

    invoke-virtual {v0, p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mHideNavigationBarSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    .line 201
    return-void
.end method

.method private hasAvailableGaussianTheme()Z
    .locals 4

    .prologue
    .line 202
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_MAP:Ljava/util/Map;

    .line 203
    .local v0, "themeMap":Ljava/util/Map;
    if-nez v0, :cond_0

    .line 204
    const/4 v1, 0x0

    .line 221
    :goto_0
    return v1

    .line 206
    :cond_0
    const-string v1, "smartisan_theme_aero"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/theme/Theme;

    .line 207
    .local v1, "theme":Lcom/smartisanos/launcher/theme/Theme;
    if-eqz v1, :cond_1

    iget v2, v1, Lcom/smartisanos/launcher/theme/Theme;->status:I

    const/16 v3, 0x66

    if-ne v2, v3, :cond_1

    .line 208
    const/4 v1, 0x1

    goto :goto_0

    .line 211
    :cond_1
    const-string v1, "smartisan_theme_mist"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/theme/Theme;

    .line 212
    if-eqz v1, :cond_2

    iget v2, v1, Lcom/smartisanos/launcher/theme/Theme;->status:I

    const/16 v3, 0x66

    if-ne v2, v3, :cond_2

    .line 213
    const/4 v1, 0x1

    goto :goto_0

    .line 216
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateGaussianWallpaperItemVisibility()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mItemLauncherWallpaper:Lcom/smartisanos/home/settings/SettingItemTextVertical;

    if-nez v0, :cond_0

    .line 223
    return-void

    .line 226
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeManager;->getCurrentTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ThemeManager;->isGaussianTheme(Lcom/smartisanos/launcher/theme/Theme;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mItemLauncherWallpaper:Lcom/smartisanos/home/settings/SettingItemTextVertical;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 228
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->updateGaussianWallpaperItemPreview()V

    .line 233
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mItemLauncherWallpaper:Lcom/smartisanos/home/settings/SettingItemTextVertical;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private refreshGaussianWallpaperIfNeeded()V
    .locals 2

    .prologue
    .line 202
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeManager;->getCurrentTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v0

    .line 203
    .local v0, "currentTheme":Lcom/smartisanos/launcher/theme/Theme;
    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ThemeManager;->isGaussianTheme(Lcom/smartisanos/launcher/theme/Theme;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    .line 205
    .local v1, "mainView":Lcom/smartisanos/launcher/view/MainView;
    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->changeWallpaper()V

    .line 209
    .end local v1    # "mainView":Lcom/smartisanos/launcher/view/MainView;
    :cond_0
    return-void
.end method

.method private showGaussianWallpaperDialog()V
    .locals 4

    .prologue
    .line 210
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103012b

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 211
    .local v0, "themeWrapper":Landroid/view/ContextThemeWrapper;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080085

    invoke-virtual {p0, v2}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08026d

    .line 212
    invoke-virtual {p0, v2}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/smartisanos/home/settings/view/SettingMainActivity$3;

    invoke-direct {v3, p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity$3;-><init>(Lcom/smartisanos/home/settings/view/SettingMainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08026f

    .line 213
    invoke-virtual {p0, v2}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/smartisanos/home/settings/view/SettingMainActivity$4;

    invoke-direct {v3, p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity$4;-><init>(Lcom/smartisanos/home/settings/view/SettingMainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 215
    return-void
.end method

.method private updateGaussianWallpaperItemPreview()V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mItemLauncherWallpaper:Lcom/smartisanos/home/settings/SettingItemTextVertical;

    if-nez v0, :cond_0

    .line 217
    return-void

    .line 219
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Utils;->getCustomGaussianWallpaper(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 220
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 221
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeManager;->getCurrentTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Utils;->getLockscreenWallpaper(Lcom/smartisanos/launcher/theme/Theme;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 222
    :cond_1
    if-nez v0, :cond_2

    .line 223
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mItemLauncherWallpaper:Lcom/smartisanos/home/settings/SettingItemTextVertical;

    const v2, 0x7f0202b2

    invoke-virtual {v1, v2}, Lcom/smartisanos/home/settings/SettingItemTextVertical;->setImageResource(I)V

    .line 224
    return-void

    .line 227
    :cond_2
    invoke-direct {p0, v0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->scaledItemTheme(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mItemLauncherWallpaper:Lcom/smartisanos/home/settings/SettingItemTextVertical;

    invoke-virtual {v1, v0}, Lcom/smartisanos/home/settings/SettingItemTextVertical;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 229
    return-void
.end method

.method public clearCustomGaussianWallpaper()V
    .locals 3

    .prologue
    .line 234
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Utils;->getCustomGaussianWallpaperFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 235
    .local v0, "customFile":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 239
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->updateGaussianWallpaperItemPreview()V

    .line 240
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->refreshGaussianWallpaperIfNeeded()V

    # Force sync system wallpaper
    const-string v0, "wallpaper_sync_pref"
    const/4 v1, 0x0
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v1, "last_synced_state"
    const-string v2, "force_sync"
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Utils;->syncSystemWallpaperIfNeeded(Landroid/content/Context;)V

    return-void
.end method

.method public launchGaussianWallpaperPicker()V
    .locals 4

    .prologue
    .line 242
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    :try_start_0
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 249
    const v2, 0x7f08026e

    invoke-virtual {p0, v2}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private scaledItemTheme(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 475
    const/4 v1, 0x0

    .line 476
    .local v1, "result":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 477
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 478
    .local v0, "height":I
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v0, :cond_1

    .line 479
    :cond_0
    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 480
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 482
    :cond_1
    if-nez v1, :cond_2

    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p1

    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    move-object p1, v1

    goto :goto_0
.end method

.method private setMultiBlockLaunchApp(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 535
    sput-boolean p1, Lcom/smartisanos/launcher/data/Constants;->OPEN_APP_IN_MULTI_PAGE_MODE:Z

    .line 536
    const-string v1, "fast_launch_app_on"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/smartisanos/launcher/data/LauncherSettings;->updateSetting(Ljava/lang/String;I)V

    .line 537
    return-void

    .line 536
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showOrHideShareView()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mShareView:Lcom/smartisanos/home/settings/ShareView;

    invoke-virtual {v0}, Lcom/smartisanos/home/settings/ShareView;->show()V

    .line 368
    return-void
.end method

.method private startFeedback()V
    .locals 6

    .prologue
    .line 385
    const/4 v0, 0x0

    .line 386
    .local v0, "btnText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 387
    .local v3, "res":Landroid/content/res/Resources;
    if-eqz v3, :cond_0

    .line 388
    const v4, 0x7f0800f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 391
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 392
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/smartisan/feedbackhelper/FeedbackActivity;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 394
    const-string v4, "theme_style"

    const-string v5, "light"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    const-string v4, "app_name"

    const v5, 0x7f080022

    invoke-virtual {p0, v5}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const-string v4, "package_name"

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 400
    const-string v4, "back_text"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    :cond_1
    const/4 v4, 0x2

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    .line 407
    .local v1, "enterAnim":[I
    invoke-virtual {p0, v2}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 408
    const/4 v4, 0x0

    aget v4, v1, v4

    const/4 v5, 0x1

    aget v5, v1, v5

    invoke-virtual {p0, v4, v5}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->overridePendingTransition(II)V

    .line 409
    return-void

    .line 402
    :array_0
    .array-data 4
        0x7f050022
        0x7f050023
    .end array-data
.end method

.method private startGooglePlayApp()V
    .locals 5

    .prologue
    .line 412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 413
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 414
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.android.vending"

    const-string v4, "com.android.vending.AssetBrowserActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 417
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->startGooglePlayWeb()V

    goto :goto_0
.end method

.method private startGooglePlayWeb()V
    .locals 6

    .prologue
    .line 425
    const-string v0, "https://play.google.com/store/apps/details?id="

    .line 426
    .local v0, "URL":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 427
    .local v3, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 428
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 430
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :goto_0
    return-void

    .line 431
    :catch_0
    move-exception v1

    .line 432
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private startUserExpericent()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 372
    const v5, 0x7f0800c6

    const v6, 0x7f040077

    const/4 v7, 0x1

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-static/range {v0 .. v7}, Lcom/smartisan/useragreement/UserAgreementActivity;->startActivity(Landroid/content/Context;IIIIIIZ)V

    .line 381
    return-void
.end method

.method private openBatteryOptimizationSettings()V
    .locals 7

    .prologue
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v1

    :try_start_2
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "package"

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception v6

    return-void
.end method

.method private unregisterCheckedButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 205
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mMultiBlockFastLaunchAppSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 206
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mItemHideLable:Lcom/smartisanos/home/settings/SettingItemSwitch;

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 207
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mEnableCellular:Lcom/smartisanos/home/settings/SettingItemSwitch;

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mHideNavigationBarSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    .line 208
    return-void
.end method

.method private updateLauncherAnimPreview()V
    .locals 8

    .prologue
    .line 187
    const/4 v1, 0x0

    .line 189
    .local v1, "defAnim":I
    const-string v4, "launcher_page_animation"

    invoke-static {v4, v1}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;I)I

    move-result v0

    .line 190
    .local v0, "currentAnim":I
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Utils;->getAnimIndexFromValue(I)I

    move-result v2

    .line 191
    .local v2, "index":I
    sget-object v4, Lcom/smartisanos/home/settings/view/SettingMainActivity;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateLauncherAnimPreview ==> anim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", index"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0065

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 193
    .local v3, "mThemeIcon":Landroid/content/res/TypedArray;
    iget-object v4, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mItemPageFlipAnims:Lcom/smartisanos/home/settings/SettingItemTextVertical;

    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/home/settings/SettingItemTextVertical;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    return-void
.end method

.method private updateLauncherModeView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 492
    iget v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mNewLauncherMode:I

    sparse-switch v0, :sswitch_data_0

    .line 504
    :goto_0
    return-void

    .line 494
    :sswitch_0
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mLauncher9Grids:Lcom/smartisanos/home/settings/PreviewSettingItemView;

    invoke-virtual {v0, v2}, Lcom/smartisanos/home/settings/PreviewSettingItemView;->setChecked(Z)V

    .line 495
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mLauncher16Grids:Lcom/smartisanos/home/settings/PreviewSettingItemView;

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/settings/PreviewSettingItemView;->setChecked(Z)V

    .line 496
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mViewSwitchers:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 499
    :sswitch_1
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mLauncher9Grids:Lcom/smartisanos/home/settings/PreviewSettingItemView;

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/settings/PreviewSettingItemView;->setChecked(Z)V

    .line 500
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mLauncher16Grids:Lcom/smartisanos/home/settings/PreviewSettingItemView;

    invoke-virtual {v0, v2}, Lcom/smartisanos/home/settings/PreviewSettingItemView;->setChecked(Z)V

    .line 501
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mViewSwitchers:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 492
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method private updateLauncherThemePreview()V
    .locals 10

    .prologue
    .line 438
    const-string v6, "launcher_theme"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/smartisanos/launcher/data/LauncherSettings;->getStringFromDB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 439
    .local v2, "currentTheme":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080269

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 443
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 449
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const-string v6, "theme_preview"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    sget v6, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 454
    const-string v6, "thumbnail_settings_16.png"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 459
    .local v3, "currentThemePath":Ljava/lang/String;
    sget-object v6, Lcom/smartisanos/home/settings/view/SettingMainActivity;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentThemePath ==> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const/4 v5, 0x0

    .line 462
    .local v5, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 463
    if-eqz v5, :cond_1

    .line 464
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 465
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->scaledItemTheme(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 466
    iget-object v6, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mItemThemes:Lcom/smartisanos/home/settings/SettingItemTextVertical;

    invoke-virtual {v6, v0}, Lcom/smartisanos/home/settings/SettingItemTextVertical;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 467
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    return-void

    .line 456
    .end local v3    # "currentThemePath":Ljava/lang/String;
    .end local v5    # "is":Ljava/io/InputStream;
    :cond_2
    const-string v6, "thumbnail_settings.png"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 469
    .restart local v3    # "currentThemePath":Ljava/lang/String;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .line 470
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public buildSettingConfig(Landroid/content/Context;)Lcom/smartisanos/home/tracker/TrackerConstants$EventData;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 592
    const-string v2, "1"

    .line 593
    .local v2, "open":Ljava/lang/String;
    const-string v0, "0"

    .line 595
    .local v0, "close":Ljava/lang/String;
    new-instance v1, Lcom/smartisanos/home/tracker/TrackerConstants$EventData;

    invoke-direct {v1}, Lcom/smartisanos/home/tracker/TrackerConstants$EventData;-><init>()V

    .line 598
    .local v1, "eventData":Lcom/smartisanos/home/tracker/TrackerConstants$EventData;
    sget v4, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    packed-switch v4, :pswitch_data_0

    .line 608
    :goto_0
    :pswitch_0
    const-string v5, "allow_network"

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->isEnableCellular()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    :goto_1
    invoke-virtual {v1, v5, v4}, Lcom/smartisanos/home/tracker/TrackerConstants$EventData;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v4, "search_engines"

    invoke-static {p1}, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->getCurrentEngineTrackType(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/smartisanos/home/tracker/TrackerConstants$EventData;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string v4, "theme_name"

    invoke-static {p1}, Lcom/smartisanos/launcher/theme/ThemeManager;->getCurrentTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v5

    iget-object v5, v5, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/smartisanos/home/tracker/TrackerConstants$EventData;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getPageInfo()[Ljava/lang/String;

    move-result-object v3

    .line 618
    .local v3, "pageInfo":[Ljava/lang/String;
    const-string v4, "page_num"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v1, v4, v5}, Lcom/smartisanos/home/tracker/TrackerConstants$EventData;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v4, "hide_page_num"

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v1, v4, v5}, Lcom/smartisanos/home/tracker/TrackerConstants$EventData;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v4, "title_page_num"

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-virtual {v1, v4, v5}, Lcom/smartisanos/home/tracker/TrackerConstants$EventData;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string v4, "change_page"

    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->getCurrentScrollAnimType()I

    move-result v5

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Utils;->getAnimIndexFromValue(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/smartisanos/home/tracker/TrackerConstants$EventData;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v5, "hide_icon_name"

    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    if-nez v4, :cond_1

    move-object v4, v2

    :goto_2
    invoke-virtual {v1, v5, v4}, Lcom/smartisanos/home/tracker/TrackerConstants$EventData;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v4, "multi_plate"

    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->OPEN_APP_IN_MULTI_PAGE_MODE:Z

    if-eqz v5, :cond_2

    .end local v2    # "open":Ljava/lang/String;
    :goto_3
    invoke-virtual {v1, v4, v2}, Lcom/smartisanos/home/tracker/TrackerConstants$EventData;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    return-object v1

    .line 600
    .end local v3    # "pageInfo":[Ljava/lang/String;
    .restart local v2    # "open":Ljava/lang/String;
    :pswitch_1
    const-string v4, "grid_type"

    const-string v5, "9"

    invoke-virtual {v1, v4, v5}, Lcom/smartisanos/home/tracker/TrackerConstants$EventData;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 603
    :pswitch_2
    const-string v4, "grid_type"

    const-string v5, "16"

    invoke-virtual {v1, v4, v5}, Lcom/smartisanos/home/tracker/TrackerConstants$EventData;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v4, v0

    .line 608
    goto :goto_1

    .restart local v3    # "pageInfo":[Ljava/lang/String;
    :cond_1
    move-object v4, v0

    .line 629
    goto :goto_2

    :cond_2
    move-object v2, v0

    .line 632
    goto :goto_3

    .line 598
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public changeEngineShowText()V
    .locals 2

    .prologue
    .line 182
    const v1, 0x7f0f0161

    invoke-virtual {p0, v1}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 183
    .local v0, "textView":Landroid/widget/TextView;
    invoke-static {p0}, Lcom/smartisanos/quicksearchbox/util/EngineUtil;->getCurrentEngineText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 309
    invoke-super {p0}, Lcom/smartisanos/home/settings/BaseActivity;->finish()V

    .line 312
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "state"    # Z

    .prologue
    .line 316
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mMultiBlockFastLaunchAppSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    invoke-virtual {v0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->getSwitch()Lsmartisanos/widget/SwitchEx;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 317
    sget-object v0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "A140"

    const-string v2, "onCheckedChanged mMultiBlockFastLaunchAppSwitch"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-direct {p0, p2}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->setMultiBlockLaunchApp(Z)V

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mItemHideLable:Lcom/smartisanos/home/settings/SettingItemSwitch;

    invoke-virtual {v0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->getSwitch()Lsmartisanos/widget/SwitchEx;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 323
    sget-object v0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "A140"

    const-string v2, "onCheckedChanged mItemHideLable"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v0, "launcher_hide_lable"

    invoke-direct {p0, v0, p2}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mHideNavigationBarSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->getSwitch()Lsmartisanos/widget/SwitchEx;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 325
    sget-object v0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "A140"

    const-string v2, "onCheckedChanged mHideNavigationBarSwitch"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "launcher_hide_navigation_bar"

    invoke-direct {p0, v0, p2}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mEnableCellular:Lcom/smartisanos/home/settings/SettingItemSwitch;

    invoke-virtual {v0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->getSwitch()Lsmartisanos/widget/SwitchEx;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 326
    sget-object v0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "A140"

    const-string v2, "onCheckedChanged mEnableCellular"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v0, "enable_cellular"

    invoke-direct {p0, v0, p2}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    .line 212
    if-nez p1, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget v4, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mOldLauncherMode:I

    iput v4, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mNewLauncherMode:I

    .line 217
    iget-object v4, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mLauncher9Grids:Lcom/smartisanos/home/settings/PreviewSettingItemView;

    if-ne p1, v4, :cond_5

    .line 218
    sget-object v4, Lcom/smartisanos/home/settings/view/SettingMainActivity;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "A140"

    const-string v6, "onClick mLauncher9Grids !"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/16 v4, 0x9

    iput v4, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mNewLauncherMode:I

    .line 224
    :cond_2
    :goto_1
    iget v4, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mNewLauncherMode:I

    iget v5, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mOldLauncherMode:I

    if-eq v4, v5, :cond_3

    .line 225
    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v4, 0x103012b

    invoke-direct {v3, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 227
    .local v3, "themeWrapper":Landroid/view/ContextThemeWrapper;
    sget-object v4, Lcom/smartisanos/home/settings/view/SettingMainActivity;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "A140"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick mNewLauncherMode ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mNewLauncherMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], mOldLauncherMode ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mOldLauncherMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f080047

    invoke-virtual {p0, v5}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget v5, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mOldLauncherMode:I

    .line 229
    invoke-direct {p0, p1, v5}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getMessage(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080042

    .line 230
    invoke-virtual {p0, v5}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080044

    .line 231
    invoke-virtual {p0, v5}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/smartisanos/home/settings/view/SettingMainActivity$1;

    invoke-direct {v6, p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity$1;-><init>(Lcom/smartisanos/home/settings/view/SettingMainActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 254
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mLauncherSwitchDialog:Landroid/app/AlertDialog;

    .line 255
    iget-object v4, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mLauncherSwitchDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 258
    .end local v3    # "themeWrapper":Landroid/view/ContextThemeWrapper;
    :cond_3
    const/4 v2, 0x0

    .line 259
    .local v2, "send":Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 260
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const/high16 v4, 0x20000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 262
    iget-object v4, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mItemThemes:Lcom/smartisanos/home/settings/SettingItemTextVertical;

    if-ne p1, v4, :cond_6

    .line 263
    sget-object v4, Lcom/smartisanos/home/settings/view/SettingMainActivity;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "A140"

    const-string v6, "click item themes"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const/4 v2, 0x1

    .line 265
    const-class v4, Lcom/smartisanos/home/settings/ThemeChooserActivity;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 281
    :cond_4
    :goto_2
    if-eqz v2, :cond_b

    .line 282
    iget-boolean v4, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->alreadyClicked:Z

    if-eqz v4, :cond_a

    .line 283
    sget-object v4, Lcom/smartisanos/home/settings/view/SettingMainActivity;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    const-string v6, "onClick return by alreadyClicked"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 220
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "send":Z
    :cond_5
    iget-object v4, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mLauncher16Grids:Lcom/smartisanos/home/settings/PreviewSettingItemView;

    if-ne p1, v4, :cond_2

    .line 221
    sget-object v4, Lcom/smartisanos/home/settings/view/SettingMainActivity;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "A140"

    const-string v6, "onClick mLauncher16Grids !"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const/16 v4, 0x10

    iput v4, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mNewLauncherMode:I

    goto/16 :goto_1

    .line 266
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "send":Z
    :cond_6
    iget-object v4, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mItemLauncherWallpaper:Lcom/smartisanos/home/settings/SettingItemTextVertical;

    if-ne p1, v4, :cond_item_icons

    .line 267
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->showGaussianWallpaperDialog()V

    goto/16 :goto_0

    .line 268
    :cond_item_icons
    iget-object v4, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mItemIcons:Lcom/smartisanos/home/settings/SettingItemTextVertical;

    if-ne p1, v4, :cond_item_anim

    .line 269
    sget-object v4, Lcom/smartisanos/home/settings/view/SettingMainActivity;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "A140"

    const-string v6, "click item icons"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const/4 v2, 0x1

    .line 269
    const-class v4, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_2

    .line 272
    :cond_item_anim
    iget-object v4, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mItemPageFlipAnims:Lcom/smartisanos/home/settings/SettingItemTextVertical;

    if-ne p1, v4, :cond_about_us

    .line 273
    const/4 v2, 0x1

    .line 274
    const-class v4, Lcom/smartisanos/home/settings/LauncherAnimChooseActivity;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_2

    .line 275
    :cond_about_us
    iget-object v4, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mAboutUs:Landroid/view/View;

    if-ne p1, v4, :cond_default_engine

    .line 277
    const/4 v2, 0x1

    .line 278
    const-class v4, Lcom/smartisanos/home/settings/AboutUsActivity;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_2

    .line 279
    :cond_default_engine
    iget-object v4, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mDefaultEngineSetter:Landroid/view/View;

    if-ne p1, v4, :cond_4

    .line 278
    const/4 v2, 0x1

    .line 279
    const-class v4, Lcom/smartisanos/home/settings/EngineSetActivity;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_2

    .line 286
    :cond_a
    iput-boolean v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->alreadyClicked:Z

    .line 287
    const-string v4, "back_text_id"

    const v5, 0x7f0800c3

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    invoke-virtual {p0, v1, v8}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->startActivityWithAnim(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 292
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 293
    .local v0, "id":I
    const v4, 0x7f0f0151

    if-ne v0, v4, :cond_c

    .line 294
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->showOrHideShareView()V

    goto/16 :goto_0

    .line 295
    :cond_c
    const v4, 0x7f0f0152

    if-ne v0, v4, :cond_d

    .line 296
    invoke-static {p0, v8}, Lcom/smartisanos/launcher/data/Utils;->checkUpdate(Landroid/app/Activity;Z)V

    goto/16 :goto_0

    .line 297
    :cond_d
    const v4, 0x7f0f0154

    if-ne v0, v4, :cond_e

    .line 298
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->startFeedback()V

    goto/16 :goto_0

    .line 299
    :cond_e
    const v4, 0x7f0f0155

    if-ne v0, v4, :cond_f

    .line 300
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->startUserExpericent()V

    goto/16 :goto_0

    .line 301
    :cond_f
    const-string v4, "setting_battery_optimization"

    const-string v5, "id"

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ne v0, v4, :cond_f1

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->openBatteryOptimizationSettings()V

    goto/16 :goto_0

    :cond_f1
    const-string v4, "setting_switch_launcher"

    const-string v5, "id"

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ne v0, v4, :cond_f2

    :try_start_switch_launcher
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.HOME_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->startActivity(Landroid/content/Intent;)V

    :try_end_switch_launcher
    .catch Ljava/lang/Exception; {:try_start_switch_launcher .. :try_end_switch_launcher} :catch_switch_launcher

    goto/16 :goto_0

    :catch_switch_launcher
    move-exception v4

    :try_start_switch_launcher2
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.MANAGE_DEFAULT_APPS_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->startActivity(Landroid/content/Intent;)V

    :try_end_switch_launcher2
    .catch Ljava/lang/Exception; {:try_start_switch_launcher2 .. :try_end_switch_launcher2} :catch_switch_launcher2

    goto/16 :goto_0

    :catch_switch_launcher2
    move-exception v4

    goto/16 :goto_0

    :cond_f2
    iget-object v4, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mShareView:Lcom/smartisanos/home/settings/ShareView;

    invoke-virtual {v4}, Lcom/smartisanos/home/settings/ShareView;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 303
    iget-object v4, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mShareView:Lcom/smartisanos/home/settings/ShareView;

    invoke-virtual {v4}, Lcom/smartisanos/home/settings/ShareView;->dismiss()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 108
    invoke-super {p0, p1}, Lcom/smartisanos/home/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0, v9}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->requestWindowFeature(I)Z

    .line 110
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/smartisanos/launcher/data/Utils;->applyTransparentStatusBar(Landroid/content/Context;Landroid/view/Window;)V

    .line 111
    invoke-static {p0, v9}, Lcom/smartisanos/launcher/data/Utils;->setMiuiStatusBarDarkMode(Landroid/app/Activity;Z)Z

    .line 112
    const v8, 0x7f040067

    invoke-virtual {p0, v8}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->setContentView(I)V

    .line 114
    sget-object v8, Lcom/smartisanos/home/settings/view/SettingMainActivity;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "A140"

    const-string v10, "SettingMainActivity create !"

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const v8, 0x7f0f0149

    invoke-virtual {p0, v8}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/home/settings/SettingItemTextVertical;

    iput-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mItemThemes:Lcom/smartisanos/home/settings/SettingItemTextVertical;

    .line 116
    iget-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mItemThemes:Lcom/smartisanos/home/settings/SettingItemTextVertical;

    invoke-virtual {v8, p0}, Lcom/smartisanos/home/settings/SettingItemTextVertical;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v8, 0x7f0f0187

    invoke-virtual {p0, v8}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/home/settings/SettingItemTextVertical;

    iput-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mItemLauncherWallpaper:Lcom/smartisanos/home/settings/SettingItemTextVertical;

    .line 119
    iget-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mItemLauncherWallpaper:Lcom/smartisanos/home/settings/SettingItemTextVertical;

    invoke-virtual {v8, p0}, Lcom/smartisanos/home/settings/SettingItemTextVertical;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v8, 0x7f0f014b

    invoke-virtual {p0, v8}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/home/settings/SettingItemTextVertical;

    iput-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mItemIcons:Lcom/smartisanos/home/settings/SettingItemTextVertical;

    .line 119
    iget-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mItemIcons:Lcom/smartisanos/home/settings/SettingItemTextVertical;

    invoke-virtual {v8, p0}, Lcom/smartisanos/home/settings/SettingItemTextVertical;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v8, 0x7f0f014a

    invoke-virtual {p0, v8}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/home/settings/SettingItemTextVertical;

    iput-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mItemPageFlipAnims:Lcom/smartisanos/home/settings/SettingItemTextVertical;

    .line 122
    iget-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mItemPageFlipAnims:Lcom/smartisanos/home/settings/SettingItemTextVertical;

    invoke-virtual {v8, p0}, Lcom/smartisanos/home/settings/SettingItemTextVertical;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v8, 0x7f0f0148

    invoke-virtual {p0, v8}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mLauncherSingleModeChooserView:Landroid/view/View;

    .line 125
    iget-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mLauncherSingleModeChooserView:Landroid/view/View;

    const v9, 0x7f0f00d3

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/home/settings/PreviewSettingItemView;

    iput-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mLauncher9Grids:Lcom/smartisanos/home/settings/PreviewSettingItemView;

    .line 126
    iget-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mLauncherSingleModeChooserView:Landroid/view/View;

    const v9, 0x7f0f00d4

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/home/settings/PreviewSettingItemView;

    iput-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mLauncher16Grids:Lcom/smartisanos/home/settings/PreviewSettingItemView;

    .line 128
    const v8, 0x7f0f014e

    invoke-virtual {p0, v8}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mDefaultEngineSetter:Landroid/view/View;

    .line 129
    const v8, 0x7f0f014d

    invoke-virtual {p0, v8}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mViewSwitchers:Landroid/view/View;

    .line 131
    iget-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mViewSwitchers:Landroid/view/View;

    const v9, 0x7f0f00d0

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/home/settings/SettingItemSwitch;

    iput-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mMultiBlockFastLaunchAppSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    .line 132
    iget-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mViewSwitchers:Landroid/view/View;

    const v9, 0x7f0f00d1

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/home/widget/sys/TipsView;

    iput-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mFastLaunchTips:Lcom/smartisanos/home/widget/sys/TipsView;

    .line 133
    const-string v8, "multi_block_mode"

    const/16 v9, 0x24

    invoke-static {v8, v9}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;I)I

    move-result v5

    .line 134
    .local v5, "setting":I
    const/16 v8, 0x40

    if-ne v5, v8, :cond_0

    .line 135
    iget-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mFastLaunchTips:Lcom/smartisanos/home/widget/sys/TipsView;

    const v9, 0x7f080076

    invoke-virtual {v8, v9}, Lcom/smartisanos/home/widget/sys/TipsView;->setText(I)V

    .line 137
    :cond_0
    const v8, 0x7f0f014f

    invoke-virtual {p0, v8}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/home/settings/SettingItemSwitch;

    iput-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mEnableCellular:Lcom/smartisanos/home/settings/SettingItemSwitch;

    .line 139
    const-string v8, "launcher_mode"

    const/16 v9, 0x9

    .line 140
    invoke-direct {p0, v8, v9}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getIntFromDB(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mOldLauncherMode:I

    iput v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mNewLauncherMode:I

    .line 141
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->updateLauncherModeView()V

    .line 143
    const v8, 0x7f0f014c

    invoke-virtual {p0, v8}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/home/settings/SettingItemSwitch;

    iput-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mItemHideLable:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const-string v8, "item_id_hide_navigation_bar"

    const-string v9, "id"

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_skip_hide_navigation_switch

    instance-of v1, v0, Lcom/smartisanos/home/settings/SettingItemSwitch;

    if-eqz v1, :cond_skip_hide_navigation_switch

    check-cast v0, Lcom/smartisanos/home/settings/SettingItemSwitch;

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mHideNavigationBarSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    :cond_skip_hide_navigation_switch
    .line 145
    const v8, 0x7f0f0057

    invoke-virtual {p0, v8}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/home/widget/sys/Title;

    .line 146
    .local v6, "title":Lcom/smartisanos/home/widget/sys/Title;
    sput-object p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->myself:Lcom/smartisanos/home/settings/view/SettingMainActivity;

    .line 148
    iget-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mDefaultEngineSetter:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mLauncher9Grids:Lcom/smartisanos/home/settings/PreviewSettingItemView;

    invoke-virtual {v8, p0}, Lcom/smartisanos/home/settings/PreviewSettingItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mLauncher16Grids:Lcom/smartisanos/home/settings/PreviewSettingItemView;

    invoke-virtual {v8, p0}, Lcom/smartisanos/home/settings/PreviewSettingItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v8, 0x7f0f0156

    invoke-virtual {p0, v8}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mAboutUs:Landroid/view/View;

    .line 153
    const v8, 0x7f0f0151

    invoke-virtual {p0, v8}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mShareItem:Landroid/widget/TextView;

    .line 154
    const v8, 0x7f0f0152

    invoke-virtual {p0, v8}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mUpdateCheck:Landroid/widget/RelativeLayout;

    .line 155
    const v8, 0x7f0f0154

    invoke-virtual {p0, v8}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mFeedback:Landroid/widget/RelativeLayout;

    .line 156
    const v8, 0x7f0f0155

    invoke-virtual {p0, v8}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mUserExper:Landroid/widget/RelativeLayout;

    .line 158
    const-string v8, "setting_switch_launcher"

    const-string v9, "id"

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_skip_switch_launcher

    invoke-virtual {p0, v8}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_skip_switch_launcher

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_skip_switch_launcher
    const-string v8, "setting_battery_optimization"

    const-string v9, "id"

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_skip_battery_optimization

    invoke-virtual {p0, v8}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_skip_battery_optimization

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_skip_battery_optimization
    iget-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mAboutUs:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mShareItem:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mUpdateCheck:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mFeedback:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mUserExper:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    new-instance v8, Lcom/smartisanos/home/settings/ShareView;

    invoke-direct {v8, p0}, Lcom/smartisanos/home/settings/ShareView;-><init>(Landroid/app/Activity;)V

    iput-object v8, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mShareView:Lcom/smartisanos/home/settings/ShareView;

    .line 166
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 167
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .line 169
    .local v7, "versionName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "pkg":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v4, v3, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 171
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "pkg":Ljava/lang/String;
    :goto_0
    const v8, 0x7f0f0153

    invoke-virtual {p0, v8}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 176
    .local v0, "checkUpgradeItemText":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 177
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "v"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :cond_1
    return-void

    .line 172
    .end local v0    # "checkUpgradeItemText":Landroid/widget/TextView;
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "1.0.x"

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 180
    invoke-super {p0, p1, p2, p3}, Lcom/smartisanos/home/settings/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 181
    const/4 v0, 0x2

    if-ne p1, v0, :cond_return

    const/4 v0, -0x1

    if-ne p2, v0, :cond_return

    if-eqz p3, :cond_return

    .line 182
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 183
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_return

    .line 185
    const/4 v5, 0x0

    .line 186
    .local v5, "input":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 188
    .local v6, "output":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 189
    if-eqz v5, :cond_fail

    .line 190
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 191
    .local v1, "original":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_fail

    .line 192
    const/4 v0, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/Utils;->getLockscreenWallpaper(Lcom/smartisanos/launcher/theme/Theme;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 193
    .local v2, "processed":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_fail

    .line 194
    invoke-static {v2}, Lcom/smartisanos/launcher/data/Utils;->Bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    .line 195
    .local v3, "wallpaperBytes":[B
    if-eqz v3, :cond_fail

    .line 196
    const-string v0, "gaussian_wallpaper.png"

    invoke-virtual {p0, v0, v8}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v6

    .line 197
    invoke-virtual {v6, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 198
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->updateGaussianWallpaperItemPreview()V

    .line 199
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->refreshGaussianWallpaperIfNeeded()V

    # Force sync system wallpaper
    const-string v0, "wallpaper_sync_pref"
    const/4 v1, 0x0
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v1, "last_synced_state"
    const-string v2, "force_sync"
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p0}, Lcom/smartisanos/launcher/data/Utils;->syncSystemWallpaperIfNeeded(Landroid/content/Context;)V

    goto :goto_cleanup

    .line 202
    .end local v1    # "original":Landroid/graphics/Bitmap;
    .end local v2    # "processed":Landroid/graphics/Bitmap;
    .end local v3    # "wallpaperBytes":[B
    :cond_fail
    const v0, 0x7f08026c

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :goto_cleanup
    if-eqz v5, :cond_close_output

    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    :cond_close_output
    if-eqz v6, :cond_return

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 221
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 205
    const v1, 0x7f08026c

    invoke-virtual {p0, v1}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_cleanup

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 210
    if-eqz v5, :cond_close_output_throw

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 216
    :cond_close_output_throw
    if-eqz v6, :cond_throw

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 221
    :cond_throw
    throw v0

    .line 211
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :cond_close_output

    .line 217
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 211
    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :cond_close_output_throw

    .line 217
    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :cond_throw

    .line 221
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "input":Ljava/io/InputStream;
    .end local v6    # "output":Ljava/io/FileOutputStream;
    :cond_return
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 358
    invoke-super {p0}, Lcom/smartisanos/home/settings/BaseActivity;->onDestroy()V

    .line 359
    invoke-direct {p0, p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->buildEvent(Landroid/content/Context;)V

    .line 360
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mAppsView:Lcom/smartisan/moreapps/AppsView;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mAppsView:Lcom/smartisan/moreapps/AppsView;

    invoke-virtual {v0}, Lcom/smartisan/moreapps/AppsView;->onDestroy()V

    .line 363
    :cond_0
    sget-object v0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    const-string v2, "onDestroy"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 335
    invoke-super {p0}, Lcom/smartisanos/home/settings/BaseActivity;->onResume()V

    .line 336
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->changeEngineShowText()V

    .line 337
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->updateLauncherThemePreview()V

    .line 338
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->updateLauncherAnimPreview()V

    .line 339
    const-string v1, "launcher_hide_lable"

    invoke-direct {p0, v1}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 340
    .local v0, "isHideLable":Z
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mItemHideLable:Lcom/smartisanos/home/settings/SettingItemSwitch;

    invoke-virtual {v1, v0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setChecked(Z)V

    .line 341
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mMultiBlockFastLaunchAppSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->isMultiBlockLaunchAppOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setChecked(Z)V

    .line 342
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mEnableCellular:Lcom/smartisanos/home/settings/SettingItemSwitch;

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->isEnableCellular()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setChecked(Z)V

    iget-object v1, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mHideNavigationBarSwitch:Lcom/smartisanos/home/settings/SettingItemSwitch;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->isHideNavigationBar()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setChecked(Z)V

    :cond_0
    .line 343
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->updateGaussianWallpaperItemVisibility()V

    .line 344
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->registerCheckedButton()V

    .line 345
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->alreadyClicked:Z

    .line 346
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 349
    invoke-super {p0}, Lcom/smartisanos/home/settings/BaseActivity;->onStop()V

    .line 350
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mLauncherSwitchDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity;->mLauncherSwitchDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 353
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->unregisterCheckedButton()V

    .line 354
    return-void
.end method
