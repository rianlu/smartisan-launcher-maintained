.class Lcom/smartisanos/home/settings/icons/IconPackManager$WarmRunnable;
.super Ljava/lang/Object;
.source "IconPackManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final appContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/home/settings/icons/IconPackManager$WarmRunnable;->appContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/smartisanos/home/settings/icons/IconPackManager$WarmRunnable;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->getIconPackPackages(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-void
.end method
