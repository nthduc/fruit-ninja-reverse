.class Lcom/helpshift/websockets/HandshakeBuilder;
.super Ljava/lang/Object;
.source "HandshakeBuilder.java"


# static fields
.field private static final CONNECTION_HEADER:[Ljava/lang/String;

.field private static final RN:Ljava/lang/String; = "\r\n"

.field private static final UPGRADE_HEADER:[Ljava/lang/String;

.field private static final VERSION_HEADER:[Ljava/lang/String;


# instance fields
.field private mExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/helpshift/websockets/WebSocketExtension;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHost:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private final mPath:Ljava/lang/String;

.field private mProtocols:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSecure:Z

.field private final mUri:Ljava/net/URI;

.field private mUserInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "Upgrade"

    const-string v1, "Connection"

    .line 33
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/helpshift/websockets/HandshakeBuilder;->CONNECTION_HEADER:[Ljava/lang/String;

    const-string v1, "websocket"

    .line 34
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/helpshift/websockets/HandshakeBuilder;->UPGRADE_HEADER:[Ljava/lang/String;

    const-string v0, "Sec-WebSocket-Version"

    const-string v1, "13"

    .line 35
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/helpshift/websockets/HandshakeBuilder;->VERSION_HEADER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/helpshift/websockets/HandshakeBuilder;)V
    .registers 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iget-boolean v0, p1, Lcom/helpshift/websockets/HandshakeBuilder;->mSecure:Z

    iput-boolean v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mSecure:Z

    .line 63
    iget-object v0, p1, Lcom/helpshift/websockets/HandshakeBuilder;->mUserInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mUserInfo:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lcom/helpshift/websockets/HandshakeBuilder;->mHost:Ljava/lang/String;

    iput-object v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mHost:Ljava/lang/String;

    .line 65
    iget-object v0, p1, Lcom/helpshift/websockets/HandshakeBuilder;->mPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mPath:Ljava/lang/String;

    .line 66
    iget-object v0, p1, Lcom/helpshift/websockets/HandshakeBuilder;->mUri:Ljava/net/URI;

    iput-object v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mUri:Ljava/net/URI;

    .line 67
    iget-object v0, p1, Lcom/helpshift/websockets/HandshakeBuilder;->mKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mKey:Ljava/lang/String;

    .line 68
    iget-object v0, p1, Lcom/helpshift/websockets/HandshakeBuilder;->mProtocols:Ljava/util/Set;

    invoke-static {v0}, Lcom/helpshift/websockets/HandshakeBuilder;->copyProtocols(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mProtocols:Ljava/util/Set;

    .line 69
    iget-object v0, p1, Lcom/helpshift/websockets/HandshakeBuilder;->mExtensions:Ljava/util/List;

    invoke-static {v0}, Lcom/helpshift/websockets/HandshakeBuilder;->copyExtensions(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mExtensions:Ljava/util/List;

    .line 70
    iget-object p1, p1, Lcom/helpshift/websockets/HandshakeBuilder;->mHeaders:Ljava/util/List;

    invoke-static {p1}, Lcom/helpshift/websockets/HandshakeBuilder;->copyHeaders(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mHeaders:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean p1, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mSecure:Z

    .line 50
    iput-object p2, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mUserInfo:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mHost:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mPath:Ljava/lang/String;

    const/4 p2, 0x3

    .line 56
    new-array p2, p2, [Ljava/lang/Object;

    if-eqz p1, :cond_13

    const-string p1, "wss"

    goto :goto_15

    :cond_13
    const-string p1, "ws"

    :goto_15
    const/4 v0, 0x0

    aput-object p1, p2, v0

    const/4 p1, 0x1

    aput-object p3, p2, p1

    const/4 p1, 0x2

    aput-object p4, p2, p1

    const-string p1, "%s://%s%s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mUri:Ljava/net/URI;

    return-void
.end method

.method public static build(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\r\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 100
    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 104
    :cond_32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static copyExtensions(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/websockets/WebSocketExtension;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/helpshift/websockets/WebSocketExtension;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 126
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 127
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 129
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/websockets/WebSocketExtension;

    .line 130
    new-instance v2, Lcom/helpshift/websockets/WebSocketExtension;

    invoke-direct {v2, v1}, Lcom/helpshift/websockets/WebSocketExtension;-><init>(Lcom/helpshift/websockets/WebSocketExtension;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_26
    return-object v0
.end method

.method private static copyHeader([Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    .line 151
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 153
    aget-object v2, p0, v1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 154
    aget-object p0, p0, v1

    aput-object p0, v0, v1

    return-object v0
.end method

.method private static copyHeaders(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 141
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 144
    invoke-static {v1}, Lcom/helpshift/websockets/HandshakeBuilder;->copyHeader([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_25
    return-object v0
.end method

.method private static copyProtocols(Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 114
    :cond_4
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 116
    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private static isValidProtocol(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_2a

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2a

    .line 78
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_28

    .line 81
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x21

    if-lt v3, v4, :cond_27

    const/16 v4, 0x7e

    if-lt v4, v3, :cond_27

    .line 83
    invoke-static {v3}, Lcom/helpshift/websockets/Token;->isSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_27

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_27
    :goto_27
    return v0

    :cond_28
    const/4 p0, 0x1

    return p0

    :cond_2a
    :goto_2a
    return v0
.end method


# virtual methods
.method public addExtension(Lcom/helpshift/websockets/WebSocketExtension;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 217
    :cond_3
    monitor-enter p0

    .line 218
    :try_start_4
    iget-object v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mExtensions:Ljava/util/List;

    if-nez v0, :cond_f

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mExtensions:Ljava/util/List;

    .line 222
    :cond_f
    iget-object v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mExtensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public addExtension(Ljava/lang/String;)V
    .registers 2

    .line 227
    invoke-static {p1}, Lcom/helpshift/websockets/WebSocketExtension;->parse(Ljava/lang/String;)Lcom/helpshift/websockets/WebSocketExtension;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/helpshift/websockets/HandshakeBuilder;->addExtension(Lcom/helpshift/websockets/WebSocketExtension;)V

    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_2c

    .line 317
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2c

    :cond_9
    if-nez p2, :cond_d

    const-string p2, ""

    .line 325
    :cond_d
    monitor-enter p0

    .line 326
    :try_start_e
    iget-object v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mHeaders:Ljava/util/List;

    if-nez v0, :cond_19

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mHeaders:Ljava/util/List;

    .line 330
    :cond_19
    iget-object v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mHeaders:Ljava/util/List;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_29

    throw p1

    :cond_2c
    :goto_2c
    return-void
.end method

.method public addProtocol(Ljava/lang/String;)V
    .registers 3

    .line 160
    invoke-static {p1}, Lcom/helpshift/websockets/HandshakeBuilder;->isValidProtocol(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 166
    monitor-enter p0

    .line 167
    :try_start_7
    iget-object v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mProtocols:Ljava/util/Set;

    if-nez v0, :cond_12

    .line 171
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mProtocols:Ljava/util/Set;

    .line 174
    :cond_12
    iget-object v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mProtocols:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw p1

    .line 161
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'protocol\' must be a non-empty string with characters in the range U+0021 to U+007E not including separator characters."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public buildHeaders()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    .line 410
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Host"

    aput-object v4, v2, v3

    iget-object v4, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mHost:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    sget-object v2, Lcom/helpshift/websockets/HandshakeBuilder;->CONNECTION_HEADER:[Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    sget-object v2, Lcom/helpshift/websockets/HandshakeBuilder;->UPGRADE_HEADER:[Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    sget-object v2, Lcom/helpshift/websockets/HandshakeBuilder;->VERSION_HEADER:[Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "Sec-WebSocket-Key"

    aput-object v4, v2, v3

    iget-object v4, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mKey:Ljava/lang/String;

    aput-object v4, v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    iget-object v2, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mProtocols:Ljava/util/Set;

    const-string v4, ", "

    if-eqz v2, :cond_4e

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_4e

    .line 426
    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "Sec-WebSocket-Protocol"

    aput-object v6, v2, v3

    iget-object v6, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mProtocols:Ljava/util/Set;

    invoke-static {v6, v4}, Lcom/helpshift/websockets/Misc;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    :cond_4e
    iget-object v2, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mExtensions:Ljava/util/List;

    if-eqz v2, :cond_69

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_69

    .line 431
    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "Sec-WebSocket-Extensions"

    aput-object v6, v2, v3

    iget-object v6, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mExtensions:Ljava/util/List;

    invoke-static {v6, v4}, Lcom/helpshift/websockets/Misc;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_69
    iget-object v2, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mUserInfo:Ljava/lang/String;

    if-eqz v2, :cond_95

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_95

    .line 436
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Authorization"

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Basic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mUserInfo:Ljava/lang/String;

    invoke-static {v3}, Lcom/helpshift/websockets/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_95
    iget-object v1, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mHeaders:Ljava/util/List;

    if-eqz v1, :cond_a4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_a4

    .line 441
    iget-object v1, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mHeaders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_a4
    return-object v0
.end method

.method public buildRequestLine()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    .line 403
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mPath:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "GET %s HTTP/1.1"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clearExtensions()V
    .registers 2

    .line 277
    monitor-enter p0

    const/4 v0, 0x0

    .line 278
    :try_start_2
    iput-object v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mExtensions:Ljava/util/List;

    .line 279
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public clearHeaders()V
    .registers 2

    .line 363
    monitor-enter p0

    const/4 v0, 0x0

    .line 364
    :try_start_2
    iput-object v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mHeaders:Ljava/util/List;

    .line 365
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public clearProtocols()V
    .registers 2

    .line 197
    monitor-enter p0

    const/4 v0, 0x0

    .line 198
    :try_start_2
    iput-object v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mProtocols:Ljava/util/Set;

    .line 199
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public clearUserInfo()V
    .registers 2

    .line 389
    monitor-enter p0

    const/4 v0, 0x0

    .line 390
    :try_start_2
    iput-object v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mUserInfo:Ljava/lang/String;

    .line 391
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public containsExtension(Lcom/helpshift/websockets/WebSocketExtension;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 287
    :cond_4
    monitor-enter p0

    .line 288
    :try_start_5
    iget-object v1, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mExtensions:Ljava/util/List;

    if-nez v1, :cond_b

    .line 289
    monitor-exit p0

    return v0

    .line 292
    :cond_b
    iget-object v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mExtensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_13
    move-exception p1

    .line 293
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public containsExtension(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 301
    :cond_4
    monitor-enter p0

    .line 302
    :try_start_5
    iget-object v1, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mExtensions:Ljava/util/List;

    if-nez v1, :cond_b

    .line 303
    monitor-exit p0

    return v0

    .line 306
    :cond_b
    iget-object v1, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mExtensions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/websockets/WebSocketExtension;

    .line 307
    invoke-virtual {v2}, Lcom/helpshift/websockets/WebSocketExtension;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 p1, 0x1

    .line 308
    monitor-exit p0

    return p1

    .line 312
    :cond_2a
    monitor-exit p0

    return v0

    :catchall_2c
    move-exception p1

    .line 313
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2c

    throw p1

    return-void
.end method

.method public containsProtocol(Ljava/lang/String;)Z
    .registers 3

    .line 203
    monitor-enter p0

    .line 204
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mProtocols:Ljava/util/Set;

    if-nez v0, :cond_8

    const/4 p1, 0x0

    .line 205
    monitor-exit p0

    return p1

    .line 208
    :cond_8
    iget-object v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mProtocols:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_10
    move-exception p1

    .line 209
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public getURI()Ljava/net/URI;
    .registers 2

    .line 395
    iget-object v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mUri:Ljava/net/URI;

    return-object v0
.end method

.method public removeExtension(Lcom/helpshift/websockets/WebSocketExtension;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 235
    :cond_3
    monitor-enter p0

    .line 236
    :try_start_4
    iget-object v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mExtensions:Ljava/util/List;

    if-nez v0, :cond_a

    .line 237
    monitor-exit p0

    return-void

    .line 240
    :cond_a
    iget-object v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mExtensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 242
    iget-object p1, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mExtensions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1a

    const/4 p1, 0x0

    .line 243
    iput-object p1, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mExtensions:Ljava/util/List;

    .line 245
    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public removeExtensions(Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 253
    :cond_3
    monitor-enter p0

    .line 254
    :try_start_4
    iget-object v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mExtensions:Ljava/util/List;

    if-nez v0, :cond_a

    .line 255
    monitor-exit p0

    return-void

    .line 258
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    iget-object v1, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mExtensions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/websockets/WebSocketExtension;

    .line 261
    invoke-virtual {v2}, Lcom/helpshift/websockets/WebSocketExtension;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 262
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 266
    :cond_2f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/websockets/WebSocketExtension;

    .line 267
    iget-object v1, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mExtensions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_33

    .line 270
    :cond_45
    iget-object p1, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mExtensions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_50

    const/4 p1, 0x0

    .line 271
    iput-object p1, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mExtensions:Ljava/util/List;

    .line 273
    :cond_50
    monitor-exit p0

    return-void

    :catchall_52
    move-exception p1

    monitor-exit p0
    :try_end_54
    .catchall {:try_start_4 .. :try_end_54} :catchall_52

    throw p1

    return-void
.end method

.method public removeHeaders(Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_5a

    .line 335
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_5a

    .line 339
    :cond_9
    monitor-enter p0

    .line 340
    :try_start_a
    iget-object v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mHeaders:Ljava/util/List;

    if-nez v0, :cond_10

    .line 341
    monitor-exit p0

    return-void

    .line 344
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 346
    iget-object v1, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 347
    aget-object v3, v2, v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 348
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 352
    :cond_34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_38
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 353
    iget-object v1, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mHeaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_38

    .line 356
    :cond_4a
    iget-object p1, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mHeaders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_55

    const/4 p1, 0x0

    .line 357
    iput-object p1, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mHeaders:Ljava/util/List;

    .line 359
    :cond_55
    monitor-exit p0

    return-void

    :catchall_57
    move-exception p1

    monitor-exit p0
    :try_end_59
    .catchall {:try_start_a .. :try_end_59} :catchall_57

    throw p1

    :cond_5a
    :goto_5a
    return-void
.end method

.method public removeProtocol(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 183
    :cond_3
    monitor-enter p0

    .line 184
    :try_start_4
    iget-object v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mProtocols:Ljava/util/Set;

    if-nez v0, :cond_a

    .line 185
    monitor-exit p0

    return-void

    .line 188
    :cond_a
    iget-object v0, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mProtocols:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 190
    iget-object p1, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mProtocols:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_1a

    const/4 p1, 0x0

    .line 191
    iput-object p1, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mProtocols:Ljava/util/Set;

    .line 193
    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2

    .line 399
    iput-object p1, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setUserInfo(Ljava/lang/String;)V
    .registers 2

    .line 369
    monitor-enter p0

    .line 370
    :try_start_1
    iput-object p1, p0, Lcom/helpshift/websockets/HandshakeBuilder;->mUserInfo:Ljava/lang/String;

    .line 371
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, ""

    if-nez p1, :cond_5

    move-object p1, v0

    :cond_5
    if-nez p2, :cond_8

    move-object p2, v0

    :cond_8
    const/4 v0, 0x2

    .line 383
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "%s:%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 385
    invoke-virtual {p0, p1}, Lcom/helpshift/websockets/HandshakeBuilder;->setUserInfo(Ljava/lang/String;)V

    return-void
.end method
