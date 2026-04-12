.class public Lcom/smartisan/updater/HttpGetData;
.super Ljava/lang/Object;
.source "HttpGetData.java"


# static fields
.field private static final RETRY_TIMES:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeHttpGet(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v3, 0x0

    .line 35
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, "Url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 37
    .local v1, "connection":Ljava/net/URLConnection;
    :try_start_1
    const-string v4, "User-Agent"

    const-string v5, "SmartisanLauncherMaintained"

    invoke-virtual {v1, v4, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v4, "Accept"

    const-string v5, "application/vnd.github+json"

    invoke-virtual {v1, v4, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    move-object v4, v3

    .line 41
    .end local v0    # "Url":Ljava/net/URL;
    .end local v1    # "connection":Ljava/net/URLConnection;
    :goto_0
    return-object v4

    .line 40
    :catch_0
    move-exception v2

    .line 41
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public executeHttpGetWithRetry(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 13
    const/4 v0, 0x0

    .line 14
    .local v0, "count":I
    const/4 v1, 0x0

    .line 16
    .local v1, "inStream":Ljava/io/InputStream;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 17
    :cond_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    invoke-virtual {p0, p1}, Lcom/smartisan/updater/HttpGetData;->executeHttpGet(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    .line 26
    :cond_1
    return-object v1
.end method
