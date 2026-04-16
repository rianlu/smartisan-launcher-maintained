.class public final Lcom/smartisanos/launcher/theme/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# static fields
.field public static final ACTION_MAIN_THEME:Ljava/lang/String; = "com.smartisanos.launcher.actions.MAIN_THEME"

.field public static final CATEGORY_THEME:Ljava/lang/String; = "com.smartisanos.launcher.categories.THEME"

.field private static final COLOR_THEMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final GAUSS_THEME_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERMISSION_READ_THEME:Ljava/lang/String; = "com.smartisanos.launcher.permissions.READ_THEME"

.field public static SUPPORTED_THEME_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/smartisanos/launcher/theme/Theme;",
            ">;"
        }
    .end annotation
.end field

.field public static SUPPORTED_THEME_ORDER:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final THEME_ID_AERO:Ljava/lang/String; = "smartisan_theme_aero"

.field public static final THEME_ID_BLACK:Ljava/lang/String; = "smartisan_theme_black"

.field public static final THEME_ID_BLUE:Ljava/lang/String; = "smartisan_theme_blue"

.field public static final THEME_ID_CYAN:Ljava/lang/String; = "smartisan_theme_cyan"

.field public static final THEME_ID_DARK_WOOD:Ljava/lang/String; = "smartisan_theme_dark_wood"

.field public static final THEME_ID_GREEN:Ljava/lang/String; = "smartisan_theme_green"

.field public static final THEME_ID_INDIGO:Ljava/lang/String; = "smartisan_theme_indigo"

.field public static final THEME_ID_LEATHER:Ljava/lang/String; = "smartisan_theme_leather"

.field public static final THEME_ID_LIGHT_BLUE:Ljava/lang/String; = "smartisan_theme_light_blue"

.field public static final THEME_ID_LIGHT_WOOD:Ljava/lang/String; = "smartisan_theme_light_wood"

.field public static final THEME_ID_L_Brown:Ljava/lang/String; = "LiteraryBrown"

.field public static final THEME_ID_L_Cyan:Ljava/lang/String; = "LiteraryCyan"

.field public static final THEME_ID_L_Green:Ljava/lang/String; = "LiteraryGreen"

.field public static final THEME_ID_L_Pink:Ljava/lang/String; = "LiteraryPink"

.field public static final THEME_ID_L_Purple:Ljava/lang/String; = "LiteraryPurple"

.field public static final THEME_ID_L_Red:Ljava/lang/String; = "LiteraryRed"

.field public static final THEME_ID_L_White:Ljava/lang/String; = "LiteraryWhite"

.field public static final THEME_ID_L_Yellow:Ljava/lang/String; = "LiteraryYellow"

.field public static final THEME_ID_MIST:Ljava/lang/String; = "smartisan_theme_mist"

.field public static final THEME_ID_ORANGE:Ljava/lang/String; = "smartisan_theme_orange"

.field public static final THEME_ID_PURPLE:Ljava/lang/String; = "smartisan_theme_purple"

.field public static final THEME_ID_RED:Ljava/lang/String; = "smartisan_theme_red"

.field public static final THEME_ID_STRIP:Ljava/lang/String; = "smartisan_theme_strip"

.field public static final THEME_ID_YELLOW:Ljava/lang/String; = "smartisan_theme_yellow"

.field public static final THEME_PATH_PREFIX:Ljava/lang/String; = "theme"

.field public static final THEME_PATH_PREVIEW:Ljava/lang/String; = "theme_preview"

.field public static THEME_PKG_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final THEME_PREFIX:Ljava/lang/String; = "com.smartisanos.launcher.theme"

.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static mCurrentTheme:Lcom/smartisanos/launcher/theme/Theme;

.field private static mDefaultTheme:Lcom/smartisanos/launcher/theme/Theme;

.field private static mLastTheme:Lcom/smartisanos/launcher/theme/Theme;

.field public static mNeedResetBackgroundInMultiPageMode:Z

.field private static sEnabledHiddenThemeCount:I

.field private static sHiddenThemeNames:[Ljava/lang/String;

.field private static themeOrder:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    const-class v0, Lcom/smartisanos/launcher/theme/ThemeManager;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/theme/ThemeManager;->log:Lcom/smartisanos/launcher/LOG;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/theme/ThemeManager;->GAUSS_THEME_LIST:Ljava/util/List;

    .line 96
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeManager;->GAUSS_THEME_LIST:Ljava/util/List;

    const-string v1, "smartisan_theme_aero"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeManager;->GAUSS_THEME_LIST:Ljava/util/List;

    const-string v1, "smartisan_theme_mist"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "smartisan_theme_black"

    aput-object v1, v0, v3

    const-string v1, "smartisan_theme_light_blue"

    aput-object v1, v0, v4

    const-string v1, "smartisan_theme_aero"

    aput-object v1, v0, v5

    const-string v1, "smartisan_theme_mist"

    aput-object v1, v0, v6

    const-string v1, "smartisan_theme_dark_wood"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "smartisan_theme_light_wood"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "smartisan_theme_strip"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "smartisan_theme_red"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "smartisan_theme_orange"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "smartisan_theme_yellow"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "smartisan_theme_green"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "smartisan_theme_cyan"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "smartisan_theme_blue"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "smartisan_theme_purple"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "LiteraryCyan"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "LiteraryWhite"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "LiteraryPink"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "LiteraryYellow"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "LiteraryGreen"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "LiteraryBrown"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "LiteraryRed"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "LiteraryPurple"

    aput-object v2, v0, v1

    sput-object v0, Lcom/smartisanos/launcher/theme/ThemeManager;->themeOrder:[Ljava/lang/String;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_ORDER:Ljava/util/List;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_MAP:Ljava/util/Map;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/theme/ThemeManager;->THEME_PKG_MAP:Ljava/util/Map;

    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/theme/ThemeManager;->COLOR_THEMES:Ljava/util/Map;

    .line 292
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeManager;->COLOR_THEMES:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "smartisan_theme_red"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeManager;->COLOR_THEMES:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "smartisan_theme_cyan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeManager;->COLOR_THEMES:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "smartisan_theme_yellow"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeManager;->COLOR_THEMES:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "smartisan_theme_purple"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeManager;->COLOR_THEMES:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "smartisan_theme_orange"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeManager;->COLOR_THEMES:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "smartisan_theme_blue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeManager;->COLOR_THEMES:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "smartisan_theme_green"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeManager;->COLOR_THEMES:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "smartisan_theme_light_blue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.smartisanos.launcher.themes"

    aput-object v1, v0, v3

    sput-object v0, Lcom/smartisanos/launcher/theme/ThemeManager;->sHiddenThemeNames:[Ljava/lang/String;

    .line 313
    sput v3, Lcom/smartisanos/launcher/theme/ThemeManager;->sEnabledHiddenThemeCount:I

    .line 316
    sput-boolean v3, Lcom/smartisanos/launcher/theme/ThemeManager;->mNeedResetBackgroundInMultiPageMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/theme/Theme;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeManager;->mCurrentTheme:Lcom/smartisanos/launcher/theme/Theme;

    return-object v0
.end method

.method public static getAllSupportThemeList([Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;
    .locals 22
    .param p0, "themeAliases"    # [Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/theme/Theme;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v15, "themes":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/theme/Theme;>;"
    if-nez p0, :cond_1

    .line 287
    :cond_0
    return-object v15

    .line 254
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 255
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 256
    .local v7, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    aget-object v3, p0, v16

    .line 258
    .local v3, "aliases":Ljava/lang/String;
    :try_start_0
    const-string v18, "string"

    const-string v19, "com.smartisanos.home"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v3, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 259
    .local v10, "themeIdResId":I
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 260
    .local v9, "themeId":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_PKG"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "string"

    const-string v20, "com.smartisanos.home"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v7, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 261
    .local v13, "themePkgResId":I
    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 262
    .local v12, "themePkg":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_name"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "string"

    const-string v20, "com.smartisanos.home"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v7, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 263
    .local v11, "themeNameResId":I
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 264
    .local v14, "themeResName":Ljava/lang/String;
    sget-object v18, Lcom/smartisanos/launcher/theme/ThemeManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v19, "DEBUG"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "aliases ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "], theme id ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "], res name ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "], pkg ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    new-instance v8, Lcom/smartisanos/launcher/theme/Theme;

    invoke-direct {v8, v9}, Lcom/smartisanos/launcher/theme/Theme;-><init>(Ljava/lang/String;)V

    .line 266
    .local v8, "theme":Lcom/smartisanos/launcher/theme/Theme;
    iput-object v12, v8, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    .line 267
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_PKG"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v8, Lcom/smartisanos/launcher/theme/Theme;->displayNameRes:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :try_start_1
    invoke-virtual {v5, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 270
    .local v6, "res":Landroid/content/res/Resources;
    iput-object v6, v8, Lcom/smartisanos/launcher/theme/Theme;->mResources:Landroid/content/res/Resources;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 274
    .end local v6    # "res":Landroid/content/res/Resources;
    :goto_1
    :try_start_2
    sget-boolean v18, Lcom/smartisanos/launcher/data/Constants;->IS_U1_BOARD:Z

    if-eqz v18, :cond_2

    .line 275
    iget-object v0, v8, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 276
    sget-object v18, Lcom/smartisanos/launcher/theme/ThemeManager;->GAUSS_THEME_LIST:Ljava/util/List;

    iget-object v0, v8, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 256
    .end local v8    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    .end local v9    # "themeId":Ljava/lang/String;
    .end local v10    # "themeIdResId":I
    .end local v11    # "themeNameResId":I
    .end local v12    # "themePkg":Ljava/lang/String;
    .end local v13    # "themePkgResId":I
    .end local v14    # "themeResName":Ljava/lang/String;
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 281
    .restart local v8    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    .restart local v9    # "themeId":Ljava/lang/String;
    .restart local v10    # "themeIdResId":I
    .restart local v11    # "themeNameResId":I
    .restart local v12    # "themePkg":Ljava/lang/String;
    .restart local v13    # "themePkgResId":I
    .restart local v14    # "themeResName":Ljava/lang/String;
    :cond_2
    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 282
    .end local v8    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    .end local v9    # "themeId":Ljava/lang/String;
    .end local v10    # "themeIdResId":I
    .end local v11    # "themeNameResId":I
    .end local v12    # "themePkg":Ljava/lang/String;
    .end local v13    # "themePkgResId":I
    .end local v14    # "themeResName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 283
    .local v4, "e":Ljava/lang/Exception;
    sget-object v18, Lcom/smartisanos/launcher/theme/ThemeManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v19, "DEBUG"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "get value error by aliases ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 271
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v8    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    .restart local v9    # "themeId":Ljava/lang/String;
    .restart local v10    # "themeIdResId":I
    .restart local v11    # "themeNameResId":I
    .restart local v12    # "themePkg":Ljava/lang/String;
    .restart local v13    # "themePkgResId":I
    .restart local v14    # "themeResName":Ljava/lang/String;
    :catch_1
    move-exception v18

    goto :goto_1
.end method

.method public static getBlackTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, "theme":Lcom/smartisanos/launcher/theme/Theme;
    const-string v1, "com.smartisanos.home"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    sget-object v1, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_MAP:Ljava/util/Map;

    const-string v2, "smartisan_theme_black"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    check-cast v0, Lcom/smartisanos/launcher/theme/Theme;

    .line 372
    .restart local v0    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    .line 373
    sget v1, Lcom/smartisanos/launcher/ResIds$string;->theme_default_name:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/launcher/theme/Theme;->mName:Ljava/lang/String;

    .line 374
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/launcher/theme/Theme;->mResources:Landroid/content/res/Resources;

    .line 376
    :cond_0
    return-object v0
.end method

.method public static declared-synchronized getCurrentTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 324
    const-class v6, Lcom/smartisanos/launcher/theme/ThemeManager;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lcom/smartisanos/launcher/theme/ThemeManager;->mCurrentTheme:Lcom/smartisanos/launcher/theme/Theme;

    if-nez v5, :cond_3

    .line 326
    const-string v5, "launcher_theme"

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, "themeId":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 329
    const-string v5, "smartisan_theme_fire"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 331
    const-string v3, "smartisan_theme_orange"

    .line 332
    const-string v5, "launcher_theme"

    invoke-static {v5, v3}, Lcom/smartisanos/launcher/data/LauncherSettings;->updateSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeManager;->getInstalledThemes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 335
    .local v4, "themes":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/theme/Theme;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 336
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 337
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/theme/Theme;

    .line 338
    .local v2, "t":Lcom/smartisanos/launcher/theme/Theme;
    iget-object v5, v2, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 340
    sput-object v2, Lcom/smartisanos/launcher/theme/ThemeManager;->mCurrentTheme:Lcom/smartisanos/launcher/theme/Theme;

    .line 336
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "t":Lcom/smartisanos/launcher/theme/Theme;
    .end local v4    # "themes":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/theme/Theme;>;"
    :cond_2
    sget-object v5, Lcom/smartisanos/launcher/theme/ThemeManager;->mCurrentTheme:Lcom/smartisanos/launcher/theme/Theme;

    if-nez v5, :cond_3

    .line 347
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeManager;->getDefaultTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v5

    sput-object v5, Lcom/smartisanos/launcher/theme/ThemeManager;->mCurrentTheme:Lcom/smartisanos/launcher/theme/Theme;

    .line 350
    .end local v3    # "themeId":Ljava/lang/String;
    :cond_3
    sget-object v5, Lcom/smartisanos/launcher/theme/ThemeManager;->mCurrentTheme:Lcom/smartisanos/launcher/theme/Theme;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-object v5

    .line 324
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static declared-synchronized getDefaultTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 386
    const-class v3, Lcom/smartisanos/launcher/theme/ThemeManager;

    monitor-enter v3

    move-object v0, p0

    .line 387
    .local v0, "defaultCtx":Landroid/content/Context;
    :try_start_0
    const-string v2, "com.smartisanos.home"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 390
    :try_start_1
    const-string v2, "com.smartisanos.home"

    const/4 v4, 0x4

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 397
    :cond_0
    :goto_0
    :try_start_2
    sget-object v2, Lcom/smartisanos/launcher/theme/ThemeManager;->mDefaultTheme:Lcom/smartisanos/launcher/theme/Theme;

    if-nez v2, :cond_1

    .line 399
    sget-object v2, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_MAP:Ljava/util/Map;

    const-string v4, "smartisan_theme_black"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/theme/Theme;

    sput-object v2, Lcom/smartisanos/launcher/theme/ThemeManager;->mDefaultTheme:Lcom/smartisanos/launcher/theme/Theme;

    .line 400
    sget-object v2, Lcom/smartisanos/launcher/theme/ThemeManager;->mDefaultTheme:Lcom/smartisanos/launcher/theme/Theme;

    sget v4, Lcom/smartisanos/launcher/ResIds$string;->theme_default_name:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/smartisanos/launcher/theme/Theme;->mName:Ljava/lang/String;

    .line 401
    sget-object v2, Lcom/smartisanos/launcher/theme/ThemeManager;->mDefaultTheme:Lcom/smartisanos/launcher/theme/Theme;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, v2, Lcom/smartisanos/launcher/theme/Theme;->mResources:Landroid/content/res/Resources;

    .line 402
    sget-object v2, Lcom/smartisanos/launcher/theme/ThemeManager;->mDefaultTheme:Lcom/smartisanos/launcher/theme/Theme;

    const-string v4, ""

    iput-object v4, v2, Lcom/smartisanos/launcher/theme/Theme;->mPath:Ljava/lang/String;

    .line 408
    :goto_1
    sget-object v2, Lcom/smartisanos/launcher/theme/ThemeManager;->mDefaultTheme:Lcom/smartisanos/launcher/theme/Theme;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-object v2

    .line 392
    :catch_0
    move-exception v1

    .line 393
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 386
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 405
    :cond_1
    :try_start_4
    sget-object v2, Lcom/smartisanos/launcher/theme/ThemeManager;->mDefaultTheme:Lcom/smartisanos/launcher/theme/Theme;

    sget v4, Lcom/smartisanos/launcher/ResIds$string;->theme_default_name:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/smartisanos/launcher/theme/Theme;->mName:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public static getDefaultThemeId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 358
    const-string v1, "smartisan_theme_black"

    .line 359
    .local v1, "themeId":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->getDeviceColor()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "color":Ljava/lang/String;
    const-string v2, "beige"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 361
    const-string v1, "LiteraryWhite"

    .line 365
    :cond_0
    :goto_0
    return-object v1

    .line 362
    :cond_1
    const-string v2, "white"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    const-string v1, "smartisan_theme_light_blue"

    goto :goto_0
.end method

.method public static getInstalledThemeByPackage(Landroid/content/Context;Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 521
    const/4 v1, 0x0

    .line 523
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 524
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 526
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    if-nez v1, :cond_1

    .line 527
    const/4 v3, 0x0

    .line 539
    :cond_0
    :goto_1
    return-object v3

    .line 529
    :cond_1
    const/4 v3, 0x0

    .line 531
    .local v3, "theme":Lcom/smartisanos/launcher/theme/Theme;
    :try_start_1
    invoke-static {p1}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeByPackageName(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v3

    .line 532
    if-eqz v3, :cond_0

    .line 533
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 534
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v1, v2}, Lcom/smartisanos/launcher/theme/Theme;->updateFromPackage(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 536
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 525
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public static getInstalledThemeByPkg(Landroid/content/Context;Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 224
    const/4 v3, 0x0

    .line 225
    .local v3, "theme":Lcom/smartisanos/launcher/theme/Theme;
    if-eqz p1, :cond_0

    .line 226
    invoke-static {p1}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeByPackageName(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v3

    .line 227
    if-eqz v3, :cond_0

    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 229
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 231
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 235
    :goto_0
    if-eqz v1, :cond_2

    .line 236
    invoke-virtual {v3, v1, v2}, Lcom/smartisanos/launcher/theme/Theme;->updateFromPackage(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;)V

    .line 243
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_1
    if-nez v3, :cond_1

    .line 244
    sget-object v4, Lcom/smartisanos/launcher/theme/ThemeManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getThemeByPackageName return null by pkg ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_1
    return-object v3

    .line 232
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 239
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getInstalledThemes(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/theme/Theme;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v5, "themes":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/theme/Theme;>;"
    sget-object v6, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_ORDER:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 493
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 494
    sget-object v6, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_ORDER:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 495
    .local v1, "id":Ljava/lang/String;
    sget-object v6, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_MAP:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/theme/Theme;

    .line 496
    .local v2, "theme":Lcom/smartisanos/launcher/theme/Theme;
    if-eqz v2, :cond_0

    .line 497
    iget-object v6, v2, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/smartisanos/launcher/theme/ThemeManager;->getInstalledThemeByPackage(Landroid/content/Context;Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v3

    .line 498
    .local v3, "installedTheme":Lcom/smartisanos/launcher/theme/Theme;
    if-eqz v3, :cond_0

    .line 499
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    .end local v3    # "installedTheme":Lcom/smartisanos/launcher/theme/Theme;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 503
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    :cond_1
    return-object v5
.end method

.method public static getNotInstalledThemeList(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/theme/Theme;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/theme/Theme;",
            ">;"
        }
    .end annotation

    .prologue
    .line 468
    .local p0, "installedThemes":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/theme/Theme;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v2, "installIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 470
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/theme/Theme;

    .line 471
    .local v4, "theme":Lcom/smartisanos/launcher/theme/Theme;
    iget-object v7, v4, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 474
    .end local v4    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v5, "themes":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/theme/Theme;>;"
    sget-object v6, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_ORDER:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 476
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 477
    sget-object v6, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_ORDER:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 478
    .local v1, "id":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "smartisan_theme_copper_red"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "smartisan_theme_gintama"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 476
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 481
    :cond_2
    sget-object v6, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_MAP:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/theme/Theme;

    .line 482
    .restart local v4    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    if-eqz v4, :cond_1

    .line 485
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 487
    .end local v1    # "id":Ljava/lang/String;
    .end local v4    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    :cond_3
    return-object v5
.end method

.method public static declared-synchronized getPreviousTheme()Lcom/smartisanos/launcher/theme/Theme;
    .locals 2

    .prologue
    .line 354
    const-class v0, Lcom/smartisanos/launcher/theme/ThemeManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/smartisanos/launcher/theme/ThemeManager;->mLastTheme:Lcom/smartisanos/launcher/theme/Theme;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getSupportedThemeByList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/theme/Theme;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v4, "themes":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/theme/Theme;>;"
    sget-object v5, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_ORDER:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 215
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 216
    sget-object v5, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_ORDER:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 217
    .local v1, "id":Ljava/lang/String;
    sget-object v5, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_MAP:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/theme/Theme;

    .line 218
    .local v3, "theme":Lcom/smartisanos/launcher/theme/Theme;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    :cond_0
    return-object v4
.end method

.method public static getThemeById(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 204
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/theme/Theme;

    return-object v0
.end method

.method public static getThemeByPackageName(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 208
    sget-object v1, Lcom/smartisanos/launcher/theme/ThemeManager;->THEME_PKG_MAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 209
    .local v0, "id":Ljava/lang/String;
    sget-object v1, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_MAP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/theme/Theme;

    return-object v1
.end method

.method public static getThemeIdByColor(I)Ljava/lang/String;
    .locals 2
    .param p0, "color"    # I

    .prologue
    .line 303
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeManager;->COLOR_THEMES:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getThemeStatus(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)[I
    .locals 16
    .param p0, "themeId"    # Ljava/lang/String;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 700
    const/4 v11, 0x2

    new-array v10, v11, [I

    fill-array-data v10, :array_0

    .line 701
    .local v10, "statusArr":[I
    const/16 v2, 0x66

    .line 702
    .local v2, "buttonStatus":I
    const/4 v8, -0x1

    .line 703
    .local v8, "progress":I
    const/4 v6, 0x0

    .line 705
    .local v6, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 706
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 708
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    if-nez v6, :cond_0

    .line 710
    const/16 v2, 0x65

    .line 711
    invoke-static/range {p0 .. p0}, Lcom/smartisanos/launcher/data/handler/DownloadRecordDB;->getRecordByTaskName(Ljava/lang/String;)Lcom/smartisanos/launcher/data/handler/DLRecord;

    move-result-object v3

    .line 712
    .local v3, "dlRecord":Lcom/smartisanos/launcher/data/handler/DLRecord;
    if-eqz v3, :cond_0

    iget-wide v12, v3, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_id:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_0

    .line 713
    iget-wide v4, v3, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_id:J

    .line 714
    .local v4, "downloadId":J
    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Lcom/smartisanos/home/net/DownloadSupervisor;->queryDownloadStatus(Landroid/content/Context;J)Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;

    move-result-object v9

    .line 715
    .local v9, "status":Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;
    if-eqz v9, :cond_check_file

    .line 716
    iget v11, v9, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->status:I

    sparse-switch v11, :sswitch_data_0

    .line 739
    sget-object v11, Lcom/smartisanos/launcher/theme/ThemeManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v12, "DEBUG"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "unknown download status ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v9, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->status:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    .end local v3    # "dlRecord":Lcom/smartisanos/launcher/data/handler/DLRecord;
    .end local v4    # "downloadId":J
    .end local v9    # "status":Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;
    :cond_0
    :goto_1
    const/4 v11, 0x0

    aput v2, v10, v11

    .line 746
    const/4 v11, 0x1

    aput v8, v10, v11

    .line 747
    return-object v10

    .line 719
    .restart local v3    # "dlRecord":Lcom/smartisanos/launcher/data/handler/DLRecord;
    .restart local v4    # "downloadId":J
    .restart local v9    # "status":Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;
    :sswitch_0
    const/16 v2, 0x67

    .line 720
    invoke-virtual {v9}, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->downloadProgress()I

    move-result v8

    .line 721
    goto :goto_1

    .line 724
    :sswitch_1
    const/16 v2, 0x65

    .line 725
    goto :goto_1

    .line 730
    :sswitch_2
    const/16 v2, 0x6b

    .line 731
    goto :goto_1

    .line 734
    :sswitch_3
    const/16 v2, 0x68

    .line 735
    invoke-virtual {v9}, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->downloadProgress()I

    move-result v8

    .line 736
    goto :goto_1

    :cond_check_file
    iget-object v11, v3, Lcom/smartisanos/launcher/data/handler/DLRecord;->file:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_clean_rec

    sget-object v12, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v12}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v13, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_clean_rec

    const/16 v2, 0x6b

    goto :goto_1

    :cond_clean_rec
    iget-wide v12, v3, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_id:J

    invoke-static {v12, v13}, Lcom/smartisanos/home/net/DownloadSupervisor;->cleanDownloadRecord(J)V

    goto :goto_1

    .line 707
    .end local v3    # "dlRecord":Lcom/smartisanos/launcher/data/handler/DLRecord;
    .end local v4    # "downloadId":J
    .end local v9    # "status":Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;
    :catch_0
    move-exception v11

    goto :goto_0

    .line 700
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 716
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public static initThemeOrder(Landroid/content/Context;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 143
    .local v8, "resources":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 145
    .local v1, "THEME_ALIASES":[Ljava/lang/String;
    :try_start_0
    sget v13, Lcom/smartisanos/launcher/ResIds$array;->theme_display_order:I

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 149
    :goto_0
    if-eqz v1, :cond_0

    array-length v13, v1

    if-nez v13, :cond_1

    .line 150
    :cond_0
    sget-object v13, Lcom/smartisanos/launcher/theme/ThemeManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v14, "DEBUG"

    const-string v15, "initThemeOrder failed by theme_display_order is null"

    invoke-virtual {v13, v14, v15}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "lose theme order !"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 146
    :catch_0
    move-exception v4

    .line 147
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 154
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    :try_start_1
    array-length v13, v1

    if-ge v5, v13, :cond_6

    .line 155
    aget-object v7, v1, v5

    .line 156
    .local v7, "key":Ljava/lang/String;
    const-string v13, "string"

    const-string v14, "com.smartisanos.home"

    invoke-virtual {v8, v7, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 157
    .local v6, "id":I
    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 158
    .local v11, "themeId":Ljava/lang/String;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_2

    .line 159
    sget-boolean v13, Lcom/smartisanos/launcher/data/Constants;->IS_U1_BOARD:Z

    if-eqz v13, :cond_3

    .line 160
    sget-object v13, Lcom/smartisanos/launcher/theme/ThemeManager;->GAUSS_THEME_LIST:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 154
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 164
    :cond_3
    invoke-static {v11}, Lcom/smartisanos/launcher/theme/ThemeManager;->isSupport(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 167
    sget-object v13, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_ORDER:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 173
    .end local v6    # "id":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v11    # "themeId":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 174
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    move-object/from16 v0, p0

    invoke-static {v1, v0}, Lcom/smartisanos/launcher/theme/ThemeManager;->getAllSupportThemeList([Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 181
    .local v2, "allThemes":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/theme/Theme;>;"
    sget-object v13, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_MAP:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v13

    if-lez v13, :cond_4

    .line 182
    sget-object v13, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_MAP:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->clear()V

    .line 184
    :cond_4
    sget-object v13, Lcom/smartisanos/launcher/theme/ThemeManager;->THEME_PKG_MAP:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v13

    if-lez v13, :cond_5

    .line 185
    sget-object v13, Lcom/smartisanos/launcher/theme/ThemeManager;->THEME_PKG_MAP:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->clear()V

    .line 187
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/theme/Theme;

    .line 188
    .local v10, "theme":Lcom/smartisanos/launcher/theme/Theme;
    sget-object v14, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_MAP:Ljava/util/Map;

    iget-object v15, v10, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-interface {v14, v15, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v14, Lcom/smartisanos/launcher/theme/ThemeManager;->THEME_PKG_MAP:Ljava/util/Map;

    iget-object v15, v10, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    iget-object v0, v10, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-interface/range {v14 .. v16}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 170
    .end local v2    # "allThemes":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/theme/Theme;>;"
    .end local v10    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    :cond_6
    :try_start_2
    sget-object v13, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_ORDER:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    new-array v12, v13, [Ljava/lang/String;

    .line 171
    .local v12, "themeIds":[Ljava/lang/String;
    sget-object v13, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_ORDER:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 172
    sput-object v12, Lcom/smartisanos/launcher/theme/ThemeManager;->themeOrder:[Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 192
    .end local v12    # "themeIds":[Ljava/lang/String;
    .restart local v2    # "allThemes":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/theme/Theme;>;"
    :cond_7
    sget-object v13, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_ORDER:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v9

    .line 193
    .local v9, "size":I
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v9, :cond_8

    .line 194
    sget-object v13, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_ORDER:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 195
    .restart local v11    # "themeId":Ljava/lang/String;
    sget-object v13, Lcom/smartisanos/launcher/theme/ThemeManager;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "support theme => "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 196
    sget-object v13, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_MAP:Ljava/util/Map;

    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/theme/Theme;

    .line 197
    .restart local v10    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    iget-object v13, v10, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v11, v13, v0}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeStatus(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)[I

    move-result-object v3

    .line 198
    .local v3, "arr":[I
    const/4 v13, 0x0

    aget v13, v3, v13

    iput v13, v10, Lcom/smartisanos/launcher/theme/Theme;->status:I

    .line 199
    const/4 v13, 0x1

    aget v13, v3, v13

    iput v13, v10, Lcom/smartisanos/launcher/theme/Theme;->progress:I

    .line 193
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 201
    .end local v3    # "arr":[I
    .end local v10    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    .end local v11    # "themeId":Ljava/lang/String;
    :cond_8
    return-void
.end method

.method public static initThemeWhenStartup(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 553
    const/4 v0, 0x0

    .line 554
    .local v0, "currentTheme":Lcom/smartisanos/launcher/theme/Theme;
    const-string v5, "launcher_theme"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 556
    .local v4, "themeId":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 557
    const-string v4, "smartisan_theme_black"

    .line 559
    :cond_0
    const-string v5, "smartisan_theme_fire"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 561
    const-string v4, "smartisan_theme_orange"

    .line 564
    :cond_1
    :try_start_0
    invoke-static {v4}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeById(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v3

    .line 565
    .local v3, "theme":Lcom/smartisanos/launcher/theme/Theme;
    iget-object v5, v3, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/smartisanos/launcher/data/Utils;->checkPackageExist(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_2

    .line 567
    const/4 v4, 0x0

    .line 572
    .end local v3    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    :cond_2
    :goto_0
    if-nez v4, :cond_3

    .line 574
    :try_start_1
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeManager;->getDefaultThemeId()Ljava/lang/String;

    move-result-object v4

    .line 575
    invoke-static {v4}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeById(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v3

    .line 576
    .restart local v3    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    iget-object v5, v3, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/smartisanos/launcher/data/Utils;->checkPackageExist(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-nez v5, :cond_3

    .line 578
    const/4 v4, 0x0

    .line 585
    .end local v3    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    :cond_3
    :goto_1
    if-nez v4, :cond_4

    .line 586
    const-string v4, "smartisan_theme_black"

    .line 588
    :cond_4
    const-string v5, "launcher_theme"

    invoke-static {v5, v4}, Lcom/smartisanos/launcher/data/LauncherSettings;->updateSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :try_start_2
    invoke-static {v4}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeById(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v3

    .line 591
    .restart local v3    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    iget-object v2, v3, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    .line 592
    .local v2, "pkg":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/smartisanos/launcher/theme/ThemeManager;->getInstalledThemeByPackage(Landroid/content/Context;Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 594
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    :goto_2
    if-nez v0, :cond_5

    .line 595
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeManager;->getDefaultTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v0

    .line 598
    :cond_5
    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ThemeManager;->setInitialTheme(Lcom/smartisanos/launcher/theme/Theme;)V

    .line 599
    iget-boolean v5, v0, Lcom/smartisanos/launcher/theme/Theme;->useIconLightShadow:Z

    if-eqz v5, :cond_7

    .line 600
    sget-object v5, Lcom/smartisanos/launcher/data/Constants$IconType;->Light:Lcom/smartisanos/launcher/data/Constants$IconType;

    sput-object v5, Lcom/smartisanos/launcher/data/Constants;->ICON_TYPE:Lcom/smartisanos/launcher/data/Constants$IconType;

    .line 604
    :goto_3
    iget-object v5, v0, Lcom/smartisanos/launcher/theme/Theme;->mPath:Ljava/lang/String;

    sput-object v5, Lcom/smartisanos/launcher/data/Constants;->THEME_PATH:Ljava/lang/String;

    .line 605
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v5

    iget-object v6, v0, Lcom/smartisanos/launcher/theme/Theme;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/World;->setAssetManager(Landroid/content/res/AssetManager;)V

    .line 606
    const-string v5, "smartisan_theme_aero,smartisan_theme_mist"

    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 607
    const/4 v5, 0x1

    sput-boolean v5, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    .line 612
    :goto_4
    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ThemeManager;->isGaussianTheme(Lcom/smartisanos/launcher/theme/Theme;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 613
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->initGaussianDarkLight(Landroid/content/Context;)V

    .line 615
    :cond_6
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v5, :cond_9

    const-string v5, "smartisan_theme_aero"

    iget-object v6, v0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    .line 616
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lcom/smartisanos/launcher/data/Constants;->sGaussianResSuffix:Ljava/lang/String;

    const-string v6, "_light"

    .line 617
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 618
    const-string v5, "_light"

    invoke-static {v0, v5}, Lcom/smartisanos/launcher/data/Utils;->setStatusBarColor(Lcom/smartisanos/launcher/theme/Theme;Ljava/lang/String;)V

    .line 622
    :goto_5
    return-void

    .line 569
    :catch_0
    move-exception v1

    .line 570
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0

    .line 580
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 581
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_1

    .line 602
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    sget-object v5, Lcom/smartisanos/launcher/data/Constants$IconType;->Dark:Lcom/smartisanos/launcher/data/Constants$IconType;

    sput-object v5, Lcom/smartisanos/launcher/data/Constants;->ICON_TYPE:Lcom/smartisanos/launcher/data/Constants$IconType;

    goto :goto_3

    .line 609
    :cond_8
    const/4 v5, 0x0

    sput-boolean v5, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    goto :goto_4

    .line 620
    :cond_9
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Utils;->setStatusBarColor(Lcom/smartisanos/launcher/theme/Theme;)V

    goto :goto_5

    .line 593
    :catch_2
    move-exception v5

    goto :goto_2
.end method

.method public static declared-synchronized isDefaultTheme(Landroid/content/Context;Lcom/smartisanos/launcher/theme/Theme;)Z
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "theme"    # Lcom/smartisanos/launcher/theme/Theme;

    .prologue
    const/4 v0, 0x0

    .line 543
    const-class v1, Lcom/smartisanos/launcher/theme/ThemeManager;

    monitor-enter v1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 549
    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    .line 546
    :cond_1
    :try_start_0
    iget-object v2, p1, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeManager;->getDefaultTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v3

    iget-object v3, v3, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 547
    const/4 v0, 0x1

    goto :goto_0

    .line 543
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isGaussTheme(Ljava/lang/String;)Z
    .locals 1
    .param p0, "themeId"    # Ljava/lang/String;

    .prologue
    .line 108
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeManager;->GAUSS_THEME_LIST:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isGaussianTheme(Lcom/smartisanos/launcher/theme/Theme;)Z
    .locals 1
    .param p0, "theme"    # Lcom/smartisanos/launcher/theme/Theme;

    .prologue
    .line 625
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ThemeManager;->isGaussTheme(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    const/4 v0, 0x1

    .line 628
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupport(Ljava/lang/String;)Z
    .locals 2
    .param p0, "themeId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 769
    if-nez p0, :cond_1

    .line 777
    :cond_0
    :goto_0
    return v0

    .line 772
    :cond_1
    const-string v1, "smartisan_theme_aero"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 773
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->IS_OPENGL_3:Z

    if-eqz v1, :cond_0

    .line 777
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static notifyStatusChanged(Ljava/lang/String;)V
    .locals 1
    .param p0, "themeId"    # Ljava/lang/String;

    .prologue
    .line 691
    invoke-static {}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->getInstance()Lcom/smartisanos/home/settings/ThemeChooserActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 694
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->getInstance()Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 695
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->getInstance()Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->updateThemeStatus(Ljava/lang/String;)V

    .line 697
    :cond_1
    return-void
.end method

.method public static declared-synchronized setInitialTheme(Lcom/smartisanos/launcher/theme/Theme;)V
    .locals 2
    .param p0, "theme"    # Lcom/smartisanos/launcher/theme/Theme;

    .prologue
    .line 415
    const-class v1, Lcom/smartisanos/launcher/theme/ThemeManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeManager;->mCurrentTheme:Lcom/smartisanos/launcher/theme/Theme;

    sput-object v0, Lcom/smartisanos/launcher/theme/ThemeManager;->mLastTheme:Lcom/smartisanos/launcher/theme/Theme;

    .line 416
    sput-object p0, Lcom/smartisanos/launcher/theme/ThemeManager;->mCurrentTheme:Lcom/smartisanos/launcher/theme/Theme;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    monitor-exit v1

    return-void

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized storeNewThemeToCurrent(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "theme"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 428
    const-class v7, Lcom/smartisanos/launcher/theme/ThemeManager;

    monitor-enter v7

    :try_start_0
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeManager;->getInstalledThemes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 430
    .local v5, "themes":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/theme/Theme;>;"
    const/4 v8, 0x0

    const-string v9, ":"

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 431
    .local v4, "themePackage":Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 433
    .local v3, "themeId":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 434
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 435
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/theme/Theme;

    .line 436
    .local v2, "t":Lcom/smartisanos/launcher/theme/Theme;
    iget-object v8, v2, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v2, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    .line 438
    sget-object v6, Lcom/smartisanos/launcher/theme/ThemeManager;->mCurrentTheme:Lcom/smartisanos/launcher/theme/Theme;

    sput-object v6, Lcom/smartisanos/launcher/theme/ThemeManager;->mLastTheme:Lcom/smartisanos/launcher/theme/Theme;

    .line 439
    sput-object v2, Lcom/smartisanos/launcher/theme/ThemeManager;->mCurrentTheme:Lcom/smartisanos/launcher/theme/Theme;

    .line 440
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v8, Lcom/smartisanos/launcher/theme/ThemeManager$1;

    invoke-direct {v8}, Lcom/smartisanos/launcher/theme/ThemeManager$1;-><init>()V

    const-wide/16 v10, 0x1f4

    invoke-virtual {v6, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    const/4 v6, 0x1

    .line 464
    .end local v2    # "t":Lcom/smartisanos/launcher/theme/Theme;
    :cond_0
    monitor-exit v7

    return v6

    .line 434
    .restart local v2    # "t":Lcom/smartisanos/launcher/theme/Theme;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "t":Lcom/smartisanos/launcher/theme/Theme;
    .end local v3    # "themeId":Ljava/lang/String;
    .end local v4    # "themePackage":Ljava/lang/String;
    .end local v5    # "themes":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/theme/Theme;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public static switchToDefaultTheme()V
    .locals 6

    .prologue
    .line 751
    const/4 v2, 0x0

    .line 752
    .local v2, "theme":Lcom/smartisanos/launcher/theme/Theme;
    const/4 v0, 0x0

    .line 754
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeManager;->getDefaultThemeId()Ljava/lang/String;

    move-result-object v3

    .line 755
    .local v3, "themeId":Ljava/lang/String;
    invoke-static {v3}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeById(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v2

    .line 756
    if-eqz v2, :cond_0

    .line 757
    iget-object v1, v2, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    .line 758
    .local v1, "pkg":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 761
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v3    # "themeId":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 763
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisanos/launcher/theme/ThemeManager;->getBlackTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v2

    .line 765
    :cond_1
    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;->switchTheme(Lcom/smartisanos/launcher/theme/Theme;Z)V

    .line 766
    return-void

    .line 760
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static updateThemeStatus(Ljava/lang/String;II)V
    .locals 9
    .param p0, "themeId"    # Ljava/lang/String;
    .param p1, "status"    # I
    .param p2, "progress"    # I

    .prologue
    const/16 v7, 0x67

    .line 632
    sget-object v6, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_MAP:Ljava/util/Map;

    invoke-interface {v6, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/theme/Theme;

    .line 633
    .local v2, "theme":Lcom/smartisanos/launcher/theme/Theme;
    if-nez v2, :cond_1

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    iget v1, v2, Lcom/smartisanos/launcher/theme/Theme;->status:I

    .line 637
    .local v1, "oldStatus":I
    move v0, p1

    .line 638
    .local v0, "newStatus":I
    const/4 v4, 0x0

    .line 639
    .local v4, "updateProgress":Z
    if-ne v1, v7, :cond_2

    if-ne v0, v7, :cond_2

    .line 640
    const/4 v4, 0x1

    .line 642
    :cond_2
    if-nez v4, :cond_3

    if-ne v1, v0, :cond_3

    .line 643
    sget-object v6, Lcom/smartisanos/launcher/theme/ThemeManager;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateThemeStatus duplicate status ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 646
    :cond_3
    const/16 v6, 0x6a

    if-ne v1, v6, :cond_4

    if-ne v0, v7, :cond_4

    .line 647
    sget-object v6, Lcom/smartisanos/launcher/theme/ThemeManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "buttonUiStatus installing, status want to BUTTON_UI_DOWNLOADING"

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 650
    :cond_4
    const/4 v3, 0x1

    .line 651
    .local v3, "unknownStatus":Z
    sget-object v7, Lcom/smartisanos/launcher/theme/Theme;->THEME_STATUS_ARR:[I

    array-length v8, v7

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_5

    aget v5, v7, v6

    .line 652
    .local v5, "value":I
    if-ne p1, v5, :cond_7

    .line 653
    const/4 v3, 0x0

    .line 657
    .end local v5    # "value":I
    :cond_5
    sget-object v6, Lcom/smartisanos/launcher/theme/ThemeManager;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setButtonUiStatus ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 658
    sget-object v6, Lcom/smartisanos/launcher/theme/ThemeManager;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setButtonUiStatus unknownStatus ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 659
    if-nez v3, :cond_0

    .line 662
    const/16 v6, 0x68

    if-ne p1, v6, :cond_6

    .line 663
    sget-object v6, Lcom/smartisanos/launcher/theme/ThemeManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "set status to [DOWNLOAD_PAUSED]"

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 665
    :cond_6
    iput p1, v2, Lcom/smartisanos/launcher/theme/Theme;->status:I

    .line 666
    iput p2, v2, Lcom/smartisanos/launcher/theme/Theme;->progress:I

    .line 667
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeManager;->notifyStatusChanged(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 651
    .restart local v5    # "value":I
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public static updateThemeStatusByAction(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 671
    if-nez p0, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 675
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 678
    invoke-static {p1}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeByPackageName(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v1

    .line 679
    .local v1, "theme":Lcom/smartisanos/launcher/theme/Theme;
    if-eqz v1, :cond_0

    .line 682
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 683
    const/16 v2, 0x66

    iput v2, v1, Lcom/smartisanos/launcher/theme/Theme;->status:I

    .line 687
    :cond_2
    :goto_1
    iget-object v2, v1, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-static {v2}, Lcom/smartisanos/launcher/theme/ThemeManager;->notifyStatusChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 684
    :cond_3
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 685
    const/16 v2, 0x65

    iput v2, v1, Lcom/smartisanos/launcher/theme/Theme;->status:I

    goto :goto_1
.end method
