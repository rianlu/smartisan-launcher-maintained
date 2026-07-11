.class public Lcom/smartisanos/launcher/PinShortcutConfirmActivity;
.super Landroid/app/Activity;
.source "PinShortcutConfirmActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/smartisanos/launcher/PinShortcutConfirmActivity;->finish()V

    .line 23
    return-void

    .line 24
    :cond_0
    :try_start_1
    const-string p1, "launcherapps"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/PinShortcutConfirmActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    if-nez p1, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/smartisanos/launcher/PinShortcutConfirmActivity;->finish()V

    .line 25
    return-void

    .line 26
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/PinShortcutConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/LauncherApps;->getPinItemRequest(Landroid/content/Intent;)Landroid/content/pm/LauncherApps$PinItemRequest;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->isValid()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    goto/16 :goto_3

    .line 28
    :cond_2
    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    if-nez v1, :cond_3

    .line 62
    invoke-virtual {p0}, Lcom/smartisanos/launcher/PinShortcutConfirmActivity;->finish()V

    .line 29
    return-void

    .line 30
    :cond_3
    :try_start_3
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 32
    if-eqz v2, :cond_b

    if-nez v3, :cond_4

    goto/16 :goto_2

    .line 33
    :cond_4
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v4

    .line 34
    if-nez v4, :cond_5

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v4

    .line 35
    :cond_5
    if-nez v4, :cond_6

    move-object v4, v3

    .line 36
    :cond_6
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 37
    invoke-virtual {p0}, Lcom/smartisanos/launcher/PinShortcutConfirmActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.smartisanos.launcher.ShortcutLaunchActivity"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v6, "smartisan.shortcut.package"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v6, "smartisan.shortcut.id"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    nop

    .line 41
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 42
    const-string v6, "user"

    invoke-virtual {p0, v6}, Lcom/smartisanos/launcher/PinShortcutConfirmActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 43
    if-eqz v6, :cond_7

    if-eqz v3, :cond_7

    invoke-virtual {v6, v3}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v6

    goto :goto_0

    .line 44
    :cond_7
    const-wide/16 v6, -0x1

    :goto_0
    const-string v3, "smartisan.shortcut.user_serial"

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 45
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/smartisanos/launcher/ShortcutIconHelper;->loadContactPhoto(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-static {p1}, Lcom/smartisanos/launcher/data/Utils;->drawableToNormalizedShortcutBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    :cond_8
    move-object p1, v3

    const/4 v1, 0x0

    goto :goto_1

    :cond_9
    move-object p1, v1

    .line 48
    :goto_1
    if-nez p1, :cond_icon_ready

    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->getDefaultShortcutIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lcom/smartisanos/launcher/data/Utils;->drawableToNormalizedShortcutBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 49
    :cond_icon_ready
    new-instance v3, Lcom/smartisanos/launcher/data/ShortcutInfo;

    invoke-direct {v3}, Lcom/smartisanos/launcher/data/ShortcutInfo;-><init>()V

    .line 50
    iput-object v2, v3, Lcom/smartisanos/launcher/data/ShortcutInfo;->packageName:Ljava/lang/String;

    .line 51
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/smartisanos/launcher/data/ShortcutInfo;->title:Ljava/lang/String;

    .line 52
    iput-object v5, v3, Lcom/smartisanos/launcher/data/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 53
    iput-object p1, v3, Lcom/smartisanos/launcher/data/ShortcutInfo;->icon:Landroid/graphics/Bitmap;

    .line 54
    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->accept()Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_a

    .line 62
    invoke-virtual {p0}, Lcom/smartisanos/launcher/PinShortcutConfirmActivity;->finish()V

    .line 54
    return-void

    .line 55
    :cond_a
    :try_start_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_INSTALL_SHORTCUT:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v0, v1, p1}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 62
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/PinShortcutConfirmActivity;->finish()V

    .line 32
    return-void

    .line 62
    :cond_c
    :goto_3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/PinShortcutConfirmActivity;->finish()V

    .line 27
    return-void

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 62
    :goto_4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/PinShortcutConfirmActivity;->finish()V

    .line 63
    nop

    .line 64
    return-void

    .line 62
    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lcom/smartisanos/launcher/PinShortcutConfirmActivity;->finish()V

    .line 63
    throw p1
.end method
