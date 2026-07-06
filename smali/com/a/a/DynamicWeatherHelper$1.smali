.class final Lcom/a/a/DynamicWeatherHelper$1;
.super Ljava/lang/Object;
.source "DynamicWeatherHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lcom/smartisanos/home/Launcher;->rebootCurrentLauncher()V

    return-void
.end method
