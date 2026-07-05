.class public final Lcom/smartisanos/launcher/ShortcutIconHelper;
.super Ljava/lang/Object;
.source "ShortcutIconHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadContactPhoto(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 3

    .line 16
    const/4 v0, 0x0

    if-eqz p0, :cond_9

    if-nez p1, :cond_0

    goto :goto_6

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 18
    if-nez p1, :cond_1

    return-object v0

    .line 19
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 20
    if-eqz v1, :cond_8

    const-string v2, "contacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_2

    goto :goto_5

    .line 21
    :cond_2
    nop

    .line 23
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 24
    if-nez p0, :cond_4

    .line 30
    if-eqz p0, :cond_3

    .line 31
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 24
    :cond_3
    :goto_0
    return-object v0

    .line 25
    :cond_4
    :try_start_2
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 30
    if-eqz p0, :cond_5

    .line 31
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 25
    :cond_5
    :goto_1
    return-object p1

    .line 26
    :catchall_2
    move-exception p1

    goto :goto_2

    :catchall_3
    move-exception p1

    move-object p0, v0

    .line 27
    :goto_2
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 28
    nop

    .line 30
    if-eqz p0, :cond_6

    .line 31
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception p0

    .line 28
    :cond_6
    :goto_3
    return-object v0

    .line 30
    :catchall_5
    move-exception p1

    if-eqz p0, :cond_7

    .line 31
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_4

    :catchall_6
    move-exception p0

    .line 33
    :cond_7
    :goto_4
    throw p1

    .line 20
    :cond_8
    :goto_5
    return-object v0

    .line 16
    :cond_9
    :goto_6
    return-object v0
.end method

.method public static syncPinnedShortcutsAfterRemove(Landroid/content/Context;Lcom/smartisanos/launcher/data/ShortcutInfo;)V
    .locals 14

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_return

    if-eqz p1, :cond_return

    if-nez p0, :cond_context_ready

    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object p0

    :cond_context_ready
    if-eqz p0, :cond_return

    iget-object v1, p1, Lcom/smartisanos/launcher/data/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_return

    const-string v0, "smartisan.shortcut.package"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "smartisan.shortcut.id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_return

    if-eqz v3, :cond_return

    const-string v0, "smartisan.shortcut.user_serial"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v0, "launcherapps"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/LauncherApps;

    if-eqz v6, :cond_return

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-gez v0, :cond_lookup_user

    goto :cond_user_ready

    :cond_lookup_user
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    if-eqz v8, :cond_user_ready

    invoke-virtual {v8, v4, v5}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v7

    :cond_user_ready
    if-eqz v7, :cond_my_user

    goto :cond_user_resolved

    :cond_my_user
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    :cond_user_resolved
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v0, "packageName"

    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listShortcuts(Ljava/util/Map;)Ljava/util/List;

    move-result-object v8

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz v8, :cond_pin

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_loop
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_pin

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/ShortcutInfo;

    iget-object v1, v1, Lcom/smartisanos/launcher/data/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v1, :goto_loop

    const-string v0, "smartisan.shortcut.package"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "smartisan.shortcut.id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :goto_loop

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :goto_loop

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_check_user

    goto :goto_loop

    :cond_check_user
    const-string v0, "smartisan.shortcut.user_serial"

    const-wide/16 v8, -0x1

    invoke-virtual {v1, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v0, v4, v8

    if-eqz v0, :cond_add_keep_id

    goto :goto_loop

    :cond_add_keep_id
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_add

    goto :goto_loop

    :cond_add
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_loop

    :cond_pin
    invoke-virtual {v6, v2, v10, v7}, Landroid/content/pm/LauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_return
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
