.class final Lcom/smartisanos/launcher/data/Utils$4;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/smartisan/weather/lib/WeatherHelper$WeatherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/Utils;->requestSyncWeatherData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 2164
    iput-object p1, p0, Lcom/smartisanos/launcher/data/Utils$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Lcom/smartisan/weather/lib/bean/Weather;)V
    .locals 14
    .param p1, "weather"    # Lcom/smartisan/weather/lib/bean/Weather;

    .prologue
    .line 2166
    if-nez p1, :cond_0

    .line 2167
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v11

    const-string v12, "requestSyncWeatherData return, weather is null"

    invoke-virtual {v11, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 2205
    :goto_0
    return-void

    .line 2170
    :cond_0
    .line 2171
    iget-object v3, p1, Lcom/smartisan/weather/lib/bean/Weather;->locationKey:Ljava/lang/String;

    .line 2172
    .local v3, "locationKey":Ljava/lang/String;
    iget-object v4, p1, Lcom/smartisan/weather/lib/bean/Weather;->pubdate:Ljava/lang/String;

    .line 2173
    .local v4, "pubdate":Ljava/lang/String;
    iget-object v10, p1, Lcom/smartisan/weather/lib/bean/Weather;->weatherCode:Ljava/lang/String;

    .line 2174
    .local v10, "weatherCode":Ljava/lang/String;
    iget-object v0, p1, Lcom/smartisan/weather/lib/bean/Weather;->temp:Ljava/lang/String;

    .line 2175
    .local v0, "celsiusTemperature":Ljava/lang/String;
    iget-object v1, p1, Lcom/smartisan/weather/lib/bean/Weather;->fahrenheitTemp:Ljava/lang/String;

    .line 2176
    .local v1, "fahrenheitTemperature":Ljava/lang/String;
    iget-object v6, p1, Lcom/smartisan/weather/lib/bean/Weather;->realFeelTemp:Ljava/lang/String;

    .line 2177
    .local v6, "realFeelTemp":Ljava/lang/String;
    iget-object v5, p1, Lcom/smartisan/weather/lib/bean/Weather;->realFeelFahrenheitTemp:Ljava/lang/String;

    .line 2178
    .local v5, "realFeelFahrenheitTemp":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2179
    .local v7, "sunRiseAndSetTime":Ljava/lang/String;
    iget-object v11, p1, Lcom/smartisan/weather/lib/bean/Weather;->otherData:Ljava/lang/Object;

    instance-of v12, v11, Ljava/lang/String;

    if-eqz v12, :cond_sun_time_done

    check-cast v11, Ljava/lang/String;

    const-string v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_sun_time_done

    move-object v7, v11

    :cond_sun_time_done
    .line 2181
    new-instance v2, Landroid/content/Intent;

    const-string v11, "com.smartisanos.weather.data.update"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2182
    .local v2, "intent":Landroid/content/Intent;
    const-string v11, "weatherCode"

    invoke-virtual {v2, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2183
    const-string v11, "temp"

    invoke-virtual {v2, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2184
    const-string v11, "fahrenheitTemp"

    invoke-virtual {v2, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2185
    const-string v11, "_1sunRiseAndSet"

    invoke-virtual {v2, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2187
    .local v8, "syncTime":J
    invoke-static {v8, v9}, Lcom/smartisanos/launcher/data/Utils;->access$302(J)J

    .line 2188
    iget-object v11, p0, Lcom/smartisanos/launcher/data/Utils$4;->val$context:Landroid/content/Context;

    invoke-static {v11, v2, v8, v9}, Lcom/smartisanos/launcher/data/Utils;->saveWeatherDataToCache(Landroid/content/Context;Landroid/content/Intent;J)V

    .line 2189
    sput-object v2, Lcom/smartisanos/launcher/view/WeatherView;->WEATHER_DATA:Landroid/content/Intent;

    .line 2190
    new-instance v11, Lcom/smartisanos/launcher/data/Utils$4$1;

    const/16 v12, 0x64

    invoke-direct {v11, p0, v12, v2}, Lcom/smartisanos/launcher/data/Utils$4$1;-><init>(Lcom/smartisanos/launcher/data/Utils$4;ILandroid/content/Intent;)V

    const/4 v12, 0x0

    .line 2204
    invoke-virtual {v11, v12}, Lcom/smartisanos/launcher/data/Utils$4$1;->send(F)V

    goto/16 :goto_0
.end method
