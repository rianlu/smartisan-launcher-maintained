.class public Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;
.super Lcom/smartisanos/home/settings/BaseActivity;
.source "ShortcutAppsSettingsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppAdapter;,
        Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;,
        Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$ShortcutAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppAdapter;

.field private final allApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private emptyView:Landroid/widget/TextView;

.field private launcherApps:Landroid/content/pm/LauncherApps;

.field private user:Landroid/os/UserHandle;

.field private userManager:Landroid/os/UserManager;

.field private final visibleApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/smartisanos/home/settings/BaseActivity;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->allApps:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->visibleApps:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;Landroid/content/pm/ShortcutInfo;)Z
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->isAdded(Landroid/content/pm/ShortcutInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->id(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;Landroid/content/pm/ShortcutInfo;)Z
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->addShortcut(Landroid/content/pm/ShortcutInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->visibleApps:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;)Landroid/content/pm/LauncherApps;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->launcherApps:Landroid/content/pm/LauncherApps;

    return-object p0
.end method

.method private addShortcut(Landroid/content/pm/ShortcutInfo;)Z
    .locals 9

    .line 226
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->getUserSerial(Landroid/os/UserHandle;)J

    move-result-wide v3

    .line 229
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v5

    .line 230
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v5

    .line 231
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v5, v2

    .line 233
    :cond_1
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 234
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.smartisanos.launcher.ShortcutLaunchActivity"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const-string v7, "smartisan.shortcut.package"

    invoke-virtual {v6, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string v7, "smartisan.shortcut.id"

    invoke-virtual {v6, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v2, "smartisan.shortcut.user_serial"

    invoke-virtual {v6, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 239
    new-instance v2, Lcom/smartisanos/launcher/data/ShortcutInfo;

    invoke-direct {v2}, Lcom/smartisanos/launcher/data/ShortcutInfo;-><init>()V

    .line 240
    iput-object v1, v2, Lcom/smartisanos/launcher/data/ShortcutInfo;->packageName:Ljava/lang/String;

    .line 241
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisanos/launcher/data/ShortcutInfo;->title:Ljava/lang/String;

    .line 242
    iput-object v6, v2, Lcom/smartisanos/launcher/data/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 243
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisanos/launcher/data/ShortcutInfo;->componentName:Ljava/lang/String;

    .line 244
    :cond_2
    iget-object v3, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->launcherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v3, p1, v0}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 245
    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 246
    :cond_3
    invoke-direct {p0, v3}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->toBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v2, Lcom/smartisanos/launcher/data/ShortcutInfo;->icon:Landroid/graphics/Bitmap;

    .line 248
    invoke-direct {p0, p1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->pinShortcut(Landroid/content/pm/ShortcutInfo;)Z

    move-result p1

    if-nez p1, :cond_4

    return v0

    .line 249
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 250
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_INSTALL_SHORTCUT:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    const/4 p1, 0x1

    return p1

    .line 254
    :catchall_0
    move-exception p1

    .line 255
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 256
    return v0
.end method

.method private filter(Ljava/lang/String;)V
    .locals 4

    .line 121
    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->visibleApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 123
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->allApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;->label:Ljava/lang/String;

    .line 125
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;->packageName:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->visibleApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_2
    goto :goto_1

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->adapter:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppAdapter;

    invoke-virtual {v0}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppAdapter;->notifyDataSetChanged()V

    .line 131
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "shortcut_apps_empty"

    goto :goto_2

    :cond_4
    const-string p1, "shortcut_apps_no_search_result"

    :goto_2
    const-string v1, "string"

    invoke-direct {p0, p1, v1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->id(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 132
    return-void
.end method

.method private getUserSerial(Landroid/os/UserHandle;)J
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->userManager:Landroid/os/UserManager;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->userManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    return-wide v0

    .line 284
    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private id(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private isAdded(Landroid/content/pm/ShortcutInfo;)Z
    .locals 7

    .line 208
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 209
    const-string v1, "packageName"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-static {v0}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listShortcuts(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 211
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->getUserSerial(Landroid/os/UserHandle;)J

    move-result-wide v1

    .line 212
    if-eqz v0, :cond_2

    .line 213
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/data/ShortcutInfo;

    .line 214
    iget-object v3, v3, Lcom/smartisanos/launcher/data/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 215
    if-nez v3, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "smartisan.shortcut.id"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "smartisan.shortcut.user_serial"

    .line 217
    const-wide/16 v5, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    const/4 p1, 0x1

    return p1

    .line 218
    :cond_1
    goto :goto_0

    .line 220
    :catchall_0
    move-exception p1

    :cond_2
    nop

    .line 221
    const/4 p1, 0x0

    return p1
.end method

.method public loadApps()Ljava/lang/String;
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :unsupported

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->launcherApps:Landroid/content/pm/LauncherApps;

    if-eqz v0, :unsupported

    :try_start_0
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->user:Landroid/os/UserHandle;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz v0, :loaded

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :loop
    :continue
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :loaded

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    if-eqz v2, :continue

    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :continue

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :continue

    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :has_label

    move-object v4, v3

    goto :make_entry

    :has_label
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :make_entry
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/content/pm/LauncherActivityInfo;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v5, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;

    invoke-direct {v5, v4, v3, v2}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v3, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :loop

    :loaded
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->allApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->allApps:Ljava/util/ArrayList;

    new-instance v2, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$1;-><init>(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;Ljava/text/Collator;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :failed

    const/4 v0, 0x0

    return-object v0

    :failed
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "shortcut_apps_read_failed"

    return-object v0

    :unsupported
    const-string v0, "shortcut_apps_unsupported"

    return-object v0
.end method

.method public completeLoading(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :done

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :success

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->emptyView:Landroid/widget/TextView;

    const-string v1, "string"

    invoke-direct {p0, p1, v1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->id(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :hide_loading

    :success
    const-string p1, "shortcut_apps_search"

    const-string v0, "id"

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->id(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->filter(Ljava/lang/String;)V

    :hide_loading
    const-string p1, "shortcut_apps_loading"

    const-string v0, "id"

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->id(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :done
    return-void
.end method

.method private pinShortcut(Landroid/content/pm/ShortcutInfo;)Z
    .locals 8

    .line 262
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 263
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 264
    const-string v2, "packageName"

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-static {v1}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listShortcuts(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    .line 266
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->getUserSerial(Landroid/os/UserHandle;)J

    move-result-wide v2

    .line 267
    if-eqz v1, :cond_3

    .line 268
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/data/ShortcutInfo;

    .line 269
    iget-object v4, v4, Lcom/smartisanos/launcher/data/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 270
    if-eqz v4, :cond_0

    const-string v5, "smartisan.shortcut.user_serial"

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v7, v2, v5

    if-eqz v7, :cond_1

    goto :goto_0

    .line 271
    :cond_1
    const-string v5, "smartisan.shortcut.id"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 272
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_2
    goto :goto_0

    .line 275
    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_4
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->launcherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v1, v2, v0, p1}, Landroid/content/pm/LauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    const/4 p1, 0x1

    return p1

    .line 278
    :catchall_0
    move-exception p1

    .line 279
    const/4 p1, 0x0

    return p1
.end method

.method private showShortcuts(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;)V
    .locals 6

    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    const/4 v2, 0x0

    const-string v3, "string"

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->launcherApps:Landroid/content/pm/LauncherApps;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->launcherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps;->hasShortcutHostPermission()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 156
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    iget-object v1, p1, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;->packageName:Ljava/lang/String;

    .line 157
    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    move-result-object v0

    .line 158
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->launcherApps:Landroid/content/pm/LauncherApps;

    iget-object v4, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    if-eqz v0, :cond_2

    .line 164
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 165
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 166
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_1
    goto :goto_0

    .line 170
    :cond_2
    new-instance v0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$2;-><init>(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 176
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    const-string p1, "shortcut_apps_none"

    invoke-direct {p0, p1, v3}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->id(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 178
    return-void

    .line 180
    :cond_3
    new-instance v0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$ShortcutAdapter;

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$ShortcutAdapter;-><init>(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;Ljava/util/List;)V

    .line 181
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p1, p1, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;->label:Ljava/lang/String;

    .line 182
    invoke-virtual {v4, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v4, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$3;

    invoke-direct {v4, p0, v1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$3;-><init>(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;Ljava/util/ArrayList;)V

    .line 183
    invoke-virtual {p1, v0, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 199
    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 200
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    goto :goto_1

    .line 201
    :catchall_0
    move-exception p1

    .line 202
    const-string p1, "shortcut_apps_read_failed"

    invoke-direct {p0, p1, v3}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->id(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 204
    :goto_1
    return-void

    .line 152
    :cond_4
    :goto_2
    const-string p1, "shortcut_apps_default_launcher_required"

    invoke-direct {p0, p1, v3}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->id(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 153
    return-void
.end method

.method private toBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 289
    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 290
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 291
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 292
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 293
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 294
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 295
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 296
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 297
    return-object v2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 143
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 135
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 61
    invoke-super {p0, p1}, Lcom/smartisanos/home/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/data/Utils;->applyTransparentStatusBar(Landroid/content/Context;Landroid/view/Window;)V

    .line 63
    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/data/Utils;->setMiuiStatusBarDarkMode(Landroid/app/Activity;Z)Z

    .line 64
    const-string p1, "setting_shortcut_apps"

    const-string v0, "layout"

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->id(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->setContentView(I)V

    .line 65
    const-string p1, "view_title"

    const-string v0, "id"

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->id(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->setupBackBtnOnTitle(I)V

    .line 67
    const-string p1, "shortcut_apps_search"

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->id(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 68
    const-string v1, "shortcut_apps_list"

    invoke-direct {p0, v1, v0}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->id(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 69
    const-string v2, "shortcut_apps_empty"

    invoke-direct {p0, v2, v0}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->id(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->emptyView:Landroid/widget/TextView;

    .line 70
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 71
    new-instance p1, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppAdapter;-><init>(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$1;)V

    iput-object p1, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->adapter:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppAdapter;

    .line 72
    iget-object p1, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->adapter:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 74
    iget-object p1, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 76
    const-string p1, "launcherapps"

    invoke-virtual {p0, p1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->launcherApps:Landroid/content/pm/LauncherApps;

    .line 77
    const-string p1, "user"

    invoke-virtual {p0, p1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->userManager:Landroid/os/UserManager;

    .line 78
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->user:Landroid/os/UserHandle;

    .line 79
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$4;

    invoke-direct {v0, p0}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$4;-><init>(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;)V

    const-string v1, "ShortcutAppsLoader"

    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 80
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 147
    if-ltz p3, :cond_0

    iget-object p1, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->visibleApps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p3, p1, :cond_0

    iget-object p1, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->visibleApps:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;

    invoke-direct {p0, p1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->showShortcuts(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;)V

    .line 148
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 139
    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->filter(Ljava/lang/String;)V

    .line 140
    return-void
.end method
