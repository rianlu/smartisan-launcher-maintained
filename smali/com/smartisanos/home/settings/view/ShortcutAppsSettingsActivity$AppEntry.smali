.class final Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;
.super Ljava/lang/Object;
.source "ShortcutAppsSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AppEntry"
.end annotation


# instance fields
.field final icon:Landroid/graphics/drawable/Drawable;

.field final label:Ljava/lang/String;

.field final packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;->label:Ljava/lang/String;

    .line 363
    iput-object p2, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;->packageName:Ljava/lang/String;

    .line 364
    iput-object p3, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 365
    return-void
.end method
