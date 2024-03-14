.class Lcom/helpshift/websockets/HandshakeReader;
.super Ljava/lang/Object;
.source "HandshakeReader.java"


# static fields
.field private static final ACCEPT_MAGIC:Ljava/lang/String; = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"


# instance fields
.field private final mWebSocket:Lcom/helpshift/websockets/WebSocket;


# direct methods
.method public constructor <init>(Lcom/helpshift/websockets/WebSocket;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/helpshift/websockets/HandshakeReader;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    return-void
.end method

.method private getContentLength(Ljava/util/Map;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    :try_start_0
    const-string v0, "Content-Length"

    .line 258
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return p1

    :catch_14
    const/4 p1, -0x1

    return p1
.end method

.method private parseHttpHeader(Ljava/util/Map;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    const-string v1, ":"

    .line 177
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    .line 179
    array-length v1, p2

    if-ge v1, v0, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x0

    .line 185
    aget-object v0, p2, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 188
    aget-object p2, p2, v1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 190
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_29

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 194
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_29
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readBody(Ljava/util/Map;Lcom/helpshift/websockets/WebSocketInputStream;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/helpshift/websockets/WebSocketInputStream;",
            ")[B"
        }
    .end annotation

    .line 229
    invoke-direct {p0, p1}, Lcom/helpshift/websockets/HandshakeReader;->getContentLength(Ljava/util/Map;)I

    move-result p1

    const/4 v0, 0x0

    if-gtz p1, :cond_8

    return-object v0

    .line 238
    :cond_8
    :try_start_8
    new-array v1, p1, [B

    .line 241
    invoke-virtual {p2, v1, p1}, Lcom/helpshift/websockets/WebSocketInputStream;->readBytes([BI)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_e

    return-object v1

    :catch_e
    return-object v0
.end method

.method private readHttpHeaders(Lcom/helpshift/websockets/WebSocketInputStream;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/websockets/WebSocketInputStream;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 v1, 0x0

    .line 126
    :goto_8
    :try_start_8
    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocketInputStream;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_c} :catch_4b

    if-eqz v2, :cond_41

    .line 136
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_15

    goto :goto_41

    :cond_15
    const/4 v3, 0x0

    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_32

    const/16 v4, 0x9

    if-ne v3, v4, :cond_23

    goto :goto_32

    :cond_23
    if-eqz v1, :cond_2c

    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/helpshift/websockets/HandshakeReader;->parseHttpHeader(Ljava/util/Map;Ljava/lang/String;)V

    .line 168
    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :cond_32
    :goto_32
    if-nez v1, :cond_35

    goto :goto_8

    :cond_35
    const-string v3, "^[ \t]+"

    const-string v4, " "

    .line 156
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_41
    :goto_41
    if-eqz v1, :cond_4a

    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/helpshift/websockets/HandshakeReader;->parseHttpHeader(Ljava/util/Map;Ljava/lang/String;)V

    :cond_4a
    return-object v0

    :catch_4b
    move-exception p1

    .line 130
    new-instance v0, Lcom/helpshift/websockets/WebSocketException;

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->HTTP_HEADER_FAILURE:Lcom/helpshift/websockets/WebSocketError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An error occurred while HTTP header section was being read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/helpshift/websockets/WebSocketException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    return-void
.end method

.method private readStatusLine(Lcom/helpshift/websockets/WebSocketInputStream;)Lcom/helpshift/websockets/StatusLine;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    .line 87
    :try_start_0
    invoke-virtual {p1}, Lcom/helpshift/websockets/WebSocketInputStream;->readLine()Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_35

    if-eqz p1, :cond_2b

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2b

    .line 105
    :try_start_c
    new-instance v0, Lcom/helpshift/websockets/StatusLine;

    invoke-direct {v0, p1}, Lcom/helpshift/websockets/StatusLine;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_12

    return-object v0

    .line 109
    :catch_12
    new-instance v0, Lcom/helpshift/websockets/WebSocketException;

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->STATUS_LINE_BAD_FORMAT:Lcom/helpshift/websockets/WebSocketError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The status line of the opening handshake response is badly formatted. The status line is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/helpshift/websockets/WebSocketException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_2b
    new-instance p1, Lcom/helpshift/websockets/WebSocketException;

    sget-object v0, Lcom/helpshift/websockets/WebSocketError;->STATUS_LINE_EMPTY:Lcom/helpshift/websockets/WebSocketError;

    const-string v1, "The status line of the opening handshake response is empty."

    invoke-direct {p1, v0, v1}, Lcom/helpshift/websockets/WebSocketException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;)V

    throw p1

    :catch_35
    move-exception p1

    .line 91
    new-instance v0, Lcom/helpshift/websockets/WebSocketException;

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->OPENING_HANDSHAKE_RESPONSE_FAILURE:Lcom/helpshift/websockets/WebSocketError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read an opening handshake response from the server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/helpshift/websockets/WebSocketException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private validateAccept(Lcom/helpshift/websockets/StatusLine;Ljava/util/Map;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/websockets/StatusLine;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    const-string v0, "Sec-WebSocket-Accept"

    .line 372
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_46

    const/4 v1, 0x0

    .line 383
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :try_start_22
    const-string v1, "SHA-1"

    .line 393
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 396
    invoke-static {p3}, Lcom/helpshift/websockets/Misc;->getBytesUTF8(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p3

    .line 399
    invoke-static {p3}, Lcom/helpshift/websockets/Base64;->encode([B)Ljava/lang/String;

    move-result-object p3
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_34} :catch_45

    .line 406
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3b

    return-void

    .line 408
    :cond_3b
    new-instance p3, Lcom/helpshift/websockets/OpeningHandshakeException;

    sget-object v0, Lcom/helpshift/websockets/WebSocketError;->UNEXPECTED_SEC_WEBSOCKET_ACCEPT_HEADER:Lcom/helpshift/websockets/WebSocketError;

    const-string v1, "The value of \'Sec-WebSocket-Accept\' header is different from the expected one."

    invoke-direct {p3, v0, v1, p1, p2}, Lcom/helpshift/websockets/OpeningHandshakeException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;Lcom/helpshift/websockets/StatusLine;Ljava/util/Map;)V

    throw p3

    :catch_45
    return-void

    .line 376
    :cond_46
    new-instance p3, Lcom/helpshift/websockets/OpeningHandshakeException;

    sget-object v0, Lcom/helpshift/websockets/WebSocketError;->NO_SEC_WEBSOCKET_ACCEPT_HEADER:Lcom/helpshift/websockets/WebSocketError;

    const-string v1, "The opening handshake response does not contain \'Sec-WebSocket-Accept\' header."

    invoke-direct {p3, v0, v1, p1, p2}, Lcom/helpshift/websockets/OpeningHandshakeException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;Lcom/helpshift/websockets/StatusLine;Ljava/util/Map;)V

    throw p3
.end method

.method private validateConnection(Lcom/helpshift/websockets/StatusLine;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/websockets/StatusLine;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    const-string v0, "Connection"

    .line 324
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_42

    .line 326
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_42

    .line 334
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\\s*,\\s*"

    .line 336
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 338
    array-length v2, v1

    const/4 v3, 0x0

    :goto_28
    if-ge v3, v2, :cond_14

    aget-object v4, v1, v3

    const-string v5, "Upgrade"

    .line 339
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    return-void

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 347
    :cond_38
    new-instance v0, Lcom/helpshift/websockets/OpeningHandshakeException;

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->NO_UPGRADE_IN_CONNECTION_HEADER:Lcom/helpshift/websockets/WebSocketError;

    const-string v2, "\'Upgrade\' was not found in \'Connection\' header."

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/helpshift/websockets/OpeningHandshakeException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;Lcom/helpshift/websockets/StatusLine;Ljava/util/Map;)V

    throw v0

    .line 328
    :cond_42
    new-instance v0, Lcom/helpshift/websockets/OpeningHandshakeException;

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->NO_CONNECTION_HEADER:Lcom/helpshift/websockets/WebSocketError;

    const-string v2, "The opening handshake response does not contain \'Connection\' header."

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/helpshift/websockets/OpeningHandshakeException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;Lcom/helpshift/websockets/StatusLine;Ljava/util/Map;)V

    throw v0

    return-void
.end method

.method private validateExtensionCombination(Lcom/helpshift/websockets/StatusLine;Ljava/util/Map;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/websockets/StatusLine;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/helpshift/websockets/WebSocketExtension;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    .line 495
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/websockets/WebSocketExtension;

    .line 497
    instance-of v2, v1, Lcom/helpshift/websockets/PerMessageCompressionExtension;

    if-nez v2, :cond_16

    goto :goto_5

    :cond_16
    if-nez v0, :cond_1a

    move-object v0, v1

    goto :goto_5

    :cond_1a
    const/4 p3, 0x2

    .line 509
    new-array p3, p3, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 511
    invoke-virtual {v0}, Lcom/helpshift/websockets/WebSocketExtension;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    const/4 v0, 0x1

    invoke-virtual {v1}, Lcom/helpshift/websockets/WebSocketExtension;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    const-string v0, "\'%s\' extension and \'%s\' extension conflict with each other."

    .line 509
    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 514
    new-instance v0, Lcom/helpshift/websockets/OpeningHandshakeException;

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->EXTENSIONS_CONFLICT:Lcom/helpshift/websockets/WebSocketError;

    invoke-direct {v0, v1, p3, p1, p2}, Lcom/helpshift/websockets/OpeningHandshakeException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;Lcom/helpshift/websockets/StatusLine;Ljava/util/Map;)V

    throw v0

    :cond_39
    return-void
.end method

.method private validateExtensions(Lcom/helpshift/websockets/StatusLine;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/websockets/StatusLine;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    const-string v0, "Sec-WebSocket-Extensions"

    .line 434
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_8c

    .line 436
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_8c

    .line 441
    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 443
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "\\s*,\\s*"

    .line 445
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 447
    array-length v3, v2

    const/4 v4, 0x0

    :goto_2f
    if-ge v4, v3, :cond_1b

    aget-object v5, v2, v4

    .line 449
    invoke-static {v5}, Lcom/helpshift/websockets/WebSocketExtension;->parse(Ljava/lang/String;)Lcom/helpshift/websockets/WebSocketExtension;

    move-result-object v6

    if-eqz v6, :cond_6b

    .line 460
    invoke-virtual {v6}, Lcom/helpshift/websockets/WebSocketExtension;->getName()Ljava/lang/String;

    move-result-object v5

    .line 463
    iget-object v7, p0, Lcom/helpshift/websockets/HandshakeReader;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v7}, Lcom/helpshift/websockets/WebSocket;->getHandshakeBuilder()Lcom/helpshift/websockets/HandshakeBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/helpshift/websockets/HandshakeBuilder;->containsExtension(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 472
    invoke-virtual {v6}, Lcom/helpshift/websockets/WebSocketExtension;->validate()V

    .line 475
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 465
    :cond_52
    new-instance v0, Lcom/helpshift/websockets/OpeningHandshakeException;

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->UNSUPPORTED_EXTENSION:Lcom/helpshift/websockets/WebSocketError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The extension contained in the Sec-WebSocket-Extensions header is not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/helpshift/websockets/OpeningHandshakeException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;Lcom/helpshift/websockets/StatusLine;Ljava/util/Map;)V

    throw v0

    .line 453
    :cond_6b
    new-instance v0, Lcom/helpshift/websockets/OpeningHandshakeException;

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->EXTENSION_PARSE_ERROR:Lcom/helpshift/websockets/WebSocketError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The value in \'Sec-WebSocket-Extensions\' failed to be parsed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/helpshift/websockets/OpeningHandshakeException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;Lcom/helpshift/websockets/StatusLine;Ljava/util/Map;)V

    throw v0

    .line 480
    :cond_84
    invoke-direct {p0, p1, p2, v1}, Lcom/helpshift/websockets/HandshakeReader;->validateExtensionCombination(Lcom/helpshift/websockets/StatusLine;Ljava/util/Map;Ljava/util/List;)V

    .line 483
    iget-object p1, p0, Lcom/helpshift/websockets/HandshakeReader;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {p1, v1}, Lcom/helpshift/websockets/WebSocket;->setAgreedExtensions(Ljava/util/List;)V

    :cond_8c
    :goto_8c
    return-void
.end method

.method private validateProtocol(Lcom/helpshift/websockets/StatusLine;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/websockets/StatusLine;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    const-string v0, "Sec-WebSocket-Protocol"

    .line 536
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/4 v1, 0x0

    .line 544
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_46

    .line 546
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_46

    .line 553
    :cond_1b
    iget-object v1, p0, Lcom/helpshift/websockets/HandshakeReader;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {v1}, Lcom/helpshift/websockets/WebSocket;->getHandshakeBuilder()Lcom/helpshift/websockets/HandshakeBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/helpshift/websockets/HandshakeBuilder;->containsProtocol(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 562
    iget-object p1, p0, Lcom/helpshift/websockets/HandshakeReader;->mWebSocket:Lcom/helpshift/websockets/WebSocket;

    invoke-virtual {p1, v0}, Lcom/helpshift/websockets/WebSocket;->setAgreedProtocol(Ljava/lang/String;)V

    return-void

    .line 555
    :cond_2d
    new-instance v1, Lcom/helpshift/websockets/OpeningHandshakeException;

    sget-object v2, Lcom/helpshift/websockets/WebSocketError;->UNSUPPORTED_PROTOCOL:Lcom/helpshift/websockets/WebSocketError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The protocol contained in the Sec-WebSocket-Protocol header is not supported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/helpshift/websockets/OpeningHandshakeException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;Lcom/helpshift/websockets/StatusLine;Ljava/util/Map;)V

    throw v1

    :cond_46
    :goto_46
    return-void
.end method

.method private validateStatusLine(Lcom/helpshift/websockets/StatusLine;Ljava/util/Map;Lcom/helpshift/websockets/WebSocketInputStream;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/websockets/StatusLine;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/helpshift/websockets/WebSocketInputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    .line 207
    invoke-virtual {p1}, Lcom/helpshift/websockets/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_9

    return-void

    .line 213
    :cond_9
    invoke-direct {p0, p2, p3}, Lcom/helpshift/websockets/HandshakeReader;->readBody(Ljava/util/Map;Lcom/helpshift/websockets/WebSocketInputStream;)[B

    move-result-object v7

    .line 216
    new-instance p3, Lcom/helpshift/websockets/OpeningHandshakeException;

    sget-object v3, Lcom/helpshift/websockets/WebSocketError;->NOT_SWITCHING_PROTOCOLS:Lcom/helpshift/websockets/WebSocketError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The status code of the opening handshake response is not \'101 Switching Protocols\'. The status line is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/helpshift/websockets/OpeningHandshakeException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;Lcom/helpshift/websockets/StatusLine;Ljava/util/Map;[B)V

    throw p3
.end method

.method private validateUpgrade(Lcom/helpshift/websockets/StatusLine;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/websockets/StatusLine;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    const-string v0, "Upgrade"

    .line 280
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_42

    .line 282
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_42

    .line 290
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\\s*,\\s*"

    .line 292
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 294
    array-length v2, v1

    const/4 v3, 0x0

    :goto_28
    if-ge v3, v2, :cond_14

    aget-object v4, v1, v3

    const-string v5, "websocket"

    .line 295
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    return-void

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 303
    :cond_38
    new-instance v0, Lcom/helpshift/websockets/OpeningHandshakeException;

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->NO_WEBSOCKET_IN_UPGRADE_HEADER:Lcom/helpshift/websockets/WebSocketError;

    const-string v2, "\'websocket\' was not found in \'Upgrade\' header."

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/helpshift/websockets/OpeningHandshakeException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;Lcom/helpshift/websockets/StatusLine;Ljava/util/Map;)V

    throw v0

    .line 284
    :cond_42
    new-instance v0, Lcom/helpshift/websockets/OpeningHandshakeException;

    sget-object v1, Lcom/helpshift/websockets/WebSocketError;->NO_UPGRADE_HEADER:Lcom/helpshift/websockets/WebSocketError;

    const-string v2, "The opening handshake response does not contain \'Upgrade\' header."

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/helpshift/websockets/OpeningHandshakeException;-><init>(Lcom/helpshift/websockets/WebSocketError;Ljava/lang/String;Lcom/helpshift/websockets/StatusLine;Ljava/util/Map;)V

    throw v0

    return-void
.end method


# virtual methods
.method public readHandshake(Lcom/helpshift/websockets/WebSocketInputStream;Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/websockets/WebSocketInputStream;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/websockets/WebSocketException;
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lcom/helpshift/websockets/HandshakeReader;->readStatusLine(Lcom/helpshift/websockets/WebSocketInputStream;)Lcom/helpshift/websockets/StatusLine;

    move-result-object v0

    .line 54
    invoke-direct {p0, p1}, Lcom/helpshift/websockets/HandshakeReader;->readHttpHeaders(Lcom/helpshift/websockets/WebSocketInputStream;)Ljava/util/Map;

    move-result-object v1

    .line 57
    invoke-direct {p0, v0, v1, p1}, Lcom/helpshift/websockets/HandshakeReader;->validateStatusLine(Lcom/helpshift/websockets/StatusLine;Ljava/util/Map;Lcom/helpshift/websockets/WebSocketInputStream;)V

    .line 60
    invoke-direct {p0, v0, v1}, Lcom/helpshift/websockets/HandshakeReader;->validateUpgrade(Lcom/helpshift/websockets/StatusLine;Ljava/util/Map;)V

    .line 63
    invoke-direct {p0, v0, v1}, Lcom/helpshift/websockets/HandshakeReader;->validateConnection(Lcom/helpshift/websockets/StatusLine;Ljava/util/Map;)V

    .line 66
    invoke-direct {p0, v0, v1, p2}, Lcom/helpshift/websockets/HandshakeReader;->validateAccept(Lcom/helpshift/websockets/StatusLine;Ljava/util/Map;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, v0, v1}, Lcom/helpshift/websockets/HandshakeReader;->validateExtensions(Lcom/helpshift/websockets/StatusLine;Ljava/util/Map;)V

    .line 72
    invoke-direct {p0, v0, v1}, Lcom/helpshift/websockets/HandshakeReader;->validateProtocol(Lcom/helpshift/websockets/StatusLine;Ljava/util/Map;)V

    return-object v1
.end method
