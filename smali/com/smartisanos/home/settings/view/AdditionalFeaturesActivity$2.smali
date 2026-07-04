.class Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity$2;
.super Ljava/lang/Object;
.source "AdditionalFeaturesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->showIconLabelSizeDialogInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;

.field final synthetic val$currentValue:I

.field final synthetic val$seekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;Landroid/widget/SeekBar;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;
    .param p2, "val$seekBar"    # Landroid/widget/SeekBar;
    .param p3, "val$currentValue"    # I

    iput-object p1, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity$2;->this$0:Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;

    iput-object p2, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity$2;->val$seekBar:Landroid/widget/SeekBar;

    iput p3, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity$2;->val$currentValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity$2;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x32

    iget v1, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity$2;->val$currentValue:I

    if-ne v0, v1, :cond_update

    return-void

    :cond_update
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity$2;->this$0:Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;

    invoke-virtual {v1, v0}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->setIconLabelSize(I)V

    return-void
.end method
