.class Lcom/smartisan/updater/ApkUpdater$7;
.super Ljava/lang/Object;
.source "ApkUpdater.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/updater/ApkUpdater;->showDownloadFallbackDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields

.field final synthetic this$0:Lcom/smartisan/updater/ApkUpdater;


# direct methods
.method constructor <init>(Lcom/smartisan/updater/ApkUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/updater/ApkUpdater;

    iput-object p1, p0, Lcom/smartisan/updater/ApkUpdater$7;->this$0:Lcom/smartisan/updater/ApkUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://www.pgyer.com/smartisan-launcher-maintained"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/smartisan/updater/ApkUpdater$7;->this$0:Lcom/smartisan/updater/ApkUpdater;

    invoke-static {v1}, Lcom/smartisan/updater/ApkUpdater;->access$000(Lcom/smartisan/updater/ApkUpdater;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
