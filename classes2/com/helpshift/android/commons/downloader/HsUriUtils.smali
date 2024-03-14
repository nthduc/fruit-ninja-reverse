.class public Lcom/helpshift/android/commons/downloader/HsUriUtils;
.super Ljava/lang/Object;
.source "HsUriUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canReadFileAtUri(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 26
    invoke-static {p1}, Lcom/helpshift/android/commons/downloader/HsUriUtils;->isValidUriPath(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    .line 33
    :try_start_9
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "r"

    .line 35
    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_24
    .catchall {:try_start_9 .. :try_end_17} :catchall_1f

    if-eqz p0, :cond_1b

    const/4 p1, 0x1

    const/4 v1, 0x1

    .line 44
    :cond_1b
    invoke-static {p0}, Lcom/helpshift/android/commons/downloader/HsUriUtils;->closeParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_27

    :catchall_1f
    move-exception p0

    invoke-static {v0}, Lcom/helpshift/android/commons/downloader/HsUriUtils;->closeParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    .line 45
    throw p0

    .line 44
    :catch_24
    invoke-static {v0}, Lcom/helpshift/android/commons/downloader/HsUriUtils;->closeParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    :goto_27
    return v1
.end method

.method public static closeParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 52
    :try_start_2
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static isValidUriPath(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_10

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_10

    :cond_9
    const-string v0, "content://"

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return p0
.end method
