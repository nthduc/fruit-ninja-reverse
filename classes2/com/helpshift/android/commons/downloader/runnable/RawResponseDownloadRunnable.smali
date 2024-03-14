.class public Lcom/helpshift/android/commons/downloader/runnable/RawResponseDownloadRunnable;
.super Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;
.source "RawResponseDownloadRunnable.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Helpshift_RawDownRun"


# direct methods
.method public constructor <init>(Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;Lcom/helpshift/android/commons/downloader/contracts/NetworkAuthDataFetcher;Lcom/helpshift/android/commons/downloader/contracts/OnProgressChangedListener;Lcom/helpshift/android/commons/downloader/contracts/OnDownloadFinishListener;)V
    .registers 5

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;-><init>(Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;Lcom/helpshift/android/commons/downloader/contracts/NetworkAuthDataFetcher;Lcom/helpshift/android/commons/downloader/contracts/OnProgressChangedListener;Lcom/helpshift/android/commons/downloader/contracts/OnDownloadFinishListener;)V

    return-void
.end method


# virtual methods
.method protected clearCache()V
    .registers 1

    return-void
.end method

.method protected getAlreadyDownloadedBytes()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected isGzipSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected processHttpResponse(Ljava/io/InputStream;IILjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 53
    :goto_f
    :try_start_f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_19

    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_1f
    .catchall {:try_start_f .. :try_end_18} :catchall_1d

    goto :goto_f

    .line 61
    :cond_19
    :goto_19
    invoke-virtual {p0, v0}, Lcom/helpshift/android/commons/downloader/runnable/RawResponseDownloadRunnable;->closeFileStream(Ljava/io/Closeable;)V

    goto :goto_28

    :catchall_1d
    move-exception p1

    goto :goto_47

    :catch_1f
    move-exception p2

    :try_start_20
    const-string v1, "Helpshift_RawDownRun"

    const-string v2, "IO Exception while reading response"

    .line 58
    invoke-static {v1, v2, p2}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_1d

    goto :goto_19

    :goto_28
    const/4 p2, 0x1

    .line 66
    :try_start_29
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p2, v0, p3, p4}, Lcom/helpshift/android/commons/downloader/runnable/RawResponseDownloadRunnable;->notifyDownloadFinish(ZLjava/lang/Object;ILjava/lang/String;)V
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_35} :catch_36

    goto :goto_46

    .line 71
    :catch_36
    :try_start_36
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p2, v0, p3, p4}, Lcom/helpshift/android/commons/downloader/runnable/RawResponseDownloadRunnable;->notifyDownloadFinish(ZLjava/lang/Object;ILjava/lang/String;)V
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_42} :catch_43

    goto :goto_46

    .line 75
    :catch_43
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/helpshift/android/commons/downloader/runnable/RawResponseDownloadRunnable;->notifyDownloadFinish(ZLjava/lang/Object;ILjava/lang/String;)V

    :goto_46
    return-void

    .line 61
    :goto_47
    invoke-virtual {p0, v0}, Lcom/helpshift/android/commons/downloader/runnable/RawResponseDownloadRunnable;->closeFileStream(Ljava/io/Closeable;)V

    .line 62
    throw p1

    return-void
.end method
