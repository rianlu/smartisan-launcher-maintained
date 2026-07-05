.class public Lcom/smartisanos/launcher/ShortcutLaunchActivity;
.super Landroid/app/Activity;
.source "ShortcutLaunchActivity.java"


# static fields
.field public static final EXTRA_ID:Ljava/lang/String; = "smartisan.shortcut.id"

.field public static final EXTRA_PACKAGE:Ljava/lang/String; = "smartisan.shortcut.package"

.field public static final EXTRA_USER_SERIAL:Ljava/lang/String; = "smartisan.shortcut.user_serial"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    :try_start_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/ShortcutLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "smartisan.shortcut.package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {p0}, Lcom/smartisanos/launcher/ShortcutLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "smartisan.shortcut.id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-virtual {p0}, Lcom/smartisanos/launcher/ShortcutLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "smartisan.shortcut.user_serial"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 20
    if-eqz v2, :cond_3

    if-nez v3, :cond_0

    goto :goto_1

    .line 21
    :cond_0
    nop

    .line 22
    const-string p1, "user"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/ShortcutLaunchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 23
    if-eqz p1, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_1

    invoke-virtual {p1, v0, v1}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object p1

    goto :goto_0

    .line 24
    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    :cond_2
    move-object v6, p1

    .line 25
    const-string p1, "launcherapps"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/ShortcutLaunchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/pm/LauncherApps;

    .line 26
    if-eqz v1, :cond_4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 30
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/ShortcutLaunchActivity;->finish()V

    .line 20
    return-void

    .line 27
    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 28
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/ShortcutLaunchActivity;->finish()V

    .line 31
    nop

    .line 32
    return-void

    .line 30
    :catchall_1
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/ShortcutLaunchActivity;->finish()V

    .line 31
    throw p1
.end method
