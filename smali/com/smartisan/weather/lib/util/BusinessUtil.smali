.class public Lcom/smartisan/weather/lib/util/BusinessUtil;
.super Ljava/lang/Object;
.source "BusinessUtil.java"


# static fields
.field public static final APPID:Ljava/lang/String; = "93c5fe123682490b"

.field public static final APPID_SIMP:Ljava/lang/String; = "93c5fe"

.field public static final BASE_URL:Ljava/lang/String; = "http://webapi.weather.com.cn/data/"

.field public static final BASE_URL_GROUND:Ljava/lang/String; = "http://weather.smartisanos.com/wunderground/"

.field public static final BASE_URL_GROUND_FORECAST:Ljava/lang/String; = "http://weather.smartisanos.com/wunderground/"

.field public static final PRIVATE_KEY:Ljava/lang/String; = "csn_webapi_data"

.field private static final SERVER_PRIVATE_KEY:Ljava/lang/String; = "smartisan_weather_api"

.field public static final SERVER_URL:Ljava/lang/String; = "http://api-weather.smartisan.com/"

.field public static final SERVER_URL_SMART:Ljava/lang/String; = "http://api-weather.smartisan.com/zh.php"

.field public static final SERVER_URL_WUNDER:Ljava/lang/String; = "http://api-weather.smartisan.com/other.php"

.field public static final TAG:Ljava/lang/String; = "BusinessUtil"

.field public static final TYPE_AIR:Ljava/lang/String; = "air"

.field public static final TYPE_FORECAST:Ljava/lang/String; = "forecast6d"

.field public static final TYPE_OBSERVE:Ljava/lang/String; = "observe"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TempC2TempF(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 398
    invoke-static {p0}, Lcom/smartisan/weather/lib/util/BusinessUtil;->verifyText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, "verifyResult":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 409
    .end local v2    # "verifyResult":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 404
    .restart local v2    # "verifyResult":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 409
    .local v1, "intValue":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Lcom/smartisan/weather/lib/Utility;->TempC2TempF(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 405
    .end local v1    # "intValue":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "Excepition"

    const-string v4, "TempC2TempF"

    invoke-static {v3, v4, v0}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 407
    const-string v2, ""

    goto :goto_0
.end method

.method public static TempF2TempC(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 423
    invoke-static {p0}, Lcom/smartisan/weather/lib/util/BusinessUtil;->verifyText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 424
    .local v2, "verifyResult":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 434
    .end local v2    # "verifyResult":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 429
    .restart local v2    # "verifyResult":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 434
    .local v1, "intValue":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/smartisan/weather/lib/Utility;->TempF2TempC(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 430
    .end local v1    # "intValue":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "Excepition"

    const-string v4, "TempF2TempC"

    invoke-static {v3, v4, v0}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 432
    const-string v2, ""

    goto :goto_0
.end method

.method private static cachTimeZoneId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locationKey"    # Ljava/lang/String;
    .param p2, "timeZoneId"    # Ljava/lang/String;

    .prologue
    .line 321
    const-string v2, "weather_timezone_map"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 324
    .local v0, "mPreferences":Landroid/content/SharedPreferences;
    const-string v2, ""

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "timeZoneCached":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 328
    :cond_0
    return-void
.end method

.method private static computeSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "baseString"    # Ljava/lang/String;
    .param p1, "keyString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v6, 0x0

    .line 59
    .local v6, "secretKey":Ljavax/crypto/SecretKey;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 60
    .local v3, "keyBytes":[B
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    .end local v6    # "secretKey":Ljavax/crypto/SecretKey;
    const-string v8, "HmacSHA1"

    invoke-direct {v6, v3, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 61
    .restart local v6    # "secretKey":Ljavax/crypto/SecretKey;
    const/4 v4, 0x0

    .line 63
    .local v4, "mac":Ljavax/crypto/Mac;
    :try_start_0
    const-string v8, "HmacSHA1"

    invoke-static {v8}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v4

    .line 64
    invoke-virtual {v4, v6}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 71
    .local v7, "text":[B
    invoke-virtual {v4, v7}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 73
    .local v0, "doFinal":[B
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v2

    .line 74
    .local v2, "encodeBase64":[B
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "result":Ljava/lang/String;
    const-string v8, "UTF-8"

    invoke-static {v5, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 65
    .end local v0    # "doFinal":[B
    .end local v2    # "encodeBase64":[B
    .end local v5    # "result":Ljava/lang/String;
    .end local v7    # "text":[B
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/security/InvalidKeyException;
    const-string v8, "Excepition"

    const-string v9, "computeSignature"

    invoke-static {v8, v9, v1}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 67
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v1

    .line 68
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v8, "Excepition"

    const-string v9, "computeSignature"

    invoke-static {v8, v9, v1}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static formatGroundWeatherValue(Landroid/content/Context;Lcom/smartisan/weather/lib/bean/Weather;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "weather"    # Lcom/smartisan/weather/lib/bean/Weather;

    .prologue
    const/4 v7, 0x0

    .line 265
    if-nez p1, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v4, p1, Lcom/smartisan/weather/lib/bean/Weather;->weatherCode:Ljava/lang/String;

    invoke-static {v4}, Lcom/smartisan/weather/lib/ResMappingUtil;->getGroundWeatherCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/smartisan/weather/lib/bean/Weather;->weatherCode:Ljava/lang/String;

    .line 268
    iget-object v4, p1, Lcom/smartisan/weather/lib/bean/Weather;->windDirection:Ljava/lang/String;

    invoke-static {v4}, Lcom/smartisan/weather/lib/util/BusinessUtil;->formatWindDirForGround(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/smartisan/weather/lib/bean/Weather;->windDirection:Ljava/lang/String;

    .line 270
    iget-object v4, p1, Lcom/smartisan/weather/lib/bean/Weather;->forecasts:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/smartisan/weather/lib/bean/Weather;->forecasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 271
    invoke-static {p0, p1}, Lcom/smartisan/weather/lib/util/BusinessUtil;->getSunRiseAndSetText(Landroid/content/Context;Lcom/smartisan/weather/lib/bean/Weather;)Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, "sunRiseAndSetText":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 273
    iget-object v4, p1, Lcom/smartisan/weather/lib/bean/Weather;->forecasts:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisan/weather/lib/bean/Forecast;

    iput-object v3, v4, Lcom/smartisan/weather/lib/bean/Forecast;->sunRiseAndSet:Ljava/lang/String;

    .line 275
    :cond_2
    iget-object v4, p1, Lcom/smartisan/weather/lib/bean/Weather;->forecasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisan/weather/lib/bean/Forecast;

    .line 276
    .local v0, "forecast":Lcom/smartisan/weather/lib/bean/Forecast;
    iget-object v5, v0, Lcom/smartisan/weather/lib/bean/Forecast;->forecastCode:Ljava/lang/String;

    invoke-static {v5}, Lcom/smartisan/weather/lib/ResMappingUtil;->getGroundWeatherCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/smartisan/weather/lib/bean/Forecast;->forecastCode:Ljava/lang/String;

    goto :goto_1

    .line 279
    .end local v0    # "forecast":Lcom/smartisan/weather/lib/bean/Forecast;
    .end local v3    # "sunRiseAndSetText":Ljava/lang/String;
    :cond_3
    iget-object v4, p1, Lcom/smartisan/weather/lib/bean/Weather;->relativeHumidity:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p1, Lcom/smartisan/weather/lib/bean/Weather;->relativeHumidity:Ljava/lang/String;

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 280
    iget-object v4, p1, Lcom/smartisan/weather/lib/bean/Weather;->relativeHumidity:Ljava/lang/String;

    iget-object v5, p1, Lcom/smartisan/weather/lib/bean/Weather;->relativeHumidity:Ljava/lang/String;

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "numString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 282
    .local v1, "num":I
    :goto_2
    if-ltz v1, :cond_4

    const/16 v4, 0x64

    if-le v1, v4, :cond_0

    .line 283
    :cond_4
    const-string v4, "?"

    iput-object v4, p1, Lcom/smartisan/weather/lib/bean/Weather;->relativeHumidity:Ljava/lang/String;

    goto/16 :goto_0

    .line 281
    .end local v1    # "num":I
    :cond_5
    const/4 v1, -0x1

    goto :goto_2
.end method

.method private static formatHumidity(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "humidity"    # Ljava/lang/String;

    .prologue
    .line 383
    invoke-static {p0}, Lcom/smartisan/weather/lib/util/BusinessUtil;->verifyText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "verifyResult":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 393
    .end local v1    # "verifyResult":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 387
    .restart local v1    # "verifyResult":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 388
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 389
    .local v0, "num":I
    if-ltz v0, :cond_1

    const/16 v2, 0x64

    if-gt v0, v2, :cond_1

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 393
    .end local v0    # "num":I
    :cond_1
    const-string v1, "?"

    goto :goto_0
.end method

.method private static formatWeatherValue(Landroid/content/Context;Lcom/smartisan/weather/lib/bean/Weather;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "weather"    # Lcom/smartisan/weather/lib/bean/Weather;

    .prologue
    const/4 v5, 0x0

    .line 234
    if-nez p1, :cond_1

    .line 262
    :cond_0
    return-void

    .line 236
    :cond_1
    iget-object v3, p1, Lcom/smartisan/weather/lib/bean/Weather;->temp:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 237
    const-string v3, "?"

    iput-object v3, p1, Lcom/smartisan/weather/lib/bean/Weather;->temp:Ljava/lang/String;

    .line 238
    const-string v3, "?"

    iput-object v3, p1, Lcom/smartisan/weather/lib/bean/Weather;->fahrenheitTemp:Ljava/lang/String;

    .line 242
    :goto_0
    iget-object v3, p1, Lcom/smartisan/weather/lib/bean/Weather;->realFeelTemp:Ljava/lang/String;

    invoke-static {v3}, Lcom/smartisan/weather/lib/util/BusinessUtil;->TempC2TempF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/smartisan/weather/lib/bean/Weather;->realFeelFahrenheitTemp:Ljava/lang/String;

    .line 243
    iget-object v3, p1, Lcom/smartisan/weather/lib/bean/Weather;->relativeHumidity:Ljava/lang/String;

    invoke-static {v3}, Lcom/smartisan/weather/lib/util/BusinessUtil;->formatHumidity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/smartisan/weather/lib/bean/Weather;->relativeHumidity:Ljava/lang/String;

    .line 244
    iget-object v3, p1, Lcom/smartisan/weather/lib/bean/Weather;->forecasts:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/smartisan/weather/lib/bean/Weather;->forecasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 245
    iget-object v3, p1, Lcom/smartisan/weather/lib/bean/Weather;->forecasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisan/weather/lib/bean/Forecast;

    iget-object v3, v3, Lcom/smartisan/weather/lib/bean/Forecast;->highTemp:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 246
    new-instance v1, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;

    invoke-direct {v1, p0}, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;-><init>(Landroid/content/Context;)V

    .line 247
    .local v1, "helper":Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;
    iget-object v3, p1, Lcom/smartisan/weather/lib/bean/Weather;->locationKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;->queryWeatherByLocationKey(Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/Weather;

    move-result-object v2

    .line 248
    .local v2, "weather2":Lcom/smartisan/weather/lib/bean/Weather;
    if-eqz v2, :cond_5

    .line 249
    iget-object v3, p1, Lcom/smartisan/weather/lib/bean/Weather;->forecasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisan/weather/lib/bean/Forecast;

    iget-object v4, v2, Lcom/smartisan/weather/lib/bean/Weather;->forecasts:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisan/weather/lib/bean/Forecast;

    iget-object v4, v4, Lcom/smartisan/weather/lib/bean/Forecast;->highTemp:Ljava/lang/String;

    iput-object v4, v3, Lcom/smartisan/weather/lib/bean/Forecast;->highTemp:Ljava/lang/String;

    .line 254
    .end local v1    # "helper":Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;
    .end local v2    # "weather2":Lcom/smartisan/weather/lib/bean/Weather;
    :cond_2
    :goto_1
    iget-object v3, p1, Lcom/smartisan/weather/lib/bean/Weather;->forecasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisan/weather/lib/bean/Forecast;

    iget-object v3, v3, Lcom/smartisan/weather/lib/bean/Forecast;->forecastCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 255
    iget-object v3, p1, Lcom/smartisan/weather/lib/bean/Weather;->forecasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisan/weather/lib/bean/Forecast;

    iget-object v4, p1, Lcom/smartisan/weather/lib/bean/Weather;->weatherCode:Ljava/lang/String;

    iput-object v4, v3, Lcom/smartisan/weather/lib/bean/Forecast;->forecastCode:Ljava/lang/String;

    .line 257
    :cond_3
    iget-object v3, p1, Lcom/smartisan/weather/lib/bean/Weather;->forecasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisan/weather/lib/bean/Forecast;

    .line 258
    .local v0, "forecast":Lcom/smartisan/weather/lib/bean/Forecast;
    iget-object v4, v0, Lcom/smartisan/weather/lib/bean/Forecast;->highTemp:Ljava/lang/String;

    invoke-static {v4}, Lcom/smartisan/weather/lib/util/BusinessUtil;->TempC2TempF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/smartisan/weather/lib/bean/Forecast;->highFahrenheitTemp:Ljava/lang/String;

    .line 259
    iget-object v4, v0, Lcom/smartisan/weather/lib/bean/Forecast;->lowTemp:Ljava/lang/String;

    invoke-static {v4}, Lcom/smartisan/weather/lib/util/BusinessUtil;->TempC2TempF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/smartisan/weather/lib/bean/Forecast;->lowFahrenheitTemp:Ljava/lang/String;

    goto :goto_2

    .line 240
    .end local v0    # "forecast":Lcom/smartisan/weather/lib/bean/Forecast;
    :cond_4
    iget-object v3, p1, Lcom/smartisan/weather/lib/bean/Weather;->temp:Ljava/lang/String;

    invoke-static {v3}, Lcom/smartisan/weather/lib/util/BusinessUtil;->TempC2TempF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/smartisan/weather/lib/bean/Weather;->fahrenheitTemp:Ljava/lang/String;

    goto/16 :goto_0

    .line 251
    .restart local v1    # "helper":Lcom/smartisan/weather/lib/db/WeatherProviderDBHelper;
    .restart local v2    # "weather2":Lcom/smartisan/weather/lib/bean/Weather;
    :cond_5
    iget-object v3, p1, Lcom/smartisan/weather/lib/bean/Weather;->forecasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisan/weather/lib/bean/Forecast;

    iget-object v4, p1, Lcom/smartisan/weather/lib/bean/Weather;->temp:Ljava/lang/String;

    iput-object v4, v3, Lcom/smartisan/weather/lib/bean/Forecast;->highTemp:Ljava/lang/String;

    goto :goto_1
.end method

.method private static formatWindDirForGround(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "wind_dir"    # Ljava/lang/String;

    .prologue
    .line 341
    const-string v0, ""

    .line 342
    .local v0, "result":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    const-string v1, "East"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 344
    const-string v0, "2"

    .line 379
    :cond_0
    :goto_0
    return-object v0

    .line 345
    :cond_1
    const-string v1, "ENE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 346
    const-string v0, "1"

    goto :goto_0

    .line 347
    :cond_2
    const-string v1, "ESE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 348
    const-string v0, "3"

    goto :goto_0

    .line 349
    :cond_3
    const-string v1, "NE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 350
    const-string v0, "1"

    goto :goto_0

    .line 351
    :cond_4
    const-string v1, "NNE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 352
    const-string v0, "1"

    goto :goto_0

    .line 353
    :cond_5
    const-string v1, "NNW"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 354
    const-string v0, "7"

    goto :goto_0

    .line 355
    :cond_6
    const-string v1, "North"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 356
    const-string v0, "8"

    goto :goto_0

    .line 357
    :cond_7
    const-string v1, "NW"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 358
    const-string v0, "7"

    goto :goto_0

    .line 359
    :cond_8
    const-string v1, "SE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 360
    const-string v0, "3"

    goto :goto_0

    .line 361
    :cond_9
    const-string v1, "South"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 362
    const-string v0, "4"

    goto :goto_0

    .line 363
    :cond_a
    const-string v1, "SSE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 364
    const-string v0, "3"

    goto :goto_0

    .line 365
    :cond_b
    const-string v1, "SSW"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 366
    const-string v0, "5"

    goto :goto_0

    .line 367
    :cond_c
    const-string v1, "SW"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 368
    const-string v0, "5"

    goto/16 :goto_0

    .line 369
    :cond_d
    const-string v1, "West"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 370
    const-string v0, "6"

    goto/16 :goto_0

    .line 371
    :cond_e
    const-string v1, "WNW"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 372
    const-string v0, "7"

    goto/16 :goto_0

    .line 373
    :cond_f
    const-string v1, "WSW"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 374
    const-string v0, "5"

    goto/16 :goto_0

    .line 376
    :cond_10
    const-string v0, "0"

    goto/16 :goto_0
.end method

.method public static generateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "areaid"    # Ljava/lang/String;
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://webapi.weather.com.cn/data/?areaid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&date="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&appid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "93c5fe123682490b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "publicKey":Ljava/lang/String;
    const-string v1, "csn_webapi_data"

    invoke-static {v0, v1}, Lcom/smartisan/weather/lib/util/BusinessUtil;->computeSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getAQI(Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/AQI;
    .locals 5
    .param p0, "areaId"    # Ljava/lang/String;

    .prologue
    .line 514
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 515
    const/4 v0, 0x0

    .line 525
    :cond_0
    return-object v0

    .line 517
    :cond_1
    const/4 v1, 0x0

    .line 518
    .local v1, "num":I
    const/4 v0, 0x0

    .line 519
    .local v0, "air":Lcom/smartisan/weather/lib/bean/AQI;
    :goto_0
    if-nez v0, :cond_0

    const/4 v4, 0x3

    if-ge v1, v4, :cond_0

    .line 520
    const-string v4, "air"

    invoke-static {p0, v4}, Lcom/smartisan/weather/lib/util/BusinessUtil;->getURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 521
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Lcom/smartisan/weather/lib/util/BusinessUtil;->requestGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 522
    .local v2, "result":Ljava/lang/String;
    invoke-static {v2}, Lcom/smartisan/weather/lib/util/JsonParser;->parseAir(Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/AQI;

    move-result-object v0

    .line 523
    add-int/lit8 v1, v1, 0x1

    .line 524
    goto :goto_0
.end method

.method private static getBureauWeatherData(Landroid/content/Context;Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/Weather;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "areaId"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    const/4 v2, 0x0

    .line 230
    :cond_0
    :goto_0
    return-object v2

    .line 221
    :cond_1
    invoke-static {p1}, Lcom/smartisan/weather/lib/util/BusinessUtil;->getUrlSmart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Lcom/smartisan/weather/lib/util/BusinessUtil;->requestGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Lcom/smartisan/weather/lib/util/JsonParser;->parseWeahterSmart(Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/Weather;

    move-result-object v2

    .line 224
    .local v2, "weather":Lcom/smartisan/weather/lib/bean/Weather;
    if-eqz v2, :cond_0

    .line 225
    iput-object p1, v2, Lcom/smartisan/weather/lib/bean/Weather;->locationKey:Ljava/lang/String;

    .line 226
    const-string v3, "nothing_publish"

    iget-object v4, v2, Lcom/smartisan/weather/lib/bean/Weather;->pubdate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 227
    invoke-static {p0, v2}, Lcom/smartisan/weather/lib/util/BusinessUtil;->formatWeatherValue(Landroid/content/Context;Lcom/smartisan/weather/lib/bean/Weather;)V

    goto :goto_0
.end method

.method private static getCurrentCondition(Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/Weather;
    .locals 5
    .param p0, "areaId"    # Ljava/lang/String;

    .prologue
    .line 454
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 455
    const/4 v3, 0x0

    .line 465
    :cond_0
    return-object v3

    .line 457
    :cond_1
    const/4 v0, 0x0

    .line 458
    .local v0, "num":I
    const/4 v3, 0x0

    .line 459
    .local v3, "weather":Lcom/smartisan/weather/lib/bean/Weather;
    const-string v4, "observe"

    invoke-static {p0, v4}, Lcom/smartisan/weather/lib/util/BusinessUtil;->getURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, "url":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_0

    const/4 v4, 0x3

    if-ge v0, v4, :cond_0

    .line 461
    invoke-static {v2}, Lcom/smartisan/weather/lib/util/BusinessUtil;->requestGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 462
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Lcom/smartisan/weather/lib/util/JsonParser;->parseWeather(Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/Weather;

    move-result-object v3

    .line 463
    add-int/lit8 v0, v0, 0x1

    .line 464
    goto :goto_0
.end method

.method public static getCurrentDate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 112
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getForecast(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "areaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisan/weather/lib/bean/Forecast;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 485
    const/4 v1, 0x0

    .line 495
    :cond_0
    return-object v1

    .line 487
    :cond_1
    const/4 v0, 0x0

    .line 488
    .local v0, "num":I
    const/4 v1, 0x0

    .line 489
    .local v1, "parseForecast":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/Forecast;>;"
    const-string v4, "forecast6d"

    invoke-static {p0, v4}, Lcom/smartisan/weather/lib/util/BusinessUtil;->getURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 490
    .local v3, "url":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    const/4 v4, 0x3

    if-ge v0, v4, :cond_0

    .line 491
    invoke-static {v3}, Lcom/smartisan/weather/lib/util/BusinessUtil;->requestGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, "result":Ljava/lang/String;
    invoke-static {v2}, Lcom/smartisan/weather/lib/util/JsonParser;->parseForecast(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 493
    add-int/lit8 v0, v0, 0x1

    .line 494
    goto :goto_0
.end method

.method private static getFormatWindSpeed(Ljava/lang/String;)D
    .locals 6
    .param p0, "speedNum"    # Ljava/lang/String;

    .prologue
    .line 539
    const-wide/16 v0, 0x0

    .line 540
    .local v0, "windSpeed":D
    const-string v2, "0"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 541
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 561
    :cond_0
    :goto_0
    const-wide v2, 0x409925604189374cL    # 1609.344

    mul-double/2addr v2, v0

    const-wide v4, 0x40ac200000000000L    # 3600.0

    div-double v0, v2, v4

    .line 562
    return-wide v0

    .line 542
    :cond_1
    const-string v2, "1"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 543
    const-wide/high16 v0, 0x402b000000000000L    # 13.5

    goto :goto_0

    .line 544
    :cond_2
    const-string v2, "2"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 545
    const-wide/high16 v0, 0x4035000000000000L    # 21.0

    goto :goto_0

    .line 546
    :cond_3
    const-string v2, "3"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 547
    const-wide v0, 0x403d800000000000L    # 29.5

    goto :goto_0

    .line 548
    :cond_4
    const-string v2, "4"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 549
    const-wide v0, 0x4043400000000000L    # 38.5

    goto :goto_0

    .line 550
    :cond_5
    const-string v2, "5"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 551
    const-wide v0, 0x4048400000000000L    # 48.5

    goto :goto_0

    .line 552
    :cond_6
    const-string v2, "6"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 553
    const-wide v0, 0x404dc00000000000L    # 59.5

    goto :goto_0

    .line 554
    :cond_7
    const-string v2, "7"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 555
    const-wide v0, 0x4051c00000000000L    # 71.0

    goto :goto_0

    .line 556
    :cond_8
    const-string v2, "8"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 557
    const-wide v0, 0x4054c00000000000L    # 83.0

    goto :goto_0

    .line 558
    :cond_9
    const-string v2, "9"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 559
    const-wide v0, 0x4057e00000000000L    # 95.5

    goto/16 :goto_0
.end method

.method private static getGroundConditionURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "longitude"    # Ljava/lang/String;
    .param p1, "latitude"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    :cond_0
    const/4 v0, 0x0

    .line 152
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://weather.smartisanos.com/wunderground/coordinate/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getGroundCurrentCondition(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/Weather;
    .locals 5
    .param p0, "longitude"    # Ljava/lang/String;
    .param p1, "latitude"    # Ljava/lang/String;

    .prologue
    .line 469
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 470
    :cond_0
    const/4 v3, 0x0

    .line 480
    :cond_1
    return-object v3

    .line 472
    :cond_2
    const/4 v0, 0x0

    .line 473
    .local v0, "num":I
    const/4 v3, 0x0

    .line 474
    .local v3, "weather":Lcom/smartisan/weather/lib/bean/Weather;
    invoke-static {p0, p1}, Lcom/smartisan/weather/lib/util/BusinessUtil;->getGroundConditionURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 475
    .local v2, "url":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_1

    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    .line 476
    invoke-static {v2}, Lcom/smartisan/weather/lib/util/BusinessUtil;->requestGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Lcom/smartisan/weather/lib/util/JsonParser;->parseWeatherFromGround(Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/Weather;

    move-result-object v3

    .line 478
    add-int/lit8 v0, v0, 0x1

    .line 479
    goto :goto_0
.end method

.method private static getGroundForecast(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "longitude"    # Ljava/lang/String;
    .param p1, "latitude"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisan/weather/lib/bean/Forecast;",
            ">;"
        }
    .end annotation

    .prologue
    .line 499
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 500
    :cond_0
    const/4 v1, 0x0

    .line 510
    :cond_1
    return-object v1

    .line 502
    :cond_2
    const/4 v0, 0x0

    .line 503
    .local v0, "num":I
    const/4 v1, 0x0

    .line 504
    .local v1, "parseForecast":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/Forecast;>;"
    invoke-static {p0, p1}, Lcom/smartisan/weather/lib/util/BusinessUtil;->getGroundForecastURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 505
    .local v3, "url":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_1

    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    .line 506
    invoke-static {v3}, Lcom/smartisan/weather/lib/util/BusinessUtil;->requestGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 507
    .local v2, "result":Ljava/lang/String;
    invoke-static {v2}, Lcom/smartisan/weather/lib/util/JsonParser;->parseGroundForecast(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 508
    add-int/lit8 v0, v0, 0x1

    .line 509
    goto :goto_0
.end method

.method private static getGroundForecastURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "longitude"    # Ljava/lang/String;
    .param p1, "latitude"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    const/4 v0, 0x0

    .line 159
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://weather.smartisanos.com/wunderground/coordinate_forecast10day/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getGroundWeatherData(Landroid/content/Context;Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/Weather;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "areaId"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-static {p0}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/smartisan/weather/lib/db/CityDatabaseHelper;

    move-result-object v2

    .line 200
    .local v2, "instance":Lcom/smartisan/weather/lib/db/CityDatabaseHelper;
    invoke-virtual {v2, p1}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->getCityByCityId(Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/SinaCity;

    move-result-object v0

    .line 201
    .local v0, "city":Lcom/smartisan/weather/lib/bean/SinaCity;
    if-eqz v0, :cond_1

    .line 202
    iget-object v5, v0, Lcom/smartisan/weather/lib/bean/SinaCity;->latitude:Ljava/lang/String;

    iget-object v6, v0, Lcom/smartisan/weather/lib/bean/SinaCity;->longitude:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/smartisan/weather/lib/util/BusinessUtil;->getUrlWunder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Lcom/smartisan/weather/lib/util/BusinessUtil;->requestGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "content":Ljava/lang/String;
    invoke-static {v1}, Lcom/smartisan/weather/lib/util/JsonParser;->parseWeahterWunder(Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/Weather;

    move-result-object v4

    .line 205
    .local v4, "weather":Lcom/smartisan/weather/lib/bean/Weather;
    if-eqz v4, :cond_0

    .line 206
    iput-object p1, v4, Lcom/smartisan/weather/lib/bean/Weather;->locationKey:Ljava/lang/String;

    .line 207
    const/4 v5, -0x1

    iput v5, v4, Lcom/smartisan/weather/lib/bean/Weather;->AQI:I

    .line 208
    const-string v5, "nothing_publish"

    iget-object v6, v4, Lcom/smartisan/weather/lib/bean/Weather;->pubdate:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 209
    invoke-static {p0, v4}, Lcom/smartisan/weather/lib/util/BusinessUtil;->formatGroundWeatherValue(Landroid/content/Context;Lcom/smartisan/weather/lib/bean/Weather;)V

    .line 214
    .end local v1    # "content":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "weather":Lcom/smartisan/weather/lib/bean/Weather;
    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getRealFeelTemp(FF)F
    .locals 6
    .param p0, "tempC"    # F
    .param p1, "windSpeed"    # F

    .prologue
    .line 567
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 569
    .end local p0    # "tempC":F
    :goto_0
    return p0

    .restart local p0    # "tempC":F
    :cond_0
    float-to-double v0, p0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float p0, v0

    goto :goto_0
.end method

.method private static getSunRiseAndSetText(Landroid/content/Context;Lcom/smartisan/weather/lib/bean/Weather;)Ljava/lang/String;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "weather"    # Lcom/smartisan/weather/lib/bean/Weather;

    .prologue
    .line 289
    const/4 v7, 0x0

    .line 290
    .local v7, "result":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/smartisan/weather/lib/bean/Weather;->otherData:Ljava/lang/Object;

    if-eqz v14, :cond_0

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/smartisan/weather/lib/bean/Weather;->locationKey:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 292
    :try_start_0
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/smartisan/weather/lib/bean/Weather;->otherData:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .line 293
    .local v13, "timeZoneId":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/smartisan/weather/lib/db/CityDatabaseHelper;

    move-result-object v4

    .line 294
    .local v4, "helper":Lcom/smartisan/weather/lib/db/CityDatabaseHelper;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/smartisan/weather/lib/bean/Weather;->locationKey:Ljava/lang/String;

    invoke-virtual {v4, v14}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->getCityByCityId(Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/SinaCity;

    move-result-object v2

    .line 295
    .local v2, "city":Lcom/smartisan/weather/lib/bean/SinaCity;
    if-eqz v2, :cond_0

    .line 296
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/smartisan/weather/lib/bean/Weather;->locationKey:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v14, v13}, Lcom/smartisan/weather/lib/util/BusinessUtil;->cachTimeZoneId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v5, v2, Lcom/smartisan/weather/lib/bean/SinaCity;->latitude:Ljava/lang/String;

    .line 298
    .local v5, "latitude":Ljava/lang/String;
    iget-object v6, v2, Lcom/smartisan/weather/lib/bean/SinaCity;->longitude:Ljava/lang/String;

    .line 299
    .local v6, "longitude":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 300
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 301
    const/4 v14, 0x2

    new-array v14, v14, [D

    const/4 v15, 0x0

    .line 302
    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    aput-wide v16, v14, v15

    const/4 v15, 0x1

    .line 303
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    aput-wide v16, v14, v15

    .line 304
    invoke-static {v13}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v15

    .line 301
    invoke-static {v14, v15}, Lcom/smartisan/weather/lib/util/BusinessUtil;->getSunriseSunset([DLjava/util/TimeZone;)Lcom/smartisan/weather/lib/util/SunriseSunset;

    move-result-object v10

    .line 305
    .local v10, "sunriseSunset":Lcom/smartisan/weather/lib/util/SunriseSunset;
    invoke-virtual {v10}, Lcom/smartisan/weather/lib/util/SunriseSunset;->getSunriseHour()I

    move-result v8

    .line 306
    .local v8, "sunriseHour":I
    invoke-virtual {v10}, Lcom/smartisan/weather/lib/util/SunriseSunset;->getSunriseMin()I

    move-result v9

    .line 307
    .local v9, "sunriseMin":I
    invoke-virtual {v10}, Lcom/smartisan/weather/lib/util/SunriseSunset;->getSunsetHour()I

    move-result v11

    .line 308
    .local v11, "sunsetHour":I
    invoke-virtual {v10}, Lcom/smartisan/weather/lib/util/SunriseSunset;->getSunsetMin()I

    move-result v12

    .line 309
    .local v12, "sunsetMin":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 317
    .end local v2    # "city":Lcom/smartisan/weather/lib/bean/SinaCity;
    .end local v4    # "helper":Lcom/smartisan/weather/lib/db/CityDatabaseHelper;
    .end local v5    # "latitude":Ljava/lang/String;
    .end local v6    # "longitude":Ljava/lang/String;
    .end local v8    # "sunriseHour":I
    .end local v9    # "sunriseMin":I
    .end local v10    # "sunriseSunset":Lcom/smartisan/weather/lib/util/SunriseSunset;
    .end local v11    # "sunsetHour":I
    .end local v12    # "sunsetMin":I
    .end local v13    # "timeZoneId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v7

    .line 313
    :catch_0
    move-exception v3

    .line 314
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v14, "Excepition"

    const-string v15, "getSunRiseAndSetText"

    invoke-static {v14, v15, v3}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getSunriseSunset([DLjava/util/TimeZone;)Lcom/smartisan/weather/lib/util/SunriseSunset;
    .locals 12
    .param p0, "mCoor"    # [D
    .param p1, "timezone"    # Ljava/util/TimeZone;

    .prologue
    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 332
    .local v10, "current":J
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 333
    .local v6, "date":Ljava/util/Date;
    invoke-virtual {p1, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    const-wide v4, 0x40ac200000000000L    # 3600.0

    div-double v7, v2, v4

    .line 334
    .local v7, "offset":D
    if-nez p0, :cond_0

    .line 335
    const/4 v1, 0x0

    .line 337
    :goto_0
    return-object v1

    .line 336
    :cond_0
    new-instance v1, Lcom/smartisan/weather/lib/util/SunriseSunset;

    const/4 v0, 0x0

    aget-wide v2, p0, v0

    const/4 v0, 0x1

    aget-wide v4, p0, v0

    invoke-direct/range {v1 .. v8}, Lcom/smartisan/weather/lib/util/SunriseSunset;-><init>(DDLjava/util/Date;D)V

    .line 337
    .local v1, "mSun":Lcom/smartisan/weather/lib/util/SunriseSunset;
    goto :goto_0
.end method

.method public static getURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "areaId"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    :cond_0
    const/4 v3, 0x0

    .line 128
    :goto_0
    return-object v3

    .line 119
    :cond_1
    invoke-static {}, Lcom/smartisan/weather/lib/util/BusinessUtil;->getCurrentDate()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "date":Ljava/lang/String;
    const-string v2, ""

    .line 122
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, v0, p1}, Lcom/smartisan/weather/lib/util/BusinessUtil;->generateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 126
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://webapi.weather.com.cn/data/?areaid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&date="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&appid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "93c5fe"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "url":Ljava/lang/String;
    goto :goto_0

    .line 123
    .end local v3    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "Excepition"

    const-string v5, "getURL"

    invoke-static {v4, v5, v1}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getUrlSmart(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "areaId"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const/4 v1, 0x0

    .line 136
    :goto_0
    return-object v1

    .line 135
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "city_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "params":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://api-weather.smartisan.com/zh.php?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "smartisan_weather_api"

    invoke-static {v0, v2}, Lcom/smartisan/weather/lib/util/BusinessUtil;->md5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getUrlWunder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "latitude"    # Ljava/lang/String;
    .param p1, "longitude"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    :cond_0
    const/4 v1, 0x0

    .line 145
    :goto_0
    return-object v1

    .line 143
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "latitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&longitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "params":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://api-weather.smartisan.com/other.php?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    const-string v3, ""

    .line 145
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "smartisan_weather_api"

    invoke-static {v2, v3}, Lcom/smartisan/weather/lib/util/BusinessUtil;->md5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getWeatherData(Landroid/content/Context;Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/Weather;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cityId"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 173
    :goto_0
    return-object v0

    .line 167
    :cond_0
    const/4 v0, 0x0

    .line 168
    .local v0, "weather":Lcom/smartisan/weather/lib/bean/Weather;
    invoke-static {p0, p1}, Lcom/a/a/SmartisanWeatherSource;->getWeatherData(Landroid/content/Context;Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/Weather;

    move-result-object v0

    if-eqz v0, :cond_nmc_fallback

    goto :goto_0

    :cond_nmc_fallback
    invoke-static {p1}, Lcom/smartisan/weather/lib/Utility;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    invoke-static {p0, p1}, Lcom/smartisan/weather/lib/util/BusinessUtil;->getBureauWeatherData(Landroid/content/Context;Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/Weather;

    move-result-object v0

    goto :goto_0

    .line 171
    :cond_1
    invoke-static {p0, p1}, Lcom/smartisan/weather/lib/util/BusinessUtil;->getGroundWeatherData(Landroid/content/Context;Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/Weather;

    move-result-object v0

    goto :goto_0
.end method

.method private static md5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v6, 0x0

    .line 81
    .local v6, "md5":Ljava/security/MessageDigest;
    :try_start_0
    const-string v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 86
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "inStr":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 88
    .local v1, "charArray":[C
    array-length v9, v1

    new-array v0, v9, [B

    .line 90
    .local v0, "byteArray":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v9, v1

    if-ge v4, v9, :cond_0

    .line 91
    aget-char v9, v1, v4

    int-to-byte v9, v9

    aput-byte v9, v0, v4

    .line 90
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "byteArray":[B
    .end local v1    # "charArray":[C
    .end local v4    # "i":I
    .end local v5    # "inStr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "BusinessUtil"

    const-string v10, "md5 error"

    invoke-static {v9, v10, v2}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    const-string v9, ""

    .line 100
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v9

    .line 92
    .restart local v0    # "byteArray":[B
    .restart local v1    # "charArray":[C
    .restart local v4    # "i":I
    .restart local v5    # "inStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {v6, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    .line 93
    .local v7, "md5Bytes":[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    .local v3, "hexValue":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    :goto_2
    array-length v9, v7

    if-ge v4, v9, :cond_2

    .line 95
    aget-byte v9, v7, v4

    and-int/lit16 v8, v9, 0xff

    .line 96
    .local v8, "val":I
    const/16 v9, 0x10

    if-ge v8, v9, :cond_1

    .line 97
    const-string v9, "0"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 100
    .end local v8    # "val":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1
.end method

.method private static requestGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 529
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 530
    const/4 v0, 0x0

    .line 535
    :goto_0
    return-object v0

    .line 531
    :cond_0
    const-string v2, "BusinessUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    new-instance v1, Lcom/smartisan/weather/lib/util/HttpGetData;

    invoke-direct {v1}, Lcom/smartisan/weather/lib/util/HttpGetData;-><init>()V

    .line 533
    .local v1, "httpdata":Lcom/smartisan/weather/lib/util/HttpGetData;
    invoke-virtual {v1, p0}, Lcom/smartisan/weather/lib/util/HttpGetData;->executeHttpGetWithRetry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "content":Ljava/lang/String;
    const-string v2, "BusinessUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static verifyText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 413
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    const-string v0, ""

    .line 419
    :goto_0
    return-object v0

    .line 416
    :cond_0
    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "?"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 417
    :cond_1
    const-string v0, "?"

    goto :goto_0

    .line 419
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
