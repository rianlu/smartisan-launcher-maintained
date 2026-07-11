.class Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$2;
.super Ljava/lang/Object;
.source "ShortcutAppsSettingsActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->showShortcuts(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/content/pm/ShortcutInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;


# direct methods
.method constructor <init>(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$2;->this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .locals 0

    .line 173
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p1

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 170
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    check-cast p2, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$2;->compare(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I

    move-result p1

    return p1
.end method
