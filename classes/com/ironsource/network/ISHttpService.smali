.class public Lcom/ironsource/network/ISHttpService;
.super Ljava/lang/Object;
.source "ISHttpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/network/ISHttpService$Request;
    }
.end annotation


# static fields
.field private static final HTTP_METHOD_GET:Ljava/lang/String; = "GET"

.field private static final HTTP_METHOD_POST:Ljava/lang/String; = "POST"

.field private static final TAG:Ljava/lang/String; = "ISHttpService"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static areRequestParametersValid(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_12

    .line 142
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_12

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private static createConnection(Lcom/ironsource/network/ISHttpService$Request;)Ljava/net/HttpURLConnection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/ironsource/network/ISHttpService$Request;->endpoint:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 153
    iget v1, p0, Lcom/ironsource/network/ISHttpService$Request;->connectTimeOut:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 154
    iget v1, p0, Lcom/ironsource/network/ISHttpService$Request;->readTimeOut:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 155
    iget-object p0, p0, Lcom/ironsource/network/ISHttpService$Request;->method:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object v0
.end method

.method public static sendGETRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/ironsource/network/Response;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/ironsource/network/Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 46
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 48
    new-instance v0, Lcom/ironsource/network/ISHttpService$Request$Builder;

    invoke-direct {v0}, Lcom/ironsource/network/ISHttpService$Request$Builder;-><init>()V

    .line 50
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ironsource/network/ISHttpService$Request$Builder;->setEndpoint(Ljava/lang/String;)Lcom/ironsource/network/ISHttpService$Request$Builder;

    move-result-object p0

    .line 51
    invoke-virtual {p0, p1}, Lcom/ironsource/network/ISHttpService$Request$Builder;->setData(Ljava/lang/String;)Lcom/ironsource/network/ISHttpService$Request$Builder;

    move-result-object p0

    const-string p1, "GET"

    .line 52
    invoke-virtual {p0, p1}, Lcom/ironsource/network/ISHttpService$Request$Builder;->setMethod(Ljava/lang/String;)Lcom/ironsource/network/ISHttpService$Request$Builder;

    move-result-object p0

    .line 53
    invoke-virtual {p0, p2}, Lcom/ironsource/network/ISHttpService$Request$Builder;->addHeaders(Ljava/util/List;)Lcom/ironsource/network/ISHttpService$Request$Builder;

    .line 55
    invoke-virtual {v0}, Lcom/ironsource/network/ISHttpService$Request$Builder;->build()Lcom/ironsource/network/ISHttpService$Request;

    move-result-object p0

    invoke-static {p0}, Lcom/ironsource/network/ISHttpService;->sendRequest(Lcom/ironsource/network/ISHttpService$Request;)Lcom/ironsource/network/Response;

    move-result-object p0

    return-object p0
.end method

.method public static sendPOSTRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/ironsource/network/Response;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/ironsource/network/Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/ironsource/network/ISHttpService$Request$Builder;

    invoke-direct {v0}, Lcom/ironsource/network/ISHttpService$Request$Builder;-><init>()V

    .line 69
    invoke-virtual {v0, p0}, Lcom/ironsource/network/ISHttpService$Request$Builder;->setEndpoint(Ljava/lang/String;)Lcom/ironsource/network/ISHttpService$Request$Builder;

    move-result-object p0

    .line 70
    invoke-virtual {p0, p1}, Lcom/ironsource/network/ISHttpService$Request$Builder;->setData(Ljava/lang/String;)Lcom/ironsource/network/ISHttpService$Request$Builder;

    move-result-object p0

    const-string p1, "POST"

    .line 71
    invoke-virtual {p0, p1}, Lcom/ironsource/network/ISHttpService$Request$Builder;->setMethod(Ljava/lang/String;)Lcom/ironsource/network/ISHttpService$Request$Builder;

    move-result-object p0

    .line 72
    invoke-virtual {p0, p2}, Lcom/ironsource/network/ISHttpService$Request$Builder;->addHeaders(Ljava/util/List;)Lcom/ironsource/network/ISHttpService$Request$Builder;

    .line 74
    invoke-virtual {v0}, Lcom/ironsource/network/ISHttpService$Request$Builder;->build()Lcom/ironsource/network/ISHttpService$Request;

    move-result-object p0

    invoke-static {p0}, Lcom/ironsource/network/ISHttpService;->sendRequest(Lcom/ironsource/network/ISHttpService$Request;)Lcom/ironsource/network/Response;

    move-result-object p0

    return-object p0
.end method

.method public static sendRequest(Lcom/ironsource/network/ISHttpService$Request;)Lcom/ironsource/network/Response;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/ironsource/network/ISHttpService$Request;->endpoint:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/network/ISHttpService$Request;->data:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ironsource/network/ISHttpService;->areRequestParametersValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 82
    new-instance v0, Lcom/ironsource/network/Response;

    invoke-direct {v0}, Lcom/ironsource/network/Response;-><init>()V

    const/4 v1, 0x0

    .line 87
    :try_start_10
    invoke-static {p0}, Lcom/ironsource/network/ISHttpService;->createConnection(Lcom/ironsource/network/ISHttpService$Request;)Ljava/net/HttpURLConnection;

    move-result-object v2
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_14} :catch_4c
    .catchall {:try_start_10 .. :try_end_14} :catchall_49

    .line 89
    :try_start_14
    iget-object v3, p0, Lcom/ironsource/network/ISHttpService$Request;->headers:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/ironsource/network/ISHttpService;->setHeaders(Ljava/net/HttpURLConnection;Ljava/util/List;)V

    .line 91
    invoke-virtual {p0}, Lcom/ironsource/network/ISHttpService$Request;->allowRequestBody()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 92
    invoke-static {v2, p0}, Lcom/ironsource/network/ISHttpService;->writeRequestBody(Ljava/net/HttpURLConnection;Lcom/ironsource/network/ISHttpService$Request;)V

    .line 95
    :cond_22
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 97
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iput v3, v0, Lcom/ironsource/network/Response;->responseCode:I

    if-eqz v1, :cond_34

    .line 99
    invoke-static {v1}, Lcom/ironsource/network/Utils;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v3

    iput-object v3, v0, Lcom/ironsource/network/Response;->data:[B
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_34} :catch_44
    .catchall {:try_start_14 .. :try_end_34} :catchall_3f

    :cond_34
    if-eqz v1, :cond_39

    .line 109
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_39
    if-eqz v2, :cond_86

    .line 113
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_86

    :catchall_3f
    move-exception p0

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_89

    :catch_44
    move-exception v3

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_4e

    :catchall_49
    move-exception p0

    move-object v2, v1

    goto :goto_89

    :catch_4c
    move-exception v3

    move-object v2, v1

    :goto_4e
    if-eqz v1, :cond_87

    .line 102
    :try_start_50
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    iput v4, v0, Lcom/ironsource/network/Response;->responseCode:I

    const/16 v5, 0x190

    if-lt v4, v5, :cond_87

    const-string v3, "ISHttpService"

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed post to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ironsource/network/ISHttpService$Request;->endpoint:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " StatusCode: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Lcom/ironsource/network/Response;->responseCode:I

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_50 .. :try_end_7c} :catchall_88

    if-eqz v2, :cond_81

    .line 109
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_81
    if-eqz v1, :cond_86

    .line 113
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_86
    :goto_86
    return-object v0

    .line 105
    :cond_87
    :try_start_87
    throw v3
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_88

    :catchall_88
    move-exception p0

    :goto_89
    if-eqz v2, :cond_8e

    .line 109
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_8e
    if-eqz v1, :cond_93

    .line 113
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 115
    :cond_93
    throw p0

    .line 79
    :cond_94
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string v0, "not valid params"

    invoke-direct {p0, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static setHeaders(Ljava/net/HttpURLConnection;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 121
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 122
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_1c
    return-void
.end method

.method private static writeRequestBody(Ljava/net/HttpURLConnection;Lcom/ironsource/network/ISHttpService$Request;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 127
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 128
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 130
    :try_start_d
    iget-object p0, p1, Lcom/ironsource/network/ISHttpService$Request;->data:Ljava/lang/String;

    iget-object p1, p1, Lcom/ironsource/network/ISHttpService$Request;->encoding:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/DataOutputStream;->write([B)V

    .line 131
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 132
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception p0

    .line 136
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 138
    throw p0
.end method
