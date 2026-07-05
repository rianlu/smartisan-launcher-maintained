.class public Lcom/smartisanos/launcher/actions/ShortcutAction;
.super Ljava/lang/Object;
.source "ShortcutAction.java"


.field public static final WECHAT:Ljava/lang/String; = "com.tencent.mm"

.field private static final log:Lcom/smartisanos/launcher/LOG;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/smartisanos/launcher/actions/ShortcutAction;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/actions/ShortcutAction;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureValidName(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 105
    if-nez p2, :cond_0

    .line 107
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 108
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 109
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .end local v0    # "info":Landroid/content/pm/ActivityInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    move-object v3, p2

    .line 114
    :goto_0
    return-object v3

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, ""

    goto :goto_0
.end method

.method private static getShortcutInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)Lcom/smartisanos/launcher/data/ShortcutInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "launchIntent"    # Landroid/content/Intent;

    .prologue
    .line 118
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 119
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    :cond_0
    :goto_0
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/actions/ShortcutAction;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/smartisanos/launcher/data/ShortcutInfo;

    move-result-object v0

    .line 127
    .local v0, "info":Lcom/smartisanos/launcher/data/ShortcutInfo;
    if-nez v0, :cond_2

    .line 128
    const/4 v0, 0x0

    .line 133
    .end local v0    # "info":Lcom/smartisanos/launcher/data/ShortcutInfo;
    :goto_1
    return-object v0

    .line 120
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    const/high16 v2, 0x10200000

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 130
    .restart local v0    # "info":Lcom/smartisanos/launcher/data/ShortcutInfo;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "pkg":Ljava/lang/String;
    iput-object v1, v0, Lcom/smartisanos/launcher/data/ShortcutInfo;->packageName:Ljava/lang/String;

    .line 132
    iget-object v2, v0, Lcom/smartisanos/launcher/data/ShortcutInfo;->title:Ljava/lang/String;

    invoke-static {p0, p2, v2}, Lcom/smartisanos/launcher/actions/ShortcutAction;->ensureValidName(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/smartisanos/launcher/data/ShortcutInfo;->title:Ljava/lang/String;

    goto :goto_1
.end method

.method public static handleInstallShortcut(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "action":Ljava/lang/String;
    const-string v6, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 78
    :goto_0
    return-void

    .line 52
    :cond_0
    const-string v6, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 53
    .local v1, "launchIntent":Landroid/content/Intent;
    if-nez v1, :cond_1

    .line 54
    sget-object v6, Lcom/smartisanos/launcher/actions/ShortcutAction;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "INSTALL_SHORTCUT failed, lose EXTRA_SHORTCUT_INTENT !"

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_1
    const-string v6, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v1, v6}, Lcom/smartisanos/launcher/actions/ShortcutAction;->ensureValidName(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "name":Ljava/lang/String;
    sget-object v6, Lcom/smartisanos/launcher/actions/ShortcutAction;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleInstallShortcut ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 59
    sget-object v6, Lcom/smartisanos/launcher/actions/ShortcutAction;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lunch intent ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 60
    invoke-static {p0, p1, v1}, Lcom/smartisanos/launcher/actions/ShortcutAction;->getShortcutInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)Lcom/smartisanos/launcher/data/ShortcutInfo;

    move-result-object v5

    .line 61
    .local v5, "shortcutInfo":Lcom/smartisanos/launcher/data/ShortcutInfo;
    if-nez v5, :cond_2

    .line 62
    sget-object v6, Lcom/smartisanos/launcher/actions/ShortcutAction;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "handleInstallShortcut failed by shortcutInfo is null"

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_2
    iget-object v4, v5, Lcom/smartisanos/launcher/data/ShortcutInfo;->packageName:Ljava/lang/String;

    .line 66
    .local v4, "pkg":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 67
    sget-object v6, Lcom/smartisanos/launcher/actions/ShortcutAction;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "handleInstallShortcut return by pkg is null"

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_3
    invoke-static {v4}, Lcom/smartisanos/launcher/actions/ShortcutAction;->isSupported(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 71
    sget-object v6, Lcom/smartisanos/launcher/actions/ShortcutAction;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "don\'t support shortcut ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 74
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v3, "params":Ljava/util/ArrayList;
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v6, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_INSTALL_SHORTCUT:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public static handleUninstallShortcut(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "action":Ljava/lang/String;
    const-string v5, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 98
    :goto_0
    return-void

    .line 86
    :cond_0
    const-string v5, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 87
    .local v4, "shortcutIntent":Landroid/content/Intent;
    const-string v5, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "name":Ljava/lang/String;
    const-string v5, "duplicate"

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 89
    .local v1, "duplicate":Z
    if-eqz v2, :cond_1

    if-nez v4, :cond_2

    .line 90
    :cond_1
    sget-object v5, Lcom/smartisanos/launcher/actions/ShortcutAction;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleUninstallShortcut return by ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v3, "params":Ljava/util/ArrayList;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v5, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UNINSTALL_SHORTCUT:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private static infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/smartisanos/launcher/data/ShortcutInfo;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 151
    const-string v13, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 152
    .local v9, "intent":Landroid/content/Intent;
    const-string v13, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 153
    .local v10, "name":Ljava/lang/String;
    const-string v13, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 154
    .local v1, "bitmap":Landroid/os/Parcelable;
    if-nez v9, :cond_0

    .line 156
    sget-object v13, Lcom/smartisanos/launcher/actions/ShortcutAction;->log:Lcom/smartisanos/launcher/LOG;

    const-string v14, "Can\'t construct ShorcutInfo with null intent"

    invoke-virtual {v13, v14}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 157
    const/4 v8, 0x0

    .line 187
    :goto_0
    return-object v8

    .line 160
    :cond_0
    const/4 v5, 0x0

    .line 161
    .local v5, "icon":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    instance-of v13, v1, Landroid/graphics/Bitmap;

    if-eqz v13, :cond_3

    move-object v5, v1

    .line 162
    check-cast v5, Landroid/graphics/Bitmap;

    .line 179
    :cond_1
    :goto_1
    move-object/from16 v13, p0

    invoke-static {v13, v9}, Lcom/smartisanos/launcher/ShortcutIconHelper;->loadContactPhoto(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v13

    if-eqz v13, :cond_contact_photo_done

    move-object v5, v13

    :cond_contact_photo_done
    new-instance v8, Lcom/smartisanos/launcher/data/ShortcutInfo;

    invoke-direct {v8}, Lcom/smartisanos/launcher/data/ShortcutInfo;-><init>()V

    .line 180
    .local v8, "info":Lcom/smartisanos/launcher/data/ShortcutInfo;
    if-nez v5, :cond_2

    .line 181
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->getDefaultShortcutIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 182
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/smartisanos/launcher/data/Utils;->drawableToBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 184
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    iput-object v5, v8, Lcom/smartisanos/launcher/data/ShortcutInfo;->icon:Landroid/graphics/Bitmap;

    .line 185
    iput-object v10, v8, Lcom/smartisanos/launcher/data/ShortcutInfo;->title:Ljava/lang/String;

    .line 186
    iput-object v9, v8, Lcom/smartisanos/launcher/data/ShortcutInfo;->intent:Landroid/content/Intent;

    goto :goto_0

    .line 164
    .end local v8    # "info":Lcom/smartisanos/launcher/data/ShortcutInfo;
    :cond_3
    const-string v13, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 165
    .local v4, "extra":Landroid/os/Parcelable;
    if-eqz v4, :cond_1

    instance-of v13, v4, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v13, :cond_1

    .line 167
    :try_start_0
    move-object v0, v4

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v6, v0

    .line 168
    .local v6, "iconResource":Landroid/content/Intent$ShortcutIconResource;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 169
    .local v11, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v13, v6, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v12

    .line 170
    .local v12, "resources":Landroid/content/res/Resources;
    iget-object v13, v6, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 171
    .local v7, "id":I
    invoke-static {v12, v7}, Lcom/smartisanos/launcher/data/Utils;->getShortcutResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 172
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/smartisanos/launcher/data/Utils;->drawableToBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 173
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "iconResource":Landroid/content/Intent$ShortcutIconResource;
    .end local v7    # "id":I
    .end local v11    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v12    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v3

    .line 174
    .local v3, "e":Ljava/lang/Exception;
    sget-object v13, Lcom/smartisanos/launcher/actions/ShortcutAction;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not load shortcut icon: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static isSupported(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 33
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isValidShortcutLaunchIntent(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "launchIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    .line 137
    if-eqz p0, :cond_0

    const-string v1, "android.intent.action.MAIN"

    .line 138
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    const-string v1, "android.intent.category.LAUNCHER"

    .line 142
    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 144
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 147
    :cond_0
    return v0
.end method
