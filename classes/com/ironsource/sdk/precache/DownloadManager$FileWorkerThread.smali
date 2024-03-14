.class Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/precache/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileWorkerThread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/ironsource/sdk/precache/DownloadManager$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private mConnectionRetries:J

.field private mDirectory:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFileUrl:Ljava/lang/String;

.field private mTmpFilesDirectory:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 7

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput-object p1, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mFileUrl:Ljava/lang/String;

    .line 353
    iput-object p2, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mDirectory:Ljava/lang/String;

    .line 354
    iput-object p3, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mFileName:Ljava/lang/String;

    .line 355
    iput-wide p4, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mConnectionRetries:J

    .line 356
    iput-object p6, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mTmpFilesDirectory:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call()Lcom/ironsource/sdk/precache/DownloadManager$Result;
    .registers 10

    const-string v0, "DownloadManager"

    .line 376
    iget-wide v1, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mConnectionRetries:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_e

    const-wide/16 v1, 0x1

    .line 378
    iput-wide v1, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mConnectionRetries:J

    :cond_e
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_10
    int-to-long v3, v1

    .line 382
    iget-wide v5, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mConnectionRetries:J

    const/16 v7, 0x3f1

    cmp-long v8, v3, v5

    if-gez v8, :cond_2b

    .line 384
    iget-object v2, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mFileUrl:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->downloadContent(Ljava/lang/String;I)Lcom/ironsource/sdk/precache/DownloadManager$Result;

    move-result-object v2

    .line 385
    iget v3, v2, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    const/16 v4, 0x3f0

    if-eq v3, v4, :cond_28

    if-eq v3, v7, :cond_28

    goto :goto_2b

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_2b
    :goto_2b
    if-eqz v2, :cond_ae

    .line 393
    iget-object v1, v2, Lcom/ironsource/sdk/precache/DownloadManager$Result;->body:[B

    if-eqz v1, :cond_ae

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mDirectory:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mTmpFilesDirectory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "tmp_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 398
    :try_start_66
    iget-object v4, v2, Lcom/ironsource/sdk/precache/DownloadManager$Result;->body:[B

    invoke-virtual {p0, v4, v3}, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->saveFile([BLjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_73

    const/16 v1, 0x3ee

    .line 400
    iput v1, v2, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto :goto_ae

    .line 401
    :cond_73
    invoke-virtual {p0, v3, v1}, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_ae

    const/16 v1, 0x3fc

    .line 402
    iput v1, v2, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I
    :try_end_7d
    .catch Ljava/io/FileNotFoundException; {:try_start_66 .. :try_end_7d} :catch_aa
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_7d} :catch_95
    .catch Ljava/lang/Error; {:try_start_66 .. :try_end_7d} :catch_7e

    goto :goto_ae

    :catch_7e
    move-exception v1

    .line 412
    invoke-virtual {v1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_90

    .line 413
    invoke-virtual {v1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_90
    const/16 v0, 0x3fb

    .line 415
    iput v0, v2, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto :goto_ae

    :catch_95
    move-exception v1

    .line 407
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a7

    .line 408
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_a7
    iput v7, v2, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto :goto_ae

    :catch_aa
    const/16 v0, 0x3fa

    .line 405
    iput v0, v2, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    :cond_ae
    :goto_ae
    return-object v2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->call()Lcom/ironsource/sdk/precache/DownloadManager$Result;

    move-result-object v0

    return-object v0
.end method

.method downloadContent(Ljava/lang/String;I)Lcom/ironsource/sdk/precache/DownloadManager$Result;
    .registers 10

    const-string v0, "DownloadManager"

    .line 425
    new-instance v1, Lcom/ironsource/sdk/precache/DownloadManager$Result;

    invoke-direct {v1}, Lcom/ironsource/sdk/precache/DownloadManager$Result;-><init>()V

    .line 431
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 432
    iput-object p1, v1, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    const/16 p1, 0x3ef

    .line 433
    iput p1, v1, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    return-object v1

    :cond_14
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 439
    :try_start_16
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v4}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 445
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_24
    .catch Ljava/net/MalformedURLException; {:try_start_16 .. :try_end_24} :catch_129
    .catch Ljava/net/URISyntaxException; {:try_start_16 .. :try_end_24} :catch_119
    .catch Ljava/net/SocketTimeoutException; {:try_start_16 .. :try_end_24} :catch_109
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_24} :catch_f9
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_24} :catch_c2
    .catch Ljava/lang/Error; {:try_start_16 .. :try_end_24} :catch_92
    .catchall {:try_start_16 .. :try_end_24} :catchall_8f

    :try_start_24
    const-string v5, "GET"

    .line 446
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v5, 0x1388

    .line 448
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 449
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 451
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 452
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v5, 0xc8

    if-lt v3, v5, :cond_4c

    const/16 v6, 0x190

    if-lt v3, v6, :cond_41

    goto :goto_4c

    .line 456
    :cond_41
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 457
    invoke-virtual {p0, v2}, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v6

    iput-object v6, v1, Lcom/ironsource/sdk/precache/DownloadManager$Result;->body:[B

    goto :goto_4e

    :cond_4c
    :goto_4c
    const/16 v3, 0x3f3

    :goto_4e
    if-eq v3, v5, :cond_74

    .line 461
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " RESPONSE CODE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ATTEMPT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/net/MalformedURLException; {:try_start_24 .. :try_end_74} :catch_12a
    .catch Ljava/net/URISyntaxException; {:try_start_24 .. :try_end_74} :catch_11a
    .catch Ljava/net/SocketTimeoutException; {:try_start_24 .. :try_end_74} :catch_10a
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_74} :catch_fa
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_74} :catch_8d
    .catch Ljava/lang/Error; {:try_start_24 .. :try_end_74} :catch_89
    .catchall {:try_start_24 .. :try_end_74} :catchall_e4

    :cond_74
    if-eqz v2, :cond_7e

    .line 489
    :try_start_76
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_7e

    :catch_7a
    move-exception p2

    .line 492
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_7e
    :goto_7e
    if-eqz v4, :cond_83

    .line 496
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 499
    :cond_83
    iput-object p1, v1, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 500
    iput v3, v1, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto/16 :goto_13f

    :catch_89
    move-exception p2

    move-object v3, v2

    move-object v2, v4

    goto :goto_94

    :catch_8d
    move-exception p2

    goto :goto_c4

    :catchall_8f
    move-exception p2

    move-object v4, v2

    goto :goto_e5

    :catch_92
    move-exception p2

    move-object v3, v2

    :goto_94
    const/16 v4, 0x3fb

    .line 482
    :try_start_96
    invoke-virtual {p2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a7

    .line 483
    invoke-virtual {p2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a7
    .catchall {:try_start_96 .. :try_end_a7} :catchall_bc

    :cond_a7
    if-eqz v3, :cond_b1

    .line 489
    :try_start_a9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_ad

    goto :goto_b1

    :catch_ad
    move-exception p2

    .line 492
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_b1
    :goto_b1
    if-eqz v2, :cond_b6

    .line 496
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 499
    :cond_b6
    iput-object p1, v1, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 500
    iput v4, v1, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto/16 :goto_13f

    :catchall_bc
    move-exception p2

    move-object v4, v2

    move-object v2, v3

    const/16 v3, 0x3fb

    goto :goto_e5

    :catch_c2
    move-exception p2

    move-object v4, v2

    .line 476
    :goto_c4
    :try_start_c4
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d5

    .line 477
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d5
    .catchall {:try_start_c4 .. :try_end_d5} :catchall_e4

    :cond_d5
    const/16 p2, 0x3f1

    if-eqz v2, :cond_e1

    .line 489
    :try_start_d9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_dd

    goto :goto_e1

    :catch_dd
    move-exception v0

    .line 492
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_e1
    :goto_e1
    if-eqz v4, :cond_13b

    goto :goto_138

    :catchall_e4
    move-exception p2

    :goto_e5
    if-eqz v2, :cond_ef

    .line 489
    :try_start_e7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_eb

    goto :goto_ef

    :catch_eb
    move-exception v0

    .line 492
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_ef
    :goto_ef
    if-eqz v4, :cond_f4

    .line 496
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 499
    :cond_f4
    iput-object p1, v1, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 500
    iput v3, v1, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    .line 501
    throw p2

    :catch_f9
    move-object v4, v2

    :catch_fa
    const/16 p2, 0x3fa

    if-eqz v2, :cond_106

    .line 489
    :try_start_fe
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_101} :catch_102

    goto :goto_106

    :catch_102
    move-exception v0

    .line 492
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_106
    :goto_106
    if-eqz v4, :cond_13b

    goto :goto_138

    :catch_109
    move-object v4, v2

    :catch_10a
    const/16 p2, 0x3f0

    if-eqz v2, :cond_116

    .line 489
    :try_start_10e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_111} :catch_112

    goto :goto_116

    :catch_112
    move-exception v0

    .line 492
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_116
    :goto_116
    if-eqz v4, :cond_13b

    goto :goto_138

    :catch_119
    move-object v4, v2

    :catch_11a
    const/16 p2, 0x3f2

    if-eqz v2, :cond_126

    .line 489
    :try_start_11e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_121} :catch_122

    goto :goto_126

    :catch_122
    move-exception v0

    .line 492
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_126
    :goto_126
    if-eqz v4, :cond_13b

    goto :goto_138

    :catch_129
    move-object v4, v2

    :catch_12a
    const/16 p2, 0x3ec

    if-eqz v2, :cond_136

    .line 489
    :try_start_12e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_131} :catch_132

    goto :goto_136

    :catch_132
    move-exception v0

    .line 492
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_136
    :goto_136
    if-eqz v4, :cond_13b

    .line 496
    :goto_138
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 499
    :cond_13b
    iput-object p1, v1, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 500
    iput p2, v1, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    :goto_13f
    return-object v1
.end method

.method getBytes(Ljava/io/InputStream;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    invoke-static {p1}, Lcom/ironsource/sdk/precache/DownloadManager;->getBytes(Ljava/io/InputStream;)[B

    move-result-object p1

    return-object p1
.end method

.method renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 364
    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method saveFile([BLjava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 360
    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->saveFile([BLjava/lang/String;)I

    move-result p1

    return p1
.end method
