.class public Lcom/helpshift/websockets/ProxySettings;
.super Ljava/lang/Object;
.source "ProxySettings.java"


# instance fields
.field private final mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHost:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPort:I

.field private mSecure:Z

.field private final mSocketFactorySettings:Lcom/helpshift/websockets/SocketFactorySettings;

.field private final mWebSocketFactory:Lcom/helpshift/websockets/WebSocketFactory;


# direct methods
.method constructor <init>(Lcom/helpshift/websockets/WebSocketFactory;)V
    .registers 3

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/helpshift/websockets/ProxySettings;->mWebSocketFactory:Lcom/helpshift/websockets/WebSocketFactory;

    .line 99
    new-instance p1, Ljava/util/TreeMap;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {p1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/helpshift/websockets/ProxySettings;->mHeaders:Ljava/util/Map;

    .line 100
    new-instance p1, Lcom/helpshift/websockets/SocketFactorySettings;

    invoke-direct {p1}, Lcom/helpshift/websockets/SocketFactorySettings;-><init>()V

    iput-object p1, p0, Lcom/helpshift/websockets/ProxySettings;->mSocketFactorySettings:Lcom/helpshift/websockets/SocketFactorySettings;

    .line 102
    invoke-virtual {p0}, Lcom/helpshift/websockets/ProxySettings;->reset()Lcom/helpshift/websockets/ProxySettings;

    return-void
.end method

.method private setByScheme(Ljava/lang/String;)V
    .registers 3

    const-string v0, "http"

    .line 449
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x0

    .line 450
    iput-boolean p1, p0, Lcom/helpshift/websockets/ProxySettings;->mSecure:Z

    goto :goto_17

    :cond_c
    const-string v0, "https"

    .line 452
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    .line 453
    iput-boolean p1, p0, Lcom/helpshift/websockets/ProxySettings;->mSecure:Z

    :cond_17
    :goto_17
    return-void
.end method

.method private setByUserInfo(Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x2

    const-string v1, ":"

    .line 463
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 467
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_17

    if-eq v1, v0, :cond_12

    return-void

    .line 469
    :cond_12
    aget-object v0, p1, v2

    .line 470
    aget-object p1, p1, v3

    goto :goto_1a

    .line 474
    :cond_17
    aget-object v0, p1, v2

    const/4 p1, 0x0

    .line 482
    :goto_1a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_21

    return-void

    .line 486
    :cond_21
    iput-object v0, p0, Lcom/helpshift/websockets/ProxySettings;->mId:Ljava/lang/String;

    .line 487
    iput-object p1, p0, Lcom/helpshift/websockets/ProxySettings;->mPassword:Ljava/lang/String;

    return-void
.end method

.method private setServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/helpshift/websockets/ProxySettings;
    .registers 5

    .line 439
    invoke-direct {p0, p1}, Lcom/helpshift/websockets/ProxySettings;->setByScheme(Ljava/lang/String;)V

    .line 440
    invoke-direct {p0, p2}, Lcom/helpshift/websockets/ProxySettings;->setByUserInfo(Ljava/lang/String;)V

    .line 441
    iput-object p3, p0, Lcom/helpshift/websockets/ProxySettings;->mHost:Ljava/lang/String;

    .line 442
    iput p4, p0, Lcom/helpshift/websockets/ProxySettings;->mPort:I

    return-object p0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/helpshift/websockets/ProxySettings;
    .registers 5

    if-eqz p1, :cond_20

    .line 513
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_20

    .line 517
    :cond_9
    iget-object v0, p0, Lcom/helpshift/websockets/ProxySettings;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1d

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 521
    iget-object v1, p0, Lcom/helpshift/websockets/ProxySettings;->mHeaders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    :cond_1d
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    :goto_20
    return-object p0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 499
    iget-object v0, p0, Lcom/helpshift/websockets/ProxySettings;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/helpshift/websockets/ProxySettings;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 284
    iget-object v0, p0, Lcom/helpshift/websockets/ProxySettings;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .line 315
    iget-object v0, p0, Lcom/helpshift/websockets/ProxySettings;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .line 246
    iget v0, p0, Lcom/helpshift/websockets/ProxySettings;->mPort:I

    return v0
.end method

.method public getSSLContext()Ljavax/net/ssl/SSLContext;
    .registers 2

    .line 584
    iget-object v0, p0, Lcom/helpshift/websockets/ProxySettings;->mSocketFactorySettings:Lcom/helpshift/websockets/SocketFactorySettings;

    invoke-virtual {v0}, Lcom/helpshift/websockets/SocketFactorySettings;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .line 561
    iget-object v0, p0, Lcom/helpshift/websockets/ProxySettings;->mSocketFactorySettings:Lcom/helpshift/websockets/SocketFactorySettings;

    invoke-virtual {v0}, Lcom/helpshift/websockets/SocketFactorySettings;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .registers 2

    .line 537
    iget-object v0, p0, Lcom/helpshift/websockets/ProxySettings;->mSocketFactorySettings:Lcom/helpshift/websockets/SocketFactorySettings;

    invoke-virtual {v0}, Lcom/helpshift/websockets/SocketFactorySettings;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public getWebSocketFactory()Lcom/helpshift/websockets/WebSocketFactory;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/helpshift/websockets/ProxySettings;->mWebSocketFactory:Lcom/helpshift/websockets/WebSocketFactory;

    return-object v0
.end method

.method public isSecure()Z
    .registers 2

    .line 183
    iget-boolean v0, p0, Lcom/helpshift/websockets/ProxySettings;->mSecure:Z

    return v0
.end method

.method public reset()Lcom/helpshift/websockets/ProxySettings;
    .registers 3

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lcom/helpshift/websockets/ProxySettings;->mSecure:Z

    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/helpshift/websockets/ProxySettings;->mHost:Ljava/lang/String;

    const/4 v1, -0x1

    .line 167
    iput v1, p0, Lcom/helpshift/websockets/ProxySettings;->mPort:I

    .line 168
    iput-object v0, p0, Lcom/helpshift/websockets/ProxySettings;->mId:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lcom/helpshift/websockets/ProxySettings;->mPassword:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/helpshift/websockets/ProxySettings;->mHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method selectSocketFactory()Ljavax/net/SocketFactory;
    .registers 3

    .line 602
    iget-object v0, p0, Lcom/helpshift/websockets/ProxySettings;->mSocketFactorySettings:Lcom/helpshift/websockets/SocketFactorySettings;

    iget-boolean v1, p0, Lcom/helpshift/websockets/ProxySettings;->mSecure:Z

    invoke-virtual {v0, v1}, Lcom/helpshift/websockets/SocketFactorySettings;->selectSocketFactory(Z)Ljavax/net/SocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public setCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/helpshift/websockets/ProxySettings;
    .registers 3

    .line 343
    invoke-virtual {p0, p1}, Lcom/helpshift/websockets/ProxySettings;->setId(Ljava/lang/String;)Lcom/helpshift/websockets/ProxySettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/helpshift/websockets/ProxySettings;->setPassword(Ljava/lang/String;)Lcom/helpshift/websockets/ProxySettings;

    move-result-object p1

    return-object p1
.end method

.method public setHost(Ljava/lang/String;)Lcom/helpshift/websockets/ProxySettings;
    .registers 2

    .line 227
    iput-object p1, p0, Lcom/helpshift/websockets/ProxySettings;->mHost:Ljava/lang/String;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/helpshift/websockets/ProxySettings;
    .registers 2

    .line 303
    iput-object p1, p0, Lcom/helpshift/websockets/ProxySettings;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/helpshift/websockets/ProxySettings;
    .registers 2

    .line 326
    iput-object p1, p0, Lcom/helpshift/websockets/ProxySettings;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method public setPort(I)Lcom/helpshift/websockets/ProxySettings;
    .registers 2

    .line 263
    iput p1, p0, Lcom/helpshift/websockets/ProxySettings;->mPort:I

    return-object p0
.end method

.method public setSSLContext(Ljavax/net/ssl/SSLContext;)Lcom/helpshift/websockets/ProxySettings;
    .registers 3

    .line 595
    iget-object v0, p0, Lcom/helpshift/websockets/ProxySettings;->mSocketFactorySettings:Lcom/helpshift/websockets/SocketFactorySettings;

    invoke-virtual {v0, p1}, Lcom/helpshift/websockets/SocketFactorySettings;->setSSLContext(Ljavax/net/ssl/SSLContext;)V

    return-object p0
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/helpshift/websockets/ProxySettings;
    .registers 3

    .line 572
    iget-object v0, p0, Lcom/helpshift/websockets/ProxySettings;->mSocketFactorySettings:Lcom/helpshift/websockets/SocketFactorySettings;

    invoke-virtual {v0, p1}, Lcom/helpshift/websockets/SocketFactorySettings;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-object p0
.end method

.method public setSecure(Z)Lcom/helpshift/websockets/ProxySettings;
    .registers 2

    .line 195
    iput-boolean p1, p0, Lcom/helpshift/websockets/ProxySettings;->mSecure:Z

    return-object p0
.end method

.method public setServer(Ljava/lang/String;)Lcom/helpshift/websockets/ProxySettings;
    .registers 2

    if-nez p1, :cond_3

    return-object p0

    .line 361
    :cond_3
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/helpshift/websockets/ProxySettings;->setServer(Ljava/net/URI;)Lcom/helpshift/websockets/ProxySettings;

    move-result-object p1

    return-object p1
.end method

.method public setServer(Ljava/net/URI;)Lcom/helpshift/websockets/ProxySettings;
    .registers 5

    if-nez p1, :cond_3

    return-object p0

    .line 429
    :cond_3
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 430
    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 432
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result p1

    .line 434
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/helpshift/websockets/ProxySettings;->setServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/helpshift/websockets/ProxySettings;

    move-result-object p1

    return-object p1
.end method

.method public setServer(Ljava/net/URL;)Lcom/helpshift/websockets/ProxySettings;
    .registers 3

    if-nez p1, :cond_3

    return-object p0

    .line 380
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/helpshift/websockets/ProxySettings;->setServer(Ljava/net/URI;)Lcom/helpshift/websockets/ProxySettings;

    move-result-object p1
    :try_end_b
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_b} :catch_c

    return-object p1

    :catch_c
    move-exception p1

    .line 383
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)Lcom/helpshift/websockets/ProxySettings;
    .registers 3

    .line 548
    iget-object v0, p0, Lcom/helpshift/websockets/ProxySettings;->mSocketFactorySettings:Lcom/helpshift/websockets/SocketFactorySettings;

    invoke-virtual {v0, p1}, Lcom/helpshift/websockets/SocketFactorySettings;->setSocketFactory(Ljavax/net/SocketFactory;)V

    return-object p0
.end method
