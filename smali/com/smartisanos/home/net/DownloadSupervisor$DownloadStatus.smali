.class public Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;
.super Ljava/lang/Object;
.source "DownloadSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/net/DownloadSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadStatus"
.end annotation


# instance fields
.field public bytes_so_far:J

.field public description:Ljava/lang/String;

.field public downloadId:J

.field public local_filename:Ljava/lang/String;

.field public local_uri:Ljava/lang/String;

.field public reason:I

.field public status:I

.field public title:Ljava/lang/String;

.field public total_size:J

.field public uri:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->status:I

    .line 254
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->title:Ljava/lang/String;

    .line 255
    const-string v0, "description"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->description:Ljava/lang/String;

    .line 256
    const-string v0, "uri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->uri:Ljava/lang/String;

    .line 257
    const-string v0, "total_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->total_size:J

    .line 258
    const-string v0, "local_uri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->local_uri:Ljava/lang/String;

    .line 259
    :try_start_local_filename
    const-string v0, "local_filename"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :skip_local_filename

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->local_filename:Ljava/lang/String;
    :try_end_local_filename
    .catch Ljava/lang/Exception; {:try_start_local_filename .. :try_end_local_filename} :catch_local_filename

    goto :skip_local_filename

    :catch_local_filename
    move-exception v0

    :skip_local_filename
    .line 260
    const-string v0, "status"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->status:I

    .line 261
    const-string v0, "reason"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->reason:I

    .line 262
    const-string v0, "bytes_so_far"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->bytes_so_far:J

    .line 263
    return-void
.end method

.method public static getStatus(JLandroid/database/Cursor;)Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;
    .locals 2
    .param p0, "downloadId"    # J
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 266
    new-instance v0, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;

    invoke-direct {v0, p2}, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;-><init>(Landroid/database/Cursor;)V

    .line 267
    .local v0, "downloadStatus":Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;
    iput-wide p0, v0, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->downloadId:J

    .line 268
    return-object v0
.end method


# virtual methods
.method public debug()V
    .locals 6

    .prologue
    .line 288
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-nez v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-static {}, Lcom/smartisanos/home/net/DownloadSupervisor;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "DEBUG"

    const-string v2, "##### DownloadStatus DEBUG #####"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/smartisanos/home/net/DownloadSupervisor;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadId     ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->downloadId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lcom/smartisanos/home/net/DownloadSupervisor;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "title          ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/smartisanos/home/net/DownloadSupervisor;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "description    ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/smartisanos/home/net/DownloadSupervisor;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri            ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->uri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lcom/smartisanos/home/net/DownloadSupervisor;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "total_size     ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->total_size:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/smartisanos/home/net/DownloadSupervisor;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "local_uri      ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->local_uri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/smartisanos/home/net/DownloadSupervisor;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "local_filename ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->local_filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lcom/smartisanos/home/net/DownloadSupervisor;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status         ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lcom/smartisanos/home/net/DownloadSupervisor;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reason         ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->reason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/smartisanos/home/net/DownloadSupervisor;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes_so_far   ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->bytes_so_far:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public downloadProgress()I
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    .line 272
    const/4 v2, 0x0

    .line 273
    .local v2, "progress":I
    const-wide/16 v0, 0x0

    .line 274
    .local v0, "currentProportion":D
    iget-wide v4, p0, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->total_size:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    iget-wide v4, p0, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->bytes_so_far:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 275
    new-instance v3, Ljava/math/BigDecimal;

    iget-wide v4, p0, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->bytes_so_far:J

    long-to-double v4, v4

    iget-wide v6, p0, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->total_size:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    mul-double/2addr v4, v8

    invoke-direct {v3, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v3

    .line 276
    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    .line 277
    const-wide/16 v4, 0x0

    cmpg-double v3, v0, v4

    if-gez v3, :cond_1

    .line 278
    const-wide/16 v0, 0x0

    .line 283
    :cond_0
    :goto_0
    double-to-int v2, v0

    .line 284
    return v2

    .line 279
    :cond_1
    cmpl-double v3, v0, v8

    if-lez v3, :cond_0

    .line 280
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    goto :goto_0
.end method
