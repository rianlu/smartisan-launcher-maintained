.class public Lcom/smartisanos/home/net/DownloadSupervisor;
.super Ljava/lang/Object;
.source "DownloadSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;
    }
.end annotation


# static fields
.field public static final EMBEDDED_APK_DL:I = 0x1

.field public static final STATUS_LOSE_FILE:I = 0x66

.field public static final STATUS_NOT_INSTALL:I = 0x65

.field public static final THEME_APK_DL:I = 0x2

.field private static final log:Lcom/smartisanos/launcher/LOG;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/smartisanos/home/net/DownloadSupervisor;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/home/net/DownloadSupervisor;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/smartisanos/home/net/DownloadSupervisor;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method public static cleanDownloadRecord(J)V
    .locals 8
    .param p0, "downloadId"    # J

    .prologue
    .line 111
    invoke-static {}, Lcom/smartisanos/home/net/DownloadSupervisor;->getDownloadManager()Landroid/app/DownloadManager;

    move-result-object v0

    .line 112
    .local v0, "downloadManager":Landroid/app/DownloadManager;
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v4

    invoke-static {v4, p0, p1}, Lcom/smartisanos/home/net/DownloadSupervisor;->queryDownloadStatus(Landroid/content/Context;J)Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;

    move-result-object v3

    .line 113
    .local v3, "status":Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;
    if-eqz v3, :cond_1

    .line 114
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/actions/DownloadReceiver;->getDownloadFile(J)Ljava/io/File;

    move-result-object v1

    .line 115
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 120
    :cond_0
    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide p0, v4, v5

    invoke-virtual {v0, v4}, Landroid/app/DownloadManager;->remove([J)I

    .line 122
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/data/handler/DownloadRecordDB;->getRecordByDL_ID(J)Lcom/smartisanos/launcher/data/handler/DLRecord;

    move-result-object v2

    .line 123
    .local v2, "record":Lcom/smartisanos/launcher/data/handler/DLRecord;
    if-eqz v2, :cond_3

    if-nez v3, :cond_2

    :try_start_force_remove
    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide p0, v4, v5

    invoke-virtual {v0, v4}, Landroid/app/DownloadManager;->remove([J)I

    iget-object v4, v2, Lcom/smartisanos/launcher/data/handler/DLRecord;->file:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :try_end_force_remove
    .catch Ljava/lang/Exception; {:try_start_force_remove .. :try_end_force_remove} :catch_force_remove

    goto :cond_2

    :catch_force_remove
    move-exception v4

    :cond_2
    .line 124
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/data/handler/DownloadRecordDB;->removeRecordByDL_ID(J)V

    .line 126
    :cond_3
    return-void
.end method

.method public static getDownloadManager()Landroid/app/DownloadManager;
    .locals 3

    .prologue
    .line 35
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v0

    .line 36
    .local v0, "application":Lcom/smartisanos/launcher/LauncherApplication;
    const-string v2, "download"

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/LauncherApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    .line 37
    .local v1, "downloadManager":Landroid/app/DownloadManager;
    return-object v1
.end method

.method public static getRecordByTaskName(Ljava/lang/String;)Lcom/smartisanos/launcher/data/handler/DLRecord;
    .locals 1
    .param p0, "taskName"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p0}, Lcom/smartisanos/launcher/data/handler/DownloadRecordDB;->getRecordByTaskName(Ljava/lang/String;)Lcom/smartisanos/launcher/data/handler/DLRecord;

    move-result-object v0

    .line 78
    .local v0, "record":Lcom/smartisanos/launcher/data/handler/DLRecord;
    return-object v0
.end method

.method public static getUnSuccessDL()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/handler/DLRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    const-string v0, "dl_status!=8"

    .line 201
    .local v0, "where":Ljava/lang/String;
    invoke-static {v0}, Lcom/smartisanos/launcher/data/handler/DownloadRecordDB;->list(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static isDownloadStatusFailed(J)Z
    .locals 2
    .param p0, "downloadId"    # J

    .prologue
    .line 176
    invoke-static {p0, p1}, Lcom/smartisanos/home/net/DownloadSupervisor;->queryDownloadStatus(J)I

    move-result v0

    .line 177
    .local v0, "status":I
    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 178
    const/4 v1, 0x1

    .line 180
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDownloadStatusPaused(J)Z
    .locals 2
    .param p0, "downloadId"    # J

    .prologue
    .line 184
    invoke-static {p0, p1}, Lcom/smartisanos/home/net/DownloadSupervisor;->queryDownloadStatus(J)I

    move-result v0

    .line 185
    .local v0, "status":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 186
    const/4 v1, 0x1

    .line 188
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDownloadStatusPending(J)Z
    .locals 2
    .param p0, "downloadId"    # J

    .prologue
    const/4 v1, 0x1

    .line 160
    invoke-static {p0, p1}, Lcom/smartisanos/home/net/DownloadSupervisor;->queryDownloadStatus(J)I

    move-result v0

    .line 161
    .local v0, "status":I
    if-ne v0, v1, :cond_0

    .line 164
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDownloadStatusRunning(J)Z
    .locals 2
    .param p0, "downloadId"    # J

    .prologue
    .line 168
    invoke-static {p0, p1}, Lcom/smartisanos/home/net/DownloadSupervisor;->queryDownloadStatus(J)I

    move-result v0

    .line 169
    .local v0, "status":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 170
    const/4 v1, 0x1

    .line 172
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDownloadStatusSuccessful(J)Z
    .locals 2
    .param p0, "downloadId"    # J

    .prologue
    .line 192
    invoke-static {p0, p1}, Lcom/smartisanos/home/net/DownloadSupervisor;->queryDownloadStatus(J)I

    move-result v0

    .line 193
    .local v0, "status":I
    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 194
    const/4 v1, 0x1

    .line 196
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static queryDownloadStatus(J)I
    .locals 8
    .param p0, "downloadId"    # J

    .prologue
    .line 82
    const-wide/16 v6, 0x0

    cmp-long v5, p0, v6

    if-lez v5, :cond_3

    .line 83
    const/4 v4, -0x1

    .line 84
    .local v4, "status":I
    invoke-static {}, Lcom/smartisanos/home/net/DownloadSupervisor;->getDownloadManager()Landroid/app/DownloadManager;

    move-result-object v1

    .line 85
    .local v1, "downloadManager":Landroid/app/DownloadManager;
    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 86
    .local v3, "query":Landroid/app/DownloadManager$Query;
    const/4 v5, 0x1

    new-array v5, v5, [J

    const/4 v6, 0x0

    aput-wide p0, v5, v6

    invoke-virtual {v3, v5}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v1, v3}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 93
    const-string v5, "status"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 101
    :cond_0
    if-eqz v0, :cond_1

    .line 102
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 107
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "downloadManager":Landroid/app/DownloadManager;
    .end local v3    # "query":Landroid/app/DownloadManager$Query;
    .end local v4    # "status":I
    :cond_1
    :goto_0
    return v4

    .line 98
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "downloadManager":Landroid/app/DownloadManager;
    .restart local v3    # "query":Landroid/app/DownloadManager$Query;
    .restart local v4    # "status":I
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    if-eqz v0, :cond_1

    .line 102
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 101
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_2

    .line 102
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v5

    .line 107
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "downloadManager":Landroid/app/DownloadManager;
    .end local v3    # "query":Landroid/app/DownloadManager$Query;
    .end local v4    # "status":I
    :cond_3
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static queryDownloadStatus(Landroid/content/Context;J)Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "downloadId"    # J

    .prologue
    .line 129
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-lez v5, :cond_0

    if-nez p0, :cond_2

    .line 130
    :cond_0
    const/4 v2, 0x0

    .line 156
    :cond_1
    :goto_0
    return-object v2

    .line 132
    :cond_2
    const-string v5, "download"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    .line 133
    .local v1, "downloadManager":Landroid/app/DownloadManager;
    new-instance v4, Landroid/app/DownloadManager$Query;

    invoke-direct {v4}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 134
    .local v4, "query":Landroid/app/DownloadManager$Query;
    const/4 v0, 0x0

    .line 135
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 137
    .local v2, "downloadStatus":Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;
    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [J

    const/4 v6, 0x0

    aput-wide p1, v5, v6

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 138
    invoke-virtual {v1, v4}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_3

    .line 140
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 141
    invoke-static {p1, p2, v0}, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->getStatus(JLandroid/database/Cursor;)Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 148
    :cond_3
    if-eqz v0, :cond_1

    .line 150
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v3

    .line 152
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 144
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 145
    .restart local v3    # "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 146
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    if-eqz v0, :cond_1

    .line 150
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 151
    :catch_2
    move-exception v3

    .line 152
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 148
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_4

    .line 150
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 153
    :cond_4
    :goto_1
    throw v5

    .line 151
    :catch_3
    move-exception v3

    .line 152
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static requestDownload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)J
    .locals 16
    .param p0, "type"    # I
    .param p1, "taskName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "downloadUrl"    # Ljava/lang/String;
    .param p4, "downloadType"    # I
    .param p5, "md5"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->registerDownloadObserver()V

    .line 42
    const-wide/16 v4, -0x1

    .line 43
    .local v4, "downloadId":J
    invoke-static/range {p1 .. p1}, Lcom/smartisanos/home/net/DownloadSupervisor;->getRecordByTaskName(Ljava/lang/String;)Lcom/smartisanos/launcher/data/handler/DLRecord;

    move-result-object v2

    .line 44
    .local v2, "dlRecord":Lcom/smartisanos/launcher/data/handler/DLRecord;
    if-eqz v2, :cond_0

    .line 45
    iget-wide v12, v2, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_id:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_0

    .line 46
    sget-object v11, Lcom/smartisanos/home/net/DownloadSupervisor;->log:Lcom/smartisanos/launcher/LOG;

    const-string v12, "DEBUG"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "requestDownload return by download id is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-wide v14, v2, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v6, v4

    .line 73
    .end local v4    # "downloadId":J
    .local v6, "downloadId":J
    :goto_0
    return-wide v6

    .line 50
    .end local v6    # "downloadId":J
    .restart local v4    # "downloadId":J
    :cond_0
    invoke-static {}, Lcom/smartisanos/home/net/DownloadSupervisor;->getDownloadManager()Landroid/app/DownloadManager;

    move-result-object v3

    .line 52
    .local v3, "downloadManager":Landroid/app/DownloadManager;
    :try_start_0
    sget-object v11, Lcom/smartisanos/home/net/DownloadSupervisor;->log:Lcom/smartisanos/launcher/LOG;

    const-string v12, "DEBUG"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "requestDownload with url ==> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v10, Landroid/app/DownloadManager$Request;

    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 54
    .local v10, "request":Landroid/app/DownloadManager$Request;
    move/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 55
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 56
    sget-object v11, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v10, v11, v0}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 57
    invoke-virtual {v3, v10}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 61
    .end local v10    # "request":Landroid/app/DownloadManager$Request;
    :goto_1
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-lez v11, :cond_2

    .line 62
    new-instance v9, Lcom/smartisanos/launcher/data/handler/DLRecord;

    invoke-direct {v9}, Lcom/smartisanos/launcher/data/handler/DLRecord;-><init>()V

    .line 63
    .local v9, "record":Lcom/smartisanos/launcher/data/handler/DLRecord;
    move/from16 v0, p0

    iput v0, v9, Lcom/smartisanos/launcher/data/handler/DLRecord;->type:I

    .line 64
    iput-wide v4, v9, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_id:J

    .line 65
    move-object/from16 v0, p1

    iput-object v0, v9, Lcom/smartisanos/launcher/data/handler/DLRecord;->taskName:Ljava/lang/String;

    .line 66
    move-object/from16 v0, p3

    iput-object v0, v9, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_url:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v0, v9, Lcom/smartisanos/launcher/data/handler/DLRecord;->file:Ljava/lang/String;

    .line 67
    const/4 v11, 0x1

    iput v11, v9, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_status:I

    .line 68
    if-eqz p5, :cond_1

    .line 69
    move-object/from16 v0, p5

    iput-object v0, v9, Lcom/smartisanos/launcher/data/handler/DLRecord;->md5:Ljava/lang/String;

    .line 71
    :cond_1
    invoke-static {v9}, Lcom/smartisanos/launcher/data/handler/DownloadRecordDB;->addRecord(Lcom/smartisanos/launcher/data/handler/DLRecord;)J

    .end local v9    # "record":Lcom/smartisanos/launcher/data/handler/DLRecord;
    :cond_2
    move-wide v6, v4

    .line 73
    .end local v4    # "downloadId":J
    .restart local v6    # "downloadId":J
    goto :goto_0

    .line 58
    .end local v6    # "downloadId":J
    .restart local v4    # "downloadId":J
    :catch_0
    move-exception v8

    .line 59
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static resumeDownload(J)Z
    .locals 10
    .param p0, "id"    # J

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 225
    invoke-static {}, Lcom/smartisanos/home/net/DownloadSupervisor;->getDownloadManager()Landroid/app/DownloadManager;

    move-result-object v1

    .line 228
    .local v1, "dm":Landroid/app/DownloadManager;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 229
    .local v0, "clz":Ljava/lang/Class;
    const-string v5, "resumeDownload"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/Long;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 230
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->registerDownloadObserver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v0    # "clz":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .line 233
    :catch_0
    move-exception v2

    .line 234
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_0

    .line 235
    sget-object v5, Lcom/smartisanos/home/net/DownloadSupervisor;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "cannot find method resumeDownload()"

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 237
    :cond_0
    new-array v4, v4, [J

    aput-wide p0, v4, v9

    invoke-static {v4}, Lcom/smartisanos/home/net/DownloadSupervisor;->resumeDownload([J)Z

    move-result v4

    goto :goto_0
.end method

.method public static resumeDownload([J)Z
    .locals 10
    .param p0, "id"    # [J

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 211
    invoke-static {}, Lcom/smartisanos/home/net/DownloadSupervisor;->getDownloadManager()Landroid/app/DownloadManager;

    move-result-object v1

    .line 213
    .local v1, "dm":Landroid/app/DownloadManager;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 214
    .local v0, "claz":Ljava/lang/Class;
    const-string v6, "resumeDownload"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, [J

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 215
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->registerDownloadObserver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v0    # "claz":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .line 218
    :catch_0
    move-exception v2

    .line 219
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v5

    .line 221
    goto :goto_0
.end method
