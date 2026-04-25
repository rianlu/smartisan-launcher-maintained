.class Lcom/smartisanos/launcher/view/MainView$7$2;
.super Ljava/lang/Object;
.source "MainView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/MainView$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/view/MainView$7;

.field final synthetic val$isDark:Z


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/MainView$7;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/view/MainView$7;

    .prologue
    .line 985
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MainView$7$2;->this$1:Lcom/smartisanos/launcher/view/MainView$7;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/MainView$7$2;->val$isDark:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartisanos/home/Launcher;->resetStatusBarColor()V

    :cond_0
    return-void
.end method
