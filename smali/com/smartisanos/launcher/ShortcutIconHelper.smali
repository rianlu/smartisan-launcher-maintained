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
