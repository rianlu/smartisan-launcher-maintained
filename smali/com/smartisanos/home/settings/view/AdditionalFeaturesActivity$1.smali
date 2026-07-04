.class Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity$1;
.super Ljava/lang/Object;
.source "AdditionalFeaturesActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

.field final synthetic val$labelText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;
    .param p2, "val$labelText"    # Landroid/widget/TextView;

    iput-object p1, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity$1;->this$0:Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;

    iput-object p2, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity$1;->val$labelText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity$1;->val$labelText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity$1;->this$0:Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;

    mul-int/lit8 v2, p2, 0xa

    add-int/lit8 v2, v2, 0x32

    invoke-virtual {v1, v2}, Lcom/smartisanos/home/settings/view/AdditionalFeaturesActivity;->getIconLabelSizeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    return-void
.end method
