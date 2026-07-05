.class public Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;
.super Ljava/lang/Object;
.source "UninstallApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/actions/UninstallApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UninstallDialogThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveMultiAppsOnClickListener;,
        Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener;
    }
.end annotation


# instance fields
.field private dialogType:I

.field private isCancelRun:Z

.field private itemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

.field private itemInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private systemItemCount:I

.field final synthetic this$0:Lcom/smartisanos/launcher/actions/UninstallApp;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/actions/UninstallApp;Lcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 1
    .param p1, "this$0"    # Lcom/smartisanos/launcher/actions/UninstallApp;
    .param p2, "item"    # Lcom/smartisanos/launcher/data/ItemInfo;

    .prologue
    const/4 v0, 0x0

    .line 461
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->this$0:Lcom/smartisanos/launcher/actions/UninstallApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iput-object v0, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->itemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 456
    iput-object v0, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->itemInfos:Ljava/util/List;

    .line 459
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->dialogType:I

    .line 472
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->isCancelRun:Z

    .line 462
    iput-object p2, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->itemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 463
    const/4 v0, 0x1

    iput v0, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->dialogType:I

    .line 464
    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/launcher/actions/UninstallApp;Ljava/util/List;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/smartisanos/launcher/actions/UninstallApp;
    .param p3, "systemAppCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    const/4 v0, 0x0

    .line 466
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->this$0:Lcom/smartisanos/launcher/actions/UninstallApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iput-object v0, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->itemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 456
    iput-object v0, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->itemInfos:Ljava/util/List;

    .line 459
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->dialogType:I

    .line 472
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->isCancelRun:Z

    .line 467
    iput-object p2, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->itemInfos:Ljava/util/List;

    .line 468
    const/4 v0, 0x2

    iput v0, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->dialogType:I

    .line 469
    iput p3, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->systemItemCount:I

    .line 470
    return-void
.end method

.method static synthetic access$300(Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->isCancelRun:Z

    return v0
.end method

.method static synthetic access$302(Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;
    .param p1, "x1"    # Z

    .prologue
    .line 453
    iput-boolean p1, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->isCancelRun:Z

    return p1
.end method

.method static synthetic access$400(Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;

    .prologue
    .line 453
    iget v0, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->dialogType:I

    return v0
.end method

.method static synthetic access$600(Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;)Lcom/smartisanos/launcher/data/ItemInfo;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->itemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 476
    invoke-static {}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v8

    const-string v9, "UninstallApp run !!!"

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 477
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v8

    sget-object v9, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->MAIN:Lcom/smartisanos/home/Launcher$RUNNING_ENV;

    invoke-virtual {v8, v9}, Lcom/smartisanos/home/Launcher;->verifyThread(Lcom/smartisanos/home/Launcher$RUNNING_ENV;)V

    .line 478
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v2

    .line 479
    .local v2, "context":Lcom/smartisanos/home/Launcher;
    new-instance v7, Landroid/view/ContextThemeWrapper;

    const v8, 0x103012b

    invoke-direct {v7, v2, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 480
    .local v7, "themeWrapper":Landroid/view/ContextThemeWrapper;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 481
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x0

    .line 482
    .local v4, "dialogContent":Ljava/lang/String;
    iget v8, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->dialogType:I

    if-ne v8, v12, :cond_2

    .line 483
    iget-object v8, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->itemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->itemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-wide v8, v8, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget-object v8, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->itemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v0, v8, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    .line 487
    .local v0, "appName":Ljava/lang/String;
    iget-object v8, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->itemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-byte v8, v8, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-eq v8, v12, :cond_shortcut_dialog_text

    sget v8, Lcom/smartisanos/launcher/ResIds$string;->uninstall_app_dialog_text:I

    invoke-virtual {v2, v8}, Lcom/smartisanos/home/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 488
    new-array v8, v12, [Ljava/lang/Object;

    aput-object v0, v8, v13

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_single_dialog_text_done

    :cond_shortcut_dialog_text
    const v8, 0x7f0801e9

    invoke-virtual {v2, v8}, Lcom/smartisanos/home/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_single_dialog_text_done

    .line 489
    new-instance v5, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener;

    iget-object v8, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->itemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-direct {v5, p0, v8}, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener;-><init>(Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 490
    .local v5, "positiveButtonClickListener":Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener;
    sget v8, Lcom/smartisanos/launcher/ResIds$string;->ok:I

    invoke-virtual {v1, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 513
    .end local v5    # "positiveButtonClickListener":Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener;
    :goto_1
    sget v8, Lcom/smartisanos/launcher/ResIds$string;->uninstall_app_dialog_title:I

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 514
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 517
    sget v8, Lcom/smartisanos/launcher/ResIds$string;->cancel:I

    new-instance v9, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$1;

    invoke-direct {v9, p0}, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$1;-><init>(Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;)V

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 526
    new-instance v8, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$2;

    invoke-direct {v8, p0}, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$2;-><init>(Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;)V

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 535
    new-instance v8, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$3;

    invoke-direct {v8, p0}, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$3;-><init>(Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;)V

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 546
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    sput-object v8, Lcom/smartisanos/launcher/actions/UninstallApp;->mUninstallDialog:Landroid/app/AlertDialog;

    .line 547
    sget-object v8, Lcom/smartisanos/launcher/actions/UninstallApp;->mUninstallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 492
    .end local v0    # "appName":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->itemInfos:Ljava/util/List;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->itemInfos:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_0

    .line 495
    iget-object v8, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->itemInfos:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    .line 496
    .local v3, "count":I
    iget-object v8, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->itemInfos:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v0, v8, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    .line 497
    .restart local v0    # "appName":Ljava/lang/String;
    if-le v3, v12, :cond_4

    .line 498
    sget v8, Lcom/smartisanos/launcher/ResIds$string;->uninstall_multi_app_dialog_text:I

    invoke-virtual {v2, v8}, Lcom/smartisanos/home/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 499
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 504
    :goto_2
    iget v8, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->systemItemCount:I

    if-lez v8, :cond_3

    .line 505
    sget v8, Lcom/smartisanos/launcher/ResIds$string;->uninstall_multi_system_app_toast_text:I

    invoke-virtual {v2, v8}, Lcom/smartisanos/home/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 506
    .local v6, "text":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 508
    .end local v6    # "text":Ljava/lang/String;
    :cond_3
    new-instance v5, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveMultiAppsOnClickListener;

    iget-object v8, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->itemInfos:Ljava/util/List;

    invoke-direct {v5, p0, v8}, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveMultiAppsOnClickListener;-><init>(Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;Ljava/util/List;)V

    .line 509
    .local v5, "positiveButtonClickListener":Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveMultiAppsOnClickListener;
    sget v8, Lcom/smartisanos/launcher/ResIds$string;->ok:I

    invoke-virtual {v1, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 501
    .end local v5    # "positiveButtonClickListener":Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveMultiAppsOnClickListener;
    :cond_4
    sget v8, Lcom/smartisanos/launcher/ResIds$string;->uninstall_app_dialog_text:I

    invoke-virtual {v2, v8}, Lcom/smartisanos/home/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 502
    new-array v8, v12, [Ljava/lang/Object;

    aput-object v0, v8, v13

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method
