.class Lcom/helpshift/websockets/ReadingThread;
.super Lcom/helpshift/websockets/WebSocketThread;
.source "ReadingThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/websockets/ReadingThread$CloseTask;
    }
.end annotation


# instance fields
.field private mCloseDelay:J

.field private mCloseFrame:Lcom/helpshift/websockets/WebSocketFrame;

.field private mCloseLock:Ljava/lang/Object;

.field private mCloseTask:Lcom/helpshift/websockets/ReadingThread$CloseTask;

.field private mCloseTimer:Ljava/util/Timer;

.field private mContinuation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/helpshift/websockets/WebSocketFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mNotWaitForCloseFrame:Z

.field private final mPMCE:Lcom/helpshift/websockets/PerMessageCompressionExtension;

.field private mStopRequested:Z


# direct methods
.method public constructor <init>(Lcom/helpshift/websockets/WebSocket;)V
    .registers 4

    .line 59
    sget-object v0, Lcom/helpshift/websockets/ThreadType;->READING_THREAD:Lcom/helpshift/websockets/ThreadType;

    const-string v1, "ReadingThread"

    invoke-direct {p0, v1, p1, v0}, Lcom/helpshift/websockets/WebSocketThread;-><init>(Ljava/lang/String;Lcom/helpshift/websockets/WebSocket;Lcom/helpshift/websockets/ThreadType;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mContinuation:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mCloseLock:Ljava/lang/Object;

    .line 61
    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocket;->getPerMessageCompressionExtension()Lcom/helpshift/websockets/PerMessageCompressionExtension;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/websockets/ReadingThread;->mPMCE:Lcom/helpshift/websockets/PerMessageCompressionExtension;

    return-void
.end method

.method private callOnBinaryMessage([B)V
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->getListenerManager()Lcom/helpshift/websockets/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpshift/websockets/ListenerManager;->callOnBinaryMessage([B)V

    return-void
.end method

.method private callOnError(Lcom/helpshift/websockets/WebSocketException;)V
    .registers 3

    .line 198
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->getListenerManager()Lcom/helpshift/websockets/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpshift/websockets/ListenerManager;->callOnError(Lcom/helpshift/websockets/WebSocketException;)V

    return-void
.end method

.method private callOnTextMessage(Ljava/lang/String;)V
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->getListenerManager()Lcom/helpshift/websockets/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpshift/websockets/ListenerManager;->callOnTextMessage(Ljava/lang/String;)V

    return-void
.end method

.method private callOnTextMessage([B)V
    .registers 7

    .line 157
    :try_start_0
    invoke-static {p1}, Lcom/helpshift/websockets/Misc;->toStringUTF8([B)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-direct {p0, v0}, Lcom/helpshift/websockets/ReadingThread;->callOnTextMessage(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_31

    :catch_8
    move-exception v0

    .line 164
    new-instance v1, Lcom/helpshift/websockets/WebSocketException;

    sget-object v2, Lcom/helpshift/websockets/WebSocketError;->TEXT_MESSAGE_CONSTRUCTION_ERROR:Lcom/helpshift/websockets/WebSocketError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to convert payload data into a string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/helpshift/websockets/WebSocketException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    invoke-direct {p0, v1}, Lcom/helpshift/websockets/ReadingThread;->callOnError(Lcom/helpshift/websockets/WebSocketException;)V

    .line 170
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->getListenerManager()Lcom/helpshift/websockets/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/helpshift/websockets/ListenerManager;->callOnTextMessageError(Lcom/helpshift/websockets/WebSocketException;[B)V

    :goto_31
    return-void
.end method

.method private cancelClose()V
    .registers 3

    .line 943
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 944
    :try_start_3
    invoke-direct {p0}, Lcom/helpshift/websockets/ReadingThread;->cancelCloseTask()V

    .line 945
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private cancelCloseTask()V
    .registers 3

    .line 950
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mCloseTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 951
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 952
    iput-object v1, p0, Lcom/helpshift/websockets/ReadingThread;->mCloseTimer:Ljava/util/Timer;

    .line 955
    :cond_a
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mCloseTask:Lcom/helpshift/websockets/ReadingThread$CloseTask;

    if-eqz v0, :cond_13

    .line 956
    invoke-virtual {v0}, Lcom/helpshift/websockets/ReadingThread$CloseTask;->cancel()Z

    .line 957
    iput-object v1, p0, Lcom/helpshift/websockets/ReadingThread;->mCloseTask:Lcom/helpshift/websockets/ReadingThread$CloseTask;

    :cond_13
    return-void
.end method

.method private concatenatePayloads(Ljava/util/List;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/websockets/WebSocketFrame;",
            ">;)[B"
        }
    .end annotation

    .line 667
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 670
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/websockets/WebSocketFrame;

    .line 672
    invoke-virtual {v2}, Lcom/helpshift/websockets/WebSocketFrame;->getPayload()[B

    move-result-object v2

    if-eqz v2, :cond_9

    .line 675
    array-length v3, v2

    if-nez v3, :cond_1f

    goto :goto_9

    .line 680
    :cond_1f
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_9

    .line 684
    :cond_23
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_27} :catch_2a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_27} :catch_28

    return-object p1

    :catch_28
    move-exception v0

    goto :goto_2b

    :catch_2a
    move-exception v0

    .line 694
    :goto_2b
    new-instance v1, Lcom/helpshift/websockets/WebSocketException;

    sget-object v2, Lcom/helpshift/websockets/WebSocketError;->MESSAGE_CONSTRUCTION_ERROR:Lcom/helpshift/websockets/WebSocketError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to concatenate payloads of multiple frames to construct a message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/helpshift/websockets/WebSocketException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 699
    invoke-direct {p0, v1}, Lcom/helpshift/websockets/ReadingThread;->callOnError(Lcom/helpshift/websockets/WebSocketException;)V

    .line 700
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->getListenerManager()Lcom/helpshift/websockets/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/helpshift/websockets/ListenerManager;->callOnMessageError(Lcom/helpshift/websockets/WebSocketException;Ljava/util/List;)V

    const/16 p1, 0x3f1

    .line 705
    invoke-virtual {v1}, Lcom/helpshift/websockets/WebSocketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/helpshift/websockets/WebSocketFrame;->createCloseFrame(ILjava/lang/String;)Lcom/helpshift/websockets/WebSocketFrame;

    move-result-object p1

    .line 708
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0, p1}, Lcom/helpshift/websockets/WebSocket;->sendFrame(Lcom/helpshift/websockets/WebSocketFrame;)Lcom/helpshift/websockets/WebSocket;

    const/4 p1, 0x0

    return-object p1
.end method

.method private createCloseFrame(Lcom/helpshift/websockets/WebSocketException;)Lcom/helpshift/websockets/WebSocketFrame;
    .registers 5

    .line 525
    sget-object v0, Lcom/helpshift/websockets/ReadingThread$1;->$SwitchMap$com$helpshift$websockets$WebSocketError:[I

    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocketException;->getError()Lcom/helpshift/websockets/WebSocketError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/websockets/WebSocketError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x3ea

    const/16 v2, 0x3f0

    packed-switch v0, :pswitch_data_22

    :pswitch_13
    const/16 v1, 0x3f0

    goto :goto_18

    :pswitch_16
    const/16 v1, 0x3f1

    .line 566
    :goto_18
    :pswitch_18
    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocketException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/helpshift/websockets/WebSocketFrame;->createCloseFrame(ILjava/lang/String;)Lcom/helpshift/websockets/WebSocketFrame;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_16
        :pswitch_16
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method

.method private decompress([B)[B
    .registers 4

    .line 735
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mPMCE:Lcom/helpshift/websockets/PerMessageCompressionExtension;

    invoke-virtual {v0, p1}, Lcom/helpshift/websockets/PerMessageCompressionExtension;->decompress([B)[B

    move-result-object p1
    :try_end_6
    .catch Lcom/helpshift/websockets/WebSocketException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception v0

    .line 742
    invoke-direct {p0, v0}, Lcom/helpshift/websockets/ReadingThread;->callOnError(Lcom/helpshift/websockets/WebSocketException;)V

    .line 743
    iget-object v1, p0, Lcom/helpshift/websockets/ReadingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v1}, Lcom/helpshift/websockets/WebSocket;->getListenerManager()Lcom/helpshift/websockets/ListenerManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/helpshift/websockets/ListenerManager;->callOnMessageDecompressionError(Lcom/helpshift/websockets/WebSocketException;[B)V

    const/16 p1, 0x3eb

    .line 748
    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/helpshift/websockets/WebSocketFrame;->createCloseFrame(ILjava/lang/String;)Lcom/helpshift/websockets/WebSocketFrame;

    move-result-object p1

    .line 751
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0, p1}, Lcom/helpshift/websockets/WebSocket;->sendFrame(Lcom/helpshift/websockets/WebSocketFrame;)Lcom/helpshift/websockets/WebSocket;

    const/4 p1, 0x0

    return-object p1
.end method

.method private getMessage(Lcom/helpshift/websockets/WebSocketFrame;)[B
    .registers 4

    .line 717
    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocketFrame;->getPayload()[B

    move-result-object v0

    .line 721
    iget-object v1, p0, Lcom/helpshift/websockets/ReadingThread;->mPMCE:Lcom/helpshift/websockets/PerMessageCompressionExtension;

    if-eqz v1, :cond_12

    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocketFrame;->getRsv1()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 723
    invoke-direct {p0, v0}, Lcom/helpshift/websockets/ReadingThread;->decompress([B)[B

    move-result-object v0

    :cond_12
    return-object v0
.end method

.method private getMessage(Ljava/util/List;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/websockets/WebSocketFrame;",
            ">;)[B"
        }
    .end annotation

    .line 644
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mContinuation:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/helpshift/websockets/ReadingThread;->concatenatePayloads(Ljava/util/List;)[B

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 654
    :cond_a
    iget-object v1, p0, Lcom/helpshift/websockets/ReadingThread;->mPMCE:Lcom/helpshift/websockets/PerMessageCompressionExtension;

    if-eqz v1, :cond_1f

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpshift/websockets/WebSocketFrame;

    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocketFrame;->getRsv1()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 656
    invoke-direct {p0, v0}, Lcom/helpshift/websockets/ReadingThread;->decompress([B)[B

    move-result-object v0

    :cond_1f
    return-object v0
.end method

.method private handleBinaryFrame(Lcom/helpshift/websockets/WebSocketFrame;)Z
    .registers 4

    .line 785
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->getListenerManager()Lcom/helpshift/websockets/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpshift/websockets/ListenerManager;->callOnBinaryFrame(Lcom/helpshift/websockets/WebSocketFrame;)V

    .line 788
    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocketFrame;->getFin()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_16

    .line 790
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mContinuation:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    .line 798
    :cond_16
    invoke-direct {p0, p1}, Lcom/helpshift/websockets/ReadingThread;->getMessage(Lcom/helpshift/websockets/WebSocketFrame;)[B

    move-result-object p1

    .line 801
    invoke-direct {p0, p1}, Lcom/helpshift/websockets/ReadingThread;->callOnBinaryMessage([B)V

    return v1
.end method

.method private handleCloseFrame(Lcom/helpshift/websockets/WebSocketFrame;)Z
    .registers 6

    .line 810
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->getStateManager()Lcom/helpshift/websockets/StateManager;

    move-result-object v0

    .line 813
    iput-object p1, p0, Lcom/helpshift/websockets/ReadingThread;->mCloseFrame:Lcom/helpshift/websockets/WebSocketFrame;

    .line 817
    monitor-enter v0

    .line 819
    :try_start_9
    invoke-virtual {v0}, Lcom/helpshift/websockets/StateManager;->getState()Lcom/helpshift/websockets/WebSocketState;

    move-result-object v1

    .line 822
    sget-object v2, Lcom/helpshift/websockets/WebSocketState;->CLOSING:Lcom/helpshift/websockets/WebSocketState;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_22

    sget-object v2, Lcom/helpshift/websockets/WebSocketState;->CLOSED:Lcom/helpshift/websockets/WebSocketState;

    if-eq v1, v2, :cond_22

    .line 824
    sget-object v1, Lcom/helpshift/websockets/StateManager$CloseInitiator;->SERVER:Lcom/helpshift/websockets/StateManager$CloseInitiator;

    invoke-virtual {v0, v1}, Lcom/helpshift/websockets/StateManager;->changeToClosing(Lcom/helpshift/websockets/StateManager$CloseInitiator;)V

    .line 836
    iget-object v1, p0, Lcom/helpshift/websockets/ReadingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v1, p1}, Lcom/helpshift/websockets/WebSocket;->sendFrame(Lcom/helpshift/websockets/WebSocketFrame;)Lcom/helpshift/websockets/WebSocket;

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    .line 840
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_3b

    if-eqz v1, :cond_31

    .line 844
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->getListenerManager()Lcom/helpshift/websockets/ListenerManager;

    move-result-object v0

    sget-object v1, Lcom/helpshift/websockets/WebSocketState;->CLOSING:Lcom/helpshift/websockets/WebSocketState;

    invoke-virtual {v0, v1}, Lcom/helpshift/websockets/ListenerManager;->callOnStateChanged(Lcom/helpshift/websockets/WebSocketState;)V

    .line 848
    :cond_31
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->getListenerManager()Lcom/helpshift/websockets/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpshift/websockets/ListenerManager;->callOnCloseFrame(Lcom/helpshift/websockets/WebSocketFrame;)V

    return v3

    :catchall_3b
    move-exception p1

    .line 840
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method private handleContinuationFrame(Lcom/helpshift/websockets/WebSocketFrame;)Z
    .registers 5

    .line 603
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->getListenerManager()Lcom/helpshift/websockets/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpshift/websockets/ListenerManager;->callOnContinuationFrame(Lcom/helpshift/websockets/WebSocketFrame;)V

    .line 606
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mContinuation:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocketFrame;->getFin()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_16

    return v0

    .line 616
    :cond_16
    iget-object p1, p0, Lcom/helpshift/websockets/ReadingThread;->mContinuation:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/helpshift/websockets/ReadingThread;->getMessage(Ljava/util/List;)[B

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_20

    return v1

    .line 625
    :cond_20
    iget-object v2, p0, Lcom/helpshift/websockets/ReadingThread;->mContinuation:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/websockets/WebSocketFrame;

    invoke-virtual {v1}, Lcom/helpshift/websockets/WebSocketFrame;->isTextFrame()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 627
    invoke-direct {p0, p1}, Lcom/helpshift/websockets/ReadingThread;->callOnTextMessage([B)V

    goto :goto_35

    .line 631
    :cond_32
    invoke-direct {p0, p1}, Lcom/helpshift/websockets/ReadingThread;->callOnBinaryMessage([B)V

    .line 635
    :goto_35
    iget-object p1, p0, Lcom/helpshift/websockets/ReadingThread;->mContinuation:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return v0
.end method

.method private handleFrame(Lcom/helpshift/websockets/WebSocketFrame;)Z
    .registers 5

    .line 572
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->getListenerManager()Lcom/helpshift/websockets/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpshift/websockets/ListenerManager;->callOnFrame(Lcom/helpshift/websockets/WebSocketFrame;)V

    .line 575
    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocketFrame;->getOpcode()I

    move-result v0

    if-eqz v0, :cond_32

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_28

    packed-switch v0, :pswitch_data_38

    return v1

    .line 592
    :pswitch_19
    invoke-direct {p0, p1}, Lcom/helpshift/websockets/ReadingThread;->handlePongFrame(Lcom/helpshift/websockets/WebSocketFrame;)Z

    move-result p1

    return p1

    .line 589
    :pswitch_1e
    invoke-direct {p0, p1}, Lcom/helpshift/websockets/ReadingThread;->handlePingFrame(Lcom/helpshift/websockets/WebSocketFrame;)Z

    move-result p1

    return p1

    .line 586
    :pswitch_23
    invoke-direct {p0, p1}, Lcom/helpshift/websockets/ReadingThread;->handleCloseFrame(Lcom/helpshift/websockets/WebSocketFrame;)Z

    move-result p1

    return p1

    .line 583
    :cond_28
    invoke-direct {p0, p1}, Lcom/helpshift/websockets/ReadingThread;->handleBinaryFrame(Lcom/helpshift/websockets/WebSocketFrame;)Z

    move-result p1

    return p1

    .line 580
    :cond_2d
    invoke-direct {p0, p1}, Lcom/helpshift/websockets/ReadingThread;->handleTextFrame(Lcom/helpshift/websockets/WebSocketFrame;)Z

    move-result p1

    return p1

    .line 577
    :cond_32
    invoke-direct {p0, p1}, Lcom/helpshift/websockets/ReadingThread;->handleContinuationFrame(Lcom/helpshift/websockets/WebSocketFrame;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_38
    .packed-switch 0x8
        :pswitch_23
        :pswitch_1e
        :pswitch_19
    .end packed-switch
.end method

.method private handlePingFrame(Lcom/helpshift/websockets/WebSocketFrame;)Z
    .registers 3

    .line 857
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->getListenerManager()Lcom/helpshift/websockets/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpshift/websockets/ListenerManager;->callOnPingFrame(Lcom/helpshift/websockets/WebSocketFrame;)V

    .line 868
    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocketFrame;->getPayload()[B

    move-result-object p1

    invoke-static {p1}, Lcom/helpshift/websockets/WebSocketFrame;->createPongFrame([B)Lcom/helpshift/websockets/WebSocketFrame;

    move-result-object p1

    .line 871
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0, p1}, Lcom/helpshift/websockets/WebSocket;->sendFrame(Lcom/helpshift/websockets/WebSocketFrame;)Lcom/helpshift/websockets/WebSocket;

    const/4 p1, 0x1

    return p1
.end method

.method private handlePongFrame(Lcom/helpshift/websockets/WebSocketFrame;)Z
    .registers 3

    .line 880
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->getListenerManager()Lcom/helpshift/websockets/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpshift/websockets/ListenerManager;->callOnPongFrame(Lcom/helpshift/websockets/WebSocketFrame;)V

    const/4 p1, 0x1

    return p1
.end method

.method private handleTextFrame(Lcom/helpshift/websockets/WebSocketFrame;)Z
    .registers 4

    .line 760
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->getListenerManager()Lcom/helpshift/websockets/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpshift/websockets/ListenerManager;->callOnTextFrame(Lcom/helpshift/websockets/WebSocketFrame;)V

    .line 763
    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocketFrame;->getFin()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_16

    .line 765
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mContinuation:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    .line 773
    :cond_16
    invoke-direct {p0, p1}, Lcom/helpshift/websockets/ReadingThread;->getMessage(Lcom/helpshift/websockets/WebSocketFrame;)[B

    move-result-object p1

    .line 776
    invoke-direct {p0, p1}, Lcom/helpshift/websockets/ReadingThread;->callOnTextMessage([B)V

    return v1
.end method

.method private main()V
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->onReadingThreadStarted()V

    .line 91
    :cond_5
    monitor-enter p0

    .line 92
    :try_start_6
    iget-boolean v0, p0, Lcom/helpshift/websockets/ReadingThread;->mStopRequested:Z

    if-eqz v0, :cond_c

    .line 93
    monitor-exit p0

    goto :goto_1a

    .line 95
    :cond_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_21

    .line 98
    invoke-direct {p0}, Lcom/helpshift/websockets/ReadingThread;->readFrame()Lcom/helpshift/websockets/WebSocketFrame;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_1a

    .line 106
    :cond_14
    invoke-direct {p0, v0}, Lcom/helpshift/websockets/ReadingThread;->handleFrame(Lcom/helpshift/websockets/WebSocketFrame;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 114
    :goto_1a
    invoke-direct {p0}, Lcom/helpshift/websockets/ReadingThread;->waitForCloseFrame()V

    .line 117
    invoke-direct {p0}, Lcom/helpshift/websockets/ReadingThread;->cancelClose()V

    return-void

    :catchall_21
    move-exception v0

    .line 95
    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0

    return-void
.end method

.method private readFrame()Lcom/helpshift/websockets/WebSocketFrame;
    .registers 8

    const/4 v0, 0x0

    .line 208
    :try_start_1
    iget-object v1, p0, Lcom/helpshift/websockets/ReadingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v1}, Lcom/helpshift/websockets/WebSocket;->getInput()Lcom/helpshift/websockets/WebSocketInputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/websockets/WebSocketInputStream;->readFrame()Lcom/helpshift/websockets/WebSocketFrame;

    move-result-object v1
    :try_end_b
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_b} :catch_43
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_19
    .catch Lcom/helpshift/websockets/WebSocketException; {:try_start_1 .. :try_end_b} :catch_15

    .line 211
    :try_start_b
    invoke-direct {p0, v1}, Lcom/helpshift/websockets/ReadingThread;->verifyFrame(Lcom/helpshift/websockets/WebSocketFrame;)V
    :try_end_e
    .catch Ljava/io/InterruptedIOException; {:try_start_b .. :try_end_e} :catch_13
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_11
    .catch Lcom/helpshift/websockets/WebSocketException; {:try_start_b .. :try_end_e} :catch_f

    return-object v1

    :catch_f
    move-exception v2

    goto :goto_17

    :catch_11
    move-exception v2

    goto :goto_1b

    :catch_13
    move-exception v2

    goto :goto_45

    :catch_15
    move-exception v2

    move-object v1, v0

    :goto_17
    move-object v3, v2

    goto :goto_66

    :catch_19
    move-exception v2

    move-object v1, v0

    .line 230
    :goto_1b
    iget-boolean v3, p0, Lcom/helpshift/websockets/ReadingThread;->mStopRequested:Z

    if-eqz v3, :cond_26

    invoke-virtual {p0}, Lcom/helpshift/websockets/ReadingThread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_26

    return-object v0

    .line 237
    :cond_26
    new-instance v3, Lcom/helpshift/websockets/WebSocketException;

    sget-object v4, Lcom/helpshift/websockets/WebSocketError;->IO_ERROR_IN_READING:Lcom/helpshift/websockets/WebSocketError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "An I/O error occurred while a frame was being read from the web socket: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lcom/helpshift/websockets/WebSocketException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_66

    :catch_43
    move-exception v2

    move-object v1, v0

    .line 217
    :goto_45
    iget-boolean v3, p0, Lcom/helpshift/websockets/ReadingThread;->mStopRequested:Z

    if-eqz v3, :cond_4a

    return-object v0

    .line 224
    :cond_4a
    new-instance v3, Lcom/helpshift/websockets/WebSocketException;

    sget-object v4, Lcom/helpshift/websockets/WebSocketError;->INTERRUPTED_IN_READING:Lcom/helpshift/websockets/WebSocketError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Interruption occurred while a frame was being read from the web socket: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v2}, Ljava/io/InterruptedIOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lcom/helpshift/websockets/WebSocketException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    :goto_66
    instance-of v2, v3, Lcom/helpshift/websockets/NoMoreFrameException;

    const/4 v4, 0x1

    if-eqz v2, :cond_76

    .line 253
    iput-boolean v4, p0, Lcom/helpshift/websockets/ReadingThread;->mNotWaitForCloseFrame:Z

    .line 256
    iget-object v2, p0, Lcom/helpshift/websockets/ReadingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v2}, Lcom/helpshift/websockets/WebSocket;->isMissingCloseFrameAllowed()Z

    move-result v2

    if-eqz v2, :cond_76

    const/4 v4, 0x0

    :cond_76
    if-eqz v4, :cond_84

    .line 263
    invoke-direct {p0, v3}, Lcom/helpshift/websockets/ReadingThread;->callOnError(Lcom/helpshift/websockets/WebSocketException;)V

    .line 264
    iget-object v2, p0, Lcom/helpshift/websockets/ReadingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v2}, Lcom/helpshift/websockets/WebSocket;->getListenerManager()Lcom/helpshift/websockets/ListenerManager;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Lcom/helpshift/websockets/ListenerManager;->callOnFrameError(Lcom/helpshift/websockets/WebSocketException;Lcom/helpshift/websockets/WebSocketFrame;)V

    .line 268
    :cond_84
    invoke-direct {p0, v3}, Lcom/helpshift/websockets/ReadingThread;->createCloseFrame(Lcom/helpshift/websockets/WebSocketException;)Lcom/helpshift/websockets/WebSocketFrame;

    move-result-object v1

    .line 271
    iget-object v2, p0, Lcom/helpshift/websockets/ReadingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v2, v1}, Lcom/helpshift/websockets/WebSocket;->sendFrame(Lcom/helpshift/websockets/WebSocketFrame;)Lcom/helpshift/websockets/WebSocket;

    return-object v0
.end method

.method private scheduleClose()V
    .registers 3

    .line 928
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 929
    :try_start_3
    invoke-direct {p0}, Lcom/helpshift/websockets/ReadingThread;->cancelCloseTask()V

    .line 930
    invoke-direct {p0}, Lcom/helpshift/websockets/ReadingThread;->scheduleCloseTask()V

    .line 931
    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private scheduleCloseTask()V
    .registers 5

    .line 936
    new-instance v0, Lcom/helpshift/websockets/ReadingThread$CloseTask;

    invoke-direct {v0, p0}, Lcom/helpshift/websockets/ReadingThread$CloseTask;-><init>(Lcom/helpshift/websockets/ReadingThread;)V

    iput-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mCloseTask:Lcom/helpshift/websockets/ReadingThread$CloseTask;

    .line 937
    new-instance v0, Ljava/util/Timer;

    const-string v1, "ReadingThreadCloseTimer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mCloseTimer:Ljava/util/Timer;

    .line 938
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mCloseTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/helpshift/websockets/ReadingThread;->mCloseTask:Lcom/helpshift/websockets/ReadingThread$CloseTask;

    iget-wide v2, p0, Lcom/helpshift/websockets/ReadingThread;->mCloseDelay:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private verifyFrame(Lcom/helpshift/websockets/WebSocketFrame;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    .line 280
    invoke-direct {p0, p1}, Lcom/helpshift/websockets/ReadingThread;->verifyReservedBits(Lcom/helpshift/websockets/WebSocketFrame;)V

    .line 283
    invoke-direct {p0, p1}, Lcom/helpshift/websockets/ReadingThread;->verifyFrameOpcode(Lcom/helpshift/websockets/WebSocketFrame;)V

    .line 286
    invoke-direct {p0, p1}, Lcom/helpshift/websockets/ReadingThread;->verifyFrameMask(Lcom/helpshift/websockets/WebSocketFrame;)V

    .line 289
    invoke-direct {p0, p1}, Lcom/helpshift/websockets/ReadingThread;->verifyFrameFragmentation(Lcom/helpshift/websockets/WebSocketFrame;)V

    .line 292
    invoke-direct {p0, p1}, Lcom/helpshift/websockets/ReadingThread;->verifyFrameSize(Lcom/helpshift/websockets/WebSocketFrame;)V

    return-void
.end method

.method private verifyFrameFragmentation(Lcom/helpshift/websockets/WebSocketFrame;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    .line 452
    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocketFrame;->isControlFrame()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 454
    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocketFrame;->getFin()Z

    move-result p1

    if-eqz p1, :cond_d

    return-void

    .line 456
    :cond_d
    new-instance p1, Lcom/helpshift/websockets/WebSocketException;

    sget-object v0, Lcom/helpshift/websockets/WebSocketError;->FRAGMENTED_CONTROL_FRAME:Lcom/helpshift/websockets/WebSocketError;

    const-string v1, "A control frame is fragmented."

    invoke-direct {p1, v0, v1}, Lcom/helpshift/websockets/WebSocketException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;)V

    throw p1

    .line 466
    :cond_17
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mContinuation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 469
    :goto_22
    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocketFrame;->isContinuationFrame()Z

    move-result p1

    if-eqz p1, :cond_35

    if-eqz v0, :cond_2b

    return-void

    .line 473
    :cond_2b
    new-instance p1, Lcom/helpshift/websockets/WebSocketException;

    sget-object v0, Lcom/helpshift/websockets/WebSocketError;->UNEXPECTED_CONTINUATION_FRAME:Lcom/helpshift/websockets/WebSocketError;

    const-string v1, "A continuation frame was detected although a continuation had not started."

    invoke-direct {p1, v0, v1}, Lcom/helpshift/websockets/WebSocketException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;)V

    throw p1

    :cond_35
    if-nez v0, :cond_38

    return-void

    .line 486
    :cond_38
    new-instance p1, Lcom/helpshift/websockets/WebSocketException;

    sget-object v0, Lcom/helpshift/websockets/WebSocketError;->CONTINUATION_NOT_CLOSED:Lcom/helpshift/websockets/WebSocketError;

    const-string v1, "A non-control frame was detected although the existing continuation had not been closed."

    invoke-direct {p1, v0, v1}, Lcom/helpshift/websockets/WebSocketException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;)V

    throw p1
.end method

.method private verifyFrameMask(Lcom/helpshift/websockets/WebSocketFrame;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    .line 439
    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocketFrame;->getMask()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 441
    :cond_7
    new-instance p1, Lcom/helpshift/websockets/WebSocketException;

    sget-object v0, Lcom/helpshift/websockets/WebSocketError;->FRAME_MASKED:Lcom/helpshift/websockets/WebSocketError;

    const-string v1, "A frame from the server is masked."

    invoke-direct {p1, v0, v1}, Lcom/helpshift/websockets/WebSocketException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;)V

    throw p1
.end method

.method private verifyFrameOpcode(Lcom/helpshift/websockets/WebSocketFrame;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    .line 399
    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocketFrame;->getOpcode()I

    move-result v0

    if-eqz v0, :cond_39

    const/4 v1, 0x1

    if-eq v0, v1, :cond_39

    const/4 v1, 0x2

    if-eq v0, v1, :cond_39

    packed-switch v0, :pswitch_data_3a

    .line 414
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->isExtended()Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    .line 420
    :cond_18
    new-instance v0, Lcom/helpshift/websockets/WebSocketException;

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->UNKNOWN_OPCODE:Lcom/helpshift/websockets/WebSocketError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A frame has an unknown opcode: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocketFrame;->getOpcode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/helpshift/websockets/WebSocketException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;)V

    throw v0

    :cond_39
    :pswitch_39
    return-void

    :pswitch_data_3a
    .packed-switch 0x8
        :pswitch_39
        :pswitch_39
        :pswitch_39
    .end packed-switch
.end method

.method private verifyFrameSize(Lcom/helpshift/websockets/WebSocketFrame;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    .line 495
    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocketFrame;->isControlFrame()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 506
    :cond_7
    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocketFrame;->getPayload()[B

    move-result-object p1

    if-nez p1, :cond_e

    return-void

    :cond_e
    const/16 v0, 0x7d

    .line 513
    array-length v1, p1

    if-lt v0, v1, :cond_14

    return-void

    .line 515
    :cond_14
    new-instance v0, Lcom/helpshift/websockets/WebSocketException;

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->TOO_LONG_CONTROL_FRAME_PAYLOAD:Lcom/helpshift/websockets/WebSocketError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The payload size of a control frame exceeds the maximum size (125 bytes): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/helpshift/websockets/WebSocketException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;)V

    throw v0
.end method

.method private verifyReservedBit1(Lcom/helpshift/websockets/WebSocketFrame;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mPMCE:Lcom/helpshift/websockets/PerMessageCompressionExtension;

    if-eqz v0, :cond_b

    .line 321
    invoke-direct {p0, p1}, Lcom/helpshift/websockets/ReadingThread;->verifyReservedBit1ForPMCE(Lcom/helpshift/websockets/WebSocketFrame;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 328
    :cond_b
    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocketFrame;->getRsv1()Z

    move-result p1

    if-nez p1, :cond_12

    return-void

    .line 334
    :cond_12
    new-instance p1, Lcom/helpshift/websockets/WebSocketException;

    sget-object v0, Lcom/helpshift/websockets/WebSocketError;->UNEXPECTED_RESERVED_BIT:Lcom/helpshift/websockets/WebSocketError;

    const-string v1, "The RSV1 bit of a frame is set unexpectedly."

    invoke-direct {p1, v0, v1}, Lcom/helpshift/websockets/WebSocketException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;)V

    throw p1
.end method

.method private verifyReservedBit1ForPMCE(Lcom/helpshift/websockets/WebSocketFrame;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    .line 345
    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocketFrame;->isTextFrame()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocketFrame;->isBinaryFrame()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    return p1

    :cond_f
    :goto_f
    const/4 p1, 0x1

    return p1
.end method

.method private verifyReservedBit2(Lcom/helpshift/websockets/WebSocketFrame;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    .line 361
    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocketFrame;->getRsv2()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 367
    :cond_7
    new-instance p1, Lcom/helpshift/websockets/WebSocketException;

    sget-object v0, Lcom/helpshift/websockets/WebSocketError;->UNEXPECTED_RESERVED_BIT:Lcom/helpshift/websockets/WebSocketError;

    const-string v1, "The RSV2 bit of a frame is set unexpectedly."

    invoke-direct {p1, v0, v1}, Lcom/helpshift/websockets/WebSocketException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;)V

    throw p1
.end method

.method private verifyReservedBit3(Lcom/helpshift/websockets/WebSocketFrame;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    .line 376
    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocketFrame;->getRsv3()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 382
    :cond_7
    new-instance p1, Lcom/helpshift/websockets/WebSocketException;

    sget-object v0, Lcom/helpshift/websockets/WebSocketError;->UNEXPECTED_RESERVED_BIT:Lcom/helpshift/websockets/WebSocketError;

    const-string v1, "The RSV3 bit of a frame is set unexpectedly."

    invoke-direct {p1, v0, v1}, Lcom/helpshift/websockets/WebSocketException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;)V

    throw p1
.end method

.method private verifyReservedBits(Lcom/helpshift/websockets/WebSocketFrame;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->isExtended()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 308
    :cond_9
    invoke-direct {p0, p1}, Lcom/helpshift/websockets/ReadingThread;->verifyReservedBit1(Lcom/helpshift/websockets/WebSocketFrame;)V

    .line 309
    invoke-direct {p0, p1}, Lcom/helpshift/websockets/ReadingThread;->verifyReservedBit2(Lcom/helpshift/websockets/WebSocketFrame;)V

    .line 310
    invoke-direct {p0, p1}, Lcom/helpshift/websockets/ReadingThread;->verifyReservedBit3(Lcom/helpshift/websockets/WebSocketFrame;)V

    return-void
.end method

.method private waitForCloseFrame()V
    .registers 3

    .line 888
    iget-boolean v0, p0, Lcom/helpshift/websockets/ReadingThread;->mNotWaitForCloseFrame:Z

    if-eqz v0, :cond_5

    return-void

    .line 893
    :cond_5
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mCloseFrame:Lcom/helpshift/websockets/WebSocketFrame;

    if-eqz v0, :cond_a

    return-void

    .line 901
    :cond_a
    invoke-direct {p0}, Lcom/helpshift/websockets/ReadingThread;->scheduleClose()V

    .line 906
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->getInput()Lcom/helpshift/websockets/WebSocketInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocketInputStream;->readFrame()Lcom/helpshift/websockets/WebSocketFrame;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_17} :catch_26

    .line 914
    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocketFrame;->isCloseFrame()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 916
    iput-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mCloseFrame:Lcom/helpshift/websockets/WebSocketFrame;

    goto :goto_26

    .line 920
    :cond_20
    invoke-virtual {p0}, Lcom/helpshift/websockets/ReadingThread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_d

    :catch_26
    :goto_26
    return-void
.end method


# virtual methods
.method requestStop(J)V
    .registers 4

    .line 122
    monitor-enter p0

    .line 123
    :try_start_1
    iget-boolean v0, p0, Lcom/helpshift/websockets/ReadingThread;->mStopRequested:Z

    if-eqz v0, :cond_7

    .line 124
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/helpshift/websockets/ReadingThread;->mStopRequested:Z

    .line 128
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_14

    .line 134
    invoke-virtual {p0}, Lcom/helpshift/websockets/ReadingThread;->interrupt()V

    .line 144
    iput-wide p1, p0, Lcom/helpshift/websockets/ReadingThread;->mCloseDelay:J

    .line 145
    invoke-direct {p0}, Lcom/helpshift/websockets/ReadingThread;->scheduleClose()V

    return-void

    :catchall_14
    move-exception p1

    .line 128
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public runMain()V
    .registers 6

    .line 68
    :try_start_0
    invoke-direct {p0}, Lcom/helpshift/websockets/ReadingThread;->main()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_2d

    :catch_4
    move-exception v0

    .line 72
    new-instance v1, Lcom/helpshift/websockets/WebSocketException;

    sget-object v2, Lcom/helpshift/websockets/WebSocketError;->UNEXPECTED_ERROR_IN_READING_THREAD:Lcom/helpshift/websockets/WebSocketError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An uncaught throwable was detected in the reading thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/helpshift/websockets/WebSocketException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocket;->getListenerManager()Lcom/helpshift/websockets/ListenerManager;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v1}, Lcom/helpshift/websockets/ListenerManager;->callOnError(Lcom/helpshift/websockets/WebSocketException;)V

    .line 79
    invoke-virtual {v0, v1}, Lcom/helpshift/websockets/ListenerManager;->callOnUnexpectedError(Lcom/helpshift/websockets/WebSocketException;)V

    .line 83
    :goto_2d
    iget-object v0, p0, Lcom/helpshift/websockets/ReadingThread;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    iget-object v1, p0, Lcom/helpshift/websockets/ReadingThread;->mCloseFrame:Lcom/helpshift/websockets/WebSocketFrame;

    invoke-virtual {v0, v1}, Lcom/helpshift/websockets/WebSocket;->onReadingThreadFinished(Lcom/helpshift/websockets/WebSocketFrame;)V

    return-void
.end method
