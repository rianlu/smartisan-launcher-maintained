.class final Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$1;
.super Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;
.source "RedirectIconDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->updateIcon(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$info:Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V
    .locals 0
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 60
    iput-object p2, p0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$1;->val$info:Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 63
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$1;->val$info:Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    iget-object v15, v2, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    .line 64
    .local v15, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$1;->val$info:Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    iget-object v10, v2, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->componentName:Ljava/lang/String;

    .line 65
    .local v10, "cmp":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName =\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "componentName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " =\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "whereCase":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "redirect_icons"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 74
    .local v11, "cursor":Landroid/database/Cursor;
    const/4 v14, -0x1

    .line 75
    .local v14, "id":I
    if-eqz v11, :cond_1

    .line 76
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    const-string v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 82
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 84
    :cond_1
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 85
    .local v17, "values":Landroid/content/ContentValues;
    const-string v2, "owner_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$1;->val$info:Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    iget-wide v6, v3, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->ownerId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    const-string v2, "packageName"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$1;->val$info:Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    iget-object v3, v3, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v2, "componentName"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$1;->val$info:Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    iget-object v3, v3, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->componentName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "md5"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$1;->val$info:Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    iget-object v3, v3, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->md5:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v2, "last_update_time"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$1;->val$info:Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    iget-object v3, v3, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->lastUpdateTime:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v2, "icon"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$1;->val$info:Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    iget-object v3, v3, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->iconData:[B

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$1;->val$info:Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->drawableName:Ljava/lang/String;

    if-eqz v2, :cond_skip_drawable_name

    const-string v3, "data1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_skip_drawable_name

    .line 91
    if-lez v14, :cond_3

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 94
    .local v16, "selection":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "redirect_icons"

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 95
    .local v12, "iconId":I
    if-lez v12, :cond_2

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$1;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->b:Z

    .line 105
    .end local v12    # "iconId":I
    .end local v16    # "selection":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 99
    :cond_3
    const-string v2, "use_improved_app_icon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$1;->val$info:Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    iget-boolean v4, v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->useImprovedAppIcon:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "redirect_icons"

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v12

    .line 101
    .local v12, "iconId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_2

    .line 102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$1;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->b:Z

    goto :goto_0
.end method
