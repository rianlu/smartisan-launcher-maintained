.class final Lcom/a/a/WeatherLocationResolver;
.super Ljava/lang/Object;
.source "WeatherLocationResolver.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "location"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "network"

    invoke-virtual {p0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const-string v1, "gps"

    invoke-virtual {p0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    const-string v1, "passive"

    invoke-virtual {p0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception p0

    const-string v1, "WeatherLocationResolver"

    const-string v2, "getLastKnownLocation failed"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method static resolve(Landroid/content/Context;)Lcom/a/a/NmcCityIndex$Entry;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    :try_start_0
    invoke-static {p0}, Lcom/a/a/WeatherLocationResolver;->getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/smartisan/weather/lib/db/CityDatabaseHelper;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0, v1}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->getCityByLocation(Landroid/location/Location;)Lcom/smartisan/weather/lib/bean/SinaCity;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object v1, p0, Lcom/smartisan/weather/lib/bean/SinaCity;->cityChild:Ljava/lang/String;

    iget-object v2, p0, Lcom/smartisan/weather/lib/bean/SinaCity;->cityParent:Ljava/lang/String;

    iget-object v3, p0, Lcom/smartisan/weather/lib/bean/SinaCity;->province:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/a/a/NmcCityIndex;->match(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/NmcCityIndex$Entry;

    move-result-object v4

    if-eqz v4, :cond_0

    return-object v4

    :cond_0
    invoke-static {v1, v3}, Lcom/a/a/NmcCityIndex;->match(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/NmcCityIndex$Entry;

    move-result-object v4

    if-eqz v4, :cond_1

    return-object v4

    :cond_1
    invoke-static {v2, v3}, Lcom/a/a/NmcCityIndex;->match(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/NmcCityIndex$Entry;

    move-result-object v4

    if-eqz v4, :cond_2

    return-object v4

    :cond_2
    invoke-static {v3, v2}, Lcom/a/a/NmcCityIndex;->match(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/NmcCityIndex$Entry;

    move-result-object v4

    if-eqz v4, :cond_3

    return-object v4

    :cond_3
    const-string v1, "WeatherLocationResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p0, "city matched but nmc missing: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string p0, "/"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string p0, "/"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_4
    const-string p0, "WeatherLocationResolver"

    const-string v1, "last location or city null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v1, "WeatherLocationResolver"

    const-string v2, "resolve failed"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    return-object v0
.end method
