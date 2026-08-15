.class Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity$3;
.super Ljava/lang/Object;
.source "AdditionalFeaturesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;

# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->showSwipeUpActionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;


# direct methods
.method constructor <init>(Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity$3;->this$0:Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity$3;->this$0:Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;

    invoke-virtual {v0, p2}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->setSwipeUpAction(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
