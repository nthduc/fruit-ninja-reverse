.class Lcom/google/firebase/database/tubesock/WebSocketReceiver;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.3.0"


# instance fields
.field private eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

.field private input:Ljava/io/DataInputStream;

.field private inputHeader:[B

.field private pendingBuilder:Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

.field private volatile stop:Z

.field private websocket:Lcom/google/firebase/database/tubesock/WebSocket;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/tubesock/WebSocket;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->input:Ljava/io/DataInputStream;

    .line 28
    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->websocket:Lcom/google/firebase/database/tubesock/WebSocket;

    .line 29
    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    const/16 v0, 0x70

    .line 30
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->stop:Z

    .line 36
    iput-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->websocket:Lcom/google/firebase/database/tubesock/WebSocket;

    return-void
.end method

.method private appendBytes(ZB[B)V
    .registers 5

    const/16 v0, 0x9

    if-ne p2, v0, :cond_12

    if-eqz p1, :cond_a

    .line 103
    invoke-direct {p0, p3}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->handlePing([B)V

    goto :goto_5d

    .line 105
    :cond_a
    new-instance p1, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string p2, "PING must not fragment across frames"

    invoke-direct {p1, p2}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_12
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

    if-eqz v0, :cond_21

    if-nez p2, :cond_19

    goto :goto_21

    .line 109
    :cond_19
    new-instance p1, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string p2, "Failed to continue outstanding frame"

    invoke-direct {p1, p2}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

    if-nez v0, :cond_30

    if-eqz p2, :cond_28

    goto :goto_30

    .line 112
    :cond_28
    new-instance p1, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string p2, "Received continuing frame, but there\'s nothing to continue"

    invoke-direct {p1, p2}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

    if-nez v0, :cond_3a

    .line 116
    invoke-static {p2}, Lcom/google/firebase/database/tubesock/MessageBuilderFactory;->builder(B)Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

    .line 118
    :cond_3a
    iget-object p2, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

    invoke-interface {p2, p3}, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;->appendBytes([B)Z

    move-result p2

    if-eqz p2, :cond_5e

    if-eqz p1, :cond_5d

    .line 121
    iget-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

    invoke-interface {p1}, Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;->toMessage()Lcom/google/firebase/database/tubesock/WebSocketMessage;

    move-result-object p1

    const/4 p2, 0x0

    .line 122
    iput-object p2, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/google/firebase/database/tubesock/MessageBuilderFactory$Builder;

    if-eqz p1, :cond_55

    .line 127
    iget-object p2, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    invoke-interface {p2, p1}, Lcom/google/firebase/database/tubesock/WebSocketEventHandler;->onMessage(Lcom/google/firebase/database/tubesock/WebSocketMessage;)V

    goto :goto_5d

    .line 125
    :cond_55
    new-instance p1, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string p2, "Failed to decode whole message"

    invoke-direct {p1, p2}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5d
    :goto_5d
    return-void

    .line 119
    :cond_5e
    new-instance p1, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string p2, "Failed to decode frame"

    invoke-direct {p1, p2}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handleError(Lcom/google/firebase/database/tubesock/WebSocketException;)V
    .registers 3

    .line 168
    invoke-virtual {p0}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->stopit()V

    .line 169
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->websocket:Lcom/google/firebase/database/tubesock/WebSocket;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/tubesock/WebSocket;->handleReceiverError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    return-void
.end method

.method private handlePing([B)V
    .registers 4

    .line 135
    array-length v0, p1

    const/16 v1, 0x7d

    if-gt v0, v1, :cond_b

    .line 136
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->websocket:Lcom/google/firebase/database/tubesock/WebSocket;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/tubesock/WebSocket;->pong([B)V

    return-void

    .line 138
    :cond_b
    new-instance p1, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v0, "PING frame too long"

    invoke-direct {p1, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseLong([BI)J
    .registers 8

    add-int/lit8 v0, p2, 0x0

    .line 144
    aget-byte v0, p1, v0

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 p2, p2, 0x7

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x0

    int-to-long p1, p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    return p3
.end method


# virtual methods
.method isRunning()Z
    .registers 2

    .line 164
    iget-boolean v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->stop:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method run()V
    .registers 12

    .line 44
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->websocket:Lcom/google/firebase/database/tubesock/WebSocket;

    invoke-virtual {v0}, Lcom/google/firebase/database/tubesock/WebSocket;->getEventHandler()Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    .line 45
    :goto_8
    iget-boolean v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->stop:Z

    if-nez v0, :cond_cf

    .line 48
    :try_start_c
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->read([BII)I

    move-result v0

    add-int/2addr v0, v2

    .line 49
    iget-object v3, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    .line 50
    :goto_20
    iget-object v4, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    aget-byte v4, v4, v2

    and-int/lit8 v4, v4, 0x70

    if-eqz v4, :cond_2a

    const/4 v4, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v4, 0x0

    :goto_2b
    if-nez v4, :cond_b1

    .line 54
    iget-object v4, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    aget-byte v4, v4, v2

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    .line 55
    iget-object v5, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    invoke-direct {p0, v5, v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->read([BII)I

    move-result v5

    add-int/2addr v0, v5

    .line 56
    iget-object v5, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    aget-byte v5, v5, v1

    const-wide/16 v6, 0x0

    const/16 v8, 0x7e

    const/4 v9, 0x2

    const/16 v10, 0x8

    if-ge v5, v8, :cond_4a

    int-to-long v6, v5

    goto :goto_76

    :cond_4a
    if-ne v5, v8, :cond_64

    .line 61
    iget-object v5, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    invoke-direct {p0, v5, v0, v9}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->read([BII)I

    .line 62
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    aget-byte v0, v0, v9

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    shl-long/2addr v5, v10

    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    const/4 v7, 0x3

    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    int-to-long v7, v0

    or-long/2addr v5, v7

    move-wide v6, v5

    goto :goto_76

    :cond_64
    const/16 v8, 0x7f

    if-ne v5, v8, :cond_76

    .line 67
    iget-object v5, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    invoke-direct {p0, v5, v0, v10}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->read([BII)I

    move-result v5

    add-int/2addr v0, v5

    .line 69
    iget-object v5, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->inputHeader:[B

    sub-int/2addr v0, v10

    invoke-direct {p0, v5, v0}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->parseLong([BI)J

    move-result-wide v6

    :cond_76
    :goto_76
    long-to-int v0, v6

    .line 72
    new-array v5, v0, [B

    .line 73
    invoke-direct {p0, v5, v2, v0}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->read([BII)I

    if-ne v4, v10, :cond_84

    .line 75
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->websocket:Lcom/google/firebase/database/tubesock/WebSocket;

    invoke-virtual {v0}, Lcom/google/firebase/database/tubesock/WebSocket;->onCloseOpReceived()V

    goto :goto_8

    :cond_84
    const/16 v0, 0xa

    if-ne v4, v0, :cond_8a

    goto/16 :goto_8

    :cond_8a
    if-eq v4, v1, :cond_ac

    if-eq v4, v9, :cond_ac

    const/16 v0, 0x9

    if-eq v4, v0, :cond_ac

    if-nez v4, :cond_95

    goto :goto_ac

    .line 86
    :cond_95
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_ac
    :goto_ac
    invoke-direct {p0, v3, v4, v5}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->appendBytes(ZB[B)V

    goto/16 :goto_8

    .line 52
    :cond_b1
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v1, "Invalid frame received"

    invoke-direct {v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b9
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_b9} :catch_cc
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_b9} :catch_bf
    .catch Lcom/google/firebase/database/tubesock/WebSocketException; {:try_start_c .. :try_end_b9} :catch_b9

    :catch_b9
    move-exception v0

    .line 94
    invoke-direct {p0, v0}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->handleError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    goto/16 :goto_8

    :catch_bf
    move-exception v0

    .line 92
    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v2, "IO Error"

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->handleError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    goto/16 :goto_8

    :catch_cc
    nop

    goto/16 :goto_8

    :cond_cf
    return-void
.end method

.method setInput(Ljava/io/DataInputStream;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->input:Ljava/io/DataInputStream;

    return-void
.end method

.method stopit()V
    .registers 2

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->stop:Z

    return-void
.end method
