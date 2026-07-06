.class Lcom/a/a/NmcCityIndex$1;
.super Ljava/lang/Object;
.source "NmcCityIndex.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/NmcCityIndex;->search(Ljava/lang/String;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/a/a/NmcCityIndex$ScoredEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/a/a/NmcCityIndex$ScoredEntry;Lcom/a/a/NmcCityIndex$ScoredEntry;)I
    .locals 3

    iget v0, p1, Lcom/a/a/NmcCityIndex$ScoredEntry;->score:I

    iget v1, p2, Lcom/a/a/NmcCityIndex$ScoredEntry;->score:I

    if-eq v0, v1, :cond_0

    iget p2, p2, Lcom/a/a/NmcCityIndex$ScoredEntry;->score:I

    iget p1, p1, Lcom/a/a/NmcCityIndex$ScoredEntry;->score:I

    sub-int/2addr p2, p1

    return p2

    :cond_0
    iget-object v0, p1, Lcom/a/a/NmcCityIndex$ScoredEntry;->entry:Lcom/a/a/NmcCityIndex$Entry;

    iget-object v0, v0, Lcom/a/a/NmcCityIndex$Entry;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Lcom/a/a/NmcCityIndex$ScoredEntry;->entry:Lcom/a/a/NmcCityIndex$Entry;

    iget-object v1, v1, Lcom/a/a/NmcCityIndex$Entry;->province:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p2, Lcom/a/a/NmcCityIndex$ScoredEntry;->entry:Lcom/a/a/NmcCityIndex$Entry;

    iget-object v1, v1, Lcom/a/a/NmcCityIndex$Entry;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p2, Lcom/a/a/NmcCityIndex$ScoredEntry;->entry:Lcom/a/a/NmcCityIndex$Entry;

    iget-object v2, v2, Lcom/a/a/NmcCityIndex$Entry;->province:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_1

    sub-int/2addr v0, v1

    return v0

    :cond_1
    iget-object p1, p1, Lcom/a/a/NmcCityIndex$ScoredEntry;->entry:Lcom/a/a/NmcCityIndex$Entry;

    iget-object p1, p1, Lcom/a/a/NmcCityIndex$Entry;->stationId:Ljava/lang/String;

    iget-object p2, p2, Lcom/a/a/NmcCityIndex$ScoredEntry;->entry:Lcom/a/a/NmcCityIndex$Entry;

    iget-object p2, p2, Lcom/a/a/NmcCityIndex$Entry;->stationId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/a/a/NmcCityIndex$ScoredEntry;

    check-cast p2, Lcom/a/a/NmcCityIndex$ScoredEntry;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/NmcCityIndex$1;->compare(Lcom/a/a/NmcCityIndex$ScoredEntry;Lcom/a/a/NmcCityIndex$ScoredEntry;)I

    move-result p1

    return p1
.end method
