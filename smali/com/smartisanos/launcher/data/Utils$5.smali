.class final Lcom/smartisanos/launcher/data/Utils$5;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/Utils;->showWeatherInfoToast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatInvalid"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 2220
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v3

    .line 2221
    .local v3, "launcher":Lcom/smartisanos/home/Launcher;
    if-nez v3, :cond_0

    .line 2240
    :goto_0
    return-void

    .line 2224
    :cond_0
    const-string v2, "\u6b63\u5728\u5237\u65b0\u5929\u6c14, \u6682\u65e0\u5929\u6c14\u6570\u636e"

    .line 2225
    .local v2, "info":Ljava/lang/String;
    sget-object v6, Lcom/smartisanos/launcher/view/WeatherView;->WEATHER_DATA:Landroid/content/Intent;

    if-nez v6, :cond_1

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Utils;->getWeatherDataFromCache(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    :cond_1
    if-eqz v6, :cond_4

    .line 2226
    const-string v7, "weatherCode"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2227
    .local v5, "weatherCode":Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/smartisan/weather/lib/bean/Weather;->getWeatherDesc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2228
    .local v1, "codeName":Ljava/lang/String;
    const-string v7, "temp"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2229
    .local v0, "celsiusTemperature":Ljava/lang/String;
    const-string v7, "_1sunRiseAndSet"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2230
    .local v8, "sunRiseAndSet":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5929\u6c14: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\u2103"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz v8, :cond_5

    const-string v7, ", \u65e5\u51fa\u65e5\u843d "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2234
    .end local v0    # "celsiusTemperature":Ljava/lang/String;
    .end local v1    # "codeName":Ljava/lang/String;
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "weatherCode":Ljava/lang/String;
    .end local v8    # "sunRiseAndSet":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->access$400()Landroid/widget/Toast;

    move-result-object v6

    if-nez v6, :cond_6

    .line 2235
    invoke-static {v3, v2, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-static {v6}, Lcom/smartisanos/launcher/data/Utils;->access$402(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 2239
    :goto_1
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->access$400()Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2237
    :cond_6
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->access$400()Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
