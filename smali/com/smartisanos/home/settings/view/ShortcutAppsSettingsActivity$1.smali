.class Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$1;
.super Ljava/lang/Object;
.source "ShortcutAppsSettingsActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;->loadApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

.field final synthetic val$collator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;Ljava/text/Collator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$1;->this$0:Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity;

    iput-object p2, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$1;->val$collator:Ljava/text/Collator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;)I
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$1;->val$collator:Ljava/text/Collator;

    iget-object p1, p1, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;->label:Ljava/lang/String;

    iget-object p2, p2, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 108
    check-cast p1, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;

    check-cast p2, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$1;->compare(Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;Lcom/smartisanos/home/settings/view/ShortcutAppsSettingsActivity$AppEntry;)I

    move-result p1

    return p1
.end method
