.class Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener;
.super Ljava/lang/Object;
.source "UninstallApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveSingleAppOnClickListener"
.end annotation


# instance fields
.field private packageName:Ljava/lang/String;

.field final synthetic this$1:Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;Lcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 1
    .param p2, "item"    # Lcom/smartisanos/launcher/data/ItemInfo;

    .prologue
    .line 553
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener;->this$1:Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    iget-object v0, p2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener;->packageName:Ljava/lang/String;

    .line 555
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 22
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 561
    invoke-static {}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$100()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 637
    :goto_0
    return-void

    .line 570
    :cond_0
    sget-boolean v18, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v18, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v18

    const-string v19, "DEBUG"

    const-string v20, "PositiveButton click"

    invoke-virtual/range {v18 .. v20}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener;->this$1:Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->access$600(Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v11

    .line 572
    .local v11, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v11, :cond_2

    .line 573
    goto :cond_3

    :cond_2
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$102(Z)Z

    goto :goto_0

    .line 576
    :cond_3
    .line 577
    iget-byte v0, v11, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    move-object v10, v11

    .line 578
    check-cast v10, Lcom/smartisanos/launcher/data/ShortcutInfo;

    .line 579
    .local v10, "info":Lcom/smartisanos/launcher/data/ShortcutInfo;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 580
    .local v15, "params":Ljava/util/ArrayList;
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    sget-object v18, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UNINSTALL_SHORTCUT:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v15}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 585
    .end local v10    # "info":Lcom/smartisanos/launcher/data/ShortcutInfo;
    .end local v15    # "params":Ljava/util/ArrayList;
    :cond_4
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v18

    const-string v19, "device_policy"

    invoke-virtual/range {v18 .. v19}, Lcom/smartisanos/home/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DevicePolicyManager;

    .line 586
    .local v8, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v8}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v14

    .line 587
    .local v14, "names":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener;->this$1:Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->access$600(Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v12, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 588
    .local v12, "mPkg":Ljava/lang/String;
    const/4 v5, 0x0

    .line 589
    .local v5, "cName":Landroid/content/ComponentName;
    if-eqz v14, :cond_6

    .line 590
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 591
    .local v13, "name":Landroid/content/ComponentName;
    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    .line 592
    .local v16, "pkg":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 593
    move-object v5, v13

    .line 598
    .end local v13    # "name":Landroid/content/ComponentName;
    .end local v16    # "pkg":Ljava/lang/String;
    :cond_6
    if-eqz v5, :cond_7

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener;->this$1:Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->access$600(Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 600
    .local v17, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener;->this$1:Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->access$600(Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    .line 602
    .local v7, "cmpName":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v18

    new-instance v19, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v7}, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener$1;-><init>(Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Lcom/smartisanos/home/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 613
    sget-object v18, Lcom/smartisanos/launcher/actions/UninstallApp;->mUninstallDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 616
    .end local v7    # "cmpName":Ljava/lang/String;
    .end local v17    # "pkgName":Ljava/lang/String;
    :cond_7
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$102(Z)Z

    .line 617
    sget-object v18, Lcom/smartisanos/launcher/actions/UninstallApp;->mUninstallDialog:Landroid/app/AlertDialog;

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 618
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v3

    .line 619
    .local v3, "activity":Lcom/smartisanos/home/Launcher;
    invoke-virtual {v3}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v9

    .line 620
    .local v9, "handler":Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener;->this$1:Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;->access$600(Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget-byte v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    move/from16 v18, v0

    if-nez v18, :cond_9

    .line 621
    sget-boolean v18, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v18, :cond_8

    invoke-static {}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v18

    const-string v19, "DEBUG"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "am.unInstallPackage packageName ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/smartisanos/launcher/LauncherModel;->removePackage(Ljava/lang/String;)V

    .line 623
    new-instance v4, Landroid/content/pm/ApplicationManager;

    invoke-direct {v4, v3, v9}, Landroid/content/pm/ApplicationManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 624
    .local v4, "am":Landroid/content/pm/ApplicationManager;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 625
    .restart local v15    # "params":Ljava/util/ArrayList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    sget-object v18, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_HANDLE_UNINSTALL:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v15}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 629
    sget-object v18, Lcom/smartisanos/launcher/actions/UninstallApp;->mUninstallDialog:Landroid/app/AlertDialog;

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 630
    sget-object v18, Lcom/smartisanos/launcher/actions/UninstallApp;->mUninstallDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->dismiss()V

    .line 631
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$102(Z)Z

    goto/16 :goto_0

    .line 633
    .end local v4    # "am":Landroid/content/pm/ApplicationManager;
    .end local v15    # "params":Ljava/util/ArrayList;
    :cond_9
    invoke-static {}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v18

    const-string v19, "error ! handle shortcut logic !"

    invoke-virtual/range {v18 .. v19}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 635
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "don\'t support shortcut now !"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18
.end method
