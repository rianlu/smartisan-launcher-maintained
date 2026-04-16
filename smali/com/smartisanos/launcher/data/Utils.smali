.class public Lcom/smartisanos/launcher/data/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/data/Utils$GenerateShadowIconTask;,
        Lcom/smartisanos/launcher/data/Utils$GenerateColorInfoTask;
    }
.end annotation


# static fields
.field private static final BASE_MAINLINE_THEME_URL:Ljava/lang/String; = "http://api-app.smartisan.com/api/v1_4/app/info/"

.field private static final BASE_THEME_URL:Ljava/lang/String; = "http://update.smartisanos.com/themes/"

.field private static final BASE_URL:Ljava/lang/String; = "http://update.smartisanos.com/"

.field public static final DEFAULT_IS_NOT_FOUND:I = 0x3

.field public static final DEFAULT_IS_OTHER_HOME:I = 0x2

.field public static final DEFAULT_IS_SMARTISAN_HOME:I = 0x1

.field private static final DEFAULT_TIMEOUT:I = 0x4e20

.field private static final EXECUTOR_THREADS:I = 0x3

.field private static ITERATION:I = 0x0

.field public static final KEY_MD5:Ljava/lang/String; = "md5"

.field public static final KEY_MD5_M:Ljava/lang/String; = "filemd5"

.field public static final KEY_URL:Ljava/lang/String; = "url"

.field public static final KEY_URL_M:Ljava/lang/String; = "download_url"

.field public static final KEY_VERSION_CODE:Ljava/lang/String; = "version_code"

.field public static final KEY_VERSION_CODE_M:Ljava/lang/String; = "version_code"

.field public static final KEY_VERSION_NAME:Ljava/lang/String; = "version_name"

.field public static final KEY_VERSION_NAME_M:Ljava/lang/String; = "version"

.field public static final PREF_KEY_LOCK_PASSWORD:Ljava/lang/String; = "smartisanos_launcher_lock_applications"

.field public static final PROP_RO_PRODUCT_MANUFACTURER:Ljava/lang/String; = "ro.product.manufacturer"

.field public static final PROP_RO_PROJECT_MODEL:Ljava/lang/String; = "ro.product.model"

.field private static RADIUS:I = 0x0

.field public static final RETRY_COUNT:I = 0x3

.field public static final SECOND_IN_MILLIS:J = 0x3e8L

.field public static final SETTING_PKG:Ljava/lang/String; = "com.android.settings"

.field public static final STATUS_ICON_COLOR_KEY:Ljava/lang/String; = "status_bar_icon_color"

.field public static final STATUS_NUM_COLOR_KEY:Ljava/lang/String; = "status_bar_number_color"

.field private static final TAG:Ljava/lang/String; = "Utils"

.field public static final TWO_HOURS:J = 0x6ddd00L

.field private static final UPDATE_SUFFIX:Ljava/lang/String; = "/update_info"

.field private static final UPDATE_URL:Ljava/lang/String; = "http://update.smartisanos.com/launcher/update_info"

.field private static lastSyncWeatherDataTime:J

.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static mWeatherInfoToast:Landroid/widget/Toast;

.field public static sMsgNumUvMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private static setToDefaultHomeDialog:Landroid/app/AlertDialog;

.field private static syncWeatherDataLastCallTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 115
    const-class v0, Lcom/smartisanos/launcher/data/Utils;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/data/Utils;->sMsgNumUvMap:Ljava/util/HashMap;

    .line 1107
    const/16 v0, 0x14

    sput v0, Lcom/smartisanos/launcher/data/Utils;->RADIUS:I

    .line 1108
    const/4 v0, 0x3

    sput v0, Lcom/smartisanos/launcher/data/Utils;->ITERATION:I

    .line 1914
    sput-object v1, Lcom/smartisanos/launcher/data/Utils;->setToDefaultHomeDialog:Landroid/app/AlertDialog;

    .line 2146
    sput-wide v2, Lcom/smartisanos/launcher/data/Utils;->syncWeatherDataLastCallTime:J

    .line 2148
    sput-wide v2, Lcom/smartisanos/launcher/data/Utils;->lastSyncWeatherDataTime:J

    .line 2213
    sput-object v1, Lcom/smartisanos/launcher/data/Utils;->mWeatherInfoToast:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 407
    if-nez p0, :cond_0

    .line 408
    const/4 v1, 0x0

    .line 414
    :goto_0
    return-object v1

    .line 410
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 411
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 412
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 413
    const/4 p0, 0x0

    .line 414
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0
.end method

.method public static BoxBlurFilter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1111
    sget v0, Lcom/smartisanos/launcher/data/Utils;->RADIUS:I

    sget v1, Lcom/smartisanos/launcher/data/Utils;->ITERATION:I

    invoke-static {p0, v0, v1}, Lcom/smartisanos/launcher/data/Utils;->BoxBlurFilter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static BoxBlurFilter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 23
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I
    .param p2, "iteration"    # I

    .prologue
    .line 1115
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 1116
    .local v20, "oriW":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    .line 1117
    .local v19, "oriH":I
    move-object/from16 v2, p0

    .line 1118
    .local v2, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1119
    .local v5, "width":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 1120
    .local v9, "height":I
    mul-int v4, v5, v9

    new-array v3, v4, [I

    .line 1121
    .local v3, "inPixels":[I
    mul-int v4, v5, v9

    new-array v0, v4, [I

    move-object/from16 v21, v0

    .line 1122
    .local v21, "outPixels":[I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v9, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1123
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1124
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1125
    invoke-static {v3}, Lcom/smartisanos/launcher/data/Utils;->multiplyAlpha([I)V

    .line 1127
    :cond_0
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, p2

    if-ge v0, v1, :cond_1

    .line 1128
    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v3, v0, v5, v9, v1}, Lcom/smartisanos/launcher/data/Utils;->blur([I[IIII)V

    .line 1129
    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v3, v9, v5, v1}, Lcom/smartisanos/launcher/data/Utils;->blur([I[IIII)V

    .line 1127
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 1131
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1132
    invoke-static {v3}, Lcom/smartisanos/launcher/data/Utils;->separateAlpha([I)V

    .line 1136
    :cond_2
    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v3

    move v13, v5

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1137
    move-object/from16 v22, v10

    .line 1140
    .local v22, "result":Landroid/graphics/Bitmap;
    return-object v22
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$100()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/smartisanos/launcher/data/Utils;->setToDefaultHomeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/AlertDialog;

    .prologue
    .line 114
    sput-object p0, Lcom/smartisanos/launcher/data/Utils;->setToDefaultHomeDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$200(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/data/Utils;->setHomeToDefaultImpl(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 114
    sput-wide p0, Lcom/smartisanos/launcher/data/Utils;->lastSyncWeatherDataTime:J

    return-wide p0
.end method

.method static synthetic access$400()Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/smartisanos/launcher/data/Utils;->mWeatherInfoToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$402(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Toast;

    .prologue
    .line 114
    sput-object p0, Lcom/smartisanos/launcher/data/Utils;->mWeatherInfoToast:Landroid/widget/Toast;

    return-object p0
.end method

.method public static appDownloadInfos(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 13
    .param p0, "apkTypeName"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 2332
    const/4 v4, 0x0

    .line 2333
    .local v4, "infos":[Ljava/lang/String;
    const/4 v9, 0x2

    if-ne p1, v9, :cond_maintained_theme_done

    if-eqz p0, :return_maintained_theme

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :return_maintained_theme

    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p0, v4, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "https://gh-proxy.org/https://github.com/rianlu/smartisan-launcher-maintained/releases/download/themes-v1/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".apk"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v4, v9

    sget-object v9, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "theme dl url ==> ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :return_maintained_theme
    return-object v4

    :cond_maintained_theme_done
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/data/Utils;->getUpdateURL(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2334
    .local v0, "appDownloadUrl":Ljava/lang/String;
    sget-object v9, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dl info url ==> ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2335
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Utils;->httpRequest(Ljava/lang/String;)[B

    move-result-object v1

    .line 2336
    .local v1, "data":[B
    if-eqz v1, :cond_5

    .line 2337
    invoke-static {v1, p1}, Lcom/smartisanos/launcher/data/Utils;->parseJson([BI)Ljava/util/Map;

    move-result-object v6

    .line 2338
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_3

    .line 2339
    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/String;

    .line 2340
    const-string v9, "md5"

    invoke-interface {v6, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2341
    const-string v9, "md5"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2342
    .local v7, "md5":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 2343
    const/4 v9, 0x0

    aput-object v7, v4, v9

    .line 2346
    .end local v7    # "md5":Ljava/lang/String;
    :cond_0
    const-string v9, "url"

    invoke-interface {v6, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2347
    const-string v9, "url"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2348
    .local v8, "url":Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 2349
    const/4 v9, 0x1

    aput-object v8, v4, v9

    .line 2353
    .end local v8    # "url":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    .line 2354
    .local v5, "loseInfo":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v4

    if-ge v2, v9, :cond_2

    .line 2355
    aget-object v3, v4, v2

    .line 2356
    .local v3, "info":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 2357
    sget-object v9, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "lose download app info, at index ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2358
    const/4 v5, 0x1

    .line 2362
    .end local v3    # "info":Ljava/lang/String;
    :cond_2
    if-eqz v5, :cond_3

    .line 2363
    const/4 v4, 0x0

    .line 2369
    .end local v2    # "i":I
    .end local v5    # "loseInfo":Z
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :goto_1
    return-object v4

    .line 2354
    .restart local v2    # "i":I
    .restart local v3    # "info":Ljava/lang/String;
    .restart local v5    # "loseInfo":Z
    .restart local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2367
    .end local v2    # "i":I
    .end local v3    # "info":Ljava/lang/String;
    .end local v5    # "loseInfo":Z
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    sget-object v9, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "DEBUG"

    const-string v11, "appDownloadInfos, http request return null"

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static applyLauncherImmersiveWindow(Landroid/content/Context;Landroid/view/Window;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "win"    # Landroid/view/Window;

    .prologue
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/data/Utils;->applyTransparentStatusBar(Landroid/content/Context;Landroid/view/Window;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const-class v0, Landroid/view/WindowManager$LayoutParams;

    const-string v1, "layoutInDisplayCutoutMode"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    invoke-virtual {p1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_1

    :try_start_1
    const-class v0, Landroid/view/Window;

    const-string v1, "setDecorFitsSystemWindows"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static applyTransparentStatusBar(Landroid/content/Context;Landroid/view/Window;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "win"    # Landroid/view/Window;

    .prologue
    .line 2463
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_0

    .line 2464
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2465
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 2466
    .local v1, "visibility":I
    or-int/lit16 v1, v1, 0x100

    .line 2467
    or-int/lit16 v1, v1, 0x200

    .line 2468
    or-int/lit16 v1, v1, 0x400

    .line 2469
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 2470
    const/high16 v8, 0x4000000

    invoke-virtual {p1, v8}, Landroid/view/Window;->clearFlags(I)V

    .line 2471
    const/high16 v8, -0x80000000

    invoke-virtual {p1, v8}, Landroid/view/Window;->addFlags(I)V

    .line 2472
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 2473
    invoke-virtual {p1, v8}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 2474
    return-void

    .line 2475
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "visibility":I
    :cond_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x13

    if-lt v8, v9, :cond_3

    .line 2476
    const/4 v0, 0x0

    .line 2477
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 2478
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v7, 0x0

    .line 2480
    .local v7, "x":I
    :try_start_0
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    .line 2481
    const-string v8, "FLAG_TRANSLUCENT_STATUS"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 2482
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 2486
    :goto_0
    if-eqz v7, :cond_1

    .line 2487
    invoke-virtual {p1, v7}, Landroid/view/Window;->addFlags(I)V

    .line 2489
    :cond_1
    const-string v8, "Meizu"

    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2490
    const/4 v7, 0x0

    .line 2492
    :try_start_1
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    .line 2493
    const-string v8, "FLAG_TRANSLUCENT_NAVIGATION"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 2494
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 2498
    :goto_1
    if-eqz v7, :cond_2

    .line 2499
    invoke-virtual {p1, v7}, Landroid/view/Window;->addFlags(I)V

    .line 2528
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "x":I
    :cond_2
    :goto_2
    return-void

    .line 2483
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v7    # "x":I
    :catch_0
    move-exception v1

    .line 2484
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2495
    .end local v1    # "e1":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 2496
    .restart local v1    # "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2504
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "e1":Ljava/lang/Exception;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "x":I
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v4

    .line 2505
    .local v4, "libs":[Ljava/lang/String;
    const-string v5, "SYSTEM_UI_FLAG_TRANSPARENT_BACKGROUND"

    .line 2506
    .local v5, "reflect":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 2507
    array-length v9, v4

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v9, :cond_5

    aget-object v3, v4, v8

    .line 2508
    .local v3, "lib":Ljava/lang/String;
    const-string v10, "touchwiz"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "com.htc."

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2509
    :cond_4
    const-string v5, "SYSTEM_UI_FLAG_TRANSPARENT_BACKGROUND"

    .line 2517
    .end local v3    # "lib":Ljava/lang/String;
    :cond_5
    :goto_4
    :try_start_2
    const-class v8, Landroid/view/View;

    invoke-virtual {v8, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 2518
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_2

    .line 2519
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    .line 2520
    .local v6, "result":I
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 2523
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "result":I
    :catch_2
    move-exception v8

    goto :goto_2

    .line 2511
    .restart local v3    # "lib":Ljava/lang/String;
    :cond_6
    const-string v10, "com.sonyericsson.navigationbar"

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2512
    const-string v5, "SYSTEM_UI_FLAG_TRANSPARENT"

    .line 2513
    goto :goto_4

    .line 2507
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3
.end method

.method public static blur([I[IIII)V
    .locals 27
    .param p0, "in"    # [I
    .param p1, "out"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "radius"    # I

    .prologue
    .line 1145
    add-int/lit8 v22, p2, -0x1

    .line 1146
    .local v22, "widthMinus1":I
    move/from16 v9, p4

    .line 1147
    .local v9, "r":I
    mul-int/lit8 v25, v9, 0x2

    add-int/lit8 v18, v25, 0x1

    .line 1148
    .local v18, "tableSize":I
    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x100

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v2, v0, [I

    .line 1150
    .local v2, "divide":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x100

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v4, v0, :cond_0

    .line 1151
    div-int v25, v4, v18

    aput v25, v2, v4

    .line 1150
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1153
    :cond_0
    const/4 v7, 0x0

    .line 1155
    .local v7, "inIndex":I
    const/16 v24, 0x0

    .local v24, "y":I
    :goto_1
    move/from16 v0, v24

    move/from16 v1, p3

    if-ge v0, v1, :cond_5

    .line 1156
    move/from16 v8, v24

    .line 1157
    .local v8, "outIndex":I
    const/16 v17, 0x0

    .local v17, "ta":I
    const/16 v21, 0x0

    .local v21, "tr":I
    const/16 v20, 0x0

    .local v20, "tg":I
    const/16 v19, 0x0

    .line 1159
    .local v19, "tb":I
    neg-int v4, v9

    :goto_2
    if-gt v4, v9, :cond_1

    .line 1160
    const/16 v25, 0x0

    add-int/lit8 v26, p2, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v4, v0, v1}, Lcom/smartisanos/launcher/data/Utils;->clamp(III)I

    move-result v25

    add-int v25, v25, v7

    aget v10, p0, v25

    .line 1161
    .local v10, "rgb":I
    shr-int/lit8 v25, v10, 0x18

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x437f0000    # 255.0f

    div-float v3, v25, v26

    .line 1162
    .local v3, "fa":F
    shr-int/lit8 v25, v10, 0x18

    move/from16 v0, v25

    and-int/lit16 v13, v0, 0xff

    .line 1163
    .local v13, "sa":I
    shr-int/lit8 v25, v10, 0x10

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 1164
    .local v16, "sr":I
    shr-int/lit8 v25, v10, 0x8

    move/from16 v0, v25

    and-int/lit16 v15, v0, 0xff

    .line 1165
    .local v15, "sg":I
    and-int/lit16 v14, v10, 0xff

    .line 1169
    .local v14, "sb":I
    add-int v17, v17, v13

    .line 1170
    add-int v21, v21, v16

    .line 1171
    add-int v20, v20, v15

    .line 1172
    add-int v19, v19, v14

    .line 1159
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1176
    .end local v3    # "fa":F
    .end local v10    # "rgb":I
    .end local v13    # "sa":I
    .end local v14    # "sb":I
    .end local v15    # "sg":I
    .end local v16    # "sr":I
    :cond_1
    const/16 v23, 0x0

    .local v23, "x":I
    :goto_3
    move/from16 v0, v23

    move/from16 v1, p2

    if-ge v0, v1, :cond_4

    .line 1177
    aget v25, v2, v17

    shl-int/lit8 v25, v25, 0x18

    aget v26, v2, v21

    shl-int/lit8 v26, v26, 0x10

    or-int v25, v25, v26

    aget v26, v2, v20

    shl-int/lit8 v26, v26, 0x8

    or-int v25, v25, v26

    aget v26, v2, v19

    or-int v25, v25, v26

    aput v25, p1, v8

    .line 1180
    add-int v25, v23, v9

    add-int/lit8 v5, v25, 0x1

    .line 1181
    .local v5, "i1":I
    move/from16 v0, v22

    if-le v5, v0, :cond_2

    .line 1182
    move/from16 v5, v22

    .line 1183
    :cond_2
    sub-int v6, v23, v9

    .line 1184
    .local v6, "i2":I
    if-gez v6, :cond_3

    .line 1185
    const/4 v6, 0x0

    .line 1186
    :cond_3
    add-int v25, v7, v5

    aget v11, p0, v25

    .line 1187
    .local v11, "rgb1":I
    add-int v25, v7, v6

    aget v12, p0, v25

    .line 1189
    .local v12, "rgb2":I
    shr-int/lit8 v25, v11, 0x18

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shr-int/lit8 v26, v12, 0x18

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    sub-int v25, v25, v26

    add-int v17, v17, v25

    .line 1190
    const/high16 v25, 0xff0000

    and-int v25, v25, v11

    const/high16 v26, 0xff0000

    and-int v26, v26, v12

    sub-int v25, v25, v26

    shr-int/lit8 v25, v25, 0x10

    add-int v21, v21, v25

    .line 1191
    const v25, 0xff00

    and-int v25, v25, v11

    const v26, 0xff00

    and-int v26, v26, v12

    sub-int v25, v25, v26

    shr-int/lit8 v25, v25, 0x8

    add-int v20, v20, v25

    .line 1192
    and-int/lit16 v0, v11, 0xff

    move/from16 v25, v0

    and-int/lit16 v0, v12, 0xff

    move/from16 v26, v0

    sub-int v25, v25, v26

    add-int v19, v19, v25

    .line 1193
    add-int v8, v8, p3

    .line 1176
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 1195
    .end local v5    # "i1":I
    .end local v6    # "i2":I
    .end local v11    # "rgb1":I
    .end local v12    # "rgb2":I
    :cond_4
    add-int v7, v7, p2

    .line 1155
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1

    .line 1197
    .end local v8    # "outIndex":I
    .end local v17    # "ta":I
    .end local v19    # "tb":I
    .end local v20    # "tg":I
    .end local v21    # "tr":I
    .end local v23    # "x":I
    :cond_5
    return-void
.end method

.method public static blurBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # F

    .prologue
    .line 950
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 951
    .local v11, "srcW":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 952
    .local v10, "srcH":I
    move/from16 v5, p2

    .line 953
    .local v5, "rad":F
    const/high16 v15, 0x41c80000    # 25.0f

    cmpg-float v15, v15, v5

    if-gez v15, :cond_0

    .line 954
    const/high16 v15, 0x41c80000    # 25.0f

    div-float v7, p2, v15

    .line 955
    .local v7, "scale":F
    int-to-float v15, v11

    div-float/2addr v15, v7

    float-to-int v4, v15

    .line 956
    .local v4, "destW":I
    int-to-float v15, v10

    div-float/2addr v15, v7

    float-to-int v3, v15

    .line 957
    .local v3, "destH":I
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v3, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 958
    .local v9, "scaleSrc":Landroid/graphics/Bitmap;
    move-object/from16 v12, p1

    .line 959
    .local v12, "tmp":Landroid/graphics/Bitmap;
    move-object/from16 p1, v9

    .line 960
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 961
    const/high16 p2, 0x41c80000    # 25.0f

    .line 963
    .end local v3    # "destH":I
    .end local v4    # "destW":I
    .end local v7    # "scale":F
    .end local v9    # "scaleSrc":Landroid/graphics/Bitmap;
    .end local v12    # "tmp":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v6

    .line 964
    .local v6, "renderScript":Landroid/renderscript/RenderScript;
    invoke-static {v6}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v15

    invoke-static {v6, v15}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v1

    .line 965
    .local v1, "blurScript":Landroid/renderscript/ScriptIntrinsicBlur;
    invoke-static/range {p1 .. p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 966
    .local v2, "dest":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    invoke-static {v6, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v13

    .line 967
    .local v13, "tmp1":Landroid/renderscript/Allocation;
    invoke-static {v6, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v14

    .line 968
    .local v14, "tmp2":Landroid/renderscript/Allocation;
    move/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 969
    invoke-virtual {v1, v13}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 970
    invoke-virtual {v1, v14}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 971
    invoke-virtual {v14, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 972
    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 973
    invoke-virtual {v13}, Landroid/renderscript/Allocation;->destroy()V

    .line 974
    invoke-virtual {v14}, Landroid/renderscript/Allocation;->destroy()V

    .line 975
    invoke-virtual {v6}, Landroid/renderscript/RenderScript;->destroy()V

    .line 976
    const/high16 v15, 0x41c80000    # 25.0f

    cmpg-float v15, v15, v5

    if-gez v15, :cond_1

    .line 977
    const/4 v15, 0x0

    invoke-static {v2, v11, v10, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 978
    .local v8, "scaleDest":Landroid/graphics/Bitmap;
    move-object v12, v2

    .line 979
    .restart local v12    # "tmp":Landroid/graphics/Bitmap;
    move-object v2, v8

    .line 980
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 982
    .end local v8    # "scaleDest":Landroid/graphics/Bitmap;
    .end local v12    # "tmp":Landroid/graphics/Bitmap;
    :cond_1
    return-object v2
.end method

.method public static blurFractional([I[IIIF)V
    .locals 26
    .param p0, "in"    # [I
    .param p1, "out"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "radius"    # F

    .prologue
    .line 1201
    move/from16 v0, p4

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float p4, p4, v23

    .line 1202
    const/high16 v23, 0x3f800000    # 1.0f

    const/high16 v24, 0x3f800000    # 1.0f

    const/high16 v25, 0x40000000    # 2.0f

    mul-float v25, v25, p4

    add-float v24, v24, v25

    div-float v8, v23, v24

    .line 1203
    .local v8, "f":F
    const/4 v13, 0x0

    .line 1205
    .local v13, "inIndex":I
    const/16 v22, 0x0

    .local v22, "y":I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, p3

    if-ge v0, v1, :cond_1

    .line 1206
    move/from16 v14, v22

    .line 1208
    .local v14, "outIndex":I
    const/16 v23, 0x0

    aget v23, p0, v23

    aput v23, p1, v14

    .line 1209
    add-int v14, v14, p3

    .line 1210
    const/16 v21, 0x1

    .local v21, "x":I
    :goto_1
    add-int/lit8 v23, p2, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 1211
    add-int v12, v13, v21

    .line 1212
    .local v12, "i":I
    add-int/lit8 v23, v12, -0x1

    aget v18, p0, v23

    .line 1213
    .local v18, "rgb1":I
    aget v19, p0, v12

    .line 1214
    .local v19, "rgb2":I
    add-int/lit8 v23, v12, 0x1

    aget v20, p0, v23

    .line 1216
    .local v20, "rgb3":I
    shr-int/lit8 v23, v18, 0x18

    move/from16 v0, v23

    and-int/lit16 v2, v0, 0xff

    .line 1217
    .local v2, "a1":I
    shr-int/lit8 v23, v18, 0x10

    move/from16 v0, v23

    and-int/lit16 v15, v0, 0xff

    .line 1218
    .local v15, "r1":I
    shr-int/lit8 v23, v18, 0x8

    move/from16 v0, v23

    and-int/lit16 v9, v0, 0xff

    .line 1219
    .local v9, "g1":I
    move/from16 v0, v18

    and-int/lit16 v5, v0, 0xff

    .line 1220
    .local v5, "b1":I
    shr-int/lit8 v23, v19, 0x18

    move/from16 v0, v23

    and-int/lit16 v3, v0, 0xff

    .line 1221
    .local v3, "a2":I
    shr-int/lit8 v23, v19, 0x10

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 1222
    .local v16, "r2":I
    shr-int/lit8 v23, v19, 0x8

    move/from16 v0, v23

    and-int/lit16 v10, v0, 0xff

    .line 1223
    .local v10, "g2":I
    move/from16 v0, v19

    and-int/lit16 v6, v0, 0xff

    .line 1224
    .local v6, "b2":I
    shr-int/lit8 v23, v20, 0x18

    move/from16 v0, v23

    and-int/lit16 v4, v0, 0xff

    .line 1225
    .local v4, "a3":I
    shr-int/lit8 v23, v20, 0x10

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 1226
    .local v17, "r3":I
    shr-int/lit8 v23, v20, 0x8

    move/from16 v0, v23

    and-int/lit16 v11, v0, 0xff

    .line 1227
    .local v11, "g3":I
    move/from16 v0, v20

    and-int/lit16 v7, v0, 0xff

    .line 1228
    .local v7, "b3":I
    add-int v23, v2, v4

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, p4

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v2, v3, v23

    .line 1229
    add-int v23, v15, v17

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, p4

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v15, v16, v23

    .line 1230
    add-int v23, v9, v11

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, p4

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v9, v10, v23

    .line 1231
    add-int v23, v5, v7

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, p4

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v5, v6, v23

    .line 1232
    int-to-float v0, v2

    move/from16 v23, v0

    mul-float v23, v23, v8

    move/from16 v0, v23

    float-to-int v2, v0

    .line 1233
    int-to-float v0, v15

    move/from16 v23, v0

    mul-float v23, v23, v8

    move/from16 v0, v23

    float-to-int v15, v0

    .line 1234
    int-to-float v0, v9

    move/from16 v23, v0

    mul-float v23, v23, v8

    move/from16 v0, v23

    float-to-int v9, v0

    .line 1235
    int-to-float v0, v5

    move/from16 v23, v0

    mul-float v23, v23, v8

    move/from16 v0, v23

    float-to-int v5, v0

    .line 1236
    shl-int/lit8 v23, v2, 0x18

    shl-int/lit8 v24, v15, 0x10

    or-int v23, v23, v24

    shl-int/lit8 v24, v9, 0x8

    or-int v23, v23, v24

    or-int v23, v23, v5

    aput v23, p1, v14

    .line 1237
    add-int v14, v14, p3

    .line 1210
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 1239
    .end local v2    # "a1":I
    .end local v3    # "a2":I
    .end local v4    # "a3":I
    .end local v5    # "b1":I
    .end local v6    # "b2":I
    .end local v7    # "b3":I
    .end local v9    # "g1":I
    .end local v10    # "g2":I
    .end local v11    # "g3":I
    .end local v12    # "i":I
    .end local v15    # "r1":I
    .end local v16    # "r2":I
    .end local v17    # "r3":I
    .end local v18    # "rgb1":I
    .end local v19    # "rgb2":I
    .end local v20    # "rgb3":I
    :cond_0
    add-int/lit8 v23, p2, -0x1

    aget v23, p0, v23

    aput v23, p1, v14

    .line 1240
    add-int v13, v13, p2

    .line 1205
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 1242
    .end local v14    # "outIndex":I
    .end local v21    # "x":I
    :cond_1
    return-void
.end method

.method public static checkDefaultHome(Landroid/app/Activity;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1917
    const/4 v4, 0x2

    .line 1918
    .local v4, "status":I
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1919
    .local v0, "pkg":Ljava/lang/String;
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Utils;->defaultLauncherPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1920
    .local v1, "defHomePkg":Ljava/lang/String;
    sget-object v2, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "defaultHomeStatus home pkg ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    if-nez v1, :cond_0

    .line 1922
    const/4 v4, 0x3

    goto :goto_0

    .line 1924
    :cond_0
    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1925
    const/4 v4, 0x3

    goto :goto_0

    .line 1927
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1928
    const/4 v4, 0x1

    goto :goto_0

    .line 1930
    :cond_2
    const/4 v4, 0x2

    .line 1933
    :goto_0
    sget-object v2, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkDefaultHome status = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Utils;->homeStatusToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    packed-switch v4, :pswitch_data_0

    .line 1946
    :goto_1
    :pswitch_0
    return-void

    .line 1939
    :pswitch_1
    invoke-static {p0, v1}, Lcom/smartisanos/launcher/data/Utils;->setHomeToDefault(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 1934
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static checkPackageExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1623
    const/4 v0, 0x0

    .line 1624
    .local v0, "exist":Z
    const/4 v1, 0x0

    .line 1626
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1627
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1629
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    if-eqz v1, :cond_0

    .line 1630
    const/4 v0, 0x1

    .line 1632
    :cond_0
    return v0

    .line 1628
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static checkUpdate(Landroid/app/Activity;Z)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "showToast"    # Z

    .prologue
    .line 2253
    const v2, 0x7f080022

    :try_start_0
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2254
    .local v5, "appName":Ljava/lang/String;
    const/high16 v0, 0x2d00000

    .line 2255
    .local v0, "defSize":I
    new-instance v1, Lcom/smartisan/updater/ApkUpdater;

    const-string v3, "https://api.github.com/repos/rianlu/smartisan-launcher-maintained/releases/latest"

    int-to-long v6, v0

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/smartisan/updater/ApkUpdater;-><init>(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;J)V

    .line 2256
    .local v1, "updater":Lcom/smartisan/updater/ApkUpdater;
    const v2, 0x7f080074

    invoke-virtual {v1, v2}, Lcom/smartisan/updater/ApkUpdater;->setVerisonMessage(I)V

    .line 2257
    invoke-virtual {v1}, Lcom/smartisan/updater/ApkUpdater;->checkUpdate()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2261
    .end local v0    # "defSize":I
    .end local v1    # "updater":Lcom/smartisan/updater/ApkUpdater;
    .end local v5    # "appName":Ljava/lang/String;
    :goto_0
    return-void

    .line 2258
    :catch_0
    move-exception v8

    .line 2259
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 1245
    if-ge p0, p1, :cond_0

    move v0, p1

    .line 1246
    .local v0, "re":I
    :goto_0
    return v0

    .line 1245
    .end local v0    # "re":I
    :cond_0
    if-le p0, p2, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method public static clearMessageByPackageName(Landroid/content/Context;Ljava/util/List;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 671
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 698
    :cond_0
    return-void

    .line 674
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 675
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 676
    .local v1, "pkg":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 679
    sget-object v5, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PHONE:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    iget-object v5, v5, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 682
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_4

    .line 683
    const-string v1, "com.android.phone"

    .line 690
    :cond_3
    :goto_1
    sget-object v5, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clearMessageByPackageName ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.smartisanos.launcher.clear_message"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 692
    .local v0, "intent":Landroid/content/Intent;
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 693
    .local v3, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 694
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 685
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4
    const-string v1, "com.android.server.telecom"

    goto :goto_1

    .line 687
    :cond_5
    sget-object v5, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->MMS:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    iget-object v5, v5, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 688
    const-string v1, "com.android.providers.telephony"

    goto :goto_1
.end method

.method public static clipCircle(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I

    .prologue
    const/4 v9, 0x0

    .line 1735
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 1736
    .local v2, "imgWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1737
    .local v1, "imgHeight":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1738
    .local v3, "outputBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 1739
    .local v4, "path":Landroid/graphics/Path;
    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, p1, 0x2

    int-to-float v7, v7

    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1740
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1741
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1742
    const/4 v5, 0x0

    invoke-virtual {v0, p0, v9, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1743
    return-object v3
.end method

.method public static defaultLauncherPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1786
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1787
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1788
    .local v0, "homeActivities":Ljava/util/ArrayList;
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1789
    .local v2, "defaultHome":Landroid/content/ComponentName;
    if-eqz v2, :goto_0

    .line 1790
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    return-object v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1794
    .end local v0    # "homeActivities":Ljava/util/ArrayList;
    .end local v2    # "defaultHome":Landroid/content/ComponentName;
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1795
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1796
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1797
    .local v2, "res":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    .line 1798
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    .line 1799
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v4

    .line 1802
    :cond_0
    const/4 v4, 0x0

    return-object v4

    .line 1792
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "res":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static drawableToBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x0

    .line 306
    if-nez p0, :cond_0

    .line 307
    sget-object v3, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    const-string v5, "drawableToBitmapWithoutShadow return null by drawable is null"

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const/4 v0, 0x0

    .line 315
    :goto_0
    return-object v0

    .line 310
    :cond_0
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_origin:F

    float-to-int v2, v3

    .line 311
    .local v2, "w":I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 312
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 313
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v4, v4, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 314
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public static findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 249
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 250
    .local v1, "mainIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 254
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-object v0

    .restart local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public static flipRectTextureCoordinate([FI)V
    .locals 7
    .param p0, "uv"    # [F
    .param p1, "size"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1088
    array-length v1, p0

    if-eq v1, p1, :cond_0

    .line 1105
    :goto_0
    return-void

    .line 1091
    :cond_0
    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 1093
    .local v0, "temp":[F
    const/4 v1, 0x6

    aget v1, v0, v1

    aput v1, p0, v3

    .line 1094
    const/4 v1, 0x7

    aget v1, v0, v1

    aput v1, p0, v4

    .line 1096
    aget v1, v0, v6

    aput v1, p0, v2

    .line 1097
    const/4 v1, 0x5

    aget v1, v0, v1

    aput v1, p0, v5

    .line 1099
    aget v1, v0, v2

    aput v1, p0, v6

    .line 1100
    const/4 v1, 0x5

    aget v2, v0, v5

    aput v2, p0, v1

    .line 1102
    const/4 v1, 0x6

    aget v2, v0, v3

    aput v2, p0, v1

    .line 1103
    const/4 v1, 0x7

    aget v2, v0, v4

    aput v2, p0, v1

    goto :goto_0
.end method

.method public static generateColorInfo(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 785
    .local p0, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .local p1, "contentValueses":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 786
    .local v3, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/Utils$GenerateColorInfoTask;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 787
    .local v2, "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    new-instance v5, Lcom/smartisanos/launcher/data/Utils$GenerateColorInfoTask;

    invoke-direct {v5, v2, p1}, Lcom/smartisanos/launcher/data/Utils$GenerateColorInfoTask;-><init>(Lcom/smartisanos/launcher/data/ItemInfo;Ljava/util/List;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 789
    .end local v2    # "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_0
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 791
    .local v0, "EXECUTOR":Ljava/util/concurrent/ExecutorService;
    :try_start_0
    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    :goto_1
    return-void

    .line 792
    :catch_0
    move-exception v1

    .line 793
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public static generateDefaultShadowIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "recycle"    # Z

    .prologue
    .line 350
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->createDragOutline(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 351
    .local v0, "bd":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    .line 352
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 356
    :cond_0
    return-object v0
.end method

.method public static generateIconDataList(Ljava/util/Map;Landroid/content/Context;Ljava/util/List;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 861
    .local p0, "drawableMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/smartisanos/launcher/data/ItemInfo;Landroid/graphics/drawable/Drawable;>;"
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez p0, :cond_0

    .line 888
    :goto_0
    return-void

    .line 864
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 865
    .local v8, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/Utils$GenerateShadowIconTask;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 866
    .local v6, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    sget-object v9, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadIcons generateIconDataList item size "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 869
    .local v5, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 870
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v10, Lcom/smartisanos/launcher/data/Utils$GenerateShadowIconTask;

    invoke-direct {v10, v2, v5, p1}, Lcom/smartisanos/launcher/data/Utils$GenerateShadowIconTask;-><init>(Landroid/graphics/drawable/Drawable;Lcom/smartisanos/launcher/data/ItemInfo;Landroid/content/Context;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 872
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_1
    const/4 v9, 0x3

    invoke-static {v9}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 874
    .local v0, "EXECUTOR":Ljava/util/concurrent/ExecutorService;
    :try_start_0
    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v7

    .line 875
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Landroid/content/ContentValues;>;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    .line 876
    .local v4, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/content/ContentValues;>;"
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 877
    .local v1, "cv":Landroid/content/ContentValues;
    if-eqz v1, :cond_2

    .line 880
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 882
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v4    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/content/ContentValues;>;"
    .end local v7    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Landroid/content/ContentValues;>;>;"
    :catch_0
    move-exception v3

    .line 883
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 887
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_3
    :goto_3
    sget-object v9, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadIcons generateIconDataList values size "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 884
    :catch_1
    move-exception v3

    .line 885
    .local v3, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_3
.end method

.method public static generateShadowIconDrawables(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)[Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 376
    const/4 v3, 0x2

    new-array v2, v3, [Landroid/graphics/drawable/Drawable;

    .line 377
    .local v2, "drawables":[Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Utils;->drawableToBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 378
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0, v5, v4}, Lcom/smartisanos/launcher/data/Utils;->generateShadowIcons(Landroid/graphics/Bitmap;ZZ)[Landroid/graphics/Bitmap;

    move-result-object v1

    .line 379
    .local v1, "bitmaps":[Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 380
    aget-object v3, v1, v4

    invoke-static {p0, v3}, Lcom/smartisanos/quicksearchbox/util/Util;->bitmapToDrawable(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v4

    .line 381
    aget-object v3, v1, v5

    invoke-static {p0, v3}, Lcom/smartisanos/quicksearchbox/util/Util;->bitmapToDrawable(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v5

    .line 382
    return-object v2
.end method

.method public static generateShadowIcons(Landroid/graphics/Bitmap;ZZ)[Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "recycle"    # Z
    .param p2, "justShadow"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 388
    if-eqz p2, :cond_1

    .line 389
    invoke-static {p0, v4}, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->createDragOutlineJustShadow(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 390
    .local v0, "bd":Landroid/graphics/Bitmap;
    invoke-static {p0, v5}, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->createDragOutlineJustShadow(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 395
    .local v2, "bl":Landroid/graphics/Bitmap;
    :goto_0
    const/4 v3, 0x2

    new-array v1, v3, [Landroid/graphics/Bitmap;

    .line 396
    .local v1, "bits":[Landroid/graphics/Bitmap;
    aput-object v0, v1, v4

    .line 397
    aput-object v2, v1, v5

    .line 398
    if-eqz p1, :cond_0

    .line 399
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 400
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 403
    :cond_0
    return-object v1

    .line 392
    .end local v0    # "bd":Landroid/graphics/Bitmap;
    .end local v1    # "bits":[Landroid/graphics/Bitmap;
    .end local v2    # "bl":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {p0, v4}, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->createDragOutline(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 393
    .restart local v0    # "bd":Landroid/graphics/Bitmap;
    invoke-static {p0, v5}, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->createDragOutline(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .restart local v2    # "bl":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static generateShadowIconsDrawablesfromResolveInfo(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/List;)[Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)[",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 367
    .local p2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x2

    new-array v1, v3, [Landroid/graphics/drawable/Drawable;

    .line 368
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 369
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-static {v2, p1}, Lcom/smartisanos/launcher/data/Utils;->loadIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 370
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p0, v0}, Lcom/smartisanos/launcher/data/Utils;->generateShadowIconDrawables(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 371
    goto :goto_0

    .line 372
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v1
.end method

.method public static generateShadowWithoutIcon(Landroid/content/Context;Ljava/lang/String;Lcom/smartisanos/launcher/data/Constants$IconType;)[B
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/smartisanos/launcher/data/Constants$IconType;

    .prologue
    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 325
    .local v4, "pkgManager":Landroid/content/pm/PackageManager;
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/data/Utils;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 326
    .local v6, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 327
    .local v5, "reso":Landroid/content/pm/ResolveInfo;
    invoke-static {v5, v4}, Lcom/smartisanos/launcher/data/Utils;->loadIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 328
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 330
    :try_start_0
    invoke-static {v2}, Lcom/smartisanos/launcher/data/Utils;->drawableToBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 331
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 332
    .local v7, "shadowImg":Landroid/graphics/Bitmap;
    sget-object v9, Lcom/smartisanos/launcher/data/Constants$IconType;->Dark:Lcom/smartisanos/launcher/data/Constants$IconType;

    if-ne v9, p2, :cond_1

    .line 333
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v0, v9, v10}, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->createDragOutline(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 337
    :goto_1
    invoke-static {v7}, Lcom/smartisanos/launcher/data/Utils;->Bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 338
    .local v1, "data":[B
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 339
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 346
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "data":[B
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "reso":Landroid/content/pm/ResolveInfo;
    .end local v7    # "shadowImg":Landroid/graphics/Bitmap;
    :goto_2
    return-object v1

    .line 335
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "reso":Landroid/content/pm/ResolveInfo;
    .restart local v7    # "shadowImg":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static {v0, v9, v10}, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->createDragOutline(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_1

    .line 341
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "shadowImg":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 342
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 346
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "reso":Landroid/content/pm/ResolveInfo;
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public static generateShortcutIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1747
    if-nez p1, :cond_0

    .line 1748
    sget-object v17, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v18, "generateShortcutIcon return null, by src is null"

    invoke-virtual/range {v17 .. v18}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1749
    const/4 v10, 0x0

    .line 1782
    :goto_0
    return-object v10

    .line 1751
    :cond_0
    const/16 v7, 0xc0

    .line 1752
    .local v7, "iconWidth":I
    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v17

    invoke-static {v7, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1754
    .local v10, "overlappingImg":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 1755
    .local v12, "resources":Landroid/content/res/Resources;
    sget v11, Lcom/smartisanos/launcher/ResIds$drawable;->contact_shortcut:I

    .line 1756
    .local v11, "resId":I
    const-string v17, "com.tencent.mm"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1757
    sget v11, Lcom/smartisanos/launcher/ResIds$drawable;->wechat_shortcut:I

    .line 1761
    :cond_1
    :goto_1
    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1762
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/smartisanos/launcher/data/Utils;->drawableToBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 1763
    .local v15, "wechat_shortcut":Landroid/graphics/Bitmap;
    const/16 v13, 0xb4

    .line 1764
    .local v13, "shortcutWidth":I
    move-object/from16 v8, p1

    .line 1765
    .local v8, "img":Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 1766
    .local v16, "width":I
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 1767
    .local v6, "height":I
    sget-object v17, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "src w ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "], h ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1768
    move/from16 v0, v16

    if-lt v0, v13, :cond_2

    if-ge v6, v13, :cond_3

    .line 1769
    :cond_2
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v8, v13, v13, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1771
    :cond_3
    invoke-static {v8, v13}, Lcom/smartisanos/launcher/data/Utils;->clipCircle(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1772
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1773
    .local v3, "canvas":Landroid/graphics/Canvas;
    const/16 v17, 0xc

    div-int/lit8 v9, v17, 0x2

    .line 1774
    .local v9, "left":I
    const/16 v17, 0xc

    div-int/lit8 v14, v17, 0x2

    .line 1775
    .local v14, "top":I
    int-to-float v0, v9

    move/from16 v17, v0

    int-to-float v0, v14

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v3, v8, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1776
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v3, v15, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1777
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "height":I
    .end local v8    # "img":Landroid/graphics/Bitmap;
    .end local v9    # "left":I
    .end local v11    # "resId":I
    .end local v12    # "resources":Landroid/content/res/Resources;
    .end local v13    # "shortcutWidth":I
    .end local v14    # "top":I
    .end local v15    # "wechat_shortcut":Landroid/graphics/Bitmap;
    .end local v16    # "width":I
    :catch_0
    move-exception v5

    .line 1778
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1779
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 1780
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1758
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v11    # "resId":I
    .restart local v12    # "resources":Landroid/content/res/Resources;
    :cond_4
    :try_start_1
    sget-object v17, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PHONE:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1759
    sget v11, Lcom/smartisanos/launcher/ResIds$drawable;->contact_shortcut:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public static getAnimIndexFromValue(I)I
    .locals 1
    .param p0, "currentAnim"    # I

    .prologue
    .line 2264
    packed-switch p0, :pswitch_data_0

    .line 2272
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2266
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2268
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 2270
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 2264
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getBoard()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1615
    const/4 v0, 0x0

    .line 1617
    .local v0, "value":Ljava/lang/String;
    :try_start_0
    const-string v1, "ro.product.board"

    invoke-static {v1}, Lcom/smartisanos/launcher/InvisibleApi;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1619
    :goto_0
    return-object v0

    .line 1618
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCellByComponentName(Ljava/lang/String;)Lcom/smartisanos/launcher/view/Cell;
    .locals 13
    .param p0, "componentName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v12, 0x0

    .line 144
    sget-boolean v7, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "DEBUG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCellByComponentName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/smartisanos/launcher/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v0, v6

    .line 183
    :goto_0
    return-object v0

    .line 148
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 149
    const-string v7, "com.android.phone.setting.SettingActivity"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.android.contacts.ContactsSettingActivity"

    .line 150
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.android.mms.ui.MessagingPreferenceActivity"

    .line 151
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 152
    :cond_2
    const-string p0, "com.android.settings.Settings"

    .line 155
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {}, Lcom/smartisanos/launcher/LauncherModel;->getItemMap()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 156
    .local v3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 157
    .local v2, "id":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/smartisanos/launcher/LauncherModel;->getItemInfo(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v4

    .line 158
    .local v4, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v4, :cond_4

    .line 161
    iget-object v8, v4, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, v4, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 162
    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 163
    :cond_5
    sget-boolean v8, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v8, :cond_6

    sget-object v8, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Start activity from other way, start iteminfo:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_6
    iget-boolean v8, v4, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    if-eqz v8, :cond_8

    .line 165
    sget-boolean v8, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v8, :cond_7

    sget-object v8, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isNewlyInstalled set false by getCellByComponentName, name ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "], pkg ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "], cmp ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_7
    iput-boolean v12, v4, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    .line 169
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 170
    .local v5, "values":Landroid/content/ContentValues;
    const-string v8, "_id"

    iget-wide v10, v4, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 171
    const-string v8, "newlyInstalled"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v1, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v8, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UPDATE_ITEM:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v8, v1}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;)V

    .line 176
    .end local v1    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_8
    iget-wide v8, v4, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v8, v9}, Lcom/smartisanos/launcher/data/Utils;->getCellByGlobalId(J)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    .line 177
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v0, :cond_4

    goto/16 :goto_0

    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "id":Ljava/lang/Long;
    .end local v3    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v4    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_9
    move-object v0, v6

    .line 183
    goto/16 :goto_0
.end method

.method public static getCellByGlobalId(J)Lcom/smartisanos/launcher/view/Cell;
    .locals 4
    .param p0, "id"    # J

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_0

    move-object v1, v0

    .line 243
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .local v1, "cell":Lcom/smartisanos/launcher/view/Cell;
    :goto_0
    return-object v1

    .line 242
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .restart local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/smartisanos/launcher/view/MainView;->getCellById(J)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    move-object v1, v0

    .line 243
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .restart local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    goto :goto_0
.end method

.method public static getCellByPackageAndComponentName(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/launcher/view/Cell;
    .locals 10
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 191
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move-object v1, v6

    .line 234
    :cond_1
    :goto_0
    return-object v1

    .line 194
    :cond_2
    const-string v7, "com.android.phone.setting.SettingActivity"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.android.contacts.ContactsSettingActivity"

    .line 195
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.android.mms.ui.MessagingPreferenceActivity"

    .line 196
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 197
    :cond_3
    const-string p0, "com.android.settings"

    .line 198
    const-string p1, "com.android.settings.Settings"

    .line 200
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v5, "matchs":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {}, Lcom/smartisanos/launcher/LauncherModel;->getItemMap()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 202
    .local v3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 203
    .local v2, "id":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/smartisanos/launcher/LauncherModel;->getItemInfo(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v4

    .line 204
    .local v4, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-object v8, v4, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 205
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 209
    .end local v2    # "id":Ljava/lang/Long;
    .end local v4    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_9

    .line 210
    const/4 v7, 0x1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ne v7, v8, :cond_7

    .line 211
    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 212
    .local v0, "appInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-wide v8, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v8, v9}, Lcom/smartisanos/launcher/data/Utils;->getCellByGlobalId(J)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    .line 213
    .local v1, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-nez v1, :cond_1

    move-object v1, v6

    .line 218
    goto :goto_0

    .line 221
    .end local v0    # "appInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 222
    .restart local v0    # "appInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-object v7, v0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 223
    iget-wide v8, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v8, v9}, Lcom/smartisanos/launcher/data/Utils;->getCellByGlobalId(J)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    .line 224
    .restart local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v1, :cond_8

    goto/16 :goto_0

    .line 234
    .end local v0    # "appInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_9
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/MainView;->getLauncherActivity()Lcom/smartisanos/home/Launcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/home/Launcher;->getLatestOpenCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static getCellsByPkg(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14
    .param p0, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v12, -0x1

    const/4 v9, 0x0

    .line 1556
    if-nez p0, :cond_1

    move-object v1, v9

    .line 1587
    :cond_0
    :goto_0
    return-object v1

    .line 1559
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v8

    .line 1560
    .local v8, "mainView":Lcom/smartisanos/launcher/view/MainView;
    if-nez v8, :cond_2

    move-object v1, v9

    .line 1561
    goto :goto_0

    .line 1563
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/LauncherModel;->getItemMap()Ljava/util/HashMap;

    move-result-object v5

    .line 1564
    .local v5, "itemInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1565
    .local v3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v6, -0x1

    .line 1566
    .local v6, "itemId":J
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1567
    .local v1, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1568
    .local v2, "id":Ljava/lang/Long;
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1569
    .local v4, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v4, :cond_3

    .line 1572
    iget-object v11, v4, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1573
    cmp-long v11, v6, v12

    if-nez v11, :cond_4

    .line 1574
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1576
    :cond_4
    cmp-long v11, v6, v12

    if-eqz v11, :cond_3

    .line 1577
    invoke-virtual {v8, v6, v7}, Lcom/smartisanos/launcher/view/MainView;->getCellById(J)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    .line 1578
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 1579
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1584
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "id":Ljava/lang/Long;
    .end local v4    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gtz v10, :cond_0

    move-object v1, v9

    .line 1587
    goto :goto_0
.end method

.method public static getCurrentScrollAnimType()I
    .locals 2

    .prologue
    .line 2296
    const-string v0, "launcher_page_animation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDefaultShortcutIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 1723
    const/4 v0, 0x0

    .line 1724
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 1726
    .local v2, "resources":Landroid/content/res/Resources;
    const/high16 v3, 0x10d0000

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1731
    :goto_0
    return-object v0

    .line 1727
    :catch_0
    move-exception v1

    .line 1728
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 1729
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDeviceColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1609
    :try_start_0
    const-string v0, "ro.housing.color"

    invoke-static {v0}, Lcom/smartisanos/launcher/InvisibleApi;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1611
    :goto_0
    return-object v0

    .line 1610
    :catch_0
    move-exception v0

    .line 1611
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFloatTitleBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 543
    const/4 v4, 0x0

    .line 544
    .local v4, "bg":Landroid/graphics/drawable/NinePatchDrawable;
    sget v9, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    .line 545
    .local v9, "currentPageStyle":I
    const/4 v13, 0x0

    .line 546
    .local v13, "res":Landroid/content/res/Resources;
    const/4 v6, 0x0

    .line 547
    .local v6, "bubbleId":I
    invoke-static/range {p0 .. p0}, Lcom/smartisanos/launcher/theme/ThemeManager;->getCurrentTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v18

    .line 548
    .local v18, "theme":Lcom/smartisanos/launcher/theme/Theme;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/theme/ThemeManager;->isDefaultTheme(Landroid/content/Context;Lcom/smartisanos/launcher/theme/Theme;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 549
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 550
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_2

    .line 551
    sget v20, Lcom/smartisanos/launcher/ResIds$drawable;->label_bubble:I

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .end local v4    # "bg":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v4, Landroid/graphics/drawable/NinePatchDrawable;

    .line 567
    .restart local v4    # "bg":Landroid/graphics/drawable/NinePatchDrawable;
    :goto_0
    sget v20, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static/range {v20 .. v20}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v20

    move-object/from16 v0, v20

    iget v15, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->float_text_font_size:F

    .line 568
    .local v15, "textSize":F
    sget-object v20, Lcom/smartisanos/launcher/view/TextView;->sFloatAppPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 570
    new-instance v20, Landroid/text/TextPaint;

    invoke-direct/range {v20 .. v20}, Landroid/text/TextPaint;-><init>()V

    const/high16 v21, 0x42c80000    # 100.0f

    sget-object v22, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 571
    .local v14, "show":Ljava/lang/String;
    sget-object v20, Lcom/smartisanos/launcher/view/TextView;->sFloatAppPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v12, v0

    .line 572
    .local v12, "measuredTextWidth":I
    move/from16 v16, v12

    .line 573
    .local v16, "textWidth":I
    invoke-virtual {v4}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    add-int v19, v20, v16

    .line 574
    .local v19, "width":I
    invoke-virtual {v4}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v11

    .line 575
    .local v11, "height":I
    invoke-virtual {v4}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumWidth()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 576
    invoke-virtual {v4}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumWidth()I

    move-result v19

    .line 578
    :cond_0
    invoke-virtual {v4}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumHeight()I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_1

    .line 579
    invoke-virtual {v4}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumHeight()I

    move-result v11

    .line 581
    :cond_1
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 582
    .local v8, "config":Landroid/graphics/Bitmap$Config;
    move/from16 v0, v19

    invoke-static {v0, v11, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 583
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 584
    .local v7, "canvas":Landroid/graphics/Canvas;
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2, v11}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 585
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 586
    new-instance v10, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v10}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 587
    .local v10, "fm":Landroid/graphics/Paint$FontMetrics;
    sget-object v20, Lcom/smartisanos/launcher/view/TextView;->sFloatAppPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 588
    int-to-float v0, v11

    move/from16 v20, v0

    iget v0, v10, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    iget v0, v10, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    const/high16 v21, 0x40000000    # 2.0f

    sub-float v17, v20, v21

    .line 589
    .local v17, "textY":F
    sub-int v20, v19, v16

    div-int/lit8 v20, v20, 0x2

    add-int/lit8 v20, v20, -0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sget-object v21, Lcom/smartisanos/launcher/view/TextView;->sFloatAppPaint:Landroid/graphics/Paint;

    move/from16 v0, v20

    move/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v7, v14, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 590
    return-object v5

    .line 553
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "config":Landroid/graphics/Bitmap$Config;
    .end local v10    # "fm":Landroid/graphics/Paint$FontMetrics;
    .end local v11    # "height":I
    .end local v12    # "measuredTextWidth":I
    .end local v14    # "show":Ljava/lang/String;
    .end local v15    # "textSize":F
    .end local v16    # "textWidth":I
    .end local v17    # "textY":F
    .end local v19    # "width":I
    :cond_2
    sget v20, Lcom/smartisanos/launcher/ResIds$drawable;->label_bubble_base16:I

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .end local v4    # "bg":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v4, Landroid/graphics/drawable/NinePatchDrawable;

    .restart local v4    # "bg":Landroid/graphics/drawable/NinePatchDrawable;
    goto/16 :goto_0

    .line 556
    :cond_3
    move-object/from16 v0, v18

    iget-object v13, v0, Lcom/smartisanos/launcher/theme/Theme;->mResources:Landroid/content/res/Resources;

    .line 557
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_4

    .line 558
    const-string v20, "label_bubble"

    const-string v21, "drawable"

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 564
    :goto_1
    invoke-virtual {v13, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .end local v4    # "bg":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v4, Landroid/graphics/drawable/NinePatchDrawable;

    .restart local v4    # "bg":Landroid/graphics/drawable/NinePatchDrawable;
    goto/16 :goto_0

    .line 561
    :cond_4
    const-string v20, "label_bubble_base16"

    const-string v21, "drawable"

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_1
.end method

.method public static getGray(Landroid/graphics/Bitmap;)F
    .locals 24
    .param p0, "bt"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1413
    if-nez p0, :cond_0

    .line 1414
    const/16 v16, 0x0

    .line 1448
    :goto_0
    return v16

    .line 1416
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    if-eqz v21, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    if-nez v21, :cond_2

    .line 1417
    :cond_1
    const/16 v16, 0x0

    goto :goto_0

    .line 1419
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 1420
    .local v14, "dstWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 1421
    .local v13, "dstHeight":I
    const/16 v21, 0x5

    move/from16 v0, v21

    if-le v14, v0, :cond_3

    .line 1422
    int-to-float v0, v14

    move/from16 v21, v0

    const/high16 v22, 0x41700000    # 15.0f

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v14, v0

    .line 1424
    :cond_3
    const/16 v21, 0x5

    move/from16 v0, v21

    if-le v13, v0, :cond_4

    .line 1425
    int-to-float v0, v13

    move/from16 v21, v0

    const/high16 v22, 0x41700000    # 15.0f

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v13, v0

    .line 1427
    :cond_4
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v14, v13, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1428
    .local v9, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 1429
    .local v11, "bmpWidth":I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 1431
    .local v10, "bmpHeight":I
    mul-int v19, v11, v10

    .line 1432
    .local v19, "pixels":I
    const-wide/16 v6, 0x0

    .line 1433
    .local v6, "R":J
    const-wide/16 v4, 0x0

    .line 1434
    .local v4, "G":J
    const-wide/16 v2, 0x0

    .line 1435
    .local v2, "B":J
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v0, v10, :cond_6

    .line 1436
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v11, :cond_5

    .line 1437
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v12

    .line 1438
    .local v12, "color":I
    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v20

    .line 1439
    .local v20, "r":I
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v6, v6, v22

    .line 1440
    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v15

    .line 1441
    .local v15, "g":I
    int-to-long v0, v15

    move-wide/from16 v22, v0

    add-long v4, v4, v22

    .line 1442
    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    .line 1443
    .local v8, "b":I
    int-to-long v0, v8

    move-wide/from16 v22, v0

    add-long v2, v2, v22

    .line 1436
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 1435
    .end local v8    # "b":I
    .end local v12    # "color":I
    .end local v15    # "g":I
    .end local v20    # "r":I
    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 1446
    .end local v18    # "j":I
    :cond_6
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 1447
    const v21, 0x3e570a3d    # 0.21f

    long-to-float v0, v6

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    const v22, 0x3f3851ec    # 0.72f

    long-to-float v0, v4

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    add-float v21, v21, v22

    const v22, 0x3d8f5c29    # 0.07f

    long-to-float v0, v2

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    add-float v16, v21, v22

    .line 1448
    .local v16, "gray":F
    goto/16 :goto_0
.end method

.method public static getIconDrawableName(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "info"    # Landroid/content/pm/ResolveInfo;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 127
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 128
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v5

    .line 129
    .local v5, "resId":I
    if-nez v5, :cond_0

    move-object v2, v1

    .line 140
    .end local v1    # "name":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 133
    .end local v2    # "name":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v6, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 134
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .end local v4    # "res":Landroid/content/res/Resources;
    :goto_1
    move-object v2, v1

    .line 140
    .end local v1    # "name":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    goto :goto_0

    .line 135
    .end local v2    # "name":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 137
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getCustomGaussianWallpaper(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1340
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Utils;->getCustomGaussianWallpaperFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 1341
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1342
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 1344
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getCustomGaussianWallpaperFile(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1344
    if-nez p0, :cond_0

    .line 1345
    const/4 v0, 0x0

    .line 1349
    :goto_0
    return-object v0

    .line 1347
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "gaussian_wallpaper.png"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getLockscreenWallpaper(Lcom/smartisanos/launcher/theme/Theme;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "theme"    # Lcom/smartisanos/launcher/theme/Theme;

    .prologue
    .line 1348
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeManager;->isGaussianTheme(Lcom/smartisanos/launcher/theme/Theme;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1349
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Utils;->getCustomGaussianWallpaper(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1350
    .local v0, "customBt":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1351
    invoke-static {p0, v0}, Lcom/smartisanos/launcher/data/Utils;->getLockscreenWallpaper(Lcom/smartisanos/launcher/theme/Theme;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 1354
    .end local v0    # "customBt":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v1

    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->sWallpaperUri:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/data/Utils;->getLockscreenWallpaperByUri(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1349
    .local v0, "oriBt":Landroid/graphics/Bitmap;
    invoke-static {p0, v0}, Lcom/smartisanos/launcher/data/Utils;->getLockscreenWallpaper(Lcom/smartisanos/launcher/theme/Theme;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getLockscreenWallpaper(Lcom/smartisanos/launcher/theme/Theme;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 18
    .param p0, "theme"    # Lcom/smartisanos/launcher/theme/Theme;
    .param p1, "oriBt"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1353
    const/4 v2, 0x0

    .line 1354
    .local v2, "bt":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_3

    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-ne v12, v13, :cond_0

    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    .line 1355
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    if-eq v12, v13, :cond_3

    .line 1357
    :cond_0
    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v12, v12

    sget v13, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v13, v13

    div-float v9, v12, v13

    .line 1358
    .local v9, "screenRatio":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float v6, v12, v13

    .line 1359
    .local v6, "imageRatio":F
    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    sget v13, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1360
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1361
    .local v3, "canvas":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 1362
    .local v8, "p":Landroid/graphics/Paint;
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1363
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1364
    cmpl-float v12, v6, v9

    if-lez v12, :cond_2

    .line 1366
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v9

    float-to-int v11, v12

    .line 1367
    .local v11, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    sub-int/2addr v12, v11

    div-int/lit8 v7, v12, 0x2

    .line 1368
    .local v7, "left":I
    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    sub-int/2addr v14, v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-direct {v12, v7, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget v16, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    sget v17, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    invoke-direct/range {v13 .. v17}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v12, v13, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1377
    .end local v7    # "left":I
    .end local v11    # "width":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1381
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "imageRatio":F
    .end local v8    # "p":Landroid/graphics/Paint;
    .end local v9    # "screenRatio":F
    :goto_1
    if-nez v2, :cond_1

    .line 1382
    const-string v12, "background.png"

    invoke-static {v12}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1383
    .local v1, "backPath":Ljava/lang/String;
    if-eqz p0, :cond_4

    .line 1385
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/theme/Theme;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v12}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/theme/Theme;->mPath:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1400
    .end local v1    # "backPath":Ljava/lang/String;
    :cond_1
    :goto_2
    return-object v2

    .line 1372
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    .restart local v6    # "imageRatio":F
    .restart local v8    # "p":Landroid/graphics/Paint;
    .restart local v9    # "screenRatio":F
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v9

    float-to-int v5, v12

    .line 1373
    .local v5, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sub-int/2addr v12, v5

    div-int/lit8 v10, v12, 0x2

    .line 1374
    .local v10, "top":I
    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    sub-int/2addr v15, v10

    invoke-direct {v12, v13, v10, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget v16, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    sget v17, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    invoke-direct/range {v13 .. v17}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v12, v13, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1379
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "height":I
    .end local v6    # "imageRatio":F
    .end local v8    # "p":Landroid/graphics/Paint;
    .end local v9    # "screenRatio":F
    .end local v10    # "top":I
    :cond_3
    move-object/from16 v2, p1

    goto :goto_1

    .line 1387
    .restart local v1    # "backPath":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1389
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1393
    .end local v4    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_1
    invoke-static {v1}, Lcom/smartisanos/launcher/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_2

    .line 1394
    :catch_1
    move-exception v4

    .line 1396
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getLockscreenWallpaperByUri(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defUri"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1292
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeManager;->getCurrentTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v0

    .line 1293
    .local v0, "currentTheme":Lcom/smartisanos/launcher/theme/Theme;
    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ThemeManager;->isGaussianTheme(Lcom/smartisanos/launcher/theme/Theme;)Z

    move-result v2

    if-eqz v2, :cond_custom_wallpaper_end

    .line 1294
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Utils;->getCustomGaussianWallpaper(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1295
    .local v2, "customWallpaper":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_custom_wallpaper_end

    .line 1296
    return-object v2

    .line 1299
    .end local v2    # "customWallpaper":Landroid/graphics/Bitmap;
    :cond_custom_wallpaper_end
    .end local v0    # "currentTheme":Lcom/smartisanos/launcher/theme/Theme;
    const/4 v3, 0x0

    .line 1300
    .local v3, "oriBt":Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    .line 1294
    .local v4, "wm":Landroid/app/WallpaperManager;
    const/4 v1, 0x0

    .line 1296
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1300
    :goto_0
    if-eqz v1, :cond_0

    .line 1301
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1302
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1303
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v1, v8, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1304
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1306
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    return-object v3

    .line 1297
    :catch_0
    move-exception v2

    .line 1298
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMessageBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "count"    # I

    .prologue
    .line 597
    const/4 v3, 0x0

    .line 598
    .local v3, "bg":Landroid/graphics/drawable/NinePatchDrawable;
    sget v20, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 599
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    sget v21, Lcom/smartisanos/launcher/ResIds$drawable;->message_back:I

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .end local v3    # "bg":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v3, Landroid/graphics/drawable/NinePatchDrawable;

    .line 605
    .restart local v3    # "bg":Landroid/graphics/drawable/NinePatchDrawable;
    :goto_0
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    .line 606
    .local v17, "str":Ljava/lang/String;
    const/16 v20, 0x3e7

    move/from16 v0, p1

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 607
    const/16 p1, 0x3e8

    .line 608
    const-string v17, "999p"

    .line 611
    :cond_0
    sget v20, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static/range {v20 .. v20}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v10

    .line 612
    .local v10, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    invoke-virtual {v3}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->flag_message_number_width:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 613
    .local v19, "width":I
    invoke-virtual {v3}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v8

    .line 615
    .local v8, "height":I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 616
    .local v7, "config":Landroid/graphics/Bitmap$Config;
    move/from16 v0, v19

    invoke-static {v0, v8, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 618
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 619
    .local v6, "canvas":Landroid/graphics/Canvas;
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v3, v0, v1, v2, v8}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 620
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 621
    invoke-virtual {v3}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->flag_message_number_width:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v12, v0

    .line 622
    .local v12, "offsetX":I
    int-to-float v0, v8

    move/from16 v20, v0

    iget v0, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->flag_message_number_height:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v13, v0

    .line 624
    .local v13, "offsetY":I
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/home/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 625
    .local v16, "res":Landroid/content/res/Resources;
    const-string v15, "message_num_%s"

    .line 626
    .local v15, "pattern":Ljava/lang/String;
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 627
    .local v14, "p":Landroid/graphics/Paint;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 628
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 629
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_2

    .line 630
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 631
    .local v11, "name":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-static {v0, v11}, Lcom/smartisanos/launcher/data/Utils;->getNumberBitmap(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 632
    .local v5, "bt":Landroid/graphics/Bitmap;
    new-instance v20, Landroid/graphics/Rect;

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    invoke-direct/range {v20 .. v24}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v21, Landroid/graphics/RectF;

    int-to-float v0, v12

    move/from16 v22, v0

    int-to-float v0, v13

    move/from16 v23, v0

    int-to-float v0, v12

    move/from16 v24, v0

    iget v0, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->flag_message_number_width:F

    move/from16 v25, v0

    add-float v24, v24, v25

    int-to-float v0, v13

    move/from16 v25, v0

    iget v0, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->flag_message_number_height:F

    move/from16 v26, v0

    add-float v25, v25, v26

    invoke-direct/range {v21 .. v25}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v5, v0, v1, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 635
    int-to-float v0, v12

    move/from16 v20, v0

    iget v0, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->flag_message_number_width:F

    move/from16 v21, v0

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v12, v0

    .line 629
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 602
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "bt":Landroid/graphics/Bitmap;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "config":Landroid/graphics/Bitmap$Config;
    .end local v8    # "height":I
    .end local v9    # "i":I
    .end local v10    # "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "offsetX":I
    .end local v13    # "offsetY":I
    .end local v14    # "p":Landroid/graphics/Paint;
    .end local v15    # "pattern":Ljava/lang/String;
    .end local v16    # "res":Landroid/content/res/Resources;
    .end local v17    # "str":Ljava/lang/String;
    .end local v19    # "width":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    sget v21, Lcom/smartisanos/launcher/ResIds$drawable;->message_back_base16:I

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .end local v3    # "bg":Landroid/graphics/drawable/NinePatchDrawable;
    check-cast v3, Landroid/graphics/drawable/NinePatchDrawable;

    .restart local v3    # "bg":Landroid/graphics/drawable/NinePatchDrawable;
    goto/16 :goto_0

    .line 637
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "canvas":Landroid/graphics/Canvas;
    .restart local v7    # "config":Landroid/graphics/Bitmap$Config;
    .restart local v8    # "height":I
    .restart local v9    # "i":I
    .restart local v10    # "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    .restart local v12    # "offsetX":I
    .restart local v13    # "offsetY":I
    .restart local v14    # "p":Landroid/graphics/Paint;
    .restart local v15    # "pattern":Ljava/lang/String;
    .restart local v16    # "res":Landroid/content/res/Resources;
    .restart local v17    # "str":Ljava/lang/String;
    .restart local v19    # "width":I
    :cond_2
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v20, 0x0

    aput v19, v18, v20

    const/16 v20, 0x1

    aput v8, v18, v20

    .line 640
    .local v18, "uv":[I
    sget-object v20, Lcom/smartisanos/launcher/data/Utils;->sMsgNumUvMap:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    return-object v4
.end method

.method public static getNextDayTriggerTime()J
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1544
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1545
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1546
    .local v2, "currentMillis":J
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1547
    const/4 v1, 0x5

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->add(II)V

    .line 1548
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 1549
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 1550
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 1551
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 1552
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    return-wide v4
.end method

.method public static getNumberBitmap(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 645
    const-string v3, "drawable"

    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/home/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 646
    .local v2, "id":I
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/home/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 647
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 648
    .local v0, "bt":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public static getProductInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2044
    const-string v1, "ro.product.manufacturer"

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Utils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2045
    .local v0, "info":Ljava/lang/String;
    sget-object v1, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ro.product.manufacturer= ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2046
    if-nez v0, :cond_0

    .line 2047
    const-string v1, "ro.product.model"

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Utils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2049
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2050
    const-string v0, ""

    .line 2052
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1799
    const/4 v3, 0x0

    .line 1801
    .local v3, "value":Ljava/lang/String;
    :try_start_0
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1802
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "get"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1803
    .local v2, "get":Ljava/lang/reflect/Method;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1805
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "get":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 1804
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getShortcutResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "iconId"    # I

    .prologue
    .line 1715
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1719
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v0

    .line 1716
    :catch_0
    move-exception v1

    .line 1717
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 1719
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->getDefaultShortcutIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public static getSortIconBubbleBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayText"    # Ljava/lang/String;

    .prologue
    .line 499
    invoke-static/range {p0 .. p0}, Lcom/smartisanos/launcher/theme/ThemeManager;->getCurrentTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v18

    .line 500
    .local v18, "theme":Lcom/smartisanos/launcher/theme/Theme;
    move-object/from16 v0, v18

    iget-object v13, v0, Lcom/smartisanos/launcher/theme/Theme;->mResources:Landroid/content/res/Resources;

    .line 501
    .local v13, "res":Landroid/content/res/Resources;
    const-string v20, "bubble_for_sort"

    const-string v21, "drawable"

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 502
    .local v6, "bubbleId":I
    invoke-virtual {v13, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/NinePatchDrawable;

    .line 504
    .local v4, "bg":Landroid/graphics/drawable/NinePatchDrawable;
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 505
    .local v10, "font":Landroid/graphics/Paint;
    sget v20, Lcom/smartisanos/launcher/data/Constants;->sort_bubble_text_font:I

    move/from16 v0, v20

    int-to-float v15, v0

    .line 506
    .local v15, "textSize":F
    invoke-virtual {v10, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 507
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 508
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 509
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 511
    const/16 v20, 0xff

    const/16 v21, 0xff

    const/16 v22, 0xff

    const/16 v23, 0xff

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 513
    new-instance v20, Landroid/text/TextPaint;

    invoke-direct/range {v20 .. v20}, Landroid/text/TextPaint;-><init>()V

    const/high16 v21, 0x42c80000    # 100.0f

    sget-object v22, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 514
    .local v14, "show":Ljava/lang/String;
    invoke-virtual {v10, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v12, v0

    .line 515
    .local v12, "measuredTextWidth":I
    move/from16 v16, v12

    .line 516
    .local v16, "textWidth":I
    sget-object v20, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v21, "DEBUG"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "bg.getIntrinsicWidth() => "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v4}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", textWidth => "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "bg.getMinimumWidth() => "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 517
    invoke-virtual {v4}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumWidth()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 516
    invoke-virtual/range {v20 .. v22}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-virtual {v4}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    add-int v19, v20, v16

    .line 519
    .local v19, "width":I
    invoke-virtual {v4}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v11

    .line 520
    .local v11, "height":I
    invoke-virtual {v4}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumWidth()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 521
    invoke-virtual {v4}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumWidth()I

    move-result v19

    .line 523
    :cond_0
    invoke-virtual {v4}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumHeight()I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_1

    .line 524
    invoke-virtual {v4}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumHeight()I

    move-result v11

    .line 526
    :cond_1
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 527
    .local v8, "config":Landroid/graphics/Bitmap$Config;
    move/from16 v0, v19

    invoke-static {v0, v11, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 528
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 529
    .local v7, "canvas":Landroid/graphics/Canvas;
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2, v11}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 530
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 531
    new-instance v9, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v9}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 532
    .local v9, "fm":Landroid/graphics/Paint$FontMetrics;
    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 533
    int-to-float v0, v11

    move/from16 v20, v0

    iget v0, v9, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    iget v0, v9, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    const/high16 v21, 0x41300000    # 11.0f

    sub-float v17, v20, v21

    .line 534
    .local v17, "textY":F
    sub-int v20, v19, v16

    div-int/lit8 v20, v20, 0x2

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v7, v14, v0, v1, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 535
    return-object v5
.end method

.method public static getUVOnRect(IIFFFZFF[F)V
    .locals 13
    .param p0, "rectWidth"    # I
    .param p1, "rectHeight"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F
    .param p5, "flipY"    # Z
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "result_f8"    # [F

    .prologue
    .line 1047
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/CameraManager;->getCurrentCamera()Lcom/smartisanos/smengine/Camera;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/Camera;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v0

    .line 1048
    .local v0, "cameraZ":F
    move v1, p2

    .line 1049
    .local v1, "px":F
    move/from16 v2, p3

    .line 1050
    .local v2, "py":F
    const/high16 v11, 0x40000000    # 2.0f

    div-float v3, p6, v11

    .line 1051
    .local v3, "radiusx":F
    const/high16 v11, 0x40000000    # 2.0f

    div-float v4, p7, v11

    .line 1052
    .local v4, "radiusy":F
    const/4 v11, 0x0

    cmpl-float v11, v11, p4

    if-eqz v11, :cond_0

    .line 1053
    mul-float v11, v0, p2

    sub-float v12, v0, p4

    div-float v1, v11, v12

    .line 1054
    mul-float v11, v0, p3

    sub-float v12, v0, p4

    div-float v2, v11, v12

    .line 1055
    mul-float v11, v0, v3

    sub-float v12, v0, p4

    div-float v3, v11, v12

    .line 1056
    mul-float v11, v0, v4

    sub-float v12, v0, p4

    div-float v4, v11, v12

    .line 1058
    :cond_0
    int-to-float v11, p0

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float v9, v1, v11

    .line 1059
    .local v9, "uvx":F
    int-to-float v11, p1

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float v10, v2, v11

    .line 1063
    .local v10, "uvy":F
    sub-float v11, v9, v3

    int-to-float v12, p0

    div-float v5, v11, v12

    .line 1064
    .local v5, "uv00x":F
    sub-float v11, v10, v4

    int-to-float v12, p1

    div-float v6, v11, v12

    .line 1065
    .local v6, "uv00y":F
    if-eqz p5, :cond_1

    .line 1066
    add-float v11, v10, v4

    int-to-float v12, p1

    div-float v6, v11, v12

    .line 1068
    :cond_1
    add-float v11, v9, v3

    int-to-float v12, p0

    div-float v7, v11, v12

    .line 1069
    .local v7, "uv11x":F
    add-float v11, v10, v4

    int-to-float v12, p1

    div-float v8, v11, v12

    .line 1070
    .local v8, "uv11y":F
    if-eqz p5, :cond_2

    .line 1071
    sub-float v11, v10, v4

    int-to-float v12, p1

    div-float v8, v11, v12

    .line 1073
    :cond_2
    const/4 v11, 0x0

    aput v5, p8, v11

    .line 1074
    const/4 v11, 0x1

    aput v6, p8, v11

    .line 1076
    const/4 v11, 0x2

    aput v7, p8, v11

    .line 1077
    const/4 v11, 0x3

    aput v6, p8, v11

    .line 1079
    const/4 v11, 0x4

    aput v7, p8, v11

    .line 1080
    const/4 v11, 0x5

    aput v8, p8, v11

    .line 1082
    const/4 v11, 0x6

    aput v5, p8, v11

    .line 1083
    const/4 v11, 0x7

    aput v8, p8, v11

    .line 1084
    return-void
.end method

.method public static getUVOnScreen(FFFZFF[F)V
    .locals 13
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F
    .param p3, "flipY"    # Z
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "result_f8"    # [F

    .prologue
    .line 1007
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/CameraManager;->getCurrentCamera()Lcom/smartisanos/smengine/Camera;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/Camera;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v0

    .line 1008
    .local v0, "cameraZ":F
    move v1, p0

    .line 1009
    .local v1, "px":F
    move v2, p1

    .line 1010
    .local v2, "py":F
    const/high16 v11, 0x40000000    # 2.0f

    div-float v3, p4, v11

    .line 1011
    .local v3, "radiusx":F
    const/high16 v11, 0x40000000    # 2.0f

    div-float v4, p5, v11

    .line 1012
    .local v4, "radiusy":F
    const/4 v11, 0x0

    cmpl-float v11, v11, p2

    if-eqz v11, :cond_0

    .line 1013
    mul-float v11, v0, p0

    sub-float v12, v0, p2

    div-float v1, v11, v12

    .line 1014
    mul-float v11, v0, p1

    sub-float v12, v0, p2

    div-float v2, v11, v12

    .line 1015
    mul-float v11, v0, v3

    sub-float v12, v0, p2

    div-float v3, v11, v12

    .line 1016
    mul-float v11, v0, v4

    sub-float v12, v0, p2

    div-float v4, v11, v12

    .line 1018
    :cond_0
    sget v11, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float v9, v1, v11

    .line 1019
    .local v9, "uvx":F
    sget v11, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float v10, v2, v11

    .line 1023
    .local v10, "uvy":F
    sub-float v11, v9, v3

    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v12, v12

    div-float v5, v11, v12

    .line 1024
    .local v5, "uv00x":F
    sub-float v11, v10, v4

    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v12, v12

    div-float v6, v11, v12

    .line 1025
    .local v6, "uv00y":F
    if-eqz p3, :cond_1

    .line 1026
    add-float v11, v10, v4

    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v12, v12

    div-float v6, v11, v12

    .line 1028
    :cond_1
    add-float v11, v9, v3

    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v12, v12

    div-float v7, v11, v12

    .line 1029
    .local v7, "uv11x":F
    add-float v11, v10, v4

    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v12, v12

    div-float v8, v11, v12

    .line 1030
    .local v8, "uv11y":F
    if-eqz p3, :cond_2

    .line 1031
    sub-float v11, v10, v4

    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v12, v12

    div-float v8, v11, v12

    .line 1033
    :cond_2
    const/4 v11, 0x0

    aput v5, p6, v11

    .line 1034
    const/4 v11, 0x1

    aput v6, p6, v11

    .line 1036
    const/4 v11, 0x2

    aput v7, p6, v11

    .line 1037
    const/4 v11, 0x3

    aput v6, p6, v11

    .line 1039
    const/4 v11, 0x4

    aput v7, p6, v11

    .line 1040
    const/4 v11, 0x5

    aput v8, p6, v11

    .line 1042
    const/4 v11, 0x6

    aput v5, p6, v11

    .line 1043
    const/4 v11, 0x7

    aput v8, p6, v11

    .line 1044
    return-void
.end method

.method public static getUVOnScreen(Lcom/smartisanos/smengine/SceneNode;[F[F)V
    .locals 10
    .param p0, "node"    # Lcom/smartisanos/smengine/SceneNode;
    .param p1, "pos"    # [F
    .param p2, "result_f8"    # [F

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 986
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/CameraManager;->getCurrentCamera()Lcom/smartisanos/smengine/Camera;

    move-result-object v4

    invoke-virtual {p0, v4, p1}, Lcom/smartisanos/smengine/SceneNode;->getCornerPointScreenCoord(Lcom/smartisanos/smengine/Camera;[F)V

    .line 988
    aget v4, p1, v6

    sget v5, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 989
    .local v0, "uv00x":F
    aget v4, p1, v7

    sget v5, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 990
    .local v1, "uv00y":F
    aget v4, p1, v8

    sget v5, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 991
    .local v2, "uv11x":F
    aget v4, p1, v9

    sget v5, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 993
    .local v3, "uv11y":F
    aput v0, p2, v6

    .line 994
    aput v3, p2, v7

    .line 996
    const/4 v4, 0x2

    aput v2, p2, v4

    .line 997
    aput v3, p2, v8

    .line 999
    aput v2, p2, v9

    .line 1000
    const/4 v4, 0x5

    aput v1, p2, v4

    .line 1002
    const/4 v4, 0x6

    aput v0, p2, v4

    .line 1003
    const/4 v4, 0x7

    aput v1, p2, v4

    .line 1004
    return-void
.end method

.method public static getUpdateURL(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "apkTypeName"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 2435
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api-app.smartisan.com/api/v1_4/app/info/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2440
    :goto_0
    return-object v0

    .line 2437
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://update.smartisanos.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/update_info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2440
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getValueByScale(FFFFF)F
    .locals 4
    .param p0, "minScale"    # F
    .param p1, "maxScale"    # F
    .param p2, "minValue"    # F
    .param p3, "maxValue"    # F
    .param p4, "scale"    # F

    .prologue
    .line 449
    cmpg-float v2, p4, p0

    if-gez v2, :cond_3

    .line 451
    move p4, p0

    .line 455
    :cond_0
    :goto_0
    cmpl-float v2, p2, p3

    if-lez v2, :cond_1

    .line 457
    move v1, p2

    .line 458
    .local v1, "tmp":F
    move p2, p3

    .line 459
    move p3, v1

    .line 462
    .end local v1    # "tmp":F
    :cond_1
    cmpl-float v2, p0, p1

    if-nez v2, :cond_4

    .line 467
    .end local p2    # "minValue":F
    :cond_2
    :goto_1
    return p2

    .line 452
    .restart local p2    # "minValue":F
    :cond_3
    cmpl-float v2, p4, p1

    if-lez v2, :cond_0

    .line 453
    move p4, p1

    goto :goto_0

    .line 464
    :cond_4
    cmpl-float v2, p2, p3

    if-eqz v2, :cond_2

    .line 466
    sub-float v2, p1, p4

    sub-float v3, p1, p0

    div-float v0, v2, v3

    .line 467
    .local v0, "rate":F
    sub-float v2, p3, p2

    mul-float/2addr v2, v0

    add-float/2addr p2, v2

    goto :goto_1
.end method

.method public static getValueFromPosition(I)I
    .locals 1
    .param p0, "position"    # I

    .prologue
    .line 2277
    packed-switch p0, :pswitch_data_0

    .line 2291
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2283
    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 2285
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 2289
    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    .line 2277
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getWeatherDataFromCache(Landroid/content/Context;)Landroid/content/Intent;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2098
    const/4 v4, 0x0

    .line 2099
    .local v4, "intent":Landroid/content/Intent;
    const-string v12, "prefs_key_user_experience_plan_state"

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2100
    .local v1, "data":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2102
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2103
    .local v6, "object":Lorg/json/JSONObject;
    const-string v12, "weatherCode"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2104
    .local v9, "weatherCode":Ljava/lang/String;
    const-string v12, "temp"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2105
    .local v0, "celsiusTemperature":Ljava/lang/String;
    const-string v12, "fahrenheitTemp"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2106
    .local v3, "fahrenheitTemperature":Ljava/lang/String;
    const-string v12, "_1sunRiseAndSet"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2107
    .local v8, "sunRiseAndSetTime":Ljava/lang/String;
    const-string v12, "lastSyncTime"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2108
    .local v7, "str":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 2109
    .local v10, "time":J
    sput-wide v10, Lcom/smartisanos/launcher/data/Utils;->lastSyncWeatherDataTime:J

    .line 2110
    new-instance v5, Landroid/content/Intent;

    const-string v12, "com.smartisanos.weather.data.update"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2111
    .end local v4    # "intent":Landroid/content/Intent;
    .local v5, "intent":Landroid/content/Intent;
    :try_start_1
    const-string v12, "weatherCode"

    invoke-virtual {v5, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2112
    const-string v12, "temp"

    invoke-virtual {v5, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2113
    const-string v12, "fahrenheitTemp"

    invoke-virtual {v5, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2114
    const-string v12, "_1sunRiseAndSet"

    invoke-virtual {v5, v12, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 2119
    .end local v0    # "celsiusTemperature":Ljava/lang/String;
    .end local v3    # "fahrenheitTemperature":Ljava/lang/String;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "object":Lorg/json/JSONObject;
    .end local v7    # "str":Ljava/lang/String;
    .end local v8    # "sunRiseAndSetTime":Ljava/lang/String;
    .end local v9    # "weatherCode":Ljava/lang/String;
    .end local v10    # "time":J
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-object v4

    .line 2115
    :catch_0
    move-exception v2

    .line 2116
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2115
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v0    # "celsiusTemperature":Ljava/lang/String;
    .restart local v3    # "fahrenheitTemperature":Ljava/lang/String;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "object":Lorg/json/JSONObject;
    .restart local v7    # "str":Ljava/lang/String;
    .restart local v8    # "sunRiseAndSetTime":Ljava/lang/String;
    .restart local v9    # "weatherCode":Ljava/lang/String;
    .restart local v10    # "time":J
    :catch_1
    move-exception v2

    move-object v4, v5

    .end local v5    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    goto :goto_1
.end method

.method public static hideStatusBar(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 267
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 268
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 269
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 270
    return-void
.end method

.method private static homeStatusToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 1894
    const/4 v0, 0x0

    .line 1895
    .local v0, "str":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 1909
    const-string v0, "known status"

    .line 1911
    :goto_0
    return-object v0

    .line 1897
    :pswitch_0
    const-string v0, "DEFAULT_IS_SMARTISAN_HOME"

    .line 1898
    goto :goto_0

    .line 1901
    :pswitch_1
    const-string v0, "DEFAULT_IS_OTHER_HOME"

    .line 1902
    goto :goto_0

    .line 1905
    :pswitch_2
    const-string v0, "DEFAULT_IS_NOT_FOUND"

    .line 1906
    goto :goto_0

    .line 1895
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static httpRequest(Ljava/lang/String;)[B
    .locals 11
    .param p0, "request"    # Ljava/lang/String;

    .prologue
    .line 1818
    const/4 v3, 0x0

    .line 1820
    .local v3, "data":[B
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1821
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 1822
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/16 v10, 0x4e20

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1823
    const/16 v10, 0x4e20

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1824
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 1825
    .local v8, "responseCode":I
    const/4 v6, 0x0

    .line 1826
    .local v6, "is":Ljava/io/InputStream;
    const/16 v10, 0xc8

    if-ne v8, v10, :cond_0

    .line 1827
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v5

    .line 1828
    .local v5, "encoding":Ljava/lang/String;
    const-string v10, "gzip"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1829
    new-instance v6, Ljava/util/zip/GZIPInputStream;

    .end local v6    # "is":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1834
    .end local v5    # "encoding":Ljava/lang/String;
    .restart local v6    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 1835
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1836
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x400

    new-array v1, v10, [B

    .line 1837
    .local v1, "buf":[B
    const/4 v7, 0x0

    .line 1838
    .local v7, "len":I
    :goto_1
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_3

    .line 1839
    const/4 v10, 0x0

    invoke-virtual {v0, v1, v10, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1844
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buf":[B
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "len":I
    .end local v8    # "responseCode":I
    .end local v9    # "url":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 1845
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1847
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-object v3

    .line 1831
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "encoding":Ljava/lang/String;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v8    # "responseCode":I
    .restart local v9    # "url":Ljava/net/URL;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    goto :goto_0

    .line 1841
    .end local v5    # "encoding":Ljava/lang/String;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buf":[B
    .restart local v7    # "len":I
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1842
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static iconDataToBitmap([B)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 282
    if-nez p0, :cond_0

    .line 283
    new-array p0, v2, [B

    .line 285
    :cond_0
    array-length v1, p0

    invoke-static {p0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 286
    .local v0, "bmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 287
    sget-object v1, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    const-string v3, "error iconDataToBitmap return null"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_1
    return-object v0
.end method

.method public static iconDataToDrawable([B)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 293
    if-nez p0, :cond_0

    .line 294
    new-array p0, v2, [B

    .line 296
    :cond_0
    array-length v1, p0

    invoke-static {p0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 297
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static iconDataToDrawable([BLjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 301
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 302
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    invoke-static {v0, p1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static inflateListTransparentHeader(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 804
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04006a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static inflateListTransparentHeader(Landroid/content/Context;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z

    .prologue
    .line 808
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04006a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static isDarkImage(Landroid/graphics/Bitmap;)Z
    .locals 5
    .param p0, "bt"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v2, 0x43800000    # 256.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3f0ccccd    # 0.55f

    .line 1404
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Utils;->getGray(Landroid/graphics/Bitmap;)F

    move-result v0

    .line 1405
    .local v0, "gray":F
    div-float v1, v0, v2

    sub-float v1, v4, v1

    div-float v2, v0, v2

    sub-float v2, v4, v2

    mul-float/2addr v1, v2

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    const v2, 0x3e3851ec    # 0.18f

    add-float/2addr v1, v2

    sput v1, Lcom/smartisanos/launcher/data/Constants;->sGaussianBackGray:F

    .line 1406
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sGaussianBackGray:F

    cmpg-float v1, v3, v1

    if-gez v1, :cond_0

    .line 1407
    sput v3, Lcom/smartisanos/launcher/data/Constants;->sGaussianBackGray:F

    .line 1409
    :cond_0
    const v1, 0x4319999a    # 153.6f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHalfAlphaIcon(Ljava/lang/String;)Z
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2303
    if-nez p0, :cond_1

    .line 2312
    :cond_0
    :goto_0
    return v0

    .line 2306
    :cond_1
    const-string v1, "com.smartisan.setup.wizard"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.smartisanos.home"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2309
    invoke-static {p0}, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->isEmbeddedApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2310
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isHome(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 474
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 475
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 476
    .local v3, "rti":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_5

    .line 478
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 479
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 480
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 482
    .local v2, "rt":Landroid/app/ActivityManager$RunningTaskInfo;
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    const-string v7, "## rt :"

    invoke-virtual {v4, v6, v7}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_0
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :cond_1
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    iget-object v7, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_2
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    iget-object v7, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_3
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "## rt = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ##"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    .end local v1    # "i":I
    .end local v2    # "rt":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_5
    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_6

    .line 491
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.smartisanos.home.Launcher"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 495
    :goto_1
    return v4

    .line 493
    :cond_6
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "List<RunningTaskInfo> size is empty !"

    invoke-static {v4}, Lcom/smartisanos/launcher/LOG;->e(Ljava/lang/String;)V

    :cond_7
    move v4, v5

    .line 495
    goto :goto_1
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 925
    if-nez p0, :cond_1

    .line 926
    const/4 v1, 0x0

    .line 936
    :cond_0
    :goto_0
    return v1

    .line 928
    :cond_1
    const/4 v1, 0x0

    .line 930
    .local v1, "connected":Z
    :try_start_0
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 931
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 932
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 933
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 935
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static isRemovable(Lcom/smartisanos/launcher/data/ItemInfo;)Z
    .locals 4
    .param p0, "info"    # Lcom/smartisanos/launcher/data/ItemInfo;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 423
    iget-object v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.google.android.gms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 432
    :cond_0
    :goto_0
    return v0

    .line 426
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->WEATHER:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    iget-object v3, v3, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 429
    iget-object v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->WIZARD:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    iget-object v3, v3, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 432
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Utils;->isSystemApp(Lcom/smartisanos/launcher/data/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isSmartisanApp(Ljava/lang/String;)Z
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 2316
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2317
    const/4 v0, 0x0

    .line 2319
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "smartisan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSystemApp(Lcom/smartisanos/launcher/data/ItemInfo;)Z
    .locals 1
    .param p0, "info"    # Lcom/smartisanos/launcher/data/ItemInfo;

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    return v0
.end method

.method public static isUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 440
    const-string v0, "^((file|https|http|ftp|rtsp|mms)?://)+(([0-9a-z_!~*\'().&=+$%-]+: )?[0-9a-z_!~*\'().&=+$%-]+@)?(([0-9]{1,3}\\.){3}[0-9]{1,3}|([0-9a-z_!~*\'()-]+\\.)*([0-9a-z][0-9a-z-]{0,61})?[0-9a-z]\\.[a-z]{2,6})(:[0-9]{1,4})?((/?)|(/[0-9a-z_!~*\'().;?:@&=+$,%#-]+)+/?)$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isWifiConnected()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 940
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v4

    if-nez v4, :cond_0

    .line 946
    .local v0, "cm":Landroid/net/ConnectivityManager;
    .local v1, "wifi":Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 943
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v1    # "wifi":Landroid/net/NetworkInfo;
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v4

    const-string v5, "connectivity"

    .line 944
    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LauncherApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 945
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 946
    .restart local v1    # "wifi":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private static isXiaoMiDevice()Z
    .locals 2

    .prologue
    .line 2031
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->getProductInfo()Ljava/lang/String;

    move-result-object v0

    .line 2032
    .local v0, "info":Ljava/lang/String;
    const-string v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2033
    :cond_0
    const/4 v1, 0x1

    .line 2035
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static listInstalledPackage(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1851
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1852
    .local v3, "manager":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1853
    .local v2, "mainIntent":Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1854
    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1855
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1856
    .local v5, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1857
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1858
    .local v4, "pkg":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1861
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1862
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1865
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_1
    return-object v5
.end method

.method public static loadIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p0, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 1452
    const/4 v1, 0x0

    .line 1453
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1454
    :cond_0
    sget-object v9, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "DEBUG"

    const-string v11, "loadIcon return null by resolveInfo is null"

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 1487
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    .line 1457
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v9, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1459
    .local v5, "pkg":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v9

    invoke-static {v9, v5}, Lcom/smartisanos/home/settings/icons/IconPackManager;->getPackedIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :goto_2

    :try_start_0
    invoke-static {v5}, Lcom/smartisanos/launcher/data/Utils;->isHalfAlphaIcon(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Utils;->isSmartisanApp(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1461
    :cond_2
    invoke-virtual {p1, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 1462
    .local v8, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v7

    .line 1463
    .local v7, "resId":I
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1467
    .end local v7    # "resId":I
    .end local v8    # "resources":Landroid/content/res/Resources;
    :goto_1
    const/4 v4, 0x0

    .line 1468
    .local v4, "loseIcon":Z
    if-nez v1, :cond_3

    .line 1469
    const/4 v4, 0x1

    .line 1472
    :cond_3
    if-eqz v4, :cond_4

    .line 1474
    iget-object v9, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1475
    .local v0, "cmp":Ljava/lang/String;
    sget-object v9, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadIcon return null, try to get drawable from pkg ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "], cmp ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    invoke-virtual {p1, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 1477
    .restart local v8    # "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v7

    .line 1478
    .restart local v7    # "resId":I
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v0    # "cmp":Ljava/lang/String;
    .end local v4    # "loseIcon":Z
    .end local v7    # "resId":I
    .end local v8    # "resources":Landroid/content/res/Resources;
    :cond_4
    :goto_2
    move-object v2, v1

    .line 1487
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 1465
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    invoke-virtual {p0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 1480
    :catch_0
    move-exception v3

    .line 1481
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1482
    sget-object v9, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "DEBUG"

    const-string v11, "crash happend ! use default_icon !"

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1484
    .local v6, "res":Landroid/content/res/Resources;
    const-string v9, "default_icon"

    const-string v10, "drawable"

    const-string v11, "com.smartisanos.home"

    invoke-virtual {v6, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1485
    .restart local v7    # "resId":I
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2
.end method

.method public static loadIconToTexture(Lcom/smartisanos/launcher/data/ItemInfo;Ljava/lang/String;Z)Lcom/smartisanos/smengine/Texture;
    .locals 11
    .param p0, "item"    # Lcom/smartisanos/launcher/data/ItemInfo;
    .param p1, "textureName"    # Ljava/lang/String;
    .param p2, "forceReload"    # Z

    .prologue
    const/4 v10, 0x1

    .line 703
    const/4 v3, 0x0

    .line 704
    .local v3, "t":Lcom/smartisanos/smengine/Texture;
    if-nez p0, :cond_0

    move-object v4, v3

    .line 743
    .end local v3    # "t":Lcom/smartisanos/smengine/Texture;
    .local v4, "t":Lcom/smartisanos/smengine/Texture;
    :goto_0
    return-object v4

    .line 707
    .end local v4    # "t":Lcom/smartisanos/smengine/Texture;
    .restart local v3    # "t":Lcom/smartisanos/smengine/Texture;
    :cond_0
    if-nez p1, :cond_1

    move-object v4, v3

    .line 708
    .end local v3    # "t":Lcom/smartisanos/smengine/Texture;
    .restart local v4    # "t":Lcom/smartisanos/smengine/Texture;
    goto :goto_0

    .line 710
    .end local v4    # "t":Lcom/smartisanos/smengine/Texture;
    .restart local v3    # "t":Lcom/smartisanos/smengine/Texture;
    :cond_1
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v5

    .line 711
    .local v5, "tm":Lcom/smartisanos/smengine/TextureManager;
    invoke-virtual {v5, p1}, Lcom/smartisanos/smengine/TextureManager;->getTexture(Ljava/lang/String;)Lcom/smartisanos/smengine/Texture;

    move-result-object v3

    .line 712
    if-eqz p2, :cond_2

    .line 713
    invoke-virtual {v5, p1}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 714
    const/4 v3, 0x0

    .line 716
    :cond_2
    if-nez v3, :cond_6

    .line 717
    iget-wide v6, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v6, v7}, Lcom/smartisanos/launcher/LauncherModel;->getBitmap(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 718
    .local v0, "bmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_4

    .line 720
    const/4 v1, 0x0

    .line 721
    .local v1, "count":I
    :cond_3
    const/4 v6, 0x3

    if-gt v1, v6, :cond_4

    .line 722
    add-int/lit8 v1, v1, 0x1

    .line 723
    sget-object v6, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generate bitmap error. re-try ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/ItemInfo;->toSimpleInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    invoke-static {p0, v10}, Lcom/smartisanos/launcher/data/Utils;->reloadIconData(Lcom/smartisanos/launcher/data/ItemInfo;Z)[B

    move-result-object v6

    iput-object v6, p0, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    .line 725
    iget-wide v6, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v6, v7}, Lcom/smartisanos/launcher/LauncherModel;->getBitmap(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 726
    if-eqz v0, :cond_3

    .line 731
    .end local v1    # "count":I
    :cond_4
    if-nez v0, :cond_5

    .line 732
    sget-object v6, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generate bitmap error again !"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/ItemInfo;->toSimpleInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/smartisanos/launcher/ResIds$drawable;->ic_launcher:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 734
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/smartisanos/launcher/data/Utils;->drawableToBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 737
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    new-instance v3, Lcom/smartisanos/smengine/Texture;

    .end local v3    # "t":Lcom/smartisanos/smengine/Texture;
    invoke-direct {v3, v0}, Lcom/smartisanos/smengine/Texture;-><init>(Landroid/graphics/Bitmap;)V

    .line 738
    .restart local v3    # "t":Lcom/smartisanos/smengine/Texture;
    invoke-virtual {v3, v10}, Lcom/smartisanos/smengine/Texture;->setIsUseMipmap(Z)V

    .line 739
    invoke-virtual {v3, v10}, Lcom/smartisanos/smengine/Texture;->setCanRecycle(Z)V

    .line 740
    invoke-virtual {v3}, Lcom/smartisanos/smengine/Texture;->bind()Z

    .line 741
    invoke-virtual {v5, p1, v3}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    .end local v0    # "bmap":Landroid/graphics/Bitmap;
    :cond_6
    move-object v4, v3

    .line 743
    .end local v3    # "t":Lcom/smartisanos/smengine/Texture;
    .restart local v4    # "t":Lcom/smartisanos/smengine/Texture;
    goto/16 :goto_0
.end method

.method public static loadResourceToBitmap(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;

    .prologue
    .line 652
    const/4 v2, 0x0

    .line 654
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 658
    :goto_0
    if-nez v2, :cond_0

    .line 659
    const/4 v0, 0x0

    .line 667
    :goto_1
    return-object v0

    .line 655
    :catch_0
    move-exception v1

    .line 656
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 661
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 663
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 664
    :catch_1
    move-exception v1

    .line 665
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static multiplyAlpha([I)V
    .locals 12
    .param p0, "data"    # [I

    .prologue
    .line 1251
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v8, p0

    if-ge v5, v8, :cond_0

    .line 1252
    aget v7, p0, v5

    .line 1253
    .local v7, "rgb":I
    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v0, v8, 0xff

    .line 1254
    .local v0, "a":I
    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v6, v8, 0xff

    .line 1255
    .local v6, "r":I
    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v4, v8, 0xff

    .line 1256
    .local v4, "g":I
    and-int/lit16 v1, v7, 0xff

    .line 1258
    .local v1, "b":I
    int-to-double v8, v0

    const-wide v10, 0x406fe00000000000L    # 255.0

    div-double v2, v8, v10

    .line 1259
    .local v2, "fa":D
    int-to-double v8, v6

    mul-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v6, v8

    .line 1260
    int-to-double v8, v4

    mul-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v4, v8

    .line 1261
    int-to-double v8, v1

    mul-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v1, v8

    .line 1262
    shl-int/lit8 v8, v0, 0x18

    shl-int/lit8 v9, v6, 0x10

    or-int/2addr v8, v9

    shl-int/lit8 v9, v4, 0x8

    or-int/2addr v8, v9

    or-int/2addr v8, v1

    aput v8, p0, v5

    .line 1251
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1264
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "fa":D
    .end local v4    # "g":I
    .end local v6    # "r":I
    .end local v7    # "rgb":I
    :cond_0
    return-void
.end method

.method private static needShowSetDialog()Z
    .locals 3

    .prologue
    .line 1955
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 1956
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->getProductInfo()Ljava/lang/String;

    move-result-object v0

    .line 1957
    .local v0, "productInfo":Ljava/lang/String;
    const-string v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1958
    :cond_0
    const/4 v1, 0x0

    .line 1961
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static parseJson([B)Ljava/util/Map;
    .locals 10
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2383
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2384
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    move-object v2, v1

    .line 2402
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v2, "map":Ljava/lang/Object;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v2

    .line 2387
    .end local v2    # "map":Ljava/lang/Object;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v4, 0x0

    .line 2389
    .local v4, "object":Lorg/json/JSONObject;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, p0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v5, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2390
    .end local v4    # "object":Lorg/json/JSONObject;
    .local v5, "object":Lorg/json/JSONObject;
    :try_start_1
    const-string v9, "md5"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2391
    .local v3, "md5":Ljava/lang/String;
    const-string v9, "url"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2392
    .local v6, "url":Ljava/lang/String;
    const-string v9, "version_name"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2393
    .local v8, "versionName":Ljava/lang/String;
    const-string v9, "version_code"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2394
    .local v7, "versionCode":Ljava/lang/String;
    const-string v9, "md5"

    invoke-interface {v1, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2395
    const-string v9, "url"

    invoke-interface {v1, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2396
    const-string v9, "version_name"

    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2397
    const-string v9, "version_code"

    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .end local v3    # "md5":Ljava/lang/String;
    .end local v5    # "object":Lorg/json/JSONObject;
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "versionCode":Ljava/lang/String;
    .end local v8    # "versionName":Ljava/lang/String;
    .restart local v4    # "object":Lorg/json/JSONObject;
    :goto_1
    move-object v2, v1

    .line 2402
    .restart local v2    # "map":Ljava/lang/Object;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 2398
    .end local v2    # "map":Ljava/lang/Object;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 2399
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const/4 v1, 0x0

    .line 2400
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2398
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "object":Lorg/json/JSONObject;
    .restart local v5    # "object":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5    # "object":Lorg/json/JSONObject;
    .restart local v4    # "object":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public static parseJson([BI)Ljava/util/Map;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2373
    packed-switch p1, :pswitch_data_0

    .line 2379
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2375
    :pswitch_0
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Utils;->parseJson([B)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 2377
    :pswitch_1
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Utils;->parseJson_M([B)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 2373
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parseJson_M([B)Ljava/util/Map;
    .locals 10
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2406
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2407
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    move-object v2, v1

    .line 2427
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v2, "map":Ljava/lang/Object;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v2

    .line 2410
    .end local v2    # "map":Ljava/lang/Object;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v4, 0x0

    .line 2412
    .local v4, "object":Lorg/json/JSONObject;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, p0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v5, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2413
    .end local v4    # "object":Lorg/json/JSONObject;
    .local v5, "object":Lorg/json/JSONObject;
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    const-string v9, "body"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2414
    .end local v5    # "object":Lorg/json/JSONObject;
    .restart local v4    # "object":Lorg/json/JSONObject;
    :try_start_2
    new-instance v5, Lorg/json/JSONObject;

    const-string v9, "app"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2415
    .end local v4    # "object":Lorg/json/JSONObject;
    .restart local v5    # "object":Lorg/json/JSONObject;
    :try_start_3
    const-string v9, "filemd5"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2416
    .local v3, "md5":Ljava/lang/String;
    const-string v9, "download_url"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2417
    .local v6, "url":Ljava/lang/String;
    const-string v9, "version"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2418
    .local v8, "versionName":Ljava/lang/String;
    const-string v9, "version_code"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2419
    .local v7, "versionCode":Ljava/lang/String;
    const-string v9, "md5"

    invoke-interface {v1, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2420
    const-string v9, "url"

    invoke-interface {v1, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2421
    const-string v9, "version_name"

    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2422
    const-string v9, "version_code"

    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v4, v5

    .end local v3    # "md5":Ljava/lang/String;
    .end local v5    # "object":Lorg/json/JSONObject;
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "versionCode":Ljava/lang/String;
    .end local v8    # "versionName":Ljava/lang/String;
    .restart local v4    # "object":Lorg/json/JSONObject;
    :goto_1
    move-object v2, v1

    .line 2427
    .restart local v2    # "map":Ljava/lang/Object;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 2423
    .end local v2    # "map":Ljava/lang/Object;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 2424
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const/4 v1, 0x0

    .line 2425
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2423
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "object":Lorg/json/JSONObject;
    .restart local v5    # "object":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5    # "object":Lorg/json/JSONObject;
    .restart local v4    # "object":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public static preLoadImage(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2520
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/smartisanos/launcher/data/Utils$6;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/data/Utils$6;-><init>(Landroid/content/Context;)V

    const-string v2, "initResourcesThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2526
    .local v0, "initResourcesThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2527
    return-void
.end method

.method public static readAssetsResource(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1870
    const/4 v4, 0x0

    .line 1872
    .local v4, "data":[B
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 1873
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 1874
    .local v6, "stream":Ljava/io/InputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1875
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x1000

    new-array v0, v7, [B

    .line 1876
    .local v0, "arr":[B
    const/4 v3, 0x0

    .line 1877
    .local v3, "count":I
    :goto_0
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    .line 1878
    const/4 v7, 0x0

    invoke-virtual {v2, v0, v7, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1882
    .end local v0    # "arr":[B
    .end local v1    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "count":I
    .end local v6    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v5

    .line 1883
    .local v5, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readAssetsResource can\'t read resource by path ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1884
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1886
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v4

    .line 1880
    .restart local v0    # "arr":[B
    .restart local v1    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "count":I
    .restart local v6    # "stream":Ljava/io/InputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 1881
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1
.end method

.method public static reloadIconData(Lcom/smartisanos/launcher/data/ItemInfo;Z)[B
    .locals 14
    .param p0, "item"    # Lcom/smartisanos/launcher/data/ItemInfo;
    .param p1, "saveToDb"    # Z

    .prologue
    .line 747
    const/4 v5, 0x0

    .line 748
    .local v5, "data":[B
    iget-wide v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 749
    .local v0, "appId":J
    iget-object v8, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 750
    .local v8, "pkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    .line 751
    .local v2, "cmp":Ljava/lang/String;
    const-wide/16 v12, 0x0

    cmp-long v12, v0, v12

    if-lez v12, :cond_0

    if-eqz v8, :cond_0

    if-nez v2, :cond_1

    :cond_0
    move-object v6, v5

    .line 779
    .end local v5    # "data":[B
    .local v6, "data":[B
    :goto_0
    return-object v6

    .line 754
    .end local v6    # "data":[B
    .restart local v5    # "data":[B
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v12

    invoke-static {v12, v8}, Lcom/smartisanos/launcher/data/Utils;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 755
    .local v11, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v11, :cond_2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_3

    :cond_2
    move-object v6, v5

    .line 756
    .end local v5    # "data":[B
    .restart local v6    # "data":[B
    goto :goto_0

    .line 758
    .end local v6    # "data":[B
    .restart local v5    # "data":[B
    :cond_3
    const/4 v10, 0x0

    .line 759
    .local v10, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 760
    .local v9, "reso":Landroid/content/pm/ResolveInfo;
    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 761
    move-object v10, v9

    .line 765
    .end local v9    # "reso":Landroid/content/pm/ResolveInfo;
    :cond_5
    if-nez v10, :cond_6

    move-object v6, v5

    .line 766
    .end local v5    # "data":[B
    .restart local v6    # "data":[B
    goto :goto_0

    .line 768
    .end local v6    # "data":[B
    .restart local v5    # "data":[B
    :cond_6
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v12

    invoke-static {v12, v8}, Lcom/smartisanos/home/Launcher;->isSystemAppByPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    .line 769
    .local v7, "isSystem":Z
    iput-boolean v7, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    .line 770
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v12

    invoke-static {p0, v10, v12}, Lcom/smartisanos/launcher/LauncherModel;->getIconDataContentValues(Lcom/smartisanos/launcher/data/ItemInfo;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v4

    .line 771
    .local v4, "cv":Landroid/content/ContentValues;
    const-string v3, "dark_icon"

    .line 772
    .local v3, "columnName":Ljava/lang/String;
    sget-object v12, Lcom/smartisanos/launcher/data/Constants;->ICON_TYPE:Lcom/smartisanos/launcher/data/Constants$IconType;

    sget-object v13, Lcom/smartisanos/launcher/data/Constants$IconType;->Light:Lcom/smartisanos/launcher/data/Constants$IconType;

    if-ne v12, v13, :cond_7

    .line 773
    const-string v3, "light_icon"

    .line 775
    :cond_7
    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 776
    if-eqz p1, :cond_8

    .line 777
    invoke-static {v4}, Lcom/smartisanos/launcher/data/handler/IconDB;->saveIconData(Landroid/content/ContentValues;)Z

    :cond_8
    move-object v6, v5

    .line 779
    .end local v5    # "data":[B
    .restart local v6    # "data":[B
    goto :goto_0
.end method

.method public static requestSyncWeatherData(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2154
    .local v2, "time":J
    sget-wide v4, Lcom/smartisanos/launcher/data/Utils;->lastSyncWeatherDataTime:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0x6ddd00

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 2155
    sget-object v4, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestSyncWeatherData return by sync time too close. ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Lcom/smartisanos/launcher/data/Utils;->lastSyncWeatherDataTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 2210
    :cond_0
    :goto_0
    return-void

    .line 2158
    :cond_1
    sput-wide v2, Lcom/smartisanos/launcher/data/Utils;->syncWeatherDataLastCallTime:J

    .line 2159
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->isNetworkConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2163
    :try_start_0
    new-instance v1, Lcom/smartisan/weather/lib/WeatherHelper;

    invoke-direct {v1, p0}, Lcom/smartisan/weather/lib/WeatherHelper;-><init>(Landroid/content/Context;)V

    .line 2164
    .local v1, "helper":Lcom/smartisan/weather/lib/WeatherHelper;
    new-instance v4, Lcom/smartisanos/launcher/data/Utils$4;

    invoke-direct {v4, p0}, Lcom/smartisanos/launcher/data/Utils$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Lcom/smartisan/weather/lib/WeatherHelper;->requestCurrentWeather(Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2207
    .end local v1    # "helper":Lcom/smartisan/weather/lib/WeatherHelper;
    :catch_0
    move-exception v0

    .line 2208
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getLaunchIntentForPackageIfExists(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private static getLaunchIntentForComponentIfExists(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cmp"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto :cond_0

    :catch_0
    move-exception v1

    goto :cond_0
.end method

.method public static getAvailableWeatherLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const-string v0, "com.smartisanos.weather"

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/data/Utils;->getLaunchIntentForPackageIfExists(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    if-nez v8, :cond_0

    const-string v0, "com.miui.weather2"

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/data/Utils;->getLaunchIntentForPackageIfExists(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    if-nez v8, :cond_0

    const-string v0, "com.coloros.weather2"

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/data/Utils;->getLaunchIntentForPackageIfExists(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    if-nez v8, :cond_0

    const-string v0, "com.sec.android.daemonapp"

    const-string v1, "com.samsung.android.weather.app.AppSearchableActivity"

    invoke-static {p0, v0, v1}, Lcom/smartisanos/launcher/data/Utils;->getLaunchIntentForComponentIfExists(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    if-nez v8, :cond_0

    const-string v0, "com.oneplus.weather"

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/data/Utils;->getLaunchIntentForPackageIfExists(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    if-nez v8, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    if-eqz v4, :cond_2

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_2

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v5, "weather"

    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v5, "天气"

    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v5, "weather"

    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_3
    invoke-static {p0, v6}, Lcom/smartisanos/launcher/data/Utils;->getLaunchIntentForPackageIfExists(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_4

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x81

    if-eqz v5, :cond_4

    goto :cond_0

    :cond_4
    if-nez v9, :cond_2

    move-object v9, v8

    goto :cond_2

    :cond_0
    return-object v8

    :cond_1
    return-object v9
.end method

.method public static saveWeatherDataToCache(Landroid/content/Context;Landroid/content/Intent;J)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "time"    # J

    .prologue
    .line 2123
    if-nez p1, :cond_0

    .line 2141
    :goto_0
    return-void

    .line 2127
    :cond_0
    :try_start_0
    const-string v6, "weatherCode"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2128
    .local v5, "weatherCode":Ljava/lang/String;
    const-string v6, "temp"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2129
    .local v0, "celsiusTemperature":Ljava/lang/String;
    const-string v6, "fahrenheitTemp"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2130
    .local v2, "fahrenheitTemperature":Ljava/lang/String;
    const-string v6, "_1sunRiseAndSet"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2131
    .local v4, "sunRiseAndSetTime":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2132
    .local v3, "object":Lorg/json/JSONObject;
    const-string v6, "weatherCode"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2133
    const-string v6, "temp"

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2134
    const-string v6, "fahrenheitTemp"

    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2135
    const-string v6, "_1sunRiseAndSet"

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2136
    const-string v6, "lastSyncTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2137
    const-string v6, "prefs_key_user_experience_plan_state"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/smartisanos/launcher/data/LauncherPreferences;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2138
    .end local v0    # "celsiusTemperature":Ljava/lang/String;
    .end local v2    # "fahrenheitTemperature":Ljava/lang/String;
    .end local v3    # "object":Lorg/json/JSONObject;
    .end local v4    # "sunRiseAndSetTime":Ljava/lang/String;
    .end local v5    # "weatherCode":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2139
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendInvisiblePageIntent()V
    .locals 10

    .prologue
    .line 1636
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v7

    sget-object v8, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->GL:Lcom/smartisanos/home/Launcher$RUNNING_ENV;

    invoke-virtual {v7, v8}, Lcom/smartisanos/home/Launcher;->verifyThread(Lcom/smartisanos/home/Launcher$RUNNING_ENV;)V

    .line 1637
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    .line 1638
    .local v4, "mainView":Lcom/smartisanos/launcher/view/MainView;
    if-nez v4, :cond_1

    .line 1661
    :cond_0
    :goto_0
    return-void

    .line 1641
    :cond_1
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v6

    .line 1642
    .local v6, "pageView":Lcom/smartisanos/launcher/view/PageView;
    if-eqz v6, :cond_0

    .line 1645
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v1

    .line 1646
    .local v1, "floatNode":Lcom/smartisanos/launcher/view/FloatPageNode;
    const/4 v2, 0x0

    .line 1647
    .local v2, "floatPage":Lcom/smartisanos/launcher/view/Page;
    if-eqz v1, :cond_2

    .line 1648
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->getCurrentFloatPage()Lcom/smartisanos/launcher/view/Page;

    move-result-object v2

    .line 1650
    :cond_2
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/PageView;->getAllPages()Ljava/util/ArrayList;

    move-result-object v0

    .line 1651
    .local v0, "allPages":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Page;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1652
    .local v3, "invisiblePages":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Page;

    .line 1653
    .local v5, "page":Lcom/smartisanos/launcher/view/Page;
    if-eq v2, v5, :cond_4

    .line 1654
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 1655
    :cond_4
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1658
    .end local v5    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_5
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1659
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/smartisanos/launcher/data/Utils;->sendInvisiblePageIntent(Ljava/util/List;Lcom/smartisanos/home/Launcher;)V

    goto :goto_0
.end method

.method public static sendInvisiblePageIntent(Ljava/util/List;Lcom/smartisanos/home/Launcher;)V
    .locals 12
    .param p1, "launcher"    # Lcom/smartisanos/home/Launcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;",
            "Lcom/smartisanos/home/Launcher;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1664
    .local p0, "invisiblePages":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v0, 0x0

    .line 1665
    .local v0, "apps":[Ljava/lang/String;
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 1666
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1667
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/Page;

    .line 1668
    .local v7, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v2

    .line 1669
    .local v2, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 1670
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 1671
    .local v1, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    .line 1672
    .local v5, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v5, :cond_1

    .line 1675
    iget-object v11, v5, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1679
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v5    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v7    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    new-array v0, v9, [Ljava/lang/String;

    .line 1680
    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1682
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    sget-object v9, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "sendInvisiblePageIntent"

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1683
    const/4 v3, 0x0

    .line 1684
    .local v3, "debug":Z
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 1685
    array-length v10, v0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_4

    aget-object v8, v0, v9

    .line 1686
    .local v8, "pkg":Ljava/lang/String;
    sget-object v11, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    invoke-virtual {v11, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1685
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1690
    .end local v8    # "pkg":Ljava/lang/String;
    :cond_4
    new-instance v4, Landroid/content/Intent;

    const-string v9, "com.smartisanos.launcher.BROADCAST_INVISIBLE_APPS"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1691
    .local v4, "intent":Landroid/content/Intent;
    const-string v9, "com.android.systemui"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1692
    const-string v9, "apps"

    invoke-virtual {v4, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1693
    invoke-virtual {p1, v4}, Lcom/smartisanos/home/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 1694
    return-void
.end method

.method public static separateAlpha([I)V
    .locals 10
    .param p0, "data"    # [I

    .prologue
    const/16 v9, 0xff

    .line 1268
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, p0

    if-ge v4, v7, :cond_1

    .line 1269
    aget v6, p0, v4

    .line 1270
    .local v6, "rgb":I
    shr-int/lit8 v7, v6, 0x18

    and-int/lit16 v0, v7, 0xff

    .line 1271
    .local v0, "a":I
    shr-int/lit8 v7, v6, 0x10

    and-int/lit16 v5, v7, 0xff

    .line 1272
    .local v5, "r":I
    shr-int/lit8 v7, v6, 0x8

    and-int/lit16 v3, v7, 0xff

    .line 1273
    .local v3, "g":I
    and-int/lit16 v1, v6, 0xff

    .line 1275
    .local v1, "b":I
    if-eqz v0, :cond_0

    if-eq v9, v0, :cond_0

    .line 1276
    const/high16 v7, 0x437f0000    # 255.0f

    int-to-float v8, v0

    div-float v2, v7, v8

    .line 1278
    .local v2, "fa":F
    int-to-float v7, v5

    mul-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 1279
    int-to-float v7, v3

    mul-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1280
    int-to-float v7, v1

    mul-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1282
    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1283
    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1284
    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1286
    shl-int/lit8 v7, v0, 0x18

    shl-int/lit8 v8, v5, 0x10

    or-int/2addr v7, v8

    shl-int/lit8 v8, v3, 0x8

    or-int/2addr v7, v8

    or-int/2addr v7, v1

    aput v7, p0, v4

    .line 1268
    .end local v2    # "fa":F
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1289
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v3    # "g":I
    .end local v5    # "r":I
    .end local v6    # "rgb":I
    :cond_1
    return-void
.end method

.method public static setBackgroundForGridItemChooser(IILandroid/view/View;)V
    .locals 2
    .param p0, "position"    # I
    .param p1, "count"    # I
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 812
    const/4 v0, 0x2

    if-le p1, v0, :cond_6

    .line 813
    if-nez p0, :cond_1

    .line 814
    const v0, 0x7f0201c1

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 815
    :cond_1
    if-ne p0, v1, :cond_2

    .line 816
    const v0, 0x7f0201c2

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 817
    :cond_2
    add-int/lit8 v0, p1, -0x2

    if-ne p0, v0, :cond_3

    .line 818
    const v0, 0x7f0201bb

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 819
    :cond_3
    add-int/lit8 v0, p1, -0x1

    if-ne p0, v0, :cond_4

    .line 820
    const v0, 0x7f0201bc

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 821
    :cond_4
    rem-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_5

    .line 822
    const v0, 0x7f0201bd

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 823
    :cond_5
    rem-int/lit8 v0, p0, 0x2

    if-ne v0, v1, :cond_0

    .line 824
    const v0, 0x7f0201be

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 827
    :cond_6
    if-nez p0, :cond_7

    .line 828
    const v0, 0x7f0201bf

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 829
    :cond_7
    if-ne p0, v1, :cond_0

    .line 830
    const v0, 0x7f0201c0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private static setHomeToDefault(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "defHomePkg"    # Ljava/lang/String;

    .prologue
    .line 1965
    new-instance v0, Lcom/smartisanos/launcher/data/Utils$3;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/launcher/data/Utils$3;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2005
    return-void
.end method

.method private static setHomeToDefaultImpl(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "defHomePkg"    # Ljava/lang/String;

    .prologue
    .line 2009
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_legacy

    # Android 10+ (SDK 29): use RoleManager to request ROLE_HOME
    :try_start_role
    const-string v2, "role"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/role/RoleManager;

    if-eqz v2, :cond_role_fail

    const-string v3, "android.app.role.HOME"

    invoke-virtual {v2, v3}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_role_fail

    invoke-virtual {v2, v3}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2, v3}, Landroid/app/role/RoleManager;->createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :try_end_role
    .catch Ljava/lang/Exception; {:try_start_role .. :try_end_role} :catch_role

    return-void

    :catch_role
    move-exception v2

    :cond_role_fail
    # RoleManager failed, fall through to intent-based approach

    :cond_legacy
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 2010
    sget-object v2, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Build.VERSION.SDK_INT = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    const-string v2, "android.settings.HOME_SETTINGS"

    invoke-static {p0, v2}, Lcom/smartisanos/launcher/data/Utils;->tryStartActivityByAction(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2015
    const-string v2, "android.settings.MANAGE_DEFAULT_APPS_SETTINGS"

    invoke-static {p0, v2}, Lcom/smartisanos/launcher/data/Utils;->tryStartActivityByAction(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2019
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->isXiaoMiDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2020
    const-string v2, "miui.intent.action.PREFERRED_APPLICATION_SETTINGS"

    invoke-static {p0, v2}, Lcom/smartisanos/launcher/data/Utils;->tryStartActivityByAction(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 2028
    :cond_2
    return-void

    .line 2026
    :cond_1
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Utils;->showDefaultLauncherSettingUI(Landroid/content/Context;)V

    return-void
.end method

.method private static tryStartActivityByAction(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 2029
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2030
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2031
    const/4 v2, 0x1

    .line 2036
    :goto_0
    return v2

    .line 2032
    :catch_0
    move-exception v0

    .line 2033
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2034
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setMiuiStatusBarDarkMode(Landroid/app/Activity;Z)Z
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "darkmode"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2444
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->isXiaoMiDevice()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2459
    :goto_0
    return v6

    .line 2447
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2449
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/Window;>;"
    const/4 v1, 0x0

    .line 2450
    .local v1, "darkModeFlag":I
    :try_start_0
    const-string v8, "android.view.MiuiWindowManager$LayoutParams"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 2451
    .local v5, "layoutParams":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 2452
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 2453
    const-string v8, "setExtraFlags"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2454
    .local v3, "extraFlagField":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v8, 0x2

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    if-eqz p1, :cond_1

    move v8, v1

    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v11

    const/4 v8, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-virtual {v3, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    .line 2455
    goto :goto_0

    :cond_1
    move v8, v6

    .line 2454
    goto :goto_1

    .line 2456
    .end local v3    # "extraFlagField":Ljava/lang/reflect/Method;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "layoutParams":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 2457
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setStatusBarColor(Lcom/smartisanos/launcher/theme/Theme;)V
    .locals 1
    .param p0, "theme"    # Lcom/smartisanos/launcher/theme/Theme;

    .prologue
    .line 1491
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/data/Utils;->setStatusBarColor(Lcom/smartisanos/launcher/theme/Theme;Ljava/lang/String;)V

    .line 1492
    return-void
.end method

.method public static setStatusBarColor(Lcom/smartisanos/launcher/theme/Theme;Ljava/lang/String;)V
    .locals 2
    .param p0, "theme"    # Lcom/smartisanos/launcher/theme/Theme;
    .param p1, "keySuffix"    # Ljava/lang/String;

    .prologue
    .line 1495
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1496
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/launcher/data/Utils$1;

    invoke-direct {v1, p0, p1}, Lcom/smartisanos/launcher/data/Utils$1;-><init>(Lcom/smartisanos/launcher/theme/Theme;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1541
    :cond_0
    return-void
.end method

.method public static showDefaultLauncherSettingUI(Landroid/content/Context;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2055
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->getProductInfo()Ljava/lang/String;

    move-result-object v7

    .line 2056
    .local v7, "info":Ljava/lang/String;
    sget-object v11, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v12, "DEBUG"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "hardware info = ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    const-string v9, "com.android.settings.Settings"

    .line 2058
    .local v9, "settingCmp":Ljava/lang/String;
    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.android.settings"

    invoke-direct {v10, v11, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    .local v10, "settingMain":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 2060
    .local v1, "componentName":Landroid/content/ComponentName;
    const-string v11, "xiaomi"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "mi"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2061
    :cond_0
    const-string v0, "com.android.settings.applications.PreferredListSettings"

    .line 2062
    .local v0, "cmp":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    .end local v1    # "componentName":Landroid/content/ComponentName;
    const-string v11, "com.android.settings"

    invoke-direct {v1, v11, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2073
    .end local v0    # "cmp":Ljava/lang/String;
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 2074
    sget-object v11, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v12, "DEBUG"

    const-string v13, "unsupported phone, start setting"

    invoke-virtual {v11, v12, v13}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    move-object v1, v10

    .line 2077
    :cond_2
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 2078
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {v8, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2079
    const-string v11, "android.intent.action.MAIN"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2080
    const/high16 v6, 0x10200000

    .line 2081
    .local v6, "flag":I
    invoke-virtual {v8, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2083
    :try_start_0
    invoke-virtual {p0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2095
    :goto_1
    return-void

    .line 2063
    .end local v6    # "flag":I
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v11, "samsung"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2064
    const-string v0, "com.android.settings.Settings"

    .line 2065
    .restart local v0    # "cmp":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    .end local v1    # "componentName":Landroid/content/ComponentName;
    const-string v11, "com.android.settings"

    invoke-direct {v1, v11, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2066
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    goto :goto_0

    .end local v0    # "cmp":Ljava/lang/String;
    :cond_4
    const-string v11, "sony"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2067
    const-string v0, "com.android.settings.Settings"

    .line 2068
    .restart local v0    # "cmp":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    .end local v1    # "componentName":Landroid/content/ComponentName;
    const-string v11, "com.android.settings"

    invoke-direct {v1, v11, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    goto :goto_0

    .end local v0    # "cmp":Ljava/lang/String;
    :cond_5
    const-string v11, "huawei"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2070
    const-string v0, "com.android.settings.Settings$PreferredListSettingsActivity"

    .line 2071
    .restart local v0    # "cmp":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    .end local v1    # "componentName":Landroid/content/ComponentName;
    const-string v11, "com.android.settings"

    invoke-direct {v1, v11, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1    # "componentName":Landroid/content/ComponentName;
    goto :goto_0

    .line 2084
    .end local v0    # "cmp":Ljava/lang/String;
    .restart local v6    # "flag":I
    .restart local v8    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 2085
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 2087
    :try_start_1
    const-string v3, "com.android.settings.Settings"

    .line 2088
    .local v3, "defCmp":Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    const-string v11, "com.android.settings"

    invoke-direct {v2, v11, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2089
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .local v2, "componentName":Landroid/content/ComponentName;
    :try_start_2
    invoke-virtual {v8, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2090
    invoke-virtual {p0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    .line 2093
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    goto :goto_1

    .line 2091
    .end local v3    # "defCmp":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 2092
    .local v5, "ex":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2091
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v5    # "ex":Ljava/lang/Exception;
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    .restart local v3    # "defCmp":Ljava/lang/String;
    :catch_2
    move-exception v5

    move-object v1, v2

    .end local v2    # "componentName":Landroid/content/ComponentName;
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    goto :goto_2
.end method

.method public static showStatusBar(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 276
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 277
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 278
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 279
    return-void
.end method

.method public static showWeatherInfoToast()V
    .locals 2

    .prologue
    .line 2216
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/launcher/data/Utils$5;

    invoke-direct {v1}, Lcom/smartisanos/launcher/data/Utils$5;-><init>()V

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2242
    return-void
.end method

.method public static uninstallAppBySys(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1809
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1810
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1811
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1812
    return-void
.end method

.method public static updateDownloadCellsState(Ljava/lang/String;Lcom/smartisanos/launcher/view/DownloadView$DownloadState;)V
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "state"    # Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    .prologue
    .line 1591
    sget-object v0, Lcom/smartisanos/launcher/data/Utils;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDownloadCellsState, pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    new-instance v0, Lcom/smartisanos/launcher/data/Utils$2;

    const/16 v1, 0x64

    invoke-direct {v0, v1, p0, p1}, Lcom/smartisanos/launcher/data/Utils$2;-><init>(ILjava/lang/String;Lcom/smartisanos/launcher/view/DownloadView$DownloadState;)V

    const/4 v1, 0x0

    .line 1604
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/data/Utils$2;->send(F)V

    .line 1605
    return-void
.end method

.method public static validPassword(Ljava/lang/String;)Z
    .locals 3
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    .line 258
    const-string v2, "^[0-9]{4}$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 259
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 260
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method


# virtual methods
.method public getShortcutResIcon(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "iconId"    # I

    .prologue
    .line 1699
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1700
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1704
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .local v2, "resources":Landroid/content/res/Resources;
    :goto_0
    if-eqz v2, :cond_0

    .line 1705
    if-eqz p3, :cond_0

    .line 1706
    invoke-static {v2, p3}, Lcom/smartisanos/launcher/data/Utils;->getShortcutResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1709
    :goto_1
    return-object v3

    .line 1701
    .end local v2    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 1702
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .restart local v2    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 1709
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->getDefaultShortcutIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1
.end method
