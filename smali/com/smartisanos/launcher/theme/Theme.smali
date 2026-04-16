.class public Lcom/smartisanos/launcher/theme/Theme;
.super Ljava/lang/Object;
.source "Theme.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/smartisanos/launcher/theme/Theme;",
        ">;"
    }
.end annotation


# static fields
.field public static final DOWNLOADING:I = 0x67

.field public static final DOWNLOAD_COMPLETE:I = 0x69

.field public static final DOWNLOAD_PAUSED:I = 0x68

.field public static final IMG_JPG:Ljava/lang/String; = ".jpg"

.field public static final IMG_PNG:Ljava/lang/String; = ".png"

.field public static final INSTALLED:I = 0x66

.field public static final INSTALLING:I = 0x6a

.field public static final NEED_INSTALL:I = 0x6b

.field public static final NOT_EXIST:I = 0x65

.field private static final PREVIEW_LARGE_16:Ljava/lang/String; = "preview_16_L"

.field private static final PREVIEW_LARGE_9:Ljava/lang/String; = "preview_9_L"

.field private static final PREVIEW_SMALL_16:Ljava/lang/String; = "preview_16_S"

.field private static final PREVIEW_SMALL_9:Ljava/lang/String; = "preview_9_S"

.field public static final RESOURCE_KEY_ICON_LIGHT_SHADOW:Ljava/lang/String; = "icon_light_shadow"

.field private static final RESOURCE_KEY_THEME_AUTHOR:Ljava/lang/String; = "theme_author"

.field private static final RESOURCE_KEY_THEME_DESC:Ljava/lang/String; = "theme_desc"

.field private static final RESOURCE_KEY_THEME_ID:Ljava/lang/String; = "theme_id"

.field private static final RESOURCE_KEY_THEME_NAME:Ljava/lang/String; = "theme_name"

.field private static final THEME_PREVIEW:Ljava/lang/String; = "preview_"

.field public static final THEME_PREVIEW_IMGS:Ljava/lang/String; = "theme_preview"

.field public static final THEME_STATUS_ARR:[I

.field private static final log:Lcom/smartisanos/launcher/LOG;


# instance fields
.field public displayNameRes:Ljava/lang/String;

.field public mId:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mPackage:Ljava/lang/String;

.field public mPath:Ljava/lang/String;

.field public mResources:Landroid/content/res/Resources;

.field public progress:I

.field public status:I

.field public useIconLightShadow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/smartisanos/launcher/theme/Theme;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/theme/Theme;->log:Lcom/smartisanos/launcher/LOG;

    .line 46
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/smartisanos/launcher/theme/Theme;->THEME_STATUS_ARR:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "themeId"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/Theme;->mPath:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/Theme;->useIconLightShadow:Z

    .line 50
    iput v1, p0, Lcom/smartisanos/launcher/theme/Theme;->status:I

    .line 51
    iput v1, p0, Lcom/smartisanos/launcher/theme/Theme;->progress:I

    .line 54
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private static getImgInputStream(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/io/InputStream;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 212
    const/4 v1, 0x0

    .line 213
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 215
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const-string v2, "smartisan_theme_mist/preview_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    if-nez v4, :cond_2

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    :cond_2
    :goto_2
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0

    .line 221
    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_2
.end method

.method public static largePreviewAssetsPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "themeId"    # Ljava/lang/String;
    .param p1, "mode"    # I

    .prologue
    .line 171
    if-nez p0, :cond_0

    .line 172
    const/4 v1, 0x0

    .line 178
    :goto_0
    return-object v1

    .line 174
    :cond_0
    const-string v0, "preview_9_L"

    .line 175
    .local v0, "resourceName":Ljava/lang/String;
    const/16 v1, 0x9

    if-eq p1, v1, :cond_1

    .line 176
    const-string v0, "preview_16_L"

    .line 178
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "theme_preview/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static readAssetsResource(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "assetsPath"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 202
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 203
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-static {p0, v4}, Lcom/smartisanos/launcher/theme/Theme;->getImgInputStream(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/io/InputStream;

    move-result-object v3

    .line 204
    .local v3, "is":Ljava/io/InputStream;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v0, v1

    .line 208
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "resources":Landroid/content/res/Resources;
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 205
    :catch_0
    move-exception v2

    .line 206
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static smallPreviewAssetsPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "themeId"    # Ljava/lang/String;
    .param p1, "mode"    # I

    .prologue
    .line 189
    if-nez p0, :cond_0

    .line 190
    const/4 v1, 0x0

    .line 196
    :goto_0
    return-object v1

    .line 192
    :cond_0
    const-string v0, "preview_9_S"

    .line 193
    .local v0, "resourceName":Ljava/lang/String;
    const/16 v1, 0x9

    if-eq p1, v1, :cond_1

    .line 194
    const-string v0, "preview_16_S"

    .line 196
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "theme_preview/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/smartisanos/launcher/theme/Theme;)I
    .locals 2
    .param p1, "another"    # Lcom/smartisanos/launcher/theme/Theme;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/Theme;->getComposedId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smartisanos/launcher/theme/Theme;->getComposedId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 20
    check-cast p1, Lcom/smartisanos/launcher/theme/Theme;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/theme/Theme;->compareTo(Lcom/smartisanos/launcher/theme/Theme;)I

    move-result v0

    return v0
.end method

.method public getComposedId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 109
    const-string v0, "%s:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/Theme;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public largePreviewAssetsPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 167
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/smartisanos/launcher/theme/Theme;->largePreviewAssetsPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public smallPreviewAssetsPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/smartisanos/launcher/theme/Theme;->smallPreviewAssetsPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Theme [Package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/Theme;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFromPackage(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;)V
    .locals 12
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 58
    if-nez p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 63
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 66
    const-string v8, "com.smartisanos.launcher.theme"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 70
    :try_start_0
    invoke-virtual {p2, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    .local v0, "appResources":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 75
    const-string v8, "theme_name"

    const-string v9, "string"

    invoke-virtual {v0, v8, v9, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 76
    .local v3, "resId":I
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, "themeName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 78
    const-string v8, "theme_desc"

    const-string v9, "string"

    invoke-virtual {v0, v8, v9, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 79
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, "themeDesc":Ljava/lang/String;
    const/4 v3, 0x0

    .line 81
    const-string v8, "theme_author"

    const-string v9, "string"

    invoke-virtual {v0, v8, v9, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 82
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "themeAuthor":Ljava/lang/String;
    const/4 v3, 0x0

    .line 85
    invoke-virtual {p2, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 86
    .local v4, "resources":Landroid/content/res/Resources;
    iput-object v2, p0, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    .line 87
    iput-object v7, p0, Lcom/smartisanos/launcher/theme/Theme;->mName:Ljava/lang/String;

    .line 88
    iput-object v4, p0, Lcom/smartisanos/launcher/theme/Theme;->mResources:Landroid/content/res/Resources;

    .line 89
    const-string v8, ""

    iput-object v8, p0, Lcom/smartisanos/launcher/theme/Theme;->mPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    :try_start_1
    const-string v8, "icon_light_shadow"

    const-string v9, "bool"

    invoke-virtual {v4, v8, v9, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 92
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/smartisanos/launcher/theme/Theme;->useIconLightShadow:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v8, Lcom/smartisanos/launcher/theme/Theme;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get icon_light_shadow error, packageName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 98
    .end local v0    # "appResources":Landroid/content/res/Resources;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "resId":I
    .end local v4    # "resources":Landroid/content/res/Resources;
    .end local v5    # "themeAuthor":Ljava/lang/String;
    .end local v6    # "themeDesc":Ljava/lang/String;
    .end local v7    # "themeName":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 99
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
