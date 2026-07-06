.class final Lcom/smartisanos/launcher/data/WeatherForceSyncTask;
.super Landroid/os/AsyncTask;
.source "WeatherForceSyncTask.java"

# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/smartisan/weather/lib/bean/Weather;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/data/WeatherForceSyncTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/smartisan/weather/lib/bean/Weather;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    iget-object v0, p0, Lcom/smartisanos/launcher/data/WeatherForceSyncTask;->mContext:Landroid/content/Context;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/a/a/SmartisanWeatherSource;->getWeatherData(Landroid/content/Context;Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/Weather;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/data/WeatherForceSyncTask;->doInBackground([Ljava/lang/Void;)Lcom/smartisan/weather/lib/bean/Weather;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/smartisan/weather/lib/bean/Weather;)V
    .locals 4
    .param p1, "weather"    # Lcom/smartisan/weather/lib/bean/Weather;

    .prologue
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    new-instance v0, Lcom/smartisanos/launcher/data/Utils$4;

    iget-object v1, p0, Lcom/smartisanos/launcher/data/WeatherForceSyncTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/data/Utils$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/data/Utils$4;->onLoaded(Lcom/smartisan/weather/lib/bean/Weather;)V

    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->showWeatherInfoToast()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    check-cast p1, Lcom/smartisan/weather/lib/bean/Weather;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/data/WeatherForceSyncTask;->onPostExecute(Lcom/smartisan/weather/lib/bean/Weather;)V

    return-void
.end method
