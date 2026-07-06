.class public final Lcom/a/a/WeatherPermissionHelper;
.super Ljava/lang/Object;
.source "WeatherPermissionHelper.java"


# static fields
.field private static final REQUEST_CODE_WEATHER_LOCATION:I = 0x65


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static maybeRequest(Landroid/app/Activity;)V
    .locals 3

    .line 17
    if-eqz p0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 21
    return-void

    .line 23
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/16 v0, 0x65

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 29
    return-void

    .line 18
    :cond_2
    :goto_0
    return-void
.end method

.method public static onRequestPermissionsResult(Landroid/app/Activity;I[I)V
    .locals 1

    .line 32
    if-eqz p0, :cond_2

    const/16 v0, 0x65

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_2

    array-length p1, p2

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    aget p1, p2, p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 37
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, p1

    :goto_0
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Utils;->requestSyncWeatherData(Landroid/content/Context;)V

    .line 38
    return-void

    .line 34
    :cond_2
    :goto_1
    return-void
.end method
