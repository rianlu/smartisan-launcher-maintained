.class public final Lcom/a/a/SmartisanWeatherSource;
.super Ljava/lang/Object;
.source "SmartisanWeatherSource.java"


# static fields
.field private static final NMC_WEATHER:Ljava/lang/String; = "https://www.nmc.cn/rest/weather?stationid="


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method private static child(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 117
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static firstMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/NmcCityIndex$Entry;
    .locals 1

    .line 110
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 p0, 0x0

    return-object p0

    .line 113
    :cond_0
    invoke-static {p0}, Lcom/a/a/SmartisanWeatherSource;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/a/a/SmartisanWeatherSource;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/a/a/NmcCityIndex;->match(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/NmcCityIndex$Entry;

    move-result-object p0

    return-object p0
.end method

.method private static firstNonEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 226
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/a/a/SmartisanWeatherSource;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static formatSunRiseAndSet(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    .line 205
    const-string v0, "sunrise"

    invoke-static {p0, v0}, Lcom/a/a/SmartisanWeatherSource;->nmcString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/SmartisanWeatherSource;->timePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    const-string v1, "sunset"

    invoke-static {p0, v1}, Lcom/a/a/SmartisanWeatherSource;->nmcString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/a/a/SmartisanWeatherSource;->timePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 207
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 208
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static formatTemperature(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 188
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 189
    return-object v1

    .line 192
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u2103"

    .line 193
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u00b0C"

    .line 194
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u00b0"

    .line 195
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "C"

    .line 196
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "c"

    .line 197
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 198
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 199
    :catch_0
    move-exception p0

    .line 200
    return-object v1
.end method

.method private static getCachedEntry(Landroid/content/Context;)Lcom/a/a/NmcCityIndex$Entry;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "prefs_key_weather_nmc_station"

    invoke-static {p0, v1, v0}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/a/a/NmcCityIndex;->findByStationId(Ljava/lang/String;)Lcom/a/a/NmcCityIndex$Entry;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "SmartisanWeatherSource"

    const-string v2, "use cached station"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const-string v1, "SmartisanWeatherSource"

    const-string v2, "getCachedEntry failed"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v0
.end method

.method private static cacheEntry(Landroid/content/Context;Lcom/a/a/NmcCityIndex$Entry;)V
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/a/a/NmcCityIndex$Entry;->stationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "prefs_key_weather_nmc_station"

    invoke-static {p0, v1, v0}, Lcom/smartisanos/launcher/data/LauncherPreferences;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getWeatherData(Landroid/content/Context;Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/Weather;
    .locals 12

    .line 29
    const/4 v0, 0x0

    if-eqz p0, :cond_7

    move-object v7, p0

    .line 33
    :try_start_0
    invoke-static {v7}, Lcom/a/a/SmartisanWeatherSource;->getCachedEntry(Landroid/content/Context;)Lcom/a/a/NmcCityIndex$Entry;

    move-result-object p0

    if-eqz p0, :cond_no_cached_entry

    goto :goto_entry_resolved

    :cond_no_cached_entry
    invoke-static {v7, p1}, Lcom/a/a/SmartisanWeatherSource;->resolveEntry(Landroid/content/Context;Ljava/lang/String;)Lcom/a/a/NmcCityIndex$Entry;

    move-result-object p0

    :goto_entry_resolved

    .line 34
    if-eqz p0, :cond_6

    invoke-static {v7, p0}, Lcom/a/a/SmartisanWeatherSource;->cacheEntry(Landroid/content/Context;Lcom/a/a/NmcCityIndex$Entry;)V

    iget-object v1, p0, Lcom/a/a/NmcCityIndex$Entry;->stationId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 37
    :cond_1
    iget-object v11, p0, Lcom/a/a/NmcCityIndex$Entry;->name:Ljava/lang/String;

    iget-object p0, p0, Lcom/a/a/NmcCityIndex$Entry;->stationId:Ljava/lang/String;

    const-string v1, "UTF-8"

    .line 38
    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.nmc.cn/rest/weather?stationid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 37
    invoke-static {p0}, Lcom/a/a/SmartisanWeatherSource;->readNmcUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/a/a/SmartisanWeatherSource;->jsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "data"

    .line 38
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 39
    if-nez p0, :cond_2

    .line 40
    return-object v0

    .line 42
    :cond_2
    move-object v5, p0

    const-string v1, "real"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 43
    const-string v1, "weather"

    invoke-static {p0, v1}, Lcom/a/a/SmartisanWeatherSource;->child(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 44
    const-string v2, "temperature"

    invoke-static {v1, v2}, Lcom/a/a/SmartisanWeatherSource;->nmcString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/a/a/SmartisanWeatherSource;->formatTemperature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    const-string v3, "img"

    .line 46
    invoke-static {v1, v3}, Lcom/a/a/SmartisanWeatherSource;->nmcString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "info"

    .line 47
    invoke-static {v1, v4}, Lcom/a/a/SmartisanWeatherSource;->nmcString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-static {v5, v1, v3, v4}, Lcom/a/a/SmartisanWeatherSource;->resolveWeatherCode(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 52
    :cond_3
    new-instance v4, Lcom/smartisan/weather/lib/bean/Weather;

    invoke-direct {v4}, Lcom/smartisan/weather/lib/bean/Weather;-><init>()V

    .line 53
    iput-object v11, v4, Lcom/smartisan/weather/lib/bean/Weather;->locationKey:Ljava/lang/String;

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lcom/smartisan/weather/lib/bean/Weather;->pubdate:Ljava/lang/String;

    .line 55
    iput-object v3, v4, Lcom/smartisan/weather/lib/bean/Weather;->weatherCode:Ljava/lang/String;

    .line 56
    iput-object v2, v4, Lcom/smartisan/weather/lib/bean/Weather;->temp:Ljava/lang/String;

    .line 57
    invoke-static {v2}, Lcom/smartisan/weather/lib/util/BusinessUtil;->TempC2TempF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lcom/smartisan/weather/lib/bean/Weather;->fahrenheitTemp:Ljava/lang/String;

    .line 58
    const-string p1, "feelst"

    invoke-static {v1, p1}, Lcom/a/a/SmartisanWeatherSource;->nmcString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/a/a/SmartisanWeatherSource;->formatTemperature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lcom/smartisan/weather/lib/bean/Weather;->realFeelTemp:Ljava/lang/String;

    .line 59
    iget-object p1, v4, Lcom/smartisan/weather/lib/bean/Weather;->realFeelTemp:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 60
    iget-object p1, v4, Lcom/smartisan/weather/lib/bean/Weather;->fahrenheitTemp:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object p1, v4, Lcom/smartisan/weather/lib/bean/Weather;->realFeelTemp:Ljava/lang/String;

    invoke-static {p1}, Lcom/smartisan/weather/lib/util/BusinessUtil;->TempC2TempF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, v4, Lcom/smartisan/weather/lib/bean/Weather;->realFeelFahrenheitTemp:Ljava/lang/String;

    .line 61
    const-string p1, "humidity"

    invoke-static {v1, p1}, Lcom/a/a/SmartisanWeatherSource;->nmcString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/a/a/SmartisanWeatherSource;->formatTemperature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lcom/smartisan/weather/lib/bean/Weather;->relativeHumidity:Ljava/lang/String;

    .line 62
    const-string p1, "wind"

    invoke-static {p0, p1}, Lcom/a/a/SmartisanWeatherSource;->child(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 63
    const-string v1, "direct"

    invoke-static {p1, v1}, Lcom/a/a/SmartisanWeatherSource;->nmcString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/smartisan/weather/lib/bean/Weather;->windDirection:Ljava/lang/String;

    .line 64
    const-string v1, "speed"

    invoke-static {p1, v1}, Lcom/a/a/SmartisanWeatherSource;->nmcString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lcom/smartisan/weather/lib/bean/Weather;->windSpeed:Ljava/lang/String;

    .line 65
    const-string p1, "sunriseSunset"

    invoke-static {p0, p1}, Lcom/a/a/SmartisanWeatherSource;->child(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/a/a/SmartisanWeatherSource;->formatSunRiseAndSet(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lcom/smartisan/weather/lib/bean/Weather;->otherData:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-object v4

    .line 49
    :cond_5
    :goto_1
    const-string p0, "SmartisanWeatherSource"

    const-string p1, "weather temp or code empty"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 35
    :cond_6
    :goto_2
    invoke-static {v7}, Lcom/a/a/WeatherLocationResolver;->resolve(Landroid/content/Context;)Lcom/a/a/NmcCityIndex$Entry;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "SmartisanWeatherSource"

    const-string p1, "resolve station null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 67
    :catch_0
    move-exception p0

    .line 68
    const-string p1, "SmartisanWeatherSource"

    const-string v1, "getWeatherData exception"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    return-object v0

    .line 30
    :cond_7
    :goto_3
    return-object v0
.end method

.method private static jsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 150
    :catch_0
    move-exception p0

    .line 151
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static nmcString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 156
    const-string v0, ""

    if-nez p0, :cond_0

    .line 157
    return-object v0

    .line 159
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 160
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "9999"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static normalizeWeatherCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 164
    invoke-static {p0}, Lcom/a/a/SmartisanWeatherSource;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 165
    const-string v0, "d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 166
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 168
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v2, "0"

    if-le v0, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 171
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 172
    invoke-static {p0}, Lcom/a/a/SmartisanWeatherSource;->toSmartisanWeatherCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 174
    :cond_3
    if-eqz p1, :cond_b

    .line 175
    const-string p0, "\u96f7"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "04"

    return-object p0

    .line 176
    :cond_4
    const-string p0, "\u96ea"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "13"

    return-object p0

    .line 177
    :cond_5
    const-string p0, "\u96e8"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "07"

    return-object p0

    .line 178
    :cond_6
    const-string p0, "\u96fe"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "18"

    return-object p0

    .line 179
    :cond_7
    const-string p0, "\u973e"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "53"

    return-object p0

    .line 180
    :cond_8
    const-string p0, "\u9634"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "02"

    return-object p0

    .line 181
    :cond_9
    const-string p0, "\u4e91"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a

    const-string p0, "01"

    return-object p0

    .line 182
    :cond_a
    const-string p0, "\u6674"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "00"

    return-object p0

    .line 184
    :cond_b
    const-string p0, "99"

    return-object p0
.end method

.method private static toSmartisanWeatherCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "99"

    invoke-static {p0}, Lcom/a/a/SmartisanWeatherSource;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_parse

    return-object v0

    :cond_parse
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-lt v1, v2, :cond_unknown

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_special

    const/16 v2, 0xa

    if-lt v1, v2, :cond_pad

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_pad
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_special
    const/16 v2, 0x35

    if-ne v1, v2, :cond_haze_54

    const-string p0, "53"

    return-object p0

    :cond_haze_54
    const/16 v2, 0x36

    if-ne v1, v2, :cond_haze_55

    const-string p0, "53"

    return-object p0

    :cond_haze_55
    const/16 v2, 0x37

    if-ne v1, v2, :cond_haze_56

    const-string p0, "53"

    return-object p0

    :cond_haze_56
    const/16 v2, 0x38

    if-ne v1, v2, :cond_fog_32

    const-string p0, "53"

    return-object p0

    :cond_fog_32
    const/16 v2, 0x20

    if-ne v1, v2, :cond_fog_49

    const-string p0, "18"

    return-object p0

    :cond_fog_49
    const/16 v2, 0x31

    if-ne v1, v2, :cond_fog_57

    const-string p0, "18"

    return-object p0

    :cond_fog_57
    const/16 v2, 0x39

    if-ne v1, v2, :cond_fog_58

    const-string p0, "18"

    return-object p0

    :cond_fog_58
    const/16 v2, 0x3a

    if-ne v1, v2, :cond_unknown

    const-string p0, "18"

    return-object p0

    :cond_unknown
    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    return-object v0
.end method

.method private static resolvePredictPart(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0, p1}, Lcom/a/a/SmartisanWeatherSource;->child(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "weather"

    invoke-static {p0, p1}, Lcom/a/a/SmartisanWeatherSource;->child(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "img"

    invoke-static {p0, p1}, Lcom/a/a/SmartisanWeatherSource;->nmcString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "info"

    invoke-static {p0, v1}, Lcom/a/a/SmartisanWeatherSource;->nmcString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/SmartisanWeatherSource;->normalizeWeatherCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static resolveWeatherCode(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p2, p3}, Lcom/a/a/SmartisanWeatherSource;->normalizeWeatherCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "99"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_return_current

    if-nez p0, :cond_try_fallback

    goto/16 :goto_return_current

    :cond_try_fallback
    :try_start_0
    const-string v1, "predict"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_predict_ok

    goto/16 :goto_return_current

    :cond_predict_ok
    const-string v1, "detail"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_detail_ok

    goto/16 :goto_return_current

    :cond_detail_ok
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_return_current

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_day_part

    goto/16 :goto_return_current

    :cond_day_part
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_use_night

    const/16 v2, 0x12

    if-lt v1, v2, :cond_use_day

    :cond_use_night
    const-string v1, "night"

    const-string v2, "day"

    goto :goto_part_selected

    :cond_use_day
    const-string v1, "day"

    const-string v2, "night"

    :goto_part_selected
    invoke-static {p0, v1}, Lcom/a/a/SmartisanWeatherSource;->resolvePredictPart(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_try_other_part

    const-string v4, "99"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_return_first_part

    :cond_try_other_part
    invoke-static {p0, v2}, Lcom/a/a/SmartisanWeatherSource;->resolvePredictPart(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_return_current

    const-string v1, "99"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_return_other_part

    goto :goto_return_current

    :cond_return_first_part
    return-object v3

    :cond_return_other_part
    return-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const-string v1, "SmartisanWeatherSource"

    const-string v2, "resolveWeatherCode fallback failed"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_return_current

    :cond_return_current
    :goto_return_current
    return-object v0
.end method

.method private static readNmcUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 122
    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 123
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 124
    const-string v0, "Accept"

    const-string v1, "application/json"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v0, "User-Agent"

    const-string v1, "Mozilla/5.0 SmartisanLauncher/1.0"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v0, "Referer"

    const-string v1, "https://www.nmc.cn/"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_0

    .line 128
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 129
    :goto_0
    if-eqz v0, :cond_2

    .line 134
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 135
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 137
    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 138
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 140
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 143
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 140
    return-object v2

    .line 142
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 143
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 144
    throw v1

    .line 130
    :cond_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 131
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Empty response"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private static resolveEntry(Landroid/content/Context;Ljava/lang/String;)Lcom/a/a/NmcCityIndex$Entry;
    .locals 4

    .line 74
    nop

    .line 76
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/smartisan/weather/lib/db/CityDatabaseHelper;

    move-result-object v1

    .line 77
    if-nez v1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->getCityByCityId(Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/SinaCity;

    move-result-object p1

    .line 78
    :goto_0
    if-eqz p1, :cond_2

    .line 79
    iget-object v1, p1, Lcom/smartisan/weather/lib/bean/SinaCity;->cityChild:Ljava/lang/String;

    iget-object v2, p1, Lcom/smartisan/weather/lib/bean/SinaCity;->cityParent:Ljava/lang/String;

    iget-object v3, p1, Lcom/smartisan/weather/lib/bean/SinaCity;->province:Ljava/lang/String;

    .line 81
    invoke-static {v2, v3}, Lcom/a/a/SmartisanWeatherSource;->firstNonEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {v1, v2}, Lcom/a/a/SmartisanWeatherSource;->firstMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/NmcCityIndex$Entry;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 82
    if-nez v1, :cond_1

    .line 83
    :try_start_1
    iget-object v2, p1, Lcom/smartisan/weather/lib/bean/SinaCity;->cityParent:Ljava/lang/String;

    iget-object v3, p1, Lcom/smartisan/weather/lib/bean/SinaCity;->province:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/a/a/SmartisanWeatherSource;->firstMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/NmcCityIndex$Entry;

    move-result-object v1

    goto :goto_1

    .line 89
    :catch_0
    move-exception p1

    goto :goto_3

    .line 85
    :cond_1
    :goto_1
    if-nez v1, :cond_3

    .line 86
    iget-object v2, p1, Lcom/smartisan/weather/lib/bean/SinaCity;->province:Ljava/lang/String;

    iget-object p1, p1, Lcom/smartisan/weather/lib/bean/SinaCity;->cityParent:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/a/a/SmartisanWeatherSource;->firstMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/NmcCityIndex$Entry;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 78
    :cond_2
    move-object v1, v0

    .line 90
    :cond_3
    :goto_2
    goto :goto_3

    .line 89
    :catch_1
    move-exception p1

    move-object v1, v0

    .line 91
    :goto_3
    if-eqz v1, :cond_4

    .line 92
    return-object v1

    .line 95
    :cond_4
    :try_start_2
    invoke-static {p0}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->getInstance(Landroid/content/Context;)Lcom/smartisan/weather/lib/db/LocationDBHelper;

    move-result-object p0

    .line 96
    if-nez p0, :cond_5

    .line 97
    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->queryCurrentLocation()Lcom/smartisan/weather/lib/bean/SmartisanLocation;

    move-result-object v0

    if-eqz v0, :cond_query_first_done

    goto :goto_4

    :cond_query_first_done
    invoke-virtual {p0}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->queryFirstLocation()Lcom/smartisan/weather/lib/bean/SmartisanLocation;

    move-result-object v0

    .line 98
    :goto_4
    if-eqz v0, :cond_6

    .line 99
    iget-object p0, v0, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->locationName:Ljava/lang/String;

    iget-object p1, v0, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->locationParentName:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/a/a/SmartisanWeatherSource;->firstMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/NmcCityIndex$Entry;

    move-result-object v1

    .line 100
    if-nez v1, :cond_6

    .line 101
    iget-object p0, v0, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->locationParentName:Ljava/lang/String;

    iget-object p1, v0, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->locationName:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/a/a/SmartisanWeatherSource;->firstMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/NmcCityIndex$Entry;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 105
    :cond_6
    goto :goto_5

    .line 104
    :catch_2
    move-exception p0

    .line 106
    :goto_5
    return-object v1
.end method

.method private static safe(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 230
    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private static timePart(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 214
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const-string p0, ""

    return-object p0

    .line 217
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 218
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 219
    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 220
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 222
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method
