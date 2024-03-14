.class Lcom/helpshift/websockets/WritingThread;
.super Lcom/helpshift/websockets/WebSocketThread;
.source "WritingThread.java"


# static fields
.field private static final FLUSH_THRESHOLD:I = 0x3e8

.field private static final SHOULD_CONTINUE:I = 0x2

.field private static final SHOULD_FLUSH:I = 0x3

.field private static final SHOULD_SEND:I = 0x0

.field private static final SHOULD_STOP:I = 0x1


# instance fields
.field private mCloseFrame:Lcom/helpshift/websockets/WebSocketFrame;

.field private mFlushNeeded:Z

.field private final mFrames:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/helpshift/websockets/WebSocketFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final mPMCE:Lcom/helpshift/websockets/PerMessageCompressionExtension;

.field private mStopRequested:Z

.field private mStopped:Z


# direct methods
.method public constructor <init>(Lcom/helpshift/websockets/WebSocket;)V
    .registers 4

    .line 49
    sget-object v0, Lcom/helpshift/websockets/ThreadType;->WRITING_THREAD:Lcom/helpshift/websockets/ThreadType;

    const-string v1, "WritingThread"

    invoke-direct {p0, v1, p1, v0}, Lcom/helpshift/websockets/WebSocketThread;-><init>(Ljava/lang/String;Lcom/helpshift/websockets/WebSocket;Lcom/helpshift/websockets/ThreadType;)V

    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/helpshift/websockets/WritingThread;->mFrames:Ljava/util/LinkedList;

    .line 52
    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocket;->getPerMessageCompressionExtension()Lcom/helpshift/websockets/PerMessageCompressionExtension;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/websockets/WritingThread;->mPMCE:Lcom/helpshift/websockets/PerMessageCompressionExtension;

    return-void
.end method

.method private addHighPriorityFrame(Lcom/helpshift/websockets/WebSocketFrame;)V
    .registers 5

    .line 201
    iget-object v0, p0, Lcom/helpshift/websockets/WritingThread;->mFrames:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/websockets/WebSocketFrame;

    .line 203
    invoke-static {v2}, Lcom/helpshift/websockets/WritingThread;->isHighPriorityFrame(Lcom/helpshift/websockets/WebSocketFrame;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_1d

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 210
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/helpshift/websockets/WritingThread;->mFrames:Ljava/util/LinkedList;

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private changeToClosing()V
    .registers 4

    .line 439
    iget-object v0, p0, Lcom/helpshift/websockets/WritingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->getStateManager()Lcom/helpshift/websockets/StateManager;

    move-result-object v0

    .line 443
    monitor-enter v0

    .line 445
    :try_start_7
    invoke-virtual {v0}, Lcom/helpshift/websockets/StateManager;->getState()Lcom/helpshift/websockets/WebSocketState;

    move-result-object v1

    .line 448
    sget-object v2, Lcom/helpshift/websockets/WebSocketState;->CLOSING:Lcom/helpshift/websockets/WebSocketState;

    if-eq v1, v2, :cond_1a

    sget-object v2, Lcom/helpshift/websockets/WebSocketState;->CLOSED:Lcom/helpshift/websockets/WebSocketState;

    if-eq v1, v2, :cond_1a

    .line 450
    sget-object v1, Lcom/helpshift/websockets/StateManager$CloseInitiator;->CLIENT:Lcom/helpshift/websockets/StateManager$CloseInitiator;

    invoke-virtual {v0, v1}, Lcom/helpshift/websockets/StateManager;->changeToClosing(Lcom/helpshift/websockets/StateManager$CloseInitiator;)V

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 454
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_2a

    if-eqz v1, :cond_29

    .line 458
    iget-object v0, p0, Lcom/helpshift/websockets/WritingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->getListenerManager()Lcom/helpshift/websockets/ListenerManager;

    move-result-object v0

    sget-object v1, Lcom/helpshift/websockets/WebSocketState;->CLOSING:Lcom/helpshift/websockets/WebSocketState;

    invoke-virtual {v0, v1}, Lcom/helpshift/websockets/ListenerManager;->callOnStateChanged(Lcom/helpshift/websockets/WebSocketState;)V

    :cond_29
    return-void

    :catchall_2a
    move-exception v1

    .line 454
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method private doFlush()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    .line 361
    :try_start_0
    invoke-direct {p0}, Lcom/helpshift/websockets/WritingThread;->flush()V

    .line 363
    monitor-enter p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_c

    const/4 v0, 0x0

    .line 364
    :try_start_5
    iput-boolean v0, p0, Lcom/helpshift/websockets/WritingThread;->mFlushNeeded:Z

    .line 365
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    :try_start_b
    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_c} :catch_c

    :catch_c
    move-exception v0

    .line 369
    new-instance v1, Lcom/helpshift/websockets/WebSocketException;

    sget-object v2, Lcom/helpshift/websockets/WebSocketError;->FLUSH_ERROR:Lcom/helpshift/websockets/WebSocketError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Flushing frames to the server failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/helpshift/websockets/WebSocketException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 374
    iget-object v0, p0, Lcom/helpshift/websockets/WritingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->getListenerManager()Lcom/helpshift/websockets/ListenerManager;

    move-result-object v0

    .line 375
    invoke-virtual {v0, v1}, Lcom/helpshift/websockets/ListenerManager;->callOnError(Lcom/helpshift/websockets/WebSocketException;)V

    const/4 v2, 0x0

    .line 376
    invoke-virtual {v0, v1, v2}, Lcom/helpshift/websockets/ListenerManager;->callOnSendError(Lcom/helpshift/websockets/WebSocketException;Lcom/helpshift/websockets/WebSocketFrame;)V

    .line 378
    throw v1
.end method

.method private flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/helpshift/websockets/WritingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->getOutput()Lcom/helpshift/websockets/WebSocketOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocketOutputStream;->flush()V

    return-void
.end method

.method private flushIfLongInterval(J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v2, v0, p1

    const-wide/16 v4, 0x3e8

    cmp-long v6, v4, v2

    if-gez v6, :cond_10

    .line 346
    invoke-direct {p0}, Lcom/helpshift/websockets/WritingThread;->doFlush()V

    return-wide v0

    :cond_10
    return-wide p1
.end method

.method private flushIgnoreError()V
    .registers 1

    .line 226
    :try_start_0
    invoke-direct {p0}, Lcom/helpshift/websockets/WritingThread;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method private isFlushNeeded(Z)Z
    .registers 2

    if-nez p1, :cond_15

    .line 335
    iget-object p1, p0, Lcom/helpshift/websockets/WritingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocket;->isAutoFlush()Z

    move-result p1

    if-nez p1, :cond_15

    iget-boolean p1, p0, Lcom/helpshift/websockets/WritingThread;->mFlushNeeded:Z

    if-nez p1, :cond_15

    iget-object p1, p0, Lcom/helpshift/websockets/WritingThread;->mCloseFrame:Lcom/helpshift/websockets/WebSocketFrame;

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
    return p1
.end method

.method private static isHighPriorityFrame(Lcom/helpshift/websockets/WebSocketFrame;)Z
    .registers 2

    .line 56
    invoke-virtual {p0}, Lcom/helpshift/websockets/WebSocketFrame;->isPingFrame()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/helpshift/websockets/WebSocketFrame;->isPongFrame()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private main()V
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/helpshift/websockets/WritingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->onWritingThreadStarted()V

    .line 91
    :goto_5
    invoke-direct {p0}, Lcom/helpshift/websockets/WritingThread;->waitForFrames()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    goto :goto_1d

    :cond_d
    const/4 v2, 0x3

    if-ne v0, v2, :cond_14

    .line 97
    invoke-direct {p0}, Lcom/helpshift/websockets/WritingThread;->flushIgnoreError()V

    goto :goto_5

    :cond_14
    const/4 v2, 0x2

    if-ne v0, v2, :cond_18

    goto :goto_5

    :cond_18
    const/4 v0, 0x0

    .line 106
    :try_start_19
    invoke-direct {p0, v0}, Lcom/helpshift/websockets/WritingThread;->sendFrames(Z)V
    :try_end_1c
    .catch Lcom/helpshift/websockets/WebSocketException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_5

    .line 116
    :catch_1d
    :goto_1d
    :try_start_1d
    invoke-direct {p0, v1}, Lcom/helpshift/websockets/WritingThread;->sendFrames(Z)V
    :try_end_20
    .catch Lcom/helpshift/websockets/WebSocketException; {:try_start_1d .. :try_end_20} :catch_20

    :catch_20
    return-void
.end method

.method private notifyFinished()V
    .registers 3

    .line 464
    iget-object v0, p0, Lcom/helpshift/websockets/WritingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    iget-object v1, p0, Lcom/helpshift/websockets/WritingThread;->mCloseFrame:Lcom/helpshift/websockets/WebSocketFrame;

    invoke-virtual {v0, v1}, Lcom/helpshift/websockets/WebSocket;->onWritingThreadFinished(Lcom/helpshift/websockets/WebSocketFrame;)V

    return-void
.end method

.method private sendFrame(Lcom/helpshift/websockets/WebSocketFrame;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/helpshift/websockets/WritingThread;->mPMCE:Lcom/helpshift/websockets/PerMessageCompressionExtension;

    invoke-static {p1, v0}, Lcom/helpshift/websockets/WebSocketFrame;->compressFrame(Lcom/helpshift/websockets/WebSocketFrame;Lcom/helpshift/websockets/PerMessageCompressionExtension;)Lcom/helpshift/websockets/WebSocketFrame;

    move-result-object p1

    .line 388
    iget-object v0, p0, Lcom/helpshift/websockets/WritingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->getListenerManager()Lcom/helpshift/websockets/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpshift/websockets/ListenerManager;->callOnSendingFrame(Lcom/helpshift/websockets/WebSocketFrame;)V

    .line 393
    iget-object v0, p0, Lcom/helpshift/websockets/WritingThread;->mCloseFrame:Lcom/helpshift/websockets/WebSocketFrame;

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_1e

    .line 398
    :cond_15
    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocketFrame;->isCloseFrame()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 399
    iput-object p1, p0, Lcom/helpshift/websockets/WritingThread;->mCloseFrame:Lcom/helpshift/websockets/WebSocketFrame;

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    if-eqz v0, :cond_2a

    .line 404
    iget-object v0, p0, Lcom/helpshift/websockets/WritingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->getListenerManager()Lcom/helpshift/websockets/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpshift/websockets/ListenerManager;->callOnFrameUnsent(Lcom/helpshift/websockets/WebSocketFrame;)V

    return-void

    .line 409
    :cond_2a
    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocketFrame;->isCloseFrame()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 412
    invoke-direct {p0}, Lcom/helpshift/websockets/WritingThread;->changeToClosing()V

    .line 417
    :cond_33
    :try_start_33
    iget-object v0, p0, Lcom/helpshift/websockets/WritingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->getOutput()Lcom/helpshift/websockets/WebSocketOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpshift/websockets/WebSocketOutputStream;->write(Lcom/helpshift/websockets/WebSocketFrame;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3c} :catch_46

    .line 434
    iget-object v0, p0, Lcom/helpshift/websockets/WritingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->getListenerManager()Lcom/helpshift/websockets/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpshift/websockets/ListenerManager;->callOnFrameSent(Lcom/helpshift/websockets/WebSocketFrame;)V

    return-void

    :catch_46
    move-exception v0

    .line 421
    new-instance v1, Lcom/helpshift/websockets/WebSocketException;

    sget-object v2, Lcom/helpshift/websockets/WebSocketError;->IO_ERROR_IN_WRITING:Lcom/helpshift/websockets/WebSocketError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An I/O error occurred when a frame was tried to be sent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/helpshift/websockets/WebSocketException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 426
    iget-object v0, p0, Lcom/helpshift/websockets/WritingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->getListenerManager()Lcom/helpshift/websockets/ListenerManager;

    move-result-object v0

    .line 427
    invoke-virtual {v0, v1}, Lcom/helpshift/websockets/ListenerManager;->callOnError(Lcom/helpshift/websockets/WebSocketException;)V

    .line 428
    invoke-virtual {v0, v1, p1}, Lcom/helpshift/websockets/ListenerManager;->callOnSendError(Lcom/helpshift/websockets/WebSocketException;Lcom/helpshift/websockets/WebSocketFrame;)V

    .line 430
    throw v1
.end method

.method private sendFrames(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 293
    :goto_4
    monitor-enter p0

    .line 295
    :try_start_5
    iget-object v2, p0, Lcom/helpshift/websockets/WritingThread;->mFrames:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/websockets/WebSocketFrame;

    .line 298
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    if-nez v2, :cond_1d

    .line 303
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_42

    .line 328
    invoke-direct {p0, p1}, Lcom/helpshift/websockets/WritingThread;->isFlushNeeded(Z)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 329
    invoke-direct {p0}, Lcom/helpshift/websockets/WritingThread;->doFlush()V

    :cond_1c
    return-void

    .line 305
    :cond_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_42

    .line 308
    invoke-direct {p0, v2}, Lcom/helpshift/websockets/WritingThread;->sendFrame(Lcom/helpshift/websockets/WebSocketFrame;)V

    .line 311
    invoke-virtual {v2}, Lcom/helpshift/websockets/WebSocketFrame;->isPingFrame()Z

    move-result v3

    if-nez v3, :cond_3a

    invoke-virtual {v2}, Lcom/helpshift/websockets/WebSocketFrame;->isPongFrame()Z

    move-result v2

    if-eqz v2, :cond_2e

    goto :goto_3a

    .line 319
    :cond_2e
    invoke-direct {p0, p1}, Lcom/helpshift/websockets/WritingThread;->isFlushNeeded(Z)Z

    move-result v2

    if-nez v2, :cond_35

    goto :goto_4

    .line 325
    :cond_35
    invoke-direct {p0, v0, v1}, Lcom/helpshift/websockets/WritingThread;->flushIfLongInterval(J)J

    move-result-wide v0

    goto :goto_4

    .line 313
    :cond_3a
    :goto_3a
    invoke-direct {p0}, Lcom/helpshift/websockets/WritingThread;->doFlush()V

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_4

    :catchall_42
    move-exception p1

    .line 305
    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p1

    return-void
.end method

.method private waitForFrames()I
    .registers 5

    .line 239
    monitor-enter p0

    .line 241
    :try_start_1
    iget-boolean v0, p0, Lcom/helpshift/websockets/WritingThread;->mStopRequested:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 242
    monitor-exit p0

    return v1

    .line 246
    :cond_8
    iget-object v0, p0, Lcom/helpshift/websockets/WritingThread;->mCloseFrame:Lcom/helpshift/websockets/WebSocketFrame;

    if-eqz v0, :cond_e

    .line 247
    monitor-exit p0

    return v1

    .line 251
    :cond_e
    iget-object v0, p0, Lcom/helpshift/websockets/WritingThread;->mFrames:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-nez v0, :cond_23

    .line 253
    iget-boolean v0, p0, Lcom/helpshift/websockets/WritingThread;->mFlushNeeded:Z

    if-eqz v0, :cond_20

    .line 254
    iput-boolean v3, p0, Lcom/helpshift/websockets/WritingThread;->mFlushNeeded:Z

    .line 255
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_3e

    return v2

    .line 261
    :cond_20
    :try_start_20
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_3e

    .line 267
    :catch_23
    :cond_23
    :try_start_23
    iget-boolean v0, p0, Lcom/helpshift/websockets/WritingThread;->mStopRequested:Z

    if-eqz v0, :cond_29

    .line 268
    monitor-exit p0

    return v1

    .line 271
    :cond_29
    iget-object v0, p0, Lcom/helpshift/websockets/WritingThread;->mFrames:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_3c

    .line 272
    iget-boolean v0, p0, Lcom/helpshift/websockets/WritingThread;->mFlushNeeded:Z

    if-eqz v0, :cond_39

    .line 273
    iput-boolean v3, p0, Lcom/helpshift/websockets/WritingThread;->mFlushNeeded:Z

    .line 274
    monitor-exit p0

    return v2

    :cond_39
    const/4 v0, 0x2

    .line 278
    monitor-exit p0

    return v0

    .line 280
    :cond_3c
    monitor-exit p0

    return v3

    :catchall_3e
    move-exception v0

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_23 .. :try_end_40} :catchall_3e

    throw v0
.end method


# virtual methods
.method public queueFlush()V
    .registers 2

    .line 215
    monitor-enter p0

    const/4 v0, 0x1

    .line 216
    :try_start_2
    iput-boolean v0, p0, Lcom/helpshift/websockets/WritingThread;->mFlushNeeded:Z

    .line 219
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 220
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public queueFrame(Lcom/helpshift/websockets/WebSocketFrame;)Z
    .registers 4

    .line 134
    monitor-enter p0

    .line 137
    :catch_1
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/helpshift/websockets/WritingThread;->mStopped:Z

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    .line 139
    monitor-exit p0

    return p1

    .line 144
    :cond_8
    iget-boolean v0, p0, Lcom/helpshift/websockets/WritingThread;->mStopRequested:Z

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/helpshift/websockets/WritingThread;->mCloseFrame:Lcom/helpshift/websockets/WebSocketFrame;

    if-eqz v0, :cond_11

    goto :goto_2e

    .line 150
    :cond_11
    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocketFrame;->isControlFrame()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_2e

    .line 156
    :cond_18
    iget-object v0, p0, Lcom/helpshift/websockets/WritingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->getFrameQueueSize()I

    move-result v0

    if-nez v0, :cond_21

    goto :goto_2e

    .line 165
    :cond_21
    iget-object v1, p0, Lcom/helpshift/websockets/WritingThread;->mFrames:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_43

    if-ge v1, v0, :cond_2a

    goto :goto_2e

    .line 172
    :cond_2a
    :try_start_2a
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2d} :catch_1
    .catchall {:try_start_2a .. :try_end_2d} :catchall_43

    goto :goto_1

    .line 179
    :cond_2e
    :goto_2e
    :try_start_2e
    invoke-static {p1}, Lcom/helpshift/websockets/WritingThread;->isHighPriorityFrame(Lcom/helpshift/websockets/WebSocketFrame;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 181
    invoke-direct {p0, p1}, Lcom/helpshift/websockets/WritingThread;->addHighPriorityFrame(Lcom/helpshift/websockets/WebSocketFrame;)V

    goto :goto_3d

    .line 185
    :cond_38
    iget-object v0, p0, Lcom/helpshift/websockets/WritingThread;->mFrames:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 189
    :goto_3d
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 190
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_43
    move-exception p1

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_2e .. :try_end_45} :catchall_43

    throw p1

    return-void
.end method

.method public requestStop()V
    .registers 2

    .line 124
    monitor-enter p0

    const/4 v0, 0x1

    .line 126
    :try_start_2
    iput-boolean v0, p0, Lcom/helpshift/websockets/WritingThread;->mStopRequested:Z

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 130
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public runMain()V
    .registers 6

    .line 62
    :try_start_0
    invoke-direct {p0}, Lcom/helpshift/websockets/WritingThread;->main()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_2d

    :catch_4
    move-exception v0

    .line 66
    new-instance v1, Lcom/helpshift/websockets/WebSocketException;

    sget-object v2, Lcom/helpshift/websockets/WebSocketError;->UNEXPECTED_ERROR_IN_WRITING_THREAD:Lcom/helpshift/websockets/WebSocketError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An uncaught throwable was detected in the writing thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/helpshift/websockets/WebSocketException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    iget-object v0, p0, Lcom/helpshift/websockets/WritingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->getListenerManager()Lcom/helpshift/websockets/ListenerManager;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v1}, Lcom/helpshift/websockets/ListenerManager;->callOnError(Lcom/helpshift/websockets/WebSocketException;)V

    .line 73
    invoke-virtual {v0, v1}, Lcom/helpshift/websockets/ListenerManager;->callOnUnexpectedError(Lcom/helpshift/websockets/WebSocketException;)V

    .line 76
    :goto_2d
    monitor-enter p0

    const/4 v0, 0x1

    .line 78
    :try_start_2f
    iput-boolean v0, p0, Lcom/helpshift/websockets/WritingThread;->mStopped:Z

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 80
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_39

    .line 83
    invoke-direct {p0}, Lcom/helpshift/websockets/WritingThread;->notifyFinished()V

    return-void

    :catchall_39
    move-exception v0

    .line 80
    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0
.end method
