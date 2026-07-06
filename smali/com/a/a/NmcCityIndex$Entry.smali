.class final Lcom/a/a/NmcCityIndex$Entry;
.super Ljava/lang/Object;
.source "NmcCityIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/NmcCityIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Entry"
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field final province:Ljava/lang/String;

.field final slug:Ljava/lang/String;

.field final stationId:Ljava/lang/String;

.field final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/NmcCityIndex$Entry;->stationId:Ljava/lang/String;

    iput-object p2, p0, Lcom/a/a/NmcCityIndex$Entry;->province:Ljava/lang/String;

    iput-object p3, p0, Lcom/a/a/NmcCityIndex$Entry;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/a/a/NmcCityIndex$Entry;->url:Ljava/lang/String;

    invoke-static {p4}, Lcom/a/a/NmcCityIndex;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/a/a/NmcCityIndex$Entry;->slug:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method displayAdmin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/NmcCityIndex$Entry;->province:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/a/a/NmcCityIndex$Entry;->province:Ljava/lang/String;

    :goto_0
    return-object v0
.end method
