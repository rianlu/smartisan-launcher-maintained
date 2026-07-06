.class final Lcom/a/a/NmcCityIndex$ScoredEntry;
.super Ljava/lang/Object;
.source "NmcCityIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/NmcCityIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScoredEntry"
.end annotation


# instance fields
.field final entry:Lcom/a/a/NmcCityIndex$Entry;

.field final score:I


# direct methods
.method constructor <init>(Lcom/a/a/NmcCityIndex$Entry;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/NmcCityIndex$ScoredEntry;->entry:Lcom/a/a/NmcCityIndex$Entry;

    iput p2, p0, Lcom/a/a/NmcCityIndex$ScoredEntry;->score:I

    return-void
.end method
