.class Lokhttp3/internal/platform/Android10Platform;
.super Lokhttp3/internal/platform/AndroidPlatform;
.source "Android10Platform.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 32
    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/platform/AndroidPlatform;-><init>(Ljava/lang/Class;Lokhttp3/internal/platform/OptionalMethod;Lokhttp3/internal/platform/OptionalMethod;Lokhttp3/internal/platform/OptionalMethod;Lokhttp3/internal/platform/OptionalMethod;)V

    return-void
.end method

.method public static buildIfSupported()Lokhttp3/internal/platform/Platform;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 73
    invoke-static {}, Lokhttp3/internal/platform/Platform;->isAndroid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 78
    :cond_8
    :try_start_8
    invoke-static {}, Lokhttp3/internal/platform/Android10Platform;->getSdkInt()I

    move-result v0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1c

    const-string v0, "com.android.org.conscrypt.SSLParametersImpl"

    .line 80
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 82
    new-instance v2, Lokhttp3/internal/platform/Android10Platform;

    invoke-direct {v2, v0}, Lokhttp3/internal/platform/Android10Platform;-><init>(Ljava/lang/Class;)V
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_1b} :catch_1c

    return-object v2

    :catch_1c
    :cond_1c
    return-object v1
.end method

.method private enableSessionTickets(Ljavax/net/ssl/SSLSocket;)V
    .registers 3

    .line 56
    invoke-static {p1}, Landroid/net/ssl/SSLSockets;->isSupportedSocket(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 57
    invoke-static {p1, v0}, Landroid/net/ssl/SSLSockets;->setUseSessionTickets(Ljavax/net/ssl/SSLSocket;Z)V

    :cond_a
    return-void
.end method


# virtual methods
.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .line 40
    :try_start_0
    invoke-direct {p0, p1}, Lokhttp3/internal/platform/Android10Platform;->enableSessionTickets(Ljavax/net/ssl/SSLSocket;)V

    .line 42
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object p2

    .line 45
    invoke-static {p3}, Lokhttp3/internal/platform/Platform;->alpnProtocolNames(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    .line 46
    invoke-virtual {p2, p3}, Ljavax/net/ssl/SSLParameters;->setApplicationProtocols([Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception p1

    .line 51
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Android internal error"

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .line 63
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getApplicationProtocol()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    return-object p1

    :cond_e
    :goto_e
    const/4 p1, 0x0

    return-object p1
.end method