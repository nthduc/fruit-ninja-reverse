.class Lcom/helpshift/websockets/SocketFactorySettings;
.super Ljava/lang/Object;
.source "SocketFactorySettings.java"


# instance fields
.field private mSSLContext:Ljavax/net/ssl/SSLContext;

.field private mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private mSocketFactory:Ljavax/net/SocketFactory;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSSLContext()Ljavax/net/ssl/SSLContext;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/helpshift/websockets/SocketFactorySettings;->mSSLContext:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/helpshift/websockets/SocketFactorySettings;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/helpshift/websockets/SocketFactorySettings;->mSocketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public selectSocketFactory(Z)Ljavax/net/SocketFactory;
    .registers 2

    if-eqz p1, :cond_15

    .line 68
    iget-object p1, p0, Lcom/helpshift/websockets/SocketFactorySettings;->mSSLContext:Ljavax/net/ssl/SSLContext;

    if-eqz p1, :cond_b

    .line 69
    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    return-object p1

    .line 72
    :cond_b
    iget-object p1, p0, Lcom/helpshift/websockets/SocketFactorySettings;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p1, :cond_10

    return-object p1

    .line 76
    :cond_10
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object p1

    return-object p1

    .line 79
    :cond_15
    iget-object p1, p0, Lcom/helpshift/websockets/SocketFactorySettings;->mSocketFactory:Ljavax/net/SocketFactory;

    if-eqz p1, :cond_1a

    return-object p1

    .line 83
    :cond_1a
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object p1

    return-object p1
.end method

.method public setSSLContext(Ljavax/net/ssl/SSLContext;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/helpshift/websockets/SocketFactorySettings;->mSSLContext:Ljavax/net/ssl/SSLContext;

    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/helpshift/websockets/SocketFactorySettings;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/helpshift/websockets/SocketFactorySettings;->mSocketFactory:Ljavax/net/SocketFactory;

    return-void
.end method
