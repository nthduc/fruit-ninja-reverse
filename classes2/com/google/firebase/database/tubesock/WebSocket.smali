.class public Lcom/google/firebase/database/tubesock/WebSocket;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.3.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/tubesock/WebSocket$State;
    }
.end annotation


# static fields
.field static final OPCODE_BINARY:B = 0x2t

.field static final OPCODE_CLOSE:B = 0x8t

.field static final OPCODE_NONE:B = 0x0t

.field static final OPCODE_PING:B = 0x9t

.field static final OPCODE_PONG:B = 0xat

.field static final OPCODE_TEXT:B = 0x1t

.field private static final SSL_HANDSHAKE_TIMEOUT_MS:I = 0xea60

.field private static final THREAD_BASE_NAME:Ljava/lang/String; = "TubeSock"

.field private static final UTF8:Ljava/nio/charset/Charset;

.field private static final clientCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static intializer:Lcom/google/firebase/database/tubesock/ThreadInitializer;

.field private static threadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final clientId:I

.field private eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

.field private final handshake:Lcom/google/firebase/database/tubesock/WebSocketHandshake;

.field private final innerThread:Ljava/lang/Thread;

.field private final logger:Lcom/google/firebase/database/logging/LogWrapper;

.field private final receiver:Lcom/google/firebase/database/tubesock/WebSocketReceiver;

.field private volatile socket:Ljava/net/Socket;

.field private final sslCacheDirectory:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private volatile state:Lcom/google/firebase/database/tubesock/WebSocket$State;

.field private final url:Ljava/net/URI;

.field private final writer:Lcom/google/firebase/database/tubesock/WebSocketWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/firebase/database/tubesock/WebSocket;->clientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "UTF-8"

    .line 61
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/tubesock/WebSocket;->UTF8:Ljava/nio/charset/Charset;

    .line 85
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/tubesock/WebSocket;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 86
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocket$1;

    invoke-direct {v0}, Lcom/google/firebase/database/tubesock/WebSocket$1;-><init>()V

    sput-object v0, Lcom/google/firebase/database/tubesock/WebSocket;->intializer:Lcom/google/firebase/database/tubesock/ThreadInitializer;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/connection/ConnectionContext;Ljava/net/URI;)V
    .registers 4

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/database/tubesock/WebSocket;-><init>(Lcom/google/firebase/database/connection/ConnectionContext;Ljava/net/URI;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/connection/ConnectionContext;Ljava/net/URI;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/firebase/database/tubesock/WebSocket;-><init>(Lcom/google/firebase/database/connection/ConnectionContext;Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/connection/ConnectionContext;Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/connection/ConnectionContext;",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sget-object v0, Lcom/google/firebase/database/tubesock/WebSocket$State;->NONE:Lcom/google/firebase/database/tubesock/WebSocket$State;

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->state:Lcom/google/firebase/database/tubesock/WebSocket$State;

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->socket:Ljava/net/Socket;

    .line 73
    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    .line 82
    sget-object v0, Lcom/google/firebase/database/tubesock/WebSocket;->clientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->clientId:I

    .line 139
    invoke-static {}, Lcom/google/firebase/database/tubesock/WebSocket;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocket$2;

    invoke-direct {v1, p0}, Lcom/google/firebase/database/tubesock/WebSocket$2;-><init>(Lcom/google/firebase/database/tubesock/WebSocket;)V

    .line 140
    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->innerThread:Ljava/lang/Thread;

    .line 147
    iput-object p2, p0, Lcom/google/firebase/database/tubesock/WebSocket;->url:Ljava/net/URI;

    .line 148
    invoke-virtual {p1}, Lcom/google/firebase/database/connection/ConnectionContext;->getSslCacheDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->sslCacheDirectory:Ljava/lang/String;

    .line 149
    new-instance v0, Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p1}, Lcom/google/firebase/database/connection/ConnectionContext;->getLogger()Lcom/google/firebase/database/logging/Logger;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sk_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/firebase/database/tubesock/WebSocket;->clientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebSocket"

    invoke-direct {v0, p1, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;-><init>(Lcom/google/firebase/database/logging/Logger;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    .line 150
    new-instance p1, Lcom/google/firebase/database/tubesock/WebSocketHandshake;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/firebase/database/tubesock/WebSocketHandshake;-><init>(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocket;->handshake:Lcom/google/firebase/database/tubesock/WebSocketHandshake;

    .line 151
    new-instance p1, Lcom/google/firebase/database/tubesock/WebSocketReceiver;

    invoke-direct {p1, p0}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;-><init>(Lcom/google/firebase/database/tubesock/WebSocket;)V

    iput-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocket;->receiver:Lcom/google/firebase/database/tubesock/WebSocketReceiver;

    .line 152
    new-instance p1, Lcom/google/firebase/database/tubesock/WebSocketWriter;

    iget p2, p0, Lcom/google/firebase/database/tubesock/WebSocket;->clientId:I

    const-string p3, "TubeSock"

    invoke-direct {p1, p0, p3, p2}, Lcom/google/firebase/database/tubesock/WebSocketWriter;-><init>(Lcom/google/firebase/database/tubesock/WebSocket;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocket;->writer:Lcom/google/firebase/database/tubesock/WebSocketWriter;

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/database/tubesock/WebSocket;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/google/firebase/database/tubesock/WebSocket;->runReader()V

    return-void
.end method

.method private declared-synchronized closeSocket()V
    .registers 3

    monitor-enter p0

    .line 257
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->state:Lcom/google/firebase/database/tubesock/WebSocket$State;

    sget-object v1, Lcom/google/firebase/database/tubesock/WebSocket$State;->DISCONNECTED:Lcom/google/firebase/database/tubesock/WebSocket$State;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2f

    if-ne v0, v1, :cond_9

    .line 258
    monitor-exit p0

    return-void

    .line 260
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->receiver:Lcom/google/firebase/database/tubesock/WebSocketReceiver;

    invoke-virtual {v0}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->stopit()V

    .line 261
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->writer:Lcom/google/firebase/database/tubesock/WebSocketWriter;

    invoke-virtual {v0}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->stopIt()V

    .line 262
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->socket:Ljava/net/Socket;
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_2f

    if-eqz v0, :cond_24

    .line 264
    :try_start_17
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_1d
    .catchall {:try_start_17 .. :try_end_1c} :catchall_2f

    goto :goto_24

    :catch_1d
    move-exception v0

    .line 266
    :try_start_1e
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 269
    :cond_24
    :goto_24
    sget-object v0, Lcom/google/firebase/database/tubesock/WebSocket$State;->DISCONNECTED:Lcom/google/firebase/database/tubesock/WebSocket$State;

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->state:Lcom/google/firebase/database/tubesock/WebSocket$State;

    .line 271
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    invoke-interface {v0}, Lcom/google/firebase/database/tubesock/WebSocketEventHandler;->onClose()V
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_2f

    .line 272
    monitor-exit p0

    return-void

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createSocket()Ljava/net/Socket;
    .registers 9

    .line 287
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->url:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocket;->url:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 289
    iget-object v2, p0, Lcom/google/firebase/database/tubesock/WebSocket;->url:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v2

    const-string v3, "unknown host: "

    const/4 v4, -0x1

    if-eqz v0, :cond_5a

    const-string v5, "ws"

    .line 293
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    if-ne v2, v4, :cond_23

    const/16 v2, 0x50

    .line 298
    :cond_23
    :try_start_23
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_28
    .catch Ljava/net/UnknownHostException; {:try_start_23 .. :try_end_28} :catch_44
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_28} :catch_2a

    goto/16 :goto_a1

    :catch_2a
    move-exception v0

    .line 302
    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error while creating socket to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/firebase/database/tubesock/WebSocket;->url:Ljava/net/URI;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_44
    move-exception v0

    .line 300
    new-instance v2, Lcom/google/firebase/database/tubesock/WebSocketException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_5a
    if-eqz v0, :cond_eb

    const-string v5, "wss"

    .line 304
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_eb

    if-ne v2, v4, :cond_68

    const/16 v2, 0x1bb

    :cond_68
    const/4 v0, 0x0

    .line 310
    :try_start_69
    iget-object v4, p0, Lcom/google/firebase/database/tubesock/WebSocket;->sslCacheDirectory:Ljava/lang/String;

    if-eqz v4, :cond_86

    .line 311
    new-instance v4, Landroid/net/SSLSessionCache;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/google/firebase/database/tubesock/WebSocket;->sslCacheDirectory:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/net/SSLSessionCache;-><init>(Ljava/io/File;)V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_79} :catch_7b

    move-object v0, v4

    goto :goto_86

    :catch_7b
    move-exception v4

    .line 314
    iget-object v5, p0, Lcom/google/firebase/database/tubesock/WebSocket;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "Failed to initialize SSL session cache"

    invoke-virtual {v5, v7, v4, v6}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_86
    :goto_86
    const v4, 0xea60

    .line 318
    :try_start_89
    invoke-static {v4, v0}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 319
    invoke-virtual {v0, v1, v2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 322
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    .line 323
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    .line 325
    invoke-interface {v2, v1, v4}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-eqz v2, :cond_a2

    :goto_a1
    return-object v0

    .line 326
    :cond_a2
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while verifying secure socket to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/firebase/database/tubesock/WebSocket;->url:Ljava/net/URI;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_bb
    .catch Ljava/net/UnknownHostException; {:try_start_89 .. :try_end_bb} :catch_d5
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_bb} :catch_bb

    :catch_bb
    move-exception v0

    .line 333
    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error while creating secure socket to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/firebase/database/tubesock/WebSocket;->url:Ljava/net/URI;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_d5
    move-exception v0

    .line 331
    new-instance v2, Lcom/google/firebase/database/tubesock/WebSocketException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 336
    :cond_eb
    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported protocol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getIntializer()Lcom/google/firebase/database/tubesock/ThreadInitializer;
    .registers 1

    .line 99
    sget-object v0, Lcom/google/firebase/database/tubesock/WebSocket;->intializer:Lcom/google/firebase/database/tubesock/ThreadInitializer;

    return-object v0
.end method

.method static getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .registers 1

    .line 95
    sget-object v0, Lcom/google/firebase/database/tubesock/WebSocket;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method private runReader()V
    .registers 12

    .line 359
    :try_start_0
    invoke-direct {p0}, Lcom/google/firebase/database/tubesock/WebSocket;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 360
    monitor-enter p0
    :try_end_5
    .catch Lcom/google/firebase/database/tubesock/WebSocketException; {:try_start_0 .. :try_end_5} :catch_137
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_116
    .catchall {:try_start_0 .. :try_end_5} :catchall_114

    .line 361
    :try_start_5
    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->socket:Ljava/net/Socket;

    .line 362
    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocket;->state:Lcom/google/firebase/database/tubesock/WebSocket$State;

    sget-object v2, Lcom/google/firebase/database/tubesock/WebSocket$State;->DISCONNECTED:Lcom/google/firebase/database/tubesock/WebSocket$State;
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_111

    if-ne v1, v2, :cond_21

    .line 366
    :try_start_d
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_1a
    .catchall {:try_start_d .. :try_end_12} :catchall_111

    const/4 v0, 0x0

    .line 370
    :try_start_13
    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->socket:Ljava/net/Socket;

    .line 371
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_111

    .line 433
    invoke-virtual {p0}, Lcom/google/firebase/database/tubesock/WebSocket;->close()V

    return-void

    :catch_1a
    move-exception v0

    .line 368
    :try_start_1b
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 373
    :cond_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_111

    .line 375
    :try_start_22
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 376
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 378
    iget-object v2, p0, Lcom/google/firebase/database/tubesock/WebSocket;->handshake:Lcom/google/firebase/database/tubesock/WebSocketHandshake;

    invoke-virtual {v2}, Lcom/google/firebase/database/tubesock/WebSocketHandshake;->getHandshake()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    const/16 v2, 0x3e8

    .line 382
    new-array v3, v2, [B

    .line 384
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v3, 0x0

    :goto_44
    const/4 v7, 0x0

    :goto_45
    const/4 v8, 0x1

    if-nez v3, :cond_ac

    .line 387
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_a4

    int-to-byte v9, v9

    .line 391
    aput-byte v9, v6, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v7, -0x1

    .line 394
    aget-byte v9, v6, v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_83

    add-int/lit8 v9, v7, -0x2

    aget-byte v9, v6, v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_83

    .line 395
    new-instance v7, Ljava/lang/String;

    sget-object v9, Lcom/google/firebase/database/tubesock/WebSocket;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v6, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 396
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_79

    const/4 v3, 0x1

    goto :goto_80

    .line 399
    :cond_79
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    :goto_80
    new-array v6, v2, [B

    goto :goto_44

    :cond_83
    if-eq v7, v2, :cond_86

    goto :goto_45

    .line 406
    :cond_86
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/firebase/database/tubesock/WebSocket;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v6, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 407
    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected long line in handshake: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 389
    :cond_a4
    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v1, "Connection closed before handshake was complete"

    invoke-direct {v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_ac
    iget-object v2, p0, Lcom/google/firebase/database/tubesock/WebSocket;->handshake:Lcom/google/firebase/database/tubesock/WebSocketHandshake;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/tubesock/WebSocketHandshake;->verifyServerStatusLine(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 414
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 415
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ea

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, ": "

    const/4 v7, 0x2

    .line 416
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 417
    aget-object v6, v4, v5

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 418
    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    aget-object v4, v4, v8

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 417
    invoke-virtual {v2, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c3

    .line 420
    :cond_ea
    iget-object v3, p0, Lcom/google/firebase/database/tubesock/WebSocket;->handshake:Lcom/google/firebase/database/tubesock/WebSocketHandshake;

    invoke-virtual {v3, v2}, Lcom/google/firebase/database/tubesock/WebSocketHandshake;->verifyServerHandshakeHeaders(Ljava/util/HashMap;)V

    .line 422
    iget-object v2, p0, Lcom/google/firebase/database/tubesock/WebSocket;->writer:Lcom/google/firebase/database/tubesock/WebSocketWriter;

    invoke-virtual {v2, v0}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->setOutput(Ljava/io/OutputStream;)V

    .line 423
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->receiver:Lcom/google/firebase/database/tubesock/WebSocketReceiver;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->setInput(Ljava/io/DataInputStream;)V

    .line 424
    sget-object v0, Lcom/google/firebase/database/tubesock/WebSocket$State;->CONNECTED:Lcom/google/firebase/database/tubesock/WebSocket$State;

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->state:Lcom/google/firebase/database/tubesock/WebSocket$State;

    .line 425
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->writer:Lcom/google/firebase/database/tubesock/WebSocketWriter;

    invoke-virtual {v0}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->getInnerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 426
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    invoke-interface {v0}, Lcom/google/firebase/database/tubesock/WebSocketEventHandler;->onOpen()V

    .line 427
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->receiver:Lcom/google/firebase/database/tubesock/WebSocketReceiver;

    invoke-virtual {v0}, Lcom/google/firebase/database/tubesock/WebSocketReceiver;->run()V
    :try_end_110
    .catch Lcom/google/firebase/database/tubesock/WebSocketException; {:try_start_22 .. :try_end_110} :catch_137
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_110} :catch_116
    .catchall {:try_start_22 .. :try_end_110} :catchall_114

    goto :goto_13d

    :catchall_111
    move-exception v0

    .line 373
    :try_start_112
    monitor-exit p0
    :try_end_113
    .catchall {:try_start_112 .. :try_end_113} :catchall_111

    :try_start_113
    throw v0
    :try_end_114
    .catch Lcom/google/firebase/database/tubesock/WebSocketException; {:try_start_113 .. :try_end_114} :catch_137
    .catch Ljava/lang/Throwable; {:try_start_113 .. :try_end_114} :catch_116
    .catchall {:try_start_113 .. :try_end_114} :catchall_114

    :catchall_114
    move-exception v0

    goto :goto_141

    :catch_116
    move-exception v0

    .line 431
    :try_start_117
    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocket;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    new-instance v2, Lcom/google/firebase/database/tubesock/WebSocketException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error while connecting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/google/firebase/database/tubesock/WebSocketEventHandler;->onError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    goto :goto_13d

    :catch_137
    move-exception v0

    .line 429
    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocket;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    invoke-interface {v1, v0}, Lcom/google/firebase/database/tubesock/WebSocketEventHandler;->onError(Lcom/google/firebase/database/tubesock/WebSocketException;)V
    :try_end_13d
    .catchall {:try_start_117 .. :try_end_13d} :catchall_114

    .line 433
    :goto_13d
    invoke-virtual {p0}, Lcom/google/firebase/database/tubesock/WebSocket;->close()V

    return-void

    :goto_141
    invoke-virtual {p0}, Lcom/google/firebase/database/tubesock/WebSocket;->close()V

    throw v0

    return-void
.end method

.method private declared-synchronized send(B[B)V
    .registers 5

    monitor-enter p0

    .line 206
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->state:Lcom/google/firebase/database/tubesock/WebSocket$State;

    sget-object v1, Lcom/google/firebase/database/tubesock/WebSocket$State;->CONNECTED:Lcom/google/firebase/database/tubesock/WebSocket$State;

    if-eq v0, v1, :cond_14

    .line 208
    iget-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocket;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    new-instance p2, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v0, "error while sending data: not connected"

    invoke-direct {p2, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/google/firebase/database/tubesock/WebSocketEventHandler;->onError(Lcom/google/firebase/database/tubesock/WebSocketException;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_2d

    goto :goto_2b

    .line 211
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->writer:Lcom/google/firebase/database/tubesock/WebSocketWriter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->send(BZ[B)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1a} :catch_1b
    .catchall {:try_start_14 .. :try_end_1a} :catchall_2d

    goto :goto_2b

    :catch_1b
    move-exception p1

    .line 213
    :try_start_1c
    iget-object p2, p0, Lcom/google/firebase/database/tubesock/WebSocket;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    new-instance v0, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v1, "Failed to send frame"

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p2, v0}, Lcom/google/firebase/database/tubesock/WebSocketEventHandler;->onError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    .line 214
    invoke-virtual {p0}, Lcom/google/firebase/database/tubesock/WebSocket;->close()V
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2d

    .line 217
    :goto_2b
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private sendCloseHandshake()V
    .registers 5

    .line 276
    :try_start_0
    sget-object v0, Lcom/google/firebase/database/tubesock/WebSocket$State;->DISCONNECTING:Lcom/google/firebase/database/tubesock/WebSocket$State;

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->state:Lcom/google/firebase/database/tubesock/WebSocket$State;

    .line 279
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->writer:Lcom/google/firebase/database/tubesock/WebSocketWriter;

    invoke-virtual {v0}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->stopIt()V

    .line 280
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->writer:Lcom/google/firebase/database/tubesock/WebSocketWriter;

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->send(BZ[B)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_22

    :catch_15
    move-exception v0

    .line 282
    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocket;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    new-instance v2, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v3, "Failed to send close frame"

    invoke-direct {v2, v3, v0}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/google/firebase/database/tubesock/WebSocketEventHandler;->onError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    :goto_22
    return-void
.end method

.method public static setThreadFactory(Ljava/util/concurrent/ThreadFactory;Lcom/google/firebase/database/tubesock/ThreadInitializer;)V
    .registers 2

    .line 103
    sput-object p0, Lcom/google/firebase/database/tubesock/WebSocket;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 104
    sput-object p1, Lcom/google/firebase/database/tubesock/WebSocket;->intializer:Lcom/google/firebase/database/tubesock/ThreadInitializer;

    return-void
.end method


# virtual methods
.method public blockClose()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->writer:Lcom/google/firebase/database/tubesock/WebSocketWriter;

    invoke-virtual {v0}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->getInnerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_17

    .line 352
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->writer:Lcom/google/firebase/database/tubesock/WebSocketWriter;

    invoke-virtual {v0}, Lcom/google/firebase/database/tubesock/WebSocketWriter;->getInnerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 354
    :cond_17
    invoke-virtual {p0}, Lcom/google/firebase/database/tubesock/WebSocket;->getInnerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    return-void
.end method

.method public declared-synchronized close()V
    .registers 3

    monitor-enter p0

    .line 232
    :try_start_1
    sget-object v0, Lcom/google/firebase/database/tubesock/WebSocket$3;->$SwitchMap$com$google$firebase$database$tubesock$WebSocket$State:[I

    iget-object v1, p0, Lcom/google/firebase/database/tubesock/WebSocket;->state:Lcom/google/firebase/database/tubesock/WebSocket$State;

    invoke-virtual {v1}, Lcom/google/firebase/database/tubesock/WebSocket$State;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_30

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_25

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1c

    .line 250
    monitor-exit p0

    return-void

    .line 248
    :cond_1c
    monitor-exit p0

    return-void

    .line 246
    :cond_1e
    monitor-exit p0

    return-void

    .line 243
    :cond_20
    :try_start_20
    invoke-direct {p0}, Lcom/google/firebase/database/tubesock/WebSocket;->sendCloseHandshake()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_30

    .line 244
    monitor-exit p0

    return-void

    .line 238
    :cond_25
    :try_start_25
    invoke-direct {p0}, Lcom/google/firebase/database/tubesock/WebSocket;->closeSocket()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_30

    .line 239
    monitor-exit p0

    return-void

    .line 234
    :cond_2a
    :try_start_2a
    sget-object v0, Lcom/google/firebase/database/tubesock/WebSocket$State;->DISCONNECTED:Lcom/google/firebase/database/tubesock/WebSocket$State;

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->state:Lcom/google/firebase/database/tubesock/WebSocket$State;
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_30

    .line 235
    monitor-exit p0

    return-void

    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect()V
    .registers 5

    monitor-enter p0

    .line 173
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->state:Lcom/google/firebase/database/tubesock/WebSocket$State;

    sget-object v1, Lcom/google/firebase/database/tubesock/WebSocket$State;->NONE:Lcom/google/firebase/database/tubesock/WebSocket$State;

    if-eq v0, v1, :cond_18

    .line 174
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    new-instance v1, Lcom/google/firebase/database/tubesock/WebSocketException;

    const-string v2, "connect() already called"

    invoke-direct {v1, v2}, Lcom/google/firebase/database/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/firebase/database/tubesock/WebSocketEventHandler;->onError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    .line 175
    invoke-virtual {p0}, Lcom/google/firebase/database/tubesock/WebSocket;->close()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_43

    .line 176
    monitor-exit p0

    return-void

    .line 178
    :cond_18
    :try_start_18
    invoke-static {}, Lcom/google/firebase/database/tubesock/WebSocket;->getIntializer()Lcom/google/firebase/database/tubesock/ThreadInitializer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/database/tubesock/WebSocket;->getInnerThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TubeSockReader-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/firebase/database/tubesock/WebSocket;->clientId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/tubesock/ThreadInitializer;->setName(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 179
    sget-object v0, Lcom/google/firebase/database/tubesock/WebSocket$State;->CONNECTING:Lcom/google/firebase/database/tubesock/WebSocket$State;

    iput-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->state:Lcom/google/firebase/database/tubesock/WebSocket$State;

    .line 180
    invoke-virtual {p0}, Lcom/google/firebase/database/tubesock/WebSocket;->getInnerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_41
    .catchall {:try_start_18 .. :try_end_41} :catchall_43

    .line 181
    monitor-exit p0

    return-void

    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getEventHandler()Lcom/google/firebase/database/tubesock/WebSocketEventHandler;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    return-object v0
.end method

.method getInnerThread()Ljava/lang/Thread;
    .registers 2

    .line 438
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->innerThread:Ljava/lang/Thread;

    return-object v0
.end method

.method handleReceiverError(Lcom/google/firebase/database/tubesock/WebSocketException;)V
    .registers 3

    .line 220
    iget-object v0, p0, Lcom/google/firebase/database/tubesock/WebSocket;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/tubesock/WebSocketEventHandler;->onError(Lcom/google/firebase/database/tubesock/WebSocketException;)V

    .line 221
    iget-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocket;->state:Lcom/google/firebase/database/tubesock/WebSocket$State;

    sget-object v0, Lcom/google/firebase/database/tubesock/WebSocket$State;->CONNECTED:Lcom/google/firebase/database/tubesock/WebSocket$State;

    if-ne p1, v0, :cond_e

    .line 222
    invoke-virtual {p0}, Lcom/google/firebase/database/tubesock/WebSocket;->close()V

    .line 224
    :cond_e
    invoke-direct {p0}, Lcom/google/firebase/database/tubesock/WebSocket;->closeSocket()V

    return-void
.end method

.method onCloseOpReceived()V
    .registers 1

    .line 253
    invoke-direct {p0}, Lcom/google/firebase/database/tubesock/WebSocket;->closeSocket()V

    return-void
.end method

.method declared-synchronized pong([B)V
    .registers 3

    monitor-enter p0

    const/16 v0, 0xa

    .line 202
    :try_start_3
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/database/tubesock/WebSocket;->send(B[B)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 203
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized send(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    .line 189
    :try_start_2
    sget-object v1, Lcom/google/firebase/database/tubesock/WebSocket;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/database/tubesock/WebSocket;->send(B[B)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    .line 190
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized send([B)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x2

    .line 198
    :try_start_2
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/database/tubesock/WebSocket;->send(B[B)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 199
    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setEventHandler(Lcom/google/firebase/database/tubesock/WebSocketEventHandler;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/google/firebase/database/tubesock/WebSocket;->eventHandler:Lcom/google/firebase/database/tubesock/WebSocketEventHandler;

    return-void
.end method
