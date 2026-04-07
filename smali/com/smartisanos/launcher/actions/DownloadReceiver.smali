.class public Lcom/smartisanos/launcher/actions/DownloadReceiver;
.super Ljava/lang/Object;
.source "DownloadReceiver.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static final theme_file_name_prefix:Ljava/lang/String; = "smartisan_theme"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/smartisanos/launcher/actions/DownloadReceiver;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/actions/DownloadReceiver;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkIsApk(Ljava/io/File;)Z
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x1

    .line 122
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 123
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "fileName":Ljava/lang/String;
    const-string v4, ".apk"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 127
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 128
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 135
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    .line 131
    .restart local v0    # "fileName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 135
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static downloadFileExist(J)Z
    .locals 2
    .param p0, "downloadId"    # J

    .prologue
    .line 177
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/actions/DownloadReceiver;->getDownloadFile(J)Ljava/io/File;

    move-result-object v0

    .line 178
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 181
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDownloadFile(J)Ljava/io/File;
    .locals 4
    .param p0, "downloadId"    # J

    .prologue
    .line 145
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v3

    invoke-static {v3, p0, p1}, Lcom/smartisanos/home/net/DownloadSupervisor;->queryDownloadStatus(Landroid/content/Context;J)Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;

    move-result-object v0

    .line 146
    .local v0, "dlStatus":Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;
    iget-object v2, v0, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->local_filename:Ljava/lang/String;

    .line 147
    .local v2, "path":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 148
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDownloadFileUri(J)Landroid/net/Uri;
    .locals 2
    .param p0, "downloadId"    # J

    .prologue
    .line 139
    invoke-static {}, Lcom/smartisanos/home/net/DownloadSupervisor;->getDownloadManager()Landroid/app/DownloadManager;

    move-result-object v0

    .line 140
    .local v0, "downloadManager":Landroid/app/DownloadManager;
    invoke-virtual {v0, p0, p1}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object v1

    .line 141
    .local v1, "uri":Landroid/net/Uri;
    return-object v1
.end method

.method public static handleInstall(J)V
    .locals 6
    .param p0, "downloadId"    # J

    .prologue
    .line 157
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/actions/DownloadReceiver;->getDownloadFileUri(J)Landroid/net/Uri;

    move-result-object v4

    .line 158
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 159
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v2, "install_intent":Landroid/content/Intent;
    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 162
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 163
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/smartisanos/launcher/LauncherApplication;->startActivity(Landroid/content/Intent;)V

    .line 169
    .end local v2    # "install_intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-static {p0, p1}, Lcom/smartisanos/home/net/DownloadSupervisor;->cleanDownloadRecord(J)V

    goto :goto_0
.end method

.method public static noticeTheme(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "themeId"    # Ljava/lang/String;

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_component_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v1, "package:com.smartisanos.launcher.theme"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 118
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/LauncherApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    return-void
.end method

.method public static onDownloadComplete(Landroid/content/Intent;)V
    .locals 20
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    const-string v16, "extra_download_id"

    const-wide/16 v18, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 36
    .local v6, "downloadId":J
    const-wide/16 v16, 0x0

    cmp-long v16, v6, v16

    if-gtz v16, :cond_1

    .line 37
    sget-object v16, Lcom/smartisanos/launcher/actions/DownloadReceiver;->log:Lcom/smartisanos/launcher/LOG;

    const-string v17, "DEBUG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "illegal download id ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 40
    :cond_1
    invoke-static {v6, v7}, Lcom/smartisanos/launcher/data/handler/DownloadRecordDB;->getRecordByDL_ID(J)Lcom/smartisanos/launcher/data/handler/DLRecord;

    move-result-object v5

    .line 41
    .local v5, "downloadRecord":Lcom/smartisanos/launcher/data/handler/DLRecord;
    if-eqz v5, :cond_0

    .line 45
    sget-object v16, Lcom/smartisanos/launcher/actions/DownloadReceiver;->log:Lcom/smartisanos/launcher/LOG;

    const-string v17, "DEBUG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onDownloadComplete ==> "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {v6, v7}, Lcom/smartisanos/home/net/DownloadSupervisor;->queryDownloadStatus(J)I

    move-result v11

    .line 48
    .local v11, "status":I
    packed-switch v11, :pswitch_data_0

    .line 59
    :cond_2
    :pswitch_1
    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v11, v0, :cond_3

    .line 61
    sget-object v16, Lcom/smartisanos/launcher/actions/DownloadReceiver;->log:Lcom/smartisanos/launcher/LOG;

    const-string v17, "DEBUG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onDownloadComplete status ==> "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {v6, v7}, Lcom/smartisanos/home/net/DownloadSupervisor;->cleanDownloadRecord(J)V

    .line 63
    iget-object v10, v5, Lcom/smartisanos/launcher/data/handler/DLRecord;->taskName:Ljava/lang/String;

    .line 64
    .local v10, "pkg":Ljava/lang/String;
    invoke-static {v10}, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->isNeedDownloadApp(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 65
    invoke-static {v10}, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->getEmbeddedApp(Ljava/lang/String;)Lcom/smartisanos/home/apps/EmbeddedApp;

    move-result-object v16

    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/smartisanos/home/apps/EmbeddedApp;->name(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, "appName":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v16

    if-eqz v16, :cond_0

    .line 67
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v16

    const v17, 0x7f080049

    invoke-virtual/range {v16 .. v17}, Lcom/smartisanos/home/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 68
    .local v9, "msg":Ljava/lang/String;
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v4, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 69
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v9, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    .line 70
    .local v14, "toast":Landroid/widget/Toast;
    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 71
    sget-object v16, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->NEED_DOWNLOAD:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    move-object/from16 v0, v16

    invoke-static {v10, v0}, Lcom/smartisanos/launcher/data/Utils;->updateDownloadCellsState(Ljava/lang/String;Lcom/smartisanos/launcher/view/DownloadView$DownloadState;)V

    goto/16 :goto_0

    .line 53
    .end local v4    # "appName":Ljava/lang/String;
    .end local v9    # "msg":Ljava/lang/String;
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v14    # "toast":Landroid/widget/Toast;
    :pswitch_2
    invoke-static {v6, v7}, Lcom/smartisanos/home/net/DownloadSupervisor;->resumeDownload(J)Z

    move-result v16

    if-eqz v16, :cond_2

    goto/16 :goto_0

    .line 76
    :cond_3
    iget v15, v5, Lcom/smartisanos/launcher/data/handler/DLRecord;->type:I

    .line 77
    .local v15, "type":I
    invoke-static {v6, v7}, Lcom/smartisanos/launcher/actions/DownloadReceiver;->getDownloadFileUri(J)Landroid/net/Uri;

    move-result-object v18

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    if-nez v18, :cond_6

    :cond_8
    invoke-static {v6, v7}, Lcom/smartisanos/launcher/actions/DownloadReceiver;->getDownloadFile(J)Ljava/io/File;

    move-result-object v8

    .line 78
    .local v8, "file":Ljava/io/File;
    invoke-static {v8}, Lcom/smartisanos/launcher/actions/DownloadReceiver;->checkIsApk(Ljava/io/File;)Z

    move-result v16

    if-nez v16, :cond_6

    .line 79
    sget-object v16, Lcom/smartisanos/launcher/actions/DownloadReceiver;->log:Lcom/smartisanos/launcher/LOG;

    const-string v17, "DEBUG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "download failed ==> "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v5, Lcom/smartisanos/launcher/data/handler/DLRecord;->taskName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    if-eqz v8, :cond_4

    .line 81
    sget-object v16, Lcom/smartisanos/launcher/actions/DownloadReceiver;->log:Lcom/smartisanos/launcher/LOG;

    const-string v17, "DEBUG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "download failed ==> "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_4
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v16

    const v17, 0x7f080049

    invoke-virtual/range {v16 .. v17}, Lcom/smartisanos/home/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 84
    .restart local v9    # "msg":Ljava/lang/String;
    const-string v4, ""

    .line 85
    .restart local v4    # "appName":Ljava/lang/String;
    iget-object v10, v5, Lcom/smartisanos/launcher/data/handler/DLRecord;->taskName:Ljava/lang/String;

    .line 86
    .restart local v10    # "pkg":Ljava/lang/String;
    invoke-static {v10}, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->isNeedDownloadApp(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 87
    invoke-static {v10}, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->getEmbeddedApp(Ljava/lang/String;)Lcom/smartisanos/home/apps/EmbeddedApp;

    move-result-object v16

    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/smartisanos/home/apps/EmbeddedApp;->name(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 88
    sget-object v16, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->NEED_DOWNLOAD:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    move-object/from16 v0, v16

    invoke-static {v10, v0}, Lcom/smartisanos/launcher/data/Utils;->updateDownloadCellsState(Ljava/lang/String;Lcom/smartisanos/launcher/view/DownloadView$DownloadState;)V

    .line 90
    :cond_5
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v4, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 91
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 92
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v9, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    .line 93
    .restart local v14    # "toast":Landroid/widget/Toast;
    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 94
    invoke-static {v6, v7}, Lcom/smartisanos/home/net/DownloadSupervisor;->cleanDownloadRecord(J)V

    .line 95
    iget-object v13, v5, Lcom/smartisanos/launcher/data/handler/DLRecord;->taskName:Ljava/lang/String;

    .line 96
    .local v13, "themeId":Ljava/lang/String;
    const-string v16, "com.smartisanos.home.THEME_DOWNLOAD_FAILED"

    move-object/from16 v0, v16

    invoke-static {v0, v13}, Lcom/smartisanos/launcher/actions/DownloadReceiver;->noticeTheme(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 99
    .end local v4    # "appName":Ljava/lang/String;
    .end local v9    # "msg":Ljava/lang/String;
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v13    # "themeId":Ljava/lang/String;
    .end local v14    # "toast":Landroid/widget/Toast;
    :cond_6
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 100
    iget-object v13, v5, Lcom/smartisanos/launcher/data/handler/DLRecord;->taskName:Ljava/lang/String;

    .line 101
    .restart local v13    # "themeId":Ljava/lang/String;
    invoke-static {v13}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeById(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v12

    .line 102
    .local v12, "theme":Lcom/smartisanos/launcher/theme/Theme;
    const/16 v16, 0x6b

    move/from16 v0, v16

    iput v0, v12, Lcom/smartisanos/launcher/theme/Theme;->status:I

    .line 103
    const-string v16, "com.smartisanos.home.THEME_DOWNLOAD_FINISH"

    move-object/from16 v0, v16

    invoke-static {v0, v13}, Lcom/smartisanos/launcher/actions/DownloadReceiver;->noticeTheme(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {v6, v7}, Lcom/smartisanos/launcher/actions/DownloadReceiver;->handleInstall(J)V

    goto/16 :goto_0

    .line 107
    .end local v12    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    .end local v13    # "themeId":Ljava/lang/String;
    :cond_7
    iget-object v10, v5, Lcom/smartisanos/launcher/data/handler/DLRecord;->taskName:Ljava/lang/String;

    .line 108
    .restart local v10    # "pkg":Ljava/lang/String;
    sget-object v16, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->NEED_DOWNLOAD:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    move-object/from16 v0, v16

    invoke-static {v10, v0}, Lcom/smartisanos/launcher/data/Utils;->updateDownloadCellsState(Ljava/lang/String;Lcom/smartisanos/launcher/view/DownloadView$DownloadState;)V

    .line 109
    invoke-static {v6, v7}, Lcom/smartisanos/launcher/actions/DownloadReceiver;->handleInstall(J)V

    goto/16 :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
