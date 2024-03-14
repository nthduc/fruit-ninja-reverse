.class public abstract Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;
.super Ljava/lang/Object;
.source "BaseDownloadRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final DOWNLOAD_MANAGER_DB_KEY:Ljava/lang/String; = "kDownloadManagerCachedFiles"

.field private static final TAG:Ljava/lang/String; = "Helpshift_DownloadRun"


# instance fields
.field private networkAuthDataFetcher:Lcom/helpshift/android/commons/downloader/contracts/NetworkAuthDataFetcher;

.field private onDownloadFinishListener:Lcom/helpshift/android/commons/downloader/contracts/OnDownloadFinishListener;

.field private onProgressChangedListener:Lcom/helpshift/android/commons/downloader/contracts/OnProgressChangedListener;

.field protected requestInfo:Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;


# direct methods
.method constructor <init>(Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;Lcom/helpshift/android/commons/downloader/contracts/NetworkAuthDataFetcher;Lcom/helpshift/android/commons/downloader/contracts/OnProgressChangedListener;Lcom/helpshift/android/commons/downloader/contracts/OnDownloadFinishListener;)V
    .registers 5

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->requestInfo:Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;

    .line 51
    iput-object p2, p0, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->networkAuthDataFetcher:Lcom/helpshift/android/commons/downloader/contracts/NetworkAuthDataFetcher;

    .line 52
    iput-object p3, p0, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->onProgressChangedListener:Lcom/helpshift/android/commons/downloader/contracts/OnProgressChangedListener;

    .line 53
    iput-object p4, p0, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->onDownloadFinishListener:Lcom/helpshift/android/commons/downloader/contracts/OnDownloadFinishListener;

    return-void
.end method

.method private buildUrl()Ljava/net/URL;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/URISyntaxException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->requestInfo:Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;

    iget-boolean v0, v0, Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;->isSecured:Z

    if-eqz v0, :cond_84

    .line 174
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->requestInfo:Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;

    iget-object v1, v1, Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-virtual {v0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-direct {p0, v2}, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->getQueryMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "v"

    const-string v4, "1"

    .line 179
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "uri"

    .line 180
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v1, p0, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->networkAuthDataFetcher:Lcom/helpshift/android/commons/downloader/contracts/NetworkAuthDataFetcher;

    invoke-interface {v1, v2}, Lcom/helpshift/android/commons/downloader/contracts/NetworkAuthDataFetcher;->getAuthData(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 185
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_6a
    const-string v1, "&"

    .line 188
    invoke-direct {p0, v1, v2}, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    .line 190
    new-instance v1, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    .line 193
    :cond_84
    new-instance v1, Ljava/net/URI;

    iget-object v0, p0, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->requestInfo:Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;

    iget-object v0, v0, Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;->url:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 195
    :goto_8d
    new-instance v0, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private fixSSLSocketProtocols(Ljavax/net/ssl/HttpsURLConnection;)V
    .registers 6

    .line 200
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_2c

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "TLSv1.2"

    .line 205
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "SSLv3"

    .line 209
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 212
    new-instance v3, Lcom/helpshift/android/commons/downloader/HelpshiftSSLSocketFactory;

    invoke-direct {v3, v2, v0, v1}, Lcom/helpshift/android/commons/downloader/HelpshiftSSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/util/List;Ljava/util/List;)V

    .line 213
    invoke-virtual {p1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_2c
    return-void
.end method

.method private getQueryMap(Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "&"

    .line 218
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 220
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v1, :cond_27

    aget-object v4, p1, v3

    const-string v5, "="

    .line 221
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 222
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_24

    .line 223
    aget-object v5, v4, v2

    const/4 v6, 0x1

    .line 224
    aget-object v4, v4, v6

    .line 225
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_27
    return-object v0
.end method

.method private join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 6

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 237
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    .line 239
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v1, :cond_1c

    const/4 v1, 0x0

    goto :goto_1f

    .line 244
    :cond_1c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 246
    :goto_1f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 248
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected abstract clearCache()V
.end method

.method closeFileStream(Ljava/io/Closeable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 253
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    :cond_5
    return-void
.end method

.method protected abstract getAlreadyDownloadedBytes()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method protected abstract isGzipSupported()Z
.end method

.method notifyDownloadFinish(ZLjava/lang/Object;ILjava/lang/String;)V
    .registers 11

    .line 264
    iget-object v0, p0, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->onDownloadFinishListener:Lcom/helpshift/android/commons/downloader/contracts/OnDownloadFinishListener;

    if-eqz v0, :cond_f

    .line 265
    iget-object v1, p0, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->requestInfo:Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;

    iget-object v2, v1, Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;->url:Ljava/lang/String;

    move v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/helpshift/android/commons/downloader/contracts/OnDownloadFinishListener;->onDownloadFinish(ZLjava/lang/String;Ljava/lang/Object;ILjava/lang/String;)V

    :cond_f
    return-void
.end method

.method notifyProgressChange(I)V
    .registers 4

    .line 258
    iget-object v0, p0, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->onProgressChangedListener:Lcom/helpshift/android/commons/downloader/contracts/OnProgressChangedListener;

    if-eqz v0, :cond_b

    .line 259
    iget-object v1, p0, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->requestInfo:Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;

    iget-object v1, v1, Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;->url:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/helpshift/android/commons/downloader/contracts/OnProgressChangedListener;->onProgressChanged(Ljava/lang/String;I)V

    :cond_b
    return-void
.end method

.method protected abstract processHttpResponse(Ljava/io/InputStream;IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public run()V
    .registers 14

    const-string v0, "Exception in closing download response"

    const-string v1, "route"

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting download : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->requestInfo:Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;

    iget-object v3, v3, Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Helpshift_DownloadRun"

    invoke-static {v3, v2}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa

    .line 59
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    const-string v2, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 63
    :try_start_27
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_167

    .line 66
    invoke-direct {p0}, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->buildUrl()Ljava/net/URL;

    move-result-object v6

    const-string v7, "https"

    .line 69
    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 70
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    .line 71
    move-object v7, v6

    check-cast v7, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {p0, v7}, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->fixSSLSocketProtocols(Ljavax/net/ssl/HttpsURLConnection;)V

    goto :goto_50

    .line 74
    :cond_4a
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    .line 76
    :goto_50
    iget-object v7, p0, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->requestInfo:Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;

    iget-object v7, v7, Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;->etag:Ljava/lang/String;

    if-eqz v7, :cond_69

    iget-object v7, p0, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->requestInfo:Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;

    iget-object v7, v7, Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;->etag:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_69

    const-string v7, "If-None-Match"

    .line 77
    iget-object v8, p0, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->requestInfo:Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;

    iget-object v8, v8, Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;->etag:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_69
    invoke-virtual {v6, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V
    :try_end_6c
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_6c} :catch_1c9
    .catch Ljava/net/MalformedURLException; {:try_start_27 .. :try_end_6c} :catch_1b2
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_6c} :catch_19b
    .catch Ljava/security/GeneralSecurityException; {:try_start_27 .. :try_end_6c} :catch_184
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_6c} :catch_16d

    const/4 v7, 0x0

    .line 87
    :try_start_6d
    invoke-virtual {p0}, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->getAlreadyDownloadedBytes()J

    move-result-wide v8

    const-string v10, "Range"

    .line 88
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bytes="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v10, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_90} :catch_10f
    .catchall {:try_start_6d .. :try_end_90} :catchall_10c

    const/16 v9, 0x1a0

    if-eq v8, v9, :cond_ff

    const/16 v9, 0x130

    if-ne v8, v9, :cond_9f

    .line 102
    :try_start_98
    invoke-virtual {p0, v5, v7, v8, v2}, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->notifyDownloadFinish(ZLjava/lang/Object;ILjava/lang/String;)V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_10a
    .catchall {:try_start_98 .. :try_end_9b} :catchall_13f

    .line 139
    :try_start_9b
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9e
    .catch Ljava/lang/InterruptedException; {:try_start_9b .. :try_end_9e} :catch_165
    .catch Ljava/net/MalformedURLException; {:try_start_9b .. :try_end_9e} :catch_163
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_161
    .catch Ljava/security/GeneralSecurityException; {:try_start_9b .. :try_end_9e} :catch_15f
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9e} :catch_15d

    return-void

    .line 106
    :cond_9f
    :try_start_9f
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 107
    invoke-virtual {p0}, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->isGzipSupported()Z

    move-result v9

    if-eqz v9, :cond_d1

    .line 108
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v9

    const-string v10, "Content-Encoding"

    .line 109
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-eqz v9, :cond_d1

    .line 110
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_d1

    .line 111
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "gzip"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d1

    .line 112
    new-instance v9, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v9, v7}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v7, v9

    .line 116
    :cond_d1
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v9

    const-string v10, "Etag"

    .line 117
    invoke-virtual {v6, v10}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-virtual {p0, v7, v9, v8, v2}, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->processHttpResponse(Ljava/io/InputStream;IILjava/lang/String;)V

    .line 121
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_e1} :catch_10a
    .catchall {:try_start_9f .. :try_end_e1} :catchall_13f

    if-eqz v7, :cond_fa

    .line 131
    :try_start_e3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e6} :catch_e7
    .catch Ljava/lang/InterruptedException; {:try_start_e3 .. :try_end_e6} :catch_165
    .catch Ljava/net/MalformedURLException; {:try_start_e3 .. :try_end_e6} :catch_163
    .catch Ljava/security/GeneralSecurityException; {:try_start_e3 .. :try_end_e6} :catch_15f
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e6} :catch_15d

    goto :goto_fa

    :catch_e7
    move-exception v7

    .line 134
    :try_start_e8
    invoke-virtual {p0, v5, v7, v8, v2}, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->notifyDownloadFinish(ZLjava/lang/Object;ILjava/lang/String;)V

    .line 135
    new-array v9, v4, [Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    iget-object v10, p0, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->requestInfo:Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;

    iget-object v10, v10, Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;->url:Ljava/lang/String;

    .line 136
    invoke-static {v1, v10}, Lcom/helpshift/logger/logmodels/LogExtrasModelProvider;->fromString(Ljava/lang/String;Ljava/lang/String;)Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    move-result-object v10

    aput-object v10, v9, v5

    .line 135
    invoke-static {v3, v0, v7, v9}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    .line 139
    :cond_fa
    :goto_fa
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_fd
    .catch Ljava/lang/InterruptedException; {:try_start_e8 .. :try_end_fd} :catch_165
    .catch Ljava/net/MalformedURLException; {:try_start_e8 .. :try_end_fd} :catch_163
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_fd} :catch_161
    .catch Ljava/security/GeneralSecurityException; {:try_start_e8 .. :try_end_fd} :catch_15f
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_fd} :catch_15d

    goto/16 :goto_1e6

    .line 97
    :cond_ff
    :try_start_ff
    invoke-virtual {p0}, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->clearCache()V

    .line 98
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Requested Range Not Satisfiable, failed with 416 status"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_10a} :catch_10a
    .catchall {:try_start_ff .. :try_end_10a} :catchall_13f

    :catch_10a
    move-exception v9

    goto :goto_111

    :catchall_10c
    move-exception v9

    const/4 v8, 0x0

    goto :goto_140

    :catch_10f
    move-exception v9

    const/4 v8, 0x0

    .line 124
    :goto_111
    :try_start_111
    invoke-virtual {p0, v5, v9, v8, v2}, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->notifyDownloadFinish(ZLjava/lang/Object;ILjava/lang/String;)V

    const-string v10, "Exception in download"

    .line 125
    new-array v11, v4, [Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    iget-object v12, p0, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->requestInfo:Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;

    iget-object v12, v12, Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;->url:Ljava/lang/String;

    .line 126
    invoke-static {v1, v12}, Lcom/helpshift/logger/logmodels/LogExtrasModelProvider;->fromString(Ljava/lang/String;Ljava/lang/String;)Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    move-result-object v12

    aput-object v12, v11, v5

    .line 125
    invoke-static {v3, v10, v9, v11}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V
    :try_end_125
    .catchall {:try_start_111 .. :try_end_125} :catchall_13f

    if-eqz v7, :cond_fa

    .line 131
    :try_start_127
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_12a
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_12a} :catch_12b
    .catch Ljava/lang/InterruptedException; {:try_start_127 .. :try_end_12a} :catch_165
    .catch Ljava/net/MalformedURLException; {:try_start_127 .. :try_end_12a} :catch_163
    .catch Ljava/security/GeneralSecurityException; {:try_start_127 .. :try_end_12a} :catch_15f
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_12a} :catch_15d

    goto :goto_fa

    :catch_12b
    move-exception v7

    .line 134
    :try_start_12c
    invoke-virtual {p0, v5, v7, v8, v2}, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->notifyDownloadFinish(ZLjava/lang/Object;ILjava/lang/String;)V

    .line 135
    new-array v9, v4, [Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    iget-object v10, p0, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->requestInfo:Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;

    iget-object v10, v10, Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;->url:Ljava/lang/String;

    .line 136
    invoke-static {v1, v10}, Lcom/helpshift/logger/logmodels/LogExtrasModelProvider;->fromString(Ljava/lang/String;Ljava/lang/String;)Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    move-result-object v10

    aput-object v10, v9, v5

    .line 135
    invoke-static {v3, v0, v7, v9}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V
    :try_end_13e
    .catch Ljava/lang/InterruptedException; {:try_start_12c .. :try_end_13e} :catch_165
    .catch Ljava/net/MalformedURLException; {:try_start_12c .. :try_end_13e} :catch_163
    .catch Ljava/io/IOException; {:try_start_12c .. :try_end_13e} :catch_161
    .catch Ljava/security/GeneralSecurityException; {:try_start_12c .. :try_end_13e} :catch_15f
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_13e} :catch_15d

    goto :goto_fa

    :catchall_13f
    move-exception v9

    :goto_140
    if-eqz v7, :cond_159

    .line 131
    :try_start_142
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_145
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_145} :catch_146
    .catch Ljava/lang/InterruptedException; {:try_start_142 .. :try_end_145} :catch_165
    .catch Ljava/net/MalformedURLException; {:try_start_142 .. :try_end_145} :catch_163
    .catch Ljava/security/GeneralSecurityException; {:try_start_142 .. :try_end_145} :catch_15f
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_145} :catch_15d

    goto :goto_159

    :catch_146
    move-exception v7

    .line 134
    :try_start_147
    invoke-virtual {p0, v5, v7, v8, v2}, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->notifyDownloadFinish(ZLjava/lang/Object;ILjava/lang/String;)V

    .line 135
    new-array v10, v4, [Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    iget-object v11, p0, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->requestInfo:Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;

    iget-object v11, v11, Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;->url:Ljava/lang/String;

    .line 136
    invoke-static {v1, v11}, Lcom/helpshift/logger/logmodels/LogExtrasModelProvider;->fromString(Ljava/lang/String;Ljava/lang/String;)Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    move-result-object v11

    aput-object v11, v10, v5

    .line 135
    invoke-static {v3, v0, v7, v10}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    .line 139
    :cond_159
    :goto_159
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 140
    throw v9
    :try_end_15d
    .catch Ljava/lang/InterruptedException; {:try_start_147 .. :try_end_15d} :catch_165
    .catch Ljava/net/MalformedURLException; {:try_start_147 .. :try_end_15d} :catch_163
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_15d} :catch_161
    .catch Ljava/security/GeneralSecurityException; {:try_start_147 .. :try_end_15d} :catch_15f
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_15d} :catch_15d

    :catch_15d
    move-exception v0

    goto :goto_16f

    :catch_15f
    move-exception v0

    goto :goto_186

    :catch_161
    move-exception v0

    goto :goto_19d

    :catch_163
    move-exception v0

    goto :goto_1b4

    :catch_165
    move-exception v0

    goto :goto_1cb

    .line 64
    :cond_167
    :try_start_167
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_16d
    .catch Ljava/lang/InterruptedException; {:try_start_167 .. :try_end_16d} :catch_1c9
    .catch Ljava/net/MalformedURLException; {:try_start_167 .. :try_end_16d} :catch_1b2
    .catch Ljava/io/IOException; {:try_start_167 .. :try_end_16d} :catch_19b
    .catch Ljava/security/GeneralSecurityException; {:try_start_167 .. :try_end_16d} :catch_184
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_16d} :catch_16d

    :catch_16d
    move-exception v0

    const/4 v8, 0x0

    .line 160
    :goto_16f
    invoke-virtual {p0, v5, v0, v8, v2}, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->notifyDownloadFinish(ZLjava/lang/Object;ILjava/lang/String;)V

    .line 161
    new-array v2, v4, [Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    iget-object v4, p0, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->requestInfo:Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;

    iget-object v4, v4, Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;->url:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/helpshift/logger/logmodels/LogExtrasModelProvider;->fromString(Ljava/lang/String;Ljava/lang/String;)Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    move-result-object v1

    aput-object v1, v2, v5

    const-string v1, "Unknown Exception"

    invoke-static {v3, v1, v0, v2}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    goto :goto_1e6

    :catch_184
    move-exception v0

    const/4 v8, 0x0

    .line 156
    :goto_186
    invoke-virtual {p0, v5, v0, v8, v2}, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->notifyDownloadFinish(ZLjava/lang/Object;ILjava/lang/String;)V

    .line 157
    new-array v2, v4, [Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    iget-object v4, p0, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->requestInfo:Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;

    iget-object v4, v4, Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;->url:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/helpshift/logger/logmodels/LogExtrasModelProvider;->fromString(Ljava/lang/String;Ljava/lang/String;)Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    move-result-object v1

    aput-object v1, v2, v5

    const-string v1, "GeneralSecurityException"

    invoke-static {v3, v1, v0, v2}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    goto :goto_1e6

    :catch_19b
    move-exception v0

    const/4 v8, 0x0

    .line 152
    :goto_19d
    invoke-virtual {p0, v5, v0, v8, v2}, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->notifyDownloadFinish(ZLjava/lang/Object;ILjava/lang/String;)V

    .line 153
    new-array v2, v4, [Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    iget-object v4, p0, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->requestInfo:Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;

    iget-object v4, v4, Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;->url:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/helpshift/logger/logmodels/LogExtrasModelProvider;->fromString(Ljava/lang/String;Ljava/lang/String;)Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    move-result-object v1

    aput-object v1, v2, v5

    const-string v1, "Exception IO"

    invoke-static {v3, v1, v0, v2}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    goto :goto_1e6

    :catch_1b2
    move-exception v0

    const/4 v8, 0x0

    .line 148
    :goto_1b4
    invoke-virtual {p0, v5, v0, v8, v2}, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->notifyDownloadFinish(ZLjava/lang/Object;ILjava/lang/String;)V

    .line 149
    new-array v2, v4, [Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    iget-object v4, p0, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->requestInfo:Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;

    iget-object v4, v4, Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;->url:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/helpshift/logger/logmodels/LogExtrasModelProvider;->fromString(Ljava/lang/String;Ljava/lang/String;)Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    move-result-object v1

    aput-object v1, v2, v5

    const-string v1, "MalformedURLException"

    invoke-static {v3, v1, v0, v2}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    goto :goto_1e6

    :catch_1c9
    move-exception v0

    const/4 v8, 0x0

    .line 143
    :goto_1cb
    invoke-virtual {p0, v5, v0, v8, v2}, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->notifyDownloadFinish(ZLjava/lang/Object;ILjava/lang/String;)V

    .line 144
    new-array v2, v4, [Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    iget-object v4, p0, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;->requestInfo:Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;

    iget-object v4, v4, Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;->url:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/helpshift/logger/logmodels/LogExtrasModelProvider;->fromString(Ljava/lang/String;Ljava/lang/String;)Lcom/helpshift/logger/logmodels/ILogExtrasModel;

    move-result-object v1

    aput-object v1, v2, v5

    const-string v1, "Exception Interrupted"

    invoke-static {v3, v1, v0, v2}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Lcom/helpshift/logger/logmodels/ILogExtrasModel;)V

    .line 145
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_1e6
    return-void
.end method
