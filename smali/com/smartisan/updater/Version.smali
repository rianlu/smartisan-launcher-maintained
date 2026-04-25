.class public Lcom/smartisan/updater/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field private static final HAND_IN_HAND_DEFAULT_APK_SIZE:I = 0x3

.field private static final JSON_ITEM_FORCE:Ljava/lang/String; = "force"

.field private static final JSON_ITEM_OTA_UPDATE:Ljava/lang/String; = "ota_update"

.field private static final JSON_ITEM_SIZE:Ljava/lang/String; = "size"

.field private static final UPDATE_FLAG_ON:Ljava/lang/String; = "on"


# instance fields
.field private code:I

.field private mForceUpdate:Z

.field private mOtaUpdate:Z

.field private md5Str:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private needUpdate:Z

.field private releaseNotes:Ljava/lang/String;

.field private size:J

.field private updateUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Lcom/smartisan/updater/Version;->mOtaUpdate:Z

    .line 17
    iput-boolean v0, p0, Lcom/smartisan/updater/Version;->mForceUpdate:Z

    .line 37
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "needUpdate"    # Z
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "code"    # I
    .param p4, "updateUrl"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Lcom/smartisan/updater/Version;->mOtaUpdate:Z

    .line 17
    iput-boolean v0, p0, Lcom/smartisan/updater/Version;->mForceUpdate:Z

    .line 29
    iput-boolean p1, p0, Lcom/smartisan/updater/Version;->needUpdate:Z

    .line 30
    iput-object p2, p0, Lcom/smartisan/updater/Version;->name:Ljava/lang/String;

    .line 31
    iput p3, p0, Lcom/smartisan/updater/Version;->code:I

    .line 32
    iput-object p4, p0, Lcom/smartisan/updater/Version;->updateUrl:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private static buildProxyDownloadUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 34
    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    .line 35
    :cond_0
    const-string v0, "https://gh.llkk.cc/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 36
    :cond_1
    const-string v0, "https://github.com/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://gh.llkk.cc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 39
    :cond_2
    return-object p0
.end method

.method private static buildVersionCode(Ljava/lang/String;)I
    .locals 8
    .param p0, "versionName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-static {p0}, Lcom/smartisan/updater/Version;->normalizeVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "normalized":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    .line 42
    :cond_0
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "parts":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 44
    .local v4, "index":I
    :goto_0
    array-length v1, v2

    if-ge v4, v1, :cond_2

    .line 45
    aget-object v1, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 46
    .local v5, "part":I
    const/16 v1, 0x63

    if-le v5, v1, :cond_1

    const/16 v5, 0x63

    .line 47
    :cond_1
    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v3, v5

    .line 48
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 50
    .end local v5    # "part":I
    :cond_2
    return v3
.end method

.method private static compareVersionNames(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p0, "remoteVersion"    # Ljava/lang/String;
    .param p1, "currentVersion"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0
    const/4 v10, -0x1
    const/4 v9, 0x1

    .line 51
    invoke-static {p0}, Lcom/smartisan/updater/Version;->normalizeVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "normalizedRemote":Ljava/lang/String;
    invoke-static {p1}, Lcom/smartisan/updater/Version;->normalizeVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "normalizedCurrent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v11

    :cond_0
    return v10

    .line 56
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v9

    .line 57
    :cond_2
    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "remoteParts":[Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "currentParts":[Ljava/lang/String;
    array-length v5, v3

    .line 60
    .local v5, "remoteLength":I
    array-length v6, v4

    .line 61
    .local v6, "currentLength":I
    if-ge v5, v6, :cond_3

    move v7, v6

    .line 62
    .local v7, "maxLength":I
    :goto_0
    const/4 v8, 0x0

    .line 63
    .local v8, "index":I
    :goto_1
    if-ge v8, v7, :cond_8

    .line 64
    if-ge v8, v5, :cond_4

    aget-object v2, v3, v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 65
    .local v2, "remotePart":I
    :goto_2
    if-ge v8, v6, :cond_5

    aget-object p0, v4, v8

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 66
    .local p0, "currentPart":I
    :goto_3
    if-eq v2, p0, :cond_7

    .line 67
    if-le v2, p0, :cond_6

    return v9

    .line 61
    .end local v7    # "maxLength":I
    .end local v8    # "index":I
    .end local v2    # "remotePart":I
    .end local p0    # "currentPart":I
    :cond_3
    move v7, v5

    goto :goto_0

    .line 64
    .restart local v7    # "maxLength":I
    .restart local v8    # "index":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 65
    .restart local v2    # "remotePart":I
    :cond_5
    const/4 p0, 0x0

    goto :goto_3

    .line 69
    .restart local p0    # "currentPart":I
    :cond_6
    return v10

    .line 71
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 74
    .end local v2    # "remotePart":I
    .end local p0    # "currentPart":I
    :cond_8
    return v11
.end method

.method private static normalizeVersionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "versionName"    # Ljava/lang/String;

    .prologue
    .line 75
    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    .line 76
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 77
    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_2
    const-string v1, "[^0-9]+"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    const-string v1, "^\\.+|\\.+$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseGithubRelease(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/smartisan/updater/Version;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v11, 0x0

    .line 82
    new-instance v0, Lcom/smartisan/updater/Version;

    invoke-direct {v0}, Lcom/smartisan/updater/Version;-><init>()V

    .line 83
    .local v0, "version":Lcom/smartisan/updater/Version;
    const-string v1, "tag_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "tagName":Ljava/lang/String;
    const-string v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "V"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    :cond_1
    invoke-virtual {v0, v1}, Lcom/smartisan/updater/Version;->setName(Ljava/lang/String;)V

    .line 88
    invoke-static {v1}, Lcom/smartisan/updater/Version;->buildVersionCode(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/smartisan/updater/Version;->setCode(I)V

    .line 89
    const-string v2, "body"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\r\n"

    const-string v4, "\n"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\r"

    const-string v4, "\n"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisan/updater/Version;->setReleaseNotes(Ljava/lang/String;)V

    .line 89
    const-string v2, "assets"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 90
    .local v2, "assets":Lorg/json/JSONArray;
    const-string v3, ""

    .line 91
    .local v3, "downloadUrl":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 92
    .local v4, "size":J
    if-eqz v2, :cond_4

    .line 93
    const/4 v6, 0x0

    .line 94
    .local v6, "index":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 95
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 96
    .local v7, "asset":Lorg/json/JSONObject;
    if-eqz v7, :cond_3

    .line 97
    const-string v8, "name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 98
    .local v8, "assetName":Ljava/lang/String;
    const-string v9, ".apk"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 99
    const-string v9, "browser_download_url"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    const-string v9, "size"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 101
    goto :goto_1

    .line 103
    .end local v8    # "assetName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 106
    .end local v6    # "index":I
    .end local v7    # "asset":Lorg/json/JSONObject;
    :cond_4
    :goto_1
    invoke-static {v3}, Lcom/smartisan/updater/Version;->buildProxyDownloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "proxiedDownloadUrl":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lcom/smartisan/updater/Version;->setUpdateUrl(Ljava/lang/String;)V

    .line 108
    iput-wide v4, v0, Lcom/smartisan/updater/Version;->size:J

    .line 109
    const-string v7, ""

    invoke-virtual {v0, v7}, Lcom/smartisan/updater/Version;->setMd5Str(Ljava/lang/String;)V

    .line 110
    invoke-static {p0}, Lcom/smartisan/updater/UpdateUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, "currentVersion":Ljava/lang/String;
    invoke-static {v1, v7}, Lcom/smartisan/updater/Version;->compareVersionNames(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 112
    .local v8, "compareResult":I
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    if-lez v8, :cond_5

    const/4 v11, 0x1

    .line 113
    :cond_5
    invoke-virtual {v0, v11}, Lcom/smartisan/updater/Version;->setNeedUpdate(Z)V

    .line 114
    return-object v0
.end method

.method public static parse(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/smartisan/updater/Version;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "version":Lcom/smartisan/updater/Version;
    if-eqz p1, :cond_0

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p1, v1, :cond_0

    .line 94
    new-instance v0, Lcom/smartisan/updater/Version;

    .end local v0    # "version":Lcom/smartisan/updater/Version;
    invoke-direct {v0}, Lcom/smartisan/updater/Version;-><init>()V

    const-string v1, "tag_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_github_0

    invoke-static {p0, p1}, Lcom/smartisan/updater/Version;->parseGithubRelease(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/smartisan/updater/Version;

    move-result-object v0

    return-object v0

    .line 95
    :cond_github_0
    .restart local v0    # "version":Lcom/smartisan/updater/Version;
    const-string v1, "version_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisan/updater/Version;->name:Ljava/lang/String;

    .line 96
    const-string v1, "version_code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/smartisan/updater/Version;->code:I

    .line 97
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisan/updater/Version;->updateUrl:Ljava/lang/String;

    .line 98
    iget v1, v0, Lcom/smartisan/updater/Version;->code:I

    invoke-static {p0, v1}, Lcom/smartisan/updater/UpdateUtils;->isNeedUpdate(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/smartisan/updater/Version;->needUpdate:Z

    .line 100
    const-string v1, "size"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/smartisan/updater/Version;->size:J

    .line 101
    const-string v1, "on"

    const-string v4, "ota_update"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/smartisan/updater/Version;->mOtaUpdate:Z

    .line 103
    const-string v1, "on"

    const-string v4, "force"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    iput-boolean v2, v0, Lcom/smartisan/updater/Version;->mForceUpdate:Z

    .line 105
    const-string v1, "md5"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisan/updater/Version;->md5Str:Ljava/lang/String;

    .line 107
    :cond_0
    return-object v0

    :cond_1
    move v1, v3

    .line 101
    goto :goto_0

    :cond_2
    move v2, v3

    .line 103
    goto :goto_1
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/smartisan/updater/Version;->code:I

    return v0
.end method

.method public getMd5Str()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/smartisan/updater/Version;->md5Str:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/smartisan/updater/Version;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseNotes()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/smartisan/updater/Version;->releaseNotes:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/smartisan/updater/Version;->size:J

    return-wide v0
.end method

.method public getUpdateUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/smartisan/updater/Version;->updateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isForceUpdateOn()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/smartisan/updater/Version;->mForceUpdate:Z

    return v0
.end method

.method public isNeedUpdate()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/smartisan/updater/Version;->needUpdate:Z

    return v0
.end method

.method public isOtaUpdateOn()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/smartisan/updater/Version;->mOtaUpdate:Z

    return v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/smartisan/updater/Version;->code:I

    .line 53
    return-void
.end method

.method public setMd5Str(Ljava/lang/String;)V
    .locals 0
    .param p1, "md5Str"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/smartisan/updater/Version;->md5Str:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/smartisan/updater/Version;->name:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setNeedUpdate(Z)V
    .locals 0
    .param p1, "needUpdate"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/smartisan/updater/Version;->needUpdate:Z

    .line 85
    return-void
.end method

.method public setReleaseNotes(Ljava/lang/String;)V
    .locals 0
    .param p1, "releaseNotes"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/smartisan/updater/Version;->releaseNotes:Ljava/lang/String;

    return-void
.end method

.method public setUpdateUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateUrl"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/smartisan/updater/Version;->updateUrl:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NoteVersion [needUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/smartisan/updater/Version;->needUpdate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisan/updater/Version;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisan/updater/Version;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updateUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisan/updater/Version;->updateUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
