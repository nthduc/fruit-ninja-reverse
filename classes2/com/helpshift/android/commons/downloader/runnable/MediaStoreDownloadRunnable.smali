.class public Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;
.super Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;
.source "MediaStoreDownloadRunnable.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Helpshift_mediaRun"


# instance fields
.field private context:Landroid/content/Context;

.field private downloadInProgressCacheDbStorage:Lcom/helpshift/android/commons/downloader/storage/DownloadInProgressCacheDbStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;Lcom/helpshift/android/commons/downloader/storage/DownloadInProgressCacheDbStorage;Lcom/helpshift/android/commons/downloader/contracts/NetworkAuthDataFetcher;Lcom/helpshift/android/commons/downloader/contracts/OnProgressChangedListener;Lcom/helpshift/android/commons/downloader/contracts/OnDownloadFinishListener;)V
    .registers 7

    .line 38
    invoke-direct {p0, p2, p4, p5, p6}, Lcom/helpshift/android/commons/downloader/runnable/BaseDownloadRunnable;-><init>(Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;Lcom/helpshift/android/commons/downloader/contracts/NetworkAuthDataFetcher;Lcom/helpshift/android/commons/downloader/contracts/OnProgressChangedListener;Lcom/helpshift/android/commons/downloader/contracts/OnDownloadFinishListener;)V

    .line 39
    iput-object p1, p0, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->context:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->downloadInProgressCacheDbStorage:Lcom/helpshift/android/commons/downloader/storage/DownloadInProgressCacheDbStorage;

    return-void
.end method

.method private buildUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 5

    .line 214
    iget-object v0, p0, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/helpshift/android/commons/downloader/HsUriUtils;->canReadFileAtUri(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 220
    :cond_a
    :try_start_a
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_f

    goto :goto_17

    :catch_f
    move-exception p1

    const-string v0, "Helpshift_mediaRun"

    const-string v2, "Error while converting filePath to uri"

    .line 223
    invoke-static {v0, v2, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_17
    return-object v1
.end method

.method private createFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 11

    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 156
    :cond_8
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 157
    iget-object v1, p0, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 159
    invoke-direct {p0, p2}, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->isImageType(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "external_primary"

    const/4 v4, 0x1

    const-string v5, "is_pending"

    const-string v6, "mime_type"

    const-string v7, "_display_name"

    if-eqz v2, :cond_34

    .line 160
    invoke-virtual {v0, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    invoke-static {v3}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_45

    .line 166
    :cond_34
    invoke-virtual {v0, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    invoke-static {v3}, Landroid/provider/MediaStore$Downloads;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 172
    :goto_45
    invoke-virtual {v1, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private deleteUri(Landroid/net/Uri;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 253
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    .line 254
    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_e

    goto :goto_16

    :catch_e
    move-exception p1

    const-string v0, "Helpshift_mediaRun"

    const-string v1, "Error when deleting a file via uri"

    .line 257
    invoke-static {v0, v1, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_16
    return-void
.end method

.method private generateFileName()Ljava/lang/String;
    .registers 5

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Support_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->requestInfo:Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;

    iget-object v1, v1, Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->requestInfo:Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;

    iget-object v2, v2, Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;->url:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCachedFileUri()Landroid/net/Uri;
    .registers 4

    .line 195
    iget-object v0, p0, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->downloadInProgressCacheDbStorage:Lcom/helpshift/android/commons/downloader/storage/DownloadInProgressCacheDbStorage;

    invoke-virtual {v0}, Lcom/helpshift/android/commons/downloader/storage/DownloadInProgressCacheDbStorage;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    return-object v2

    .line 200
    :cond_e
    invoke-direct {p0, v0}, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->buildUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_15

    return-object v0

    .line 207
    :cond_15
    iget-object v0, p0, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->downloadInProgressCacheDbStorage:Lcom/helpshift/android/commons/downloader/storage/DownloadInProgressCacheDbStorage;

    invoke-virtual {v0}, Lcom/helpshift/android/commons/downloader/storage/DownloadInProgressCacheDbStorage;->removeFilePath()V

    return-object v2
.end method

.method private getFileUriToWriteResponseData()Landroid/net/Uri;
    .registers 3

    .line 141
    invoke-direct {p0}, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->getCachedFileUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 146
    :cond_7
    invoke-direct {p0}, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->generateFileName()Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->requestInfo:Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;

    iget-object v1, v1, Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;->contentType:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private isImageType(Ljava/lang/String;)Z
    .registers 5

    .line 230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-string v0, "image/.*"

    .line 237
    :try_start_a
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 238
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 239
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_17

    goto :goto_1f

    :catch_17
    move-exception p1

    const-string v0, "Helpshift_mediaRun"

    const-string v2, "Error when check image mime type"

    .line 242
    invoke-static {v0, v2, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1f
    return v1
.end method

.method private updateIsPendingFlag(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 6

    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_7

    return-void

    .line 180
    :cond_7
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 181
    invoke-direct {p0, p2}, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->isImageType(Ljava/lang/String;)Z

    move-result p2

    const/4 v1, 0x0

    const-string v2, "is_pending"

    if-eqz p2, :cond_1d

    .line 182
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_24

    .line 185
    :cond_1d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    :goto_24
    iget-object p2, p0, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected clearCache()V
    .registers 3

    .line 75
    invoke-direct {p0}, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->getCachedFileUri()Landroid/net/Uri;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->downloadInProgressCacheDbStorage:Lcom/helpshift/android/commons/downloader/storage/DownloadInProgressCacheDbStorage;

    invoke-virtual {v1}, Lcom/helpshift/android/commons/downloader/storage/DownloadInProgressCacheDbStorage;->removeFilePath()V

    .line 77
    invoke-direct {p0, v0}, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->deleteUri(Landroid/net/Uri;)V

    return-void
.end method

.method protected getAlreadyDownloadedBytes()J
    .registers 7

    .line 45
    invoke-direct {p0}, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->getCachedFileUri()Landroid/net/Uri;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_34

    const/4 v3, 0x0

    .line 50
    :try_start_9
    iget-object v4, p0, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "r"

    .line 51
    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 53
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1b} :catch_23
    .catchall {:try_start_9 .. :try_end_1b} :catchall_21

    :cond_1b
    if-eqz v3, :cond_34

    .line 62
    :goto_1d
    :try_start_1d
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_34

    goto :goto_34

    :catchall_21
    move-exception v0

    goto :goto_2e

    :catch_23
    move-exception v0

    :try_start_24
    const-string v4, "Helpshift_mediaRun"

    const-string v5, "Exception while getting file size via Uri"

    .line 57
    invoke-static {v4, v5, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_21

    if-eqz v3, :cond_34

    goto :goto_1d

    :goto_2e
    if-eqz v3, :cond_33

    .line 62
    :try_start_30
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_33

    .line 68
    :catch_33
    :cond_33
    throw v0

    :catch_34
    :cond_34
    :goto_34
    return-wide v1
.end method

.method protected isGzipSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected processHttpResponse(Ljava/io/InputStream;IILjava/lang/String;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p3

    move-object/from16 v2, p4

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->getAlreadyDownloadedBytes()J

    move-result-wide v3

    .line 91
    invoke-direct/range {p0 .. p0}, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->getFileUriToWriteResponseData()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v5, :cond_16

    .line 93
    invoke-virtual {v1, v6, v7, v0, v2}, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->notifyDownloadFinish(ZLjava/lang/Object;ILjava/lang/String;)V

    return-void

    .line 97
    :cond_16
    iget-object v8, v1, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->downloadInProgressCacheDbStorage:Lcom/helpshift/android/commons/downloader/storage/DownloadInProgressCacheDbStorage;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/helpshift/android/commons/downloader/storage/DownloadInProgressCacheDbStorage;->insertFilePath(Ljava/lang/String;)V

    .line 102
    :try_start_1f
    iget-object v8, v1, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "w"

    invoke-virtual {v8, v5, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_b6

    if-nez v8, :cond_37

    .line 104
    :try_start_2d
    invoke-virtual {v1, v6, v7, v0, v2}, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->notifyDownloadFinish(ZLjava/lang/Object;ILjava/lang/String;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_b3

    .line 135
    invoke-virtual {v1, v7}, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->closeFileStream(Ljava/io/Closeable;)V

    .line 136
    invoke-static {v8}, Lcom/helpshift/android/commons/downloader/HsUriUtils;->closeParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    return-void

    .line 107
    :cond_37
    :try_start_37
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_b3

    const/16 v7, 0x2000

    .line 109
    :try_start_42
    new-array v10, v7, [B

    const-wide/16 v11, 0x0

    move-wide v12, v11

    move-object/from16 v11, p1

    .line 111
    :goto_49
    invoke-virtual {v11, v10, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_78

    if-ltz v14, :cond_72

    .line 116
    invoke-virtual {v9, v10, v6, v14}, Ljava/io/FileOutputStream;->write([BII)V

    .line 117
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v14

    long-to-float v14, v14

    move/from16 v15, p2

    int-to-long v6, v15

    add-long/2addr v6, v3

    long-to-float v6, v6

    div-float/2addr v14, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v14, v14, v6

    float-to-long v6, v14

    cmp-long v14, v6, v12

    if-eqz v14, :cond_6e

    long-to-int v12, v6

    .line 121
    invoke-virtual {v1, v12}, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->notifyProgressChange(I)V

    move-wide v12, v6

    :cond_6e
    const/4 v6, 0x0

    const/16 v7, 0x2000

    goto :goto_49

    .line 113
    :cond_72
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 126
    :cond_78
    iget-object v3, v1, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->requestInfo:Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;

    iget-object v3, v3, Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;->contentType:Ljava/lang/String;

    invoke-direct {v1, v5, v3}, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->updateIsPendingFlag(Landroid/net/Uri;Ljava/lang/String;)V

    .line 129
    iget-object v3, v1, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->downloadInProgressCacheDbStorage:Lcom/helpshift/android/commons/downloader/storage/DownloadInProgressCacheDbStorage;

    invoke-virtual {v3}, Lcom/helpshift/android/commons/downloader/storage/DownloadInProgressCacheDbStorage;->removeFilePath()V

    const-string v3, "Helpshift_mediaRun"

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Download finished : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->requestInfo:Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;

    iget-object v6, v6, Lcom/helpshift/android/commons/downloader/contracts/DownloadRequestedFileInfo;->url:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n URI : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 132
    invoke-virtual {v1, v3, v5, v0, v2}, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->notifyDownloadFinish(ZLjava/lang/Object;ILjava/lang/String;)V
    :try_end_aa
    .catchall {:try_start_42 .. :try_end_aa} :catchall_b1

    .line 135
    invoke-virtual {v1, v9}, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->closeFileStream(Ljava/io/Closeable;)V

    .line 136
    invoke-static {v8}, Lcom/helpshift/android/commons/downloader/HsUriUtils;->closeParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    return-void

    :catchall_b1
    move-exception v0

    goto :goto_b9

    :catchall_b3
    move-exception v0

    move-object v9, v7

    goto :goto_b9

    :catchall_b6
    move-exception v0

    move-object v8, v7

    move-object v9, v8

    .line 135
    :goto_b9
    invoke-virtual {v1, v9}, Lcom/helpshift/android/commons/downloader/runnable/MediaStoreDownloadRunnable;->closeFileStream(Ljava/io/Closeable;)V

    .line 136
    invoke-static {v8}, Lcom/helpshift/android/commons/downloader/HsUriUtils;->closeParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    .line 137
    throw v0

    return-void
.end method
