.class Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;
.super Ljava/io/InputStream;
.source "com.google.firebase:firebase-storage@@19.1.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/storage/StreamDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StreamProgressWrapper"
.end annotation


# instance fields
.field private mDownloadedBytes:J

.field private mInputStreamCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private mLastExceptionPosition:J

.field private mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mStreamClosed:Z

.field private mTemporaryException:Ljava/io/IOException;

.field private mWrappedStream:Ljava/io/InputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;Lcom/google/firebase/storage/StreamDownloadTask;)V
    .registers 3
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/StreamDownloadTask;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/firebase/storage/StreamDownloadTask;",
            ")V"
        }
    .end annotation

    .line 273
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 274
    iput-object p2, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;

    .line 275
    iput-object p1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mInputStreamCallable:Ljava/util/concurrent/Callable;

    return-void
.end method

.method static synthetic access$100(Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->ensureStream()Z

    move-result p0

    return p0
.end method

.method private checkCancel()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/google/firebase/storage/StreamDownloadTask;->getInternalState()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_d

    goto :goto_13

    .line 280
    :cond_d
    new-instance v0, Lcom/google/firebase/storage/CancelException;

    invoke-direct {v0}, Lcom/google/firebase/storage/CancelException;-><init>()V

    throw v0

    :cond_13
    :goto_13
    return-void
.end method

.method private ensureStream()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->checkCancel()V

    .line 294
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    if-eqz v0, :cond_44

    .line 296
    :try_start_7
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_10

    .line 297
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :cond_10
    const/4 v0, 0x0

    .line 303
    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    .line 305
    iget-wide v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mLastExceptionPosition:J

    iget-wide v3, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mDownloadedBytes:J

    const-string v5, "StreamDownloadTask"

    cmp-long v6, v1, v3

    if-nez v6, :cond_26

    .line 306
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    const-string v1, "Encountered exception during stream operation. Aborting."

    invoke-static {v5, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0

    .line 310
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered exception during stream operation. Retrying at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mDownloadedBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    invoke-static {v5, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    iget-wide v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mDownloadedBytes:J

    iput-wide v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mLastExceptionPosition:J

    .line 315
    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    .line 319
    :cond_44
    iget-boolean v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mStreamClosed:Z

    if-nez v0, :cond_69

    .line 323
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    if-nez v0, :cond_67

    .line 325
    :try_start_4c
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mInputStreamCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_56} :catch_57

    goto :goto_67

    :catch_57
    move-exception v0

    .line 327
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_5f

    .line 328
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 330
    :cond_5f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to open stream"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_67
    :goto_67
    const/4 v0, 0x1

    return v0

    .line 320
    :cond_69
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t perform operation on closed stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private recordDownloadedBytes(J)V
    .registers 5

    .line 285
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;

    if-eqz v0, :cond_7

    .line 286
    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/storage/StreamDownloadTask;->recordDownloadedBytes(J)V

    .line 288
    :cond_7
    iget-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mDownloadedBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mDownloadedBytes:J

    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->ensureStream()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 359
    :try_start_6
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    .line 361
    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    goto :goto_0

    .line 365
    :cond_11
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    throw v0

    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    .line 371
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_7
    const/4 v0, 0x1

    .line 373
    iput-boolean v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mStreamClosed:Z

    .line 374
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;

    if-eqz v0, :cond_23

    # getter for: Lcom/google/firebase/storage/StreamDownloadTask;->request:Lcom/google/firebase/storage/network/NetworkRequest;
    invoke-static {v0}, Lcom/google/firebase/storage/StreamDownloadTask;->access$200(Lcom/google/firebase/storage/StreamDownloadTask;)Lcom/google/firebase/storage/network/NetworkRequest;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 375
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;

    # getter for: Lcom/google/firebase/storage/StreamDownloadTask;->request:Lcom/google/firebase/storage/network/NetworkRequest;
    invoke-static {v0}, Lcom/google/firebase/storage/StreamDownloadTask;->access$200(Lcom/google/firebase/storage/StreamDownloadTask;)Lcom/google/firebase/storage/network/NetworkRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/storage/network/NetworkRequest;->performRequestEnd()V

    .line 376
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mParentTask:Lcom/google/firebase/storage/StreamDownloadTask;

    const/4 v1, 0x0

    # setter for: Lcom/google/firebase/storage/StreamDownloadTask;->request:Lcom/google/firebase/storage/network/NetworkRequest;
    invoke-static {v0, v1}, Lcom/google/firebase/storage/StreamDownloadTask;->access$202(Lcom/google/firebase/storage/StreamDownloadTask;Lcom/google/firebase/storage/network/NetworkRequest;)Lcom/google/firebase/storage/network/NetworkRequest;

    .line 379
    :cond_23
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->checkCancel()V

    return-void
.end method

.method public mark(I)V
    .registers 2

    return-void
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->ensureStream()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 342
    :try_start_6
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    const-wide/16 v1, 0x1

    .line 344
    invoke-direct {p0, v1, v2}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->recordDownloadedBytes(J)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_15

    :cond_14
    return v0

    :catch_15
    move-exception v0

    .line 348
    iput-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    goto :goto_0

    .line 352
    :cond_19
    iget-object v0, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    throw v0

    return-void
.end method

.method public read([BII)I
    .registers 11
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 393
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->ensureStream()Z

    move-result v1

    if-eqz v1, :cond_47

    :goto_7
    int-to-long v1, p3

    const-wide/32 v3, 0x40000

    const/4 v5, -0x1

    cmp-long v6, v1, v3

    if-lez v6, :cond_2b

    .line 396
    :try_start_10
    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    const/high16 v2, 0x40000

    .line 397
    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ne v1, v5, :cond_1e

    if-nez v0, :cond_1d

    const/4 v0, -0x1

    :cond_1d
    return v0

    :cond_1e
    add-int/2addr v0, v1

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    int-to-long v1, v1

    .line 404
    invoke-direct {p0, v1, v2}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->recordDownloadedBytes(J)V

    .line 405
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->checkCancel()V

    goto :goto_7

    :catch_29
    move-exception v1

    goto :goto_41

    :cond_2b
    if-lez p3, :cond_44

    .line 408
    iget-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ne v1, v5, :cond_39

    if-nez v0, :cond_38

    const/4 v0, -0x1

    :cond_38
    return v0

    :cond_39
    add-int/2addr p2, v1

    add-int/2addr v0, v1

    sub-int/2addr p3, v1

    int-to-long v1, v1

    .line 415
    invoke-direct {p0, v1, v2}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->recordDownloadedBytes(J)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_40} :catch_29

    goto :goto_44

    .line 421
    :goto_41
    iput-object v1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    goto :goto_1

    :cond_44
    :goto_44
    if-nez p3, :cond_1

    return v0

    .line 425
    :cond_47
    iget-object p1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    throw p1

    return-void
.end method

.method public skip(J)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    move-wide v2, p1

    move-wide p1, v0

    .line 432
    :cond_4
    :goto_4
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->ensureStream()Z

    move-result v4

    if-eqz v4, :cond_50

    :goto_a
    const-wide/16 v4, -0x1

    const-wide/32 v6, 0x40000

    cmp-long v8, v2, v6

    if-lez v8, :cond_2e

    .line 435
    :try_start_13
    iget-object v8, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v8, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v6

    cmp-long v8, v6, v0

    if-gez v8, :cond_23

    cmp-long v2, p1, v0

    if-nez v2, :cond_22

    move-wide p1, v4

    :cond_22
    return-wide p1

    :cond_23
    add-long/2addr p1, v6

    sub-long/2addr v2, v6

    .line 441
    invoke-direct {p0, v6, v7}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->recordDownloadedBytes(J)V

    .line 442
    invoke-direct {p0}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->checkCancel()V

    goto :goto_a

    :catch_2c
    move-exception v4

    goto :goto_48

    :cond_2e
    cmp-long v6, v2, v0

    if-lez v6, :cond_4b

    .line 445
    iget-object v6, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v6, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v6

    cmp-long v8, v6, v0

    if-gez v8, :cond_42

    cmp-long v2, p1, v0

    if-nez v2, :cond_41

    move-wide p1, v4

    :cond_41
    return-wide p1

    :cond_42
    add-long/2addr p1, v6

    sub-long/2addr v2, v6

    .line 451
    invoke-direct {p0, v6, v7}, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->recordDownloadedBytes(J)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_47} :catch_2c

    goto :goto_4b

    .line 457
    :goto_48
    iput-object v4, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    goto :goto_4

    :cond_4b
    :goto_4b
    cmp-long v4, v2, v0

    if-nez v4, :cond_4

    return-wide p1

    .line 461
    :cond_50
    iget-object p1, p0, Lcom/google/firebase/storage/StreamDownloadTask$StreamProgressWrapper;->mTemporaryException:Ljava/io/IOException;

    throw p1

    return-void
.end method
