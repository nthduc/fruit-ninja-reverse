.class public Lcom/helpshift/common/platform/AndroidHTTPTransport;
.super Ljava/lang/Object;
.source "AndroidHTTPTransport.java"

# interfaces
.implements Lcom/helpshift/common/platform/network/HTTPTransport;


# static fields
.field private static final TAG:Ljava/lang/String; = "Helpshift_HTTPTrnsport"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private closeHelpshiftSSLSocketFactorySockets(Ljavax/net/ssl/HttpsURLConnection;)V
    .registers 4

    .line 211
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_1b

    if-eqz p1, :cond_1b

    .line 214
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    .line 215
    instance-of v0, p1, Lcom/helpshift/android/commons/downloader/HelpshiftSSLSocketFactory;

    if-eqz v0, :cond_1b

    .line 216
    check-cast p1, Lcom/helpshift/android/commons/downloader/HelpshiftSSLSocketFactory;

    .line 218
    invoke-virtual {p1}, Lcom/helpshift/android/commons/downloader/HelpshiftSSLSocketFactory;->closeSockets()V

    :cond_1b
    return-void
.end method

.method private fixSSLSocketProtocols(Ljavax/net/ssl/HttpsURLConnection;)V
    .registers 6

    .line 191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_2c

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "TLSv1.2"

    .line 196
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "SSLv3"

    .line 200
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 203
    new-instance v3, Lcom/helpshift/android/commons/downloader/HelpshiftSSLSocketFactory;

    invoke-direct {v3, v2, v0, v1}, Lcom/helpshift/android/commons/downloader/HelpshiftSSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/util/List;Ljava/util/List;)V

    .line 204
    invoke-virtual {p1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_2c
    return-void
.end method

.method private isInvalidKeyForHeader(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "filePath"

    .line 224
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "originalFileName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method private makeNetworkRequest(Lcom/helpshift/common/platform/network/Request;)Lcom/helpshift/common/platform/network/Response;
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "Error in finally closing resources"

    const-string v4, "Helpshift_HTTPTrnsport"

    const-string v5, "Network error"

    :try_start_a
    const-string v7, "https://"

    .line 66
    sget-object v8, Lcom/helpshift/common/domain/network/NetworkConstants;->scheme:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_12
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_12} :catch_296
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_12} :catch_286
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_12} :catch_284
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_a .. :try_end_12} :catch_274
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_a .. :try_end_12} :catch_264
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_12} :catch_254
    .catchall {:try_start_a .. :try_end_12} :catchall_24e

    if-eqz v7, :cond_68

    .line 67
    :try_start_14
    new-instance v7, Ljava/net/URL;

    iget-object v8, v2, Lcom/helpshift/common/platform/network/Request;->url:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_21
    .catch Ljava/net/UnknownHostException; {:try_start_14 .. :try_end_21} :catch_61
    .catch Ljava/net/SocketException; {:try_start_14 .. :try_end_21} :catch_5a
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_21} :catch_58
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_14 .. :try_end_21} :catch_51
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_14 .. :try_end_21} :catch_4a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_21} :catch_43
    .catchall {:try_start_14 .. :try_end_21} :catchall_3c

    .line 68
    :try_start_21
    move-object v8, v7

    check-cast v8, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v1, v8}, Lcom/helpshift/common/platform/AndroidHTTPTransport;->fixSSLSocketProtocols(Ljavax/net/ssl/HttpsURLConnection;)V
    :try_end_27
    .catch Ljava/net/UnknownHostException; {:try_start_21 .. :try_end_27} :catch_39
    .catch Ljava/net/SocketException; {:try_start_21 .. :try_end_27} :catch_36
    .catch Ljava/lang/SecurityException; {:try_start_21 .. :try_end_27} :catch_34
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_21 .. :try_end_27} :catch_31
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_21 .. :try_end_27} :catch_2e
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_27} :catch_2b
    .catchall {:try_start_21 .. :try_end_27} :catchall_28

    goto :goto_75

    :catchall_28
    move-exception v0

    move-object v2, v0

    goto :goto_3f

    :catch_2b
    move-exception v0

    move-object v6, v0

    goto :goto_46

    :catch_2e
    move-exception v0

    move-object v6, v0

    goto :goto_4d

    :catch_31
    move-exception v0

    move-object v6, v0

    goto :goto_54

    :catch_34
    move-exception v0

    goto :goto_37

    :catch_36
    move-exception v0

    :goto_37
    move-object v6, v0

    goto :goto_5d

    :catch_39
    move-exception v0

    move-object v6, v0

    goto :goto_64

    :catchall_3c
    move-exception v0

    move-object v2, v0

    const/4 v7, 0x0

    :goto_3f
    const/4 v9, 0x0

    :goto_40
    const/4 v11, 0x0

    goto/16 :goto_2a8

    :catch_43
    move-exception v0

    move-object v6, v0

    const/4 v7, 0x0

    :goto_46
    const/4 v9, 0x0

    :goto_47
    const/4 v11, 0x0

    goto/16 :goto_259

    :catch_4a
    move-exception v0

    move-object v6, v0

    const/4 v7, 0x0

    :goto_4d
    const/4 v9, 0x0

    :goto_4e
    const/4 v11, 0x0

    goto/16 :goto_269

    :catch_51
    move-exception v0

    move-object v6, v0

    const/4 v7, 0x0

    :goto_54
    const/4 v9, 0x0

    :goto_55
    const/4 v11, 0x0

    goto/16 :goto_279

    :catch_58
    move-exception v0

    goto :goto_5b

    :catch_5a
    move-exception v0

    :goto_5b
    move-object v6, v0

    const/4 v7, 0x0

    :goto_5d
    const/4 v9, 0x0

    :goto_5e
    const/4 v11, 0x0

    goto/16 :goto_28b

    :catch_61
    move-exception v0

    move-object v6, v0

    const/4 v7, 0x0

    :goto_64
    const/4 v9, 0x0

    :goto_65
    const/4 v11, 0x0

    goto/16 :goto_29b

    .line 71
    :cond_68
    :try_start_68
    new-instance v7, Ljava/net/URL;

    iget-object v8, v2, Lcom/helpshift/common/platform/network/Request;->url:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;
    :try_end_75
    .catch Ljava/net/UnknownHostException; {:try_start_68 .. :try_end_75} :catch_296
    .catch Ljava/net/SocketException; {:try_start_68 .. :try_end_75} :catch_286
    .catch Ljava/lang/SecurityException; {:try_start_68 .. :try_end_75} :catch_284
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_68 .. :try_end_75} :catch_274
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_68 .. :try_end_75} :catch_264
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_75} :catch_254
    .catchall {:try_start_68 .. :try_end_75} :catchall_24e

    .line 74
    :goto_75
    :try_start_75
    iget-object v8, v2, Lcom/helpshift/common/platform/network/Request;->method:Lcom/helpshift/common/platform/network/Method;

    invoke-virtual {v8}, Lcom/helpshift/common/platform/network/Method;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 75
    iget v8, v2, Lcom/helpshift/common/platform/network/Request;->timeout:I

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 76
    iget-object v8, v2, Lcom/helpshift/common/platform/network/Request;->headers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_89
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_8d
    .catch Ljava/net/UnknownHostException; {:try_start_75 .. :try_end_8d} :catch_249
    .catch Ljava/net/SocketException; {:try_start_75 .. :try_end_8d} :catch_244
    .catch Ljava/lang/SecurityException; {:try_start_75 .. :try_end_8d} :catch_242
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_75 .. :try_end_8d} :catch_23d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_75 .. :try_end_8d} :catch_238
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_8d} :catch_233
    .catchall {:try_start_75 .. :try_end_8d} :catchall_22d

    if-eqz v9, :cond_9d

    :try_start_8f
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/helpshift/common/platform/network/KeyValuePair;

    .line 77
    iget-object v10, v9, Lcom/helpshift/common/platform/network/KeyValuePair;->key:Ljava/lang/String;

    iget-object v9, v9, Lcom/helpshift/common/platform/network/KeyValuePair;->value:Ljava/lang/String;

    invoke-virtual {v7, v10, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9c
    .catch Ljava/net/UnknownHostException; {:try_start_8f .. :try_end_9c} :catch_39
    .catch Ljava/net/SocketException; {:try_start_8f .. :try_end_9c} :catch_36
    .catch Ljava/lang/SecurityException; {:try_start_8f .. :try_end_9c} :catch_34
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_8f .. :try_end_9c} :catch_31
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_8f .. :try_end_9c} :catch_2e
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_9c} :catch_2b
    .catchall {:try_start_8f .. :try_end_9c} :catchall_28

    goto :goto_89

    .line 80
    :cond_9d
    :try_start_9d
    iget-object v8, v2, Lcom/helpshift/common/platform/network/Request;->method:Lcom/helpshift/common/platform/network/Method;

    sget-object v9, Lcom/helpshift/common/platform/network/Method;->POST:Lcom/helpshift/common/platform/network/Method;
    :try_end_a1
    .catch Ljava/net/UnknownHostException; {:try_start_9d .. :try_end_a1} :catch_249
    .catch Ljava/net/SocketException; {:try_start_9d .. :try_end_a1} :catch_244
    .catch Ljava/lang/SecurityException; {:try_start_9d .. :try_end_a1} :catch_242
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_9d .. :try_end_a1} :catch_23d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_9d .. :try_end_a1} :catch_238
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a1} :catch_233
    .catchall {:try_start_9d .. :try_end_a1} :catchall_22d

    if-eq v8, v9, :cond_ac

    :try_start_a3
    iget-object v8, v2, Lcom/helpshift/common/platform/network/Request;->method:Lcom/helpshift/common/platform/network/Method;

    sget-object v9, Lcom/helpshift/common/platform/network/Method;->PUT:Lcom/helpshift/common/platform/network/Method;
    :try_end_a7
    .catch Ljava/net/UnknownHostException; {:try_start_a3 .. :try_end_a7} :catch_39
    .catch Ljava/net/SocketException; {:try_start_a3 .. :try_end_a7} :catch_36
    .catch Ljava/lang/SecurityException; {:try_start_a3 .. :try_end_a7} :catch_34
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_a3 .. :try_end_a7} :catch_31
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_a3 .. :try_end_a7} :catch_2e
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a7} :catch_2b
    .catchall {:try_start_a3 .. :try_end_a7} :catchall_28

    if-ne v8, v9, :cond_aa

    goto :goto_ac

    :cond_aa
    const/4 v9, 0x0

    goto :goto_dd

    .line 83
    :cond_ac
    :goto_ac
    :try_start_ac
    iget-object v8, v2, Lcom/helpshift/common/platform/network/Request;->method:Lcom/helpshift/common/platform/network/Method;

    sget-object v9, Lcom/helpshift/common/platform/network/Method;->PUT:Lcom/helpshift/common/platform/network/Method;
    :try_end_b0
    .catch Ljava/net/UnknownHostException; {:try_start_ac .. :try_end_b0} :catch_249
    .catch Ljava/net/SocketException; {:try_start_ac .. :try_end_b0} :catch_244
    .catch Ljava/lang/SecurityException; {:try_start_ac .. :try_end_b0} :catch_242
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_ac .. :try_end_b0} :catch_23d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_ac .. :try_end_b0} :catch_238
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b0} :catch_233
    .catchall {:try_start_ac .. :try_end_b0} :catchall_22d

    if-ne v8, v9, :cond_b8

    .line 84
    :try_start_b2
    move-object v8, v2

    check-cast v8, Lcom/helpshift/common/platform/network/PUTRequest;

    iget-object v8, v8, Lcom/helpshift/common/platform/network/PUTRequest;->query:Ljava/lang/String;
    :try_end_b7
    .catch Ljava/net/UnknownHostException; {:try_start_b2 .. :try_end_b7} :catch_39
    .catch Ljava/net/SocketException; {:try_start_b2 .. :try_end_b7} :catch_36
    .catch Ljava/lang/SecurityException; {:try_start_b2 .. :try_end_b7} :catch_34
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_b2 .. :try_end_b7} :catch_31
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_b2 .. :try_end_b7} :catch_2e
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b7} :catch_2b
    .catchall {:try_start_b2 .. :try_end_b7} :catchall_28

    goto :goto_bd

    .line 87
    :cond_b8
    :try_start_b8
    move-object v8, v2

    check-cast v8, Lcom/helpshift/common/platform/network/POSTRequest;

    iget-object v8, v8, Lcom/helpshift/common/platform/network/POSTRequest;->query:Ljava/lang/String;

    :goto_bd
    const/4 v9, 0x1

    .line 90
    invoke-virtual {v7, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 91
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9
    :try_end_c5
    .catch Ljava/net/UnknownHostException; {:try_start_b8 .. :try_end_c5} :catch_249
    .catch Ljava/net/SocketException; {:try_start_b8 .. :try_end_c5} :catch_244
    .catch Ljava/lang/SecurityException; {:try_start_b8 .. :try_end_c5} :catch_242
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_b8 .. :try_end_c5} :catch_23d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_b8 .. :try_end_c5} :catch_238
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_c5} :catch_233
    .catchall {:try_start_b8 .. :try_end_c5} :catchall_22d

    .line 92
    :try_start_c5
    new-instance v10, Ljava/io/BufferedWriter;

    new-instance v11, Ljava/io/OutputStreamWriter;

    const-string v12, "UTF-8"

    invoke-direct {v11, v9, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 93
    invoke-virtual {v10, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->flush()V

    .line 95
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V

    .line 96
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 99
    :goto_dd
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 100
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v11

    .line 102
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_f2
    :goto_f2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13
    :try_end_f6
    .catch Ljava/net/UnknownHostException; {:try_start_c5 .. :try_end_f6} :catch_228
    .catch Ljava/net/SocketException; {:try_start_c5 .. :try_end_f6} :catch_223
    .catch Ljava/lang/SecurityException; {:try_start_c5 .. :try_end_f6} :catch_221
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_c5 .. :try_end_f6} :catch_21c
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_c5 .. :try_end_f6} :catch_217
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_f6} :catch_212
    .catchall {:try_start_c5 .. :try_end_f6} :catchall_20e

    const/4 v14, 0x0

    if-eqz v13, :cond_136

    :try_start_f9
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 103
    invoke-static {v13}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_f2

    .line 104
    new-instance v15, Lcom/helpshift/common/platform/network/KeyValuePair;

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v15, v13, v6}, Lcom/helpshift/common/platform/network/KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11b
    .catch Ljava/net/UnknownHostException; {:try_start_f9 .. :try_end_11b} :catch_132
    .catch Ljava/net/SocketException; {:try_start_f9 .. :try_end_11b} :catch_12e
    .catch Ljava/lang/SecurityException; {:try_start_f9 .. :try_end_11b} :catch_12c
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_f9 .. :try_end_11b} :catch_128
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_f9 .. :try_end_11b} :catch_124
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_11b} :catch_120
    .catchall {:try_start_f9 .. :try_end_11b} :catchall_11c

    goto :goto_f2

    :catchall_11c
    move-exception v0

    move-object v2, v0

    goto/16 :goto_40

    :catch_120
    move-exception v0

    move-object v6, v0

    goto/16 :goto_47

    :catch_124
    move-exception v0

    move-object v6, v0

    goto/16 :goto_4e

    :catch_128
    move-exception v0

    move-object v6, v0

    goto/16 :goto_55

    :catch_12c
    move-exception v0

    goto :goto_12f

    :catch_12e
    move-exception v0

    :goto_12f
    move-object v6, v0

    goto/16 :goto_5e

    :catch_132
    move-exception v0

    move-object v6, v0

    goto/16 :goto_65

    :cond_136
    const/16 v6, 0xc8

    if-lt v8, v6, :cond_194

    const/16 v6, 0x12c

    if-ge v8, v6, :cond_194

    .line 109
    :try_start_13e
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const-string v12, "Content-Encoding"

    .line 111
    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;
    :try_end_14f
    .catch Ljava/net/UnknownHostException; {:try_start_13e .. :try_end_14f} :catch_228
    .catch Ljava/net/SocketException; {:try_start_13e .. :try_end_14f} :catch_223
    .catch Ljava/lang/SecurityException; {:try_start_13e .. :try_end_14f} :catch_221
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_13e .. :try_end_14f} :catch_21c
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_13e .. :try_end_14f} :catch_217
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_14f} :catch_212
    .catchall {:try_start_13e .. :try_end_14f} :catchall_20e

    if-eqz v11, :cond_16b

    .line 112
    :try_start_151
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_16b

    .line 113
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "gzip"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16b

    .line 114
    new-instance v11, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v11, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_16a
    .catch Ljava/net/UnknownHostException; {:try_start_151 .. :try_end_16a} :catch_132
    .catch Ljava/net/SocketException; {:try_start_151 .. :try_end_16a} :catch_12e
    .catch Ljava/lang/SecurityException; {:try_start_151 .. :try_end_16a} :catch_12c
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_151 .. :try_end_16a} :catch_128
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_151 .. :try_end_16a} :catch_124
    .catch Ljava/io/IOException; {:try_start_151 .. :try_end_16a} :catch_120
    .catchall {:try_start_151 .. :try_end_16a} :catchall_11c

    move-object v6, v11

    .line 116
    :cond_16b
    :try_start_16b
    invoke-direct {v1, v6}, Lcom/helpshift/common/platform/AndroidHTTPTransport;->readInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v11

    .line 117
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 118
    new-instance v6, Lcom/helpshift/common/platform/network/Response;

    invoke-direct {v6, v8, v11, v10}, Lcom/helpshift/common/platform/network/Response;-><init>(ILjava/lang/String;Ljava/util/List;)V
    :try_end_177
    .catch Ljava/net/UnknownHostException; {:try_start_16b .. :try_end_177} :catch_228
    .catch Ljava/net/SocketException; {:try_start_16b .. :try_end_177} :catch_223
    .catch Ljava/lang/SecurityException; {:try_start_16b .. :try_end_177} :catch_221
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_16b .. :try_end_177} :catch_21c
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_16b .. :try_end_177} :catch_217
    .catch Ljava/io/IOException; {:try_start_16b .. :try_end_177} :catch_212
    .catchall {:try_start_16b .. :try_end_177} :catchall_20e

    const/4 v11, 0x0

    .line 156
    invoke-static {v11}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 157
    invoke-static {v9}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 160
    :try_start_17e
    instance-of v2, v7, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_188

    .line 161
    move-object v2, v7

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v1, v2}, Lcom/helpshift/common/platform/AndroidHTTPTransport;->closeHelpshiftSSLSocketFactorySockets(Ljavax/net/ssl/HttpsURLConnection;)V

    :cond_188
    if-eqz v7, :cond_193

    .line 164
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_18d
    .catch Ljava/lang/Exception; {:try_start_17e .. :try_end_18d} :catch_18e

    goto :goto_193

    :catch_18e
    move-exception v0

    move-object v2, v0

    .line 168
    invoke-static {v4, v3, v2}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_193
    :goto_193
    return-object v6

    :cond_194
    const/4 v11, 0x0

    .line 121
    :try_start_195
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Api : "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Lcom/helpshift/common/platform/network/Request;->url:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " \t Status : "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "\t Thread : "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 121
    invoke-static {v4, v6}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_1c7
    .catch Ljava/net/UnknownHostException; {:try_start_195 .. :try_end_1c7} :catch_20c
    .catch Ljava/net/SocketException; {:try_start_195 .. :try_end_1c7} :catch_20a
    .catch Ljava/lang/SecurityException; {:try_start_195 .. :try_end_1c7} :catch_208
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_195 .. :try_end_1c7} :catch_206
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_195 .. :try_end_1c7} :catch_204
    .catch Ljava/io/IOException; {:try_start_195 .. :try_end_1c7} :catch_202
    .catchall {:try_start_195 .. :try_end_1c7} :catchall_2a6

    .line 125
    :try_start_1c7
    invoke-direct {v1, v6}, Lcom/helpshift/common/platform/AndroidHTTPTransport;->readInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v11

    .line 127
    new-instance v12, Lcom/helpshift/common/platform/network/Response;

    invoke-direct {v12, v8, v11, v10}, Lcom/helpshift/common/platform/network/Response;-><init>(ILjava/lang/String;Ljava/util/List;)V
    :try_end_1d0
    .catch Ljava/net/UnknownHostException; {:try_start_1c7 .. :try_end_1d0} :catch_1ff
    .catch Ljava/net/SocketException; {:try_start_1c7 .. :try_end_1d0} :catch_1fc
    .catch Ljava/lang/SecurityException; {:try_start_1c7 .. :try_end_1d0} :catch_1fa
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1c7 .. :try_end_1d0} :catch_1f7
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1c7 .. :try_end_1d0} :catch_1f4
    .catch Ljava/io/IOException; {:try_start_1c7 .. :try_end_1d0} :catch_1f1
    .catchall {:try_start_1c7 .. :try_end_1d0} :catchall_1ec

    .line 156
    invoke-static {v6}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 157
    invoke-static {v9}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 160
    :try_start_1d6
    instance-of v2, v7, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_1e0

    .line 161
    move-object v2, v7

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v1, v2}, Lcom/helpshift/common/platform/AndroidHTTPTransport;->closeHelpshiftSSLSocketFactorySockets(Ljavax/net/ssl/HttpsURLConnection;)V

    :cond_1e0
    if-eqz v7, :cond_1eb

    .line 164
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1e5
    .catch Ljava/lang/Exception; {:try_start_1d6 .. :try_end_1e5} :catch_1e6

    goto :goto_1eb

    :catch_1e6
    move-exception v0

    move-object v2, v0

    .line 168
    invoke-static {v4, v3, v2}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1eb
    :goto_1eb
    return-object v12

    :catchall_1ec
    move-exception v0

    move-object v2, v0

    move-object v11, v6

    goto/16 :goto_2a8

    :catch_1f1
    move-exception v0

    move-object v11, v6

    goto :goto_214

    :catch_1f4
    move-exception v0

    move-object v11, v6

    goto :goto_219

    :catch_1f7
    move-exception v0

    move-object v11, v6

    goto :goto_21e

    :catch_1fa
    move-exception v0

    goto :goto_1fd

    :catch_1fc
    move-exception v0

    :goto_1fd
    move-object v11, v6

    goto :goto_225

    :catch_1ff
    move-exception v0

    move-object v11, v6

    goto :goto_22a

    :catch_202
    move-exception v0

    goto :goto_214

    :catch_204
    move-exception v0

    goto :goto_219

    :catch_206
    move-exception v0

    goto :goto_21e

    :catch_208
    move-exception v0

    goto :goto_225

    :catch_20a
    move-exception v0

    goto :goto_225

    :catch_20c
    move-exception v0

    goto :goto_22a

    :catchall_20e
    move-exception v0

    const/4 v11, 0x0

    goto/16 :goto_2a7

    :catch_212
    move-exception v0

    const/4 v11, 0x0

    :goto_214
    move-object v6, v0

    goto/16 :goto_259

    :catch_217
    move-exception v0

    const/4 v11, 0x0

    :goto_219
    move-object v6, v0

    goto/16 :goto_269

    :catch_21c
    move-exception v0

    const/4 v11, 0x0

    :goto_21e
    move-object v6, v0

    goto/16 :goto_279

    :catch_221
    move-exception v0

    goto :goto_224

    :catch_223
    move-exception v0

    :goto_224
    const/4 v11, 0x0

    :goto_225
    move-object v6, v0

    goto/16 :goto_28b

    :catch_228
    move-exception v0

    const/4 v11, 0x0

    :goto_22a
    move-object v6, v0

    goto/16 :goto_29b

    :catchall_22d
    move-exception v0

    const/4 v11, 0x0

    move-object v2, v0

    move-object v9, v11

    goto/16 :goto_2a8

    :catch_233
    move-exception v0

    const/4 v11, 0x0

    move-object v6, v0

    move-object v9, v11

    goto :goto_259

    :catch_238
    move-exception v0

    const/4 v11, 0x0

    move-object v6, v0

    move-object v9, v11

    goto :goto_269

    :catch_23d
    move-exception v0

    const/4 v11, 0x0

    move-object v6, v0

    move-object v9, v11

    goto :goto_279

    :catch_242
    move-exception v0

    goto :goto_245

    :catch_244
    move-exception v0

    :goto_245
    const/4 v11, 0x0

    move-object v6, v0

    move-object v9, v11

    goto :goto_28b

    :catch_249
    move-exception v0

    const/4 v11, 0x0

    move-object v6, v0

    move-object v9, v11

    goto :goto_29b

    :catchall_24e
    move-exception v0

    const/4 v11, 0x0

    move-object v2, v0

    move-object v7, v11

    move-object v9, v7

    goto :goto_2a8

    :catch_254
    move-exception v0

    const/4 v11, 0x0

    move-object v6, v0

    move-object v7, v11

    move-object v9, v7

    .line 151
    :goto_259
    :try_start_259
    sget-object v8, Lcom/helpshift/common/exception/NetworkException;->GENERIC:Lcom/helpshift/common/exception/NetworkException;

    .line 152
    iget-object v2, v2, Lcom/helpshift/common/platform/network/Request;->url:Ljava/lang/String;

    iput-object v2, v8, Lcom/helpshift/common/exception/NetworkException;->route:Ljava/lang/String;

    .line 153
    invoke-static {v6, v8, v5}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object v2

    throw v2

    :catch_264
    move-exception v0

    const/4 v11, 0x0

    move-object v6, v0

    move-object v7, v11

    move-object v9, v7

    .line 146
    :goto_269
    sget-object v8, Lcom/helpshift/common/exception/NetworkException;->SSL_HANDSHAKE:Lcom/helpshift/common/exception/NetworkException;

    .line 147
    iget-object v2, v2, Lcom/helpshift/common/platform/network/Request;->url:Ljava/lang/String;

    iput-object v2, v8, Lcom/helpshift/common/exception/NetworkException;->route:Ljava/lang/String;

    .line 148
    invoke-static {v6, v8, v5}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object v2

    throw v2

    :catch_274
    move-exception v0

    const/4 v11, 0x0

    move-object v6, v0

    move-object v7, v11

    move-object v9, v7

    .line 141
    :goto_279
    sget-object v8, Lcom/helpshift/common/exception/NetworkException;->SSL_PEER_UNVERIFIED:Lcom/helpshift/common/exception/NetworkException;

    .line 142
    iget-object v2, v2, Lcom/helpshift/common/platform/network/Request;->url:Ljava/lang/String;

    iput-object v2, v8, Lcom/helpshift/common/exception/NetworkException;->route:Ljava/lang/String;

    .line 143
    invoke-static {v6, v8, v5}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object v2

    throw v2

    :catch_284
    move-exception v0

    goto :goto_287

    :catch_286
    move-exception v0

    :goto_287
    const/4 v11, 0x0

    move-object v6, v0

    move-object v7, v11

    move-object v9, v7

    .line 136
    :goto_28b
    sget-object v8, Lcom/helpshift/common/exception/NetworkException;->NO_CONNECTION:Lcom/helpshift/common/exception/NetworkException;

    .line 137
    iget-object v2, v2, Lcom/helpshift/common/platform/network/Request;->url:Ljava/lang/String;

    iput-object v2, v8, Lcom/helpshift/common/exception/NetworkException;->route:Ljava/lang/String;

    .line 138
    invoke-static {v6, v8, v5}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object v2

    throw v2

    :catch_296
    move-exception v0

    const/4 v11, 0x0

    move-object v6, v0

    move-object v7, v11

    move-object v9, v7

    .line 131
    :goto_29b
    sget-object v8, Lcom/helpshift/common/exception/NetworkException;->UNKNOWN_HOST:Lcom/helpshift/common/exception/NetworkException;

    .line 132
    iget-object v2, v2, Lcom/helpshift/common/platform/network/Request;->url:Ljava/lang/String;

    iput-object v2, v8, Lcom/helpshift/common/exception/NetworkException;->route:Ljava/lang/String;

    .line 133
    invoke-static {v6, v8, v5}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object v2

    throw v2
    :try_end_2a6
    .catchall {:try_start_259 .. :try_end_2a6} :catchall_2a6

    :catchall_2a6
    move-exception v0

    :goto_2a7
    move-object v2, v0

    .line 156
    :goto_2a8
    invoke-static {v11}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 157
    invoke-static {v9}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 160
    :try_start_2ae
    instance-of v5, v7, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v5, :cond_2b8

    .line 161
    move-object v5, v7

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v1, v5}, Lcom/helpshift/common/platform/AndroidHTTPTransport;->closeHelpshiftSSLSocketFactorySockets(Ljavax/net/ssl/HttpsURLConnection;)V

    :cond_2b8
    if-eqz v7, :cond_2c3

    .line 164
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2bd
    .catch Ljava/lang/Exception; {:try_start_2ae .. :try_end_2bd} :catch_2be

    goto :goto_2c3

    :catch_2be
    move-exception v0

    move-object v5, v0

    .line 168
    invoke-static {v4, v3, v5}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    :cond_2c3
    :goto_2c3
    throw v2

    return-void
.end method

.method private readInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 177
    :cond_4
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 178
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    :goto_13
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 185
    :cond_1d
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 186
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private upload(Lcom/helpshift/common/platform/network/UploadRequest;)Lcom/helpshift/common/platform/network/Response;
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "Error in finally closing resources"

    const-string v4, "Helpshift_HTTPTrnsport"

    const-string v5, "Upload error"

    .line 234
    :try_start_a
    new-instance v7, Ljava/net/URL;
    :try_end_c
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_c} :catch_64a
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_c} :catch_635
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_c} :catch_633
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_a .. :try_end_c} :catch_61e
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_a .. :try_end_c} :catch_609
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_c} :catch_5f1
    .catchall {:try_start_a .. :try_end_c} :catchall_5e6

    :try_start_c
    iget-object v8, v2, Lcom/helpshift/common/platform/network/UploadRequest;->url:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v8, "--"

    const-string v9, "*****"

    const-string v10, "\r\n"

    const-string v11, "https://"

    .line 239
    sget-object v12, Lcom/helpshift/common/domain/network/NetworkConstants;->scheme:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_1f
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_1f} :catch_5d7
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_1f} :catch_5c8
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_1f} :catch_5c6
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_c .. :try_end_1f} :catch_5b7
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_c .. :try_end_1f} :catch_5a8
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1f} :catch_5f1
    .catchall {:try_start_c .. :try_end_1f} :catchall_5e6

    if-eqz v11, :cond_94

    .line 240
    :try_start_21
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_27
    .catch Ljava/net/UnknownHostException; {:try_start_21 .. :try_end_27} :catch_88
    .catch Ljava/net/SocketException; {:try_start_21 .. :try_end_27} :catch_7c
    .catch Ljava/lang/SecurityException; {:try_start_21 .. :try_end_27} :catch_7a
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_21 .. :try_end_27} :catch_6e
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_21 .. :try_end_27} :catch_62
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_27} :catch_55
    .catchall {:try_start_21 .. :try_end_27} :catchall_4a

    .line 241
    :try_start_27
    move-object v11, v7

    check-cast v11, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v1, v11}, Lcom/helpshift/common/platform/AndroidHTTPTransport;->fixSSLSocketProtocols(Ljavax/net/ssl/HttpsURLConnection;)V
    :try_end_2d
    .catch Ljava/net/UnknownHostException; {:try_start_27 .. :try_end_2d} :catch_46
    .catch Ljava/net/SocketException; {:try_start_27 .. :try_end_2d} :catch_42
    .catch Ljava/lang/SecurityException; {:try_start_27 .. :try_end_2d} :catch_40
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_27 .. :try_end_2d} :catch_3c
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_27 .. :try_end_2d} :catch_38
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2d} :catch_33
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2f

    goto/16 :goto_9a

    :catchall_2f
    move-exception v0

    move-object v2, v0

    move-object v5, v3

    goto :goto_4e

    :catch_33
    move-exception v0

    move-object/from16 v17, v5

    move-object v6, v7

    goto :goto_59

    :catch_38
    move-exception v0

    move-object v8, v5

    move-object v6, v7

    goto :goto_65

    :catch_3c
    move-exception v0

    move-object v8, v5

    move-object v6, v7

    goto :goto_71

    :catch_40
    move-exception v0

    goto :goto_43

    :catch_42
    move-exception v0

    :goto_43
    move-object v8, v5

    move-object v6, v7

    goto :goto_7f

    :catch_46
    move-exception v0

    move-object v8, v5

    move-object v6, v7

    goto :goto_8b

    :catchall_4a
    move-exception v0

    move-object v2, v0

    move-object v5, v3

    const/4 v7, 0x0

    :goto_4e
    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_50
    const/4 v13, 0x0

    :goto_51
    const/16 v16, 0x0

    goto/16 :goto_668

    :catch_55
    move-exception v0

    move-object/from16 v17, v5

    const/4 v6, 0x0

    :goto_59
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object v5, v3

    :goto_5f
    move-object v3, v0

    goto/16 :goto_5fc

    :catch_62
    move-exception v0

    move-object v8, v5

    const/4 v6, 0x0

    :goto_65
    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_67
    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object v5, v3

    :goto_6b
    move-object v3, v0

    goto/16 :goto_613

    :catch_6e
    move-exception v0

    move-object v8, v5

    const/4 v6, 0x0

    :goto_71
    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_73
    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object v5, v3

    :goto_77
    move-object v3, v0

    goto/16 :goto_628

    :catch_7a
    move-exception v0

    goto :goto_7d

    :catch_7c
    move-exception v0

    :goto_7d
    move-object v8, v5

    const/4 v6, 0x0

    :goto_7f
    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_81
    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object v5, v3

    :goto_85
    move-object v3, v0

    goto/16 :goto_63f

    :catch_88
    move-exception v0

    move-object v8, v5

    const/4 v6, 0x0

    :goto_8b
    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_8d
    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object v5, v3

    :goto_91
    move-object v3, v0

    goto/16 :goto_654

    .line 244
    :cond_94
    :try_start_94
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;
    :try_end_9a
    .catch Ljava/net/UnknownHostException; {:try_start_94 .. :try_end_9a} :catch_5d7
    .catch Ljava/net/SocketException; {:try_start_94 .. :try_end_9a} :catch_5c8
    .catch Ljava/lang/SecurityException; {:try_start_94 .. :try_end_9a} :catch_5c6
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_94 .. :try_end_9a} :catch_5b7
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_94 .. :try_end_9a} :catch_5a8
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_9a} :catch_5f1
    .catchall {:try_start_94 .. :try_end_9a} :catchall_5e6

    :goto_9a
    const/4 v11, 0x1

    .line 246
    :try_start_9b
    invoke-virtual {v7, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 247
    invoke-virtual {v7, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v11, 0x0

    .line 248
    invoke-virtual {v7, v11}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 249
    iget-object v12, v2, Lcom/helpshift/common/platform/network/UploadRequest;->method:Lcom/helpshift/common/platform/network/Method;

    invoke-virtual {v12}, Lcom/helpshift/common/platform/network/Method;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 250
    iget v12, v2, Lcom/helpshift/common/platform/network/UploadRequest;->timeout:I

    invoke-virtual {v7, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 251
    iget v12, v2, Lcom/helpshift/common/platform/network/UploadRequest;->timeout:I

    invoke-virtual {v7, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 253
    iget-object v12, v2, Lcom/helpshift/common/platform/network/UploadRequest;->headers:Ljava/util/List;

    .line 254
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_be
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13
    :try_end_c2
    .catch Ljava/net/UnknownHostException; {:try_start_9b .. :try_end_c2} :catch_59f
    .catch Ljava/net/SocketException; {:try_start_9b .. :try_end_c2} :catch_596
    .catch Ljava/lang/SecurityException; {:try_start_9b .. :try_end_c2} :catch_594
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_9b .. :try_end_c2} :catch_58b
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_9b .. :try_end_c2} :catch_582
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_c2} :catch_578
    .catchall {:try_start_9b .. :try_end_c2} :catchall_571

    if-eqz v13, :cond_d2

    :try_start_c4
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/helpshift/common/platform/network/KeyValuePair;

    .line 255
    iget-object v14, v13, Lcom/helpshift/common/platform/network/KeyValuePair;->key:Ljava/lang/String;

    iget-object v13, v13, Lcom/helpshift/common/platform/network/KeyValuePair;->value:Ljava/lang/String;

    invoke-virtual {v7, v14, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d1
    .catch Ljava/net/UnknownHostException; {:try_start_c4 .. :try_end_d1} :catch_46
    .catch Ljava/net/SocketException; {:try_start_c4 .. :try_end_d1} :catch_42
    .catch Ljava/lang/SecurityException; {:try_start_c4 .. :try_end_d1} :catch_40
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_c4 .. :try_end_d1} :catch_3c
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_c4 .. :try_end_d1} :catch_38
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_d1} :catch_33
    .catchall {:try_start_c4 .. :try_end_d1} :catchall_2f

    goto :goto_be

    .line 258
    :cond_d2
    :try_start_d2
    new-instance v12, Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_db
    .catch Ljava/net/UnknownHostException; {:try_start_d2 .. :try_end_db} :catch_59f
    .catch Ljava/net/SocketException; {:try_start_d2 .. :try_end_db} :catch_596
    .catch Ljava/lang/SecurityException; {:try_start_d2 .. :try_end_db} :catch_594
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_d2 .. :try_end_db} :catch_58b
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_d2 .. :try_end_db} :catch_582
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_db} :catch_578
    .catchall {:try_start_d2 .. :try_end_db} :catchall_571

    .line 259
    :try_start_db
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 260
    iget-object v13, v2, Lcom/helpshift/common/platform/network/UploadRequest;->data:Ljava/util/Map;

    .line 262
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_fa
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15
    :try_end_fe
    .catch Ljava/net/UnknownHostException; {:try_start_db .. :try_end_fe} :catch_567
    .catch Ljava/net/SocketException; {:try_start_db .. :try_end_fe} :catch_55d
    .catch Ljava/lang/SecurityException; {:try_start_db .. :try_end_fe} :catch_55b
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_db .. :try_end_fe} :catch_551
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_db .. :try_end_fe} :catch_547
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_fe} :catch_53d
    .catchall {:try_start_db .. :try_end_fe} :catchall_536

    const-string v6, "Content-Length: "

    const-string v11, "Content-Disposition: form-data; name=\""

    if-eqz v15, :cond_1f8

    :try_start_104
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 263
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v14

    move-object/from16 v14, v17

    check-cast v14, Ljava/lang/String;

    .line 265
    invoke-direct {v1, v14}, Lcom/helpshift/common/platform/AndroidHTTPTransport;->isInvalidKeyForHeader(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1c4

    .line 266
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;
    :try_end_120
    .catch Ljava/net/UnknownHostException; {:try_start_104 .. :try_end_120} :catch_1f2
    .catch Ljava/net/SocketException; {:try_start_104 .. :try_end_120} :catch_1ec
    .catch Ljava/lang/SecurityException; {:try_start_104 .. :try_end_120} :catch_1ea
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_104 .. :try_end_120} :catch_1e4
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_104 .. :try_end_120} :catch_1de
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_120} :catch_1d3
    .catchall {:try_start_104 .. :try_end_120} :catchall_1cd

    move-object/from16 v17, v5

    .line 267
    :try_start_122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\"; "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 269
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Content-Type: text/plain;charset=UTF-8"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 270
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v12, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 272
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 273
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_193
    .catch Ljava/net/UnknownHostException; {:try_start_122 .. :try_end_193} :catch_1b9
    .catch Ljava/net/SocketException; {:try_start_122 .. :try_end_193} :catch_1ae
    .catch Ljava/lang/SecurityException; {:try_start_122 .. :try_end_193} :catch_1ac
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_122 .. :try_end_193} :catch_1a1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_122 .. :try_end_193} :catch_196
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_193} :catch_194
    .catchall {:try_start_122 .. :try_end_193} :catchall_1cd

    goto :goto_1c6

    :catch_194
    move-exception v0

    goto :goto_1d6

    :catch_196
    move-exception v0

    move-object v5, v3

    move-object v6, v7

    move-object/from16 v8, v17

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    goto/16 :goto_6b

    :catch_1a1
    move-exception v0

    move-object v5, v3

    move-object v6, v7

    move-object/from16 v8, v17

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    goto/16 :goto_77

    :catch_1ac
    move-exception v0

    goto :goto_1af

    :catch_1ae
    move-exception v0

    :goto_1af
    move-object v5, v3

    move-object v6, v7

    move-object/from16 v8, v17

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    goto/16 :goto_85

    :catch_1b9
    move-exception v0

    move-object v5, v3

    move-object v6, v7

    move-object/from16 v8, v17

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    goto/16 :goto_91

    :cond_1c4
    move-object/from16 v17, v5

    :goto_1c6
    move-object/from16 v5, v17

    move-object/from16 v14, v18

    const/4 v11, 0x0

    goto/16 :goto_fa

    :catchall_1cd
    move-exception v0

    move-object v2, v0

    move-object v5, v3

    :goto_1d0
    const/4 v10, 0x0

    goto/16 :goto_50

    :catch_1d3
    move-exception v0

    move-object/from16 v17, v5

    :goto_1d6
    move-object v5, v3

    move-object v6, v7

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    goto/16 :goto_5f

    :catch_1de
    move-exception v0

    move-object v8, v5

    move-object v6, v7

    const/4 v10, 0x0

    goto/16 :goto_67

    :catch_1e4
    move-exception v0

    move-object v8, v5

    move-object v6, v7

    const/4 v10, 0x0

    goto/16 :goto_73

    :catch_1ea
    move-exception v0

    goto :goto_1ed

    :catch_1ec
    move-exception v0

    :goto_1ed
    move-object v8, v5

    move-object v6, v7

    const/4 v10, 0x0

    goto/16 :goto_81

    :catch_1f2
    move-exception v0

    move-object v8, v5

    move-object v6, v7

    const/4 v10, 0x0

    goto/16 :goto_8d

    :cond_1f8
    move-object/from16 v17, v5

    .line 276
    :try_start_1fa
    new-instance v5, Ljava/io/File;

    const-string v14, "filePath"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v14, "originalFileName"

    .line 277
    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v15, "sc"
    :try_end_211
    .catch Ljava/net/UnknownHostException; {:try_start_1fa .. :try_end_211} :catch_532
    .catch Ljava/net/SocketException; {:try_start_1fa .. :try_end_211} :catch_52e
    .catch Ljava/lang/SecurityException; {:try_start_1fa .. :try_end_211} :catch_52c
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1fa .. :try_end_211} :catch_528
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1fa .. :try_end_211} :catch_524
    .catch Ljava/lang/Exception; {:try_start_1fa .. :try_end_211} :catch_520
    .catchall {:try_start_1fa .. :try_end_211} :catchall_536

    move-object/from16 v18, v3

    :try_start_213
    const-string v3, "type"

    .line 278
    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_21d
    .catch Ljava/net/UnknownHostException; {:try_start_213 .. :try_end_21d} :catch_51c
    .catch Ljava/net/SocketException; {:try_start_213 .. :try_end_21d} :catch_518
    .catch Ljava/lang/SecurityException; {:try_start_213 .. :try_end_21d} :catch_516
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_213 .. :try_end_21d} :catch_512
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_213 .. :try_end_21d} :catch_50e
    .catch Ljava/lang/Exception; {:try_start_213 .. :try_end_21d} :catch_50a
    .catchall {:try_start_213 .. :try_end_21d} :catchall_506

    if-eqz v3, :cond_268

    :try_start_21f
    const-string v3, "screenshot"
    :try_end_221
    .catch Ljava/net/UnknownHostException; {:try_start_21f .. :try_end_221} :catch_25b
    .catch Ljava/net/SocketException; {:try_start_21f .. :try_end_221} :catch_24e
    .catch Ljava/lang/SecurityException; {:try_start_21f .. :try_end_221} :catch_24c
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_21f .. :try_end_221} :catch_23f
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_21f .. :try_end_221} :catch_232
    .catch Ljava/lang/Exception; {:try_start_21f .. :try_end_221} :catch_227
    .catchall {:try_start_21f .. :try_end_221} :catchall_222

    goto :goto_26a

    :catchall_222
    move-exception v0

    move-object v2, v0

    move-object/from16 v5, v18

    goto :goto_1d0

    :catch_227
    move-exception v0

    move-object v3, v0

    move-object v6, v7

    move-object/from16 v5, v18

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_22e
    const/16 v16, 0x0

    goto/16 :goto_5fc

    :catch_232
    move-exception v0

    move-object v3, v0

    move-object v6, v7

    move-object/from16 v8, v17

    move-object/from16 v5, v18

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_23b
    const/16 v16, 0x0

    goto/16 :goto_613

    :catch_23f
    move-exception v0

    move-object v3, v0

    move-object v6, v7

    move-object/from16 v8, v17

    move-object/from16 v5, v18

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_248
    const/16 v16, 0x0

    goto/16 :goto_628

    :catch_24c
    move-exception v0

    goto :goto_24f

    :catch_24e
    move-exception v0

    :goto_24f
    move-object v3, v0

    move-object v6, v7

    move-object/from16 v8, v17

    move-object/from16 v5, v18

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_257
    const/16 v16, 0x0

    goto/16 :goto_63f

    :catch_25b
    move-exception v0

    move-object v3, v0

    move-object v6, v7

    move-object/from16 v8, v17

    move-object/from16 v5, v18

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_264
    const/16 v16, 0x0

    goto/16 :goto_654

    :cond_268
    :try_start_268
    const-string v3, "attachment"
    :try_end_26a
    .catch Ljava/net/UnknownHostException; {:try_start_268 .. :try_end_26a} :catch_51c
    .catch Ljava/net/SocketException; {:try_start_268 .. :try_end_26a} :catch_518
    .catch Ljava/lang/SecurityException; {:try_start_268 .. :try_end_26a} :catch_516
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_268 .. :try_end_26a} :catch_512
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_268 .. :try_end_26a} :catch_50e
    .catch Ljava/lang/Exception; {:try_start_268 .. :try_end_26a} :catch_50a
    .catchall {:try_start_268 .. :try_end_26a} :catchall_506

    :goto_26a
    if-nez v14, :cond_270

    .line 281
    :try_start_26c
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14
    :try_end_270
    .catch Ljava/net/UnknownHostException; {:try_start_26c .. :try_end_270} :catch_25b
    .catch Ljava/net/SocketException; {:try_start_26c .. :try_end_270} :catch_24e
    .catch Ljava/lang/SecurityException; {:try_start_26c .. :try_end_270} :catch_24c
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_26c .. :try_end_270} :catch_23f
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_26c .. :try_end_270} :catch_232
    .catch Ljava/lang/Exception; {:try_start_26c .. :try_end_270} :catch_227
    .catchall {:try_start_26c .. :try_end_270} :catchall_222

    .line 284
    :cond_270
    :try_start_270
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_275
    .catch Ljava/net/UnknownHostException; {:try_start_270 .. :try_end_275} :catch_51c
    .catch Ljava/net/SocketException; {:try_start_270 .. :try_end_275} :catch_518
    .catch Ljava/lang/SecurityException; {:try_start_270 .. :try_end_275} :catch_516
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_270 .. :try_end_275} :catch_512
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_270 .. :try_end_275} :catch_50e
    .catch Ljava/lang/Exception; {:try_start_270 .. :try_end_275} :catch_50a
    .catchall {:try_start_270 .. :try_end_275} :catchall_506

    .line 285
    :try_start_275
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 286
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"; filename=\""

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Content-Type: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Lcom/helpshift/common/platform/network/UploadRequest;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v12, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v13}, Ljava/io/FileInputStream;->available()I

    move-result v3

    const/16 v5, 0x2000

    .line 298
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 299
    new-array v6, v3, [B

    const/4 v11, 0x0

    .line 302
    invoke-virtual {v13, v6, v11, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v14
    :try_end_2f2
    .catch Ljava/net/UnknownHostException; {:try_start_275 .. :try_end_2f2} :catch_4fc
    .catch Ljava/net/SocketException; {:try_start_275 .. :try_end_2f2} :catch_4f2
    .catch Ljava/lang/SecurityException; {:try_start_275 .. :try_end_2f2} :catch_4f0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_275 .. :try_end_2f2} :catch_4e6
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_275 .. :try_end_2f2} :catch_4dc
    .catch Ljava/lang/Exception; {:try_start_275 .. :try_end_2f2} :catch_4d2
    .catchall {:try_start_275 .. :try_end_2f2} :catchall_4c9

    :goto_2f2
    if-lez v14, :cond_33d

    .line 305
    :try_start_2f4
    invoke-virtual {v12, v6, v11, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 306
    invoke-virtual {v13}, Ljava/io/FileInputStream;->available()I

    move-result v3

    .line 307
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 308
    invoke-virtual {v13, v6, v11, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v14
    :try_end_303
    .catch Ljava/net/UnknownHostException; {:try_start_2f4 .. :try_end_303} :catch_333
    .catch Ljava/net/SocketException; {:try_start_2f4 .. :try_end_303} :catch_329
    .catch Ljava/lang/SecurityException; {:try_start_2f4 .. :try_end_303} :catch_327
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_2f4 .. :try_end_303} :catch_31d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2f4 .. :try_end_303} :catch_313
    .catch Ljava/lang/Exception; {:try_start_2f4 .. :try_end_303} :catch_30b
    .catchall {:try_start_2f4 .. :try_end_303} :catchall_304

    goto :goto_2f2

    :catchall_304
    move-exception v0

    move-object v2, v0

    move-object/from16 v5, v18

    :goto_308
    const/4 v10, 0x0

    goto/16 :goto_51

    :catch_30b
    move-exception v0

    move-object v3, v0

    move-object v6, v7

    move-object/from16 v5, v18

    :goto_310
    const/4 v10, 0x0

    goto/16 :goto_22e

    :catch_313
    move-exception v0

    move-object v3, v0

    move-object v6, v7

    move-object/from16 v8, v17

    move-object/from16 v5, v18

    :goto_31a
    const/4 v10, 0x0

    goto/16 :goto_23b

    :catch_31d
    move-exception v0

    move-object v3, v0

    move-object v6, v7

    move-object/from16 v8, v17

    move-object/from16 v5, v18

    :goto_324
    const/4 v10, 0x0

    goto/16 :goto_248

    :catch_327
    move-exception v0

    goto :goto_32a

    :catch_329
    move-exception v0

    :goto_32a
    move-object v3, v0

    move-object v6, v7

    move-object/from16 v8, v17

    move-object/from16 v5, v18

    :goto_330
    const/4 v10, 0x0

    goto/16 :goto_257

    :catch_333
    move-exception v0

    move-object v3, v0

    move-object v6, v7

    move-object/from16 v8, v17

    move-object/from16 v5, v18

    :goto_33a
    const/4 v10, 0x0

    goto/16 :goto_264

    .line 311
    :cond_33d
    :try_start_33d
    invoke-virtual {v12, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->flush()V

    .line 315
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3
    :try_end_35f
    .catch Ljava/net/UnknownHostException; {:try_start_33d .. :try_end_35f} :catch_4fc
    .catch Ljava/net/SocketException; {:try_start_33d .. :try_end_35f} :catch_4f2
    .catch Ljava/lang/SecurityException; {:try_start_33d .. :try_end_35f} :catch_4f0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_33d .. :try_end_35f} :catch_4e6
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_33d .. :try_end_35f} :catch_4dc
    .catch Ljava/lang/Exception; {:try_start_33d .. :try_end_35f} :catch_4d2
    .catchall {:try_start_33d .. :try_end_35f} :catchall_4c9

    const/16 v5, 0xc8

    if-lt v3, v5, :cond_447

    const/16 v5, 0x12c

    if-ge v3, v5, :cond_447

    .line 318
    :try_start_367
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_36b
    .catch Ljava/net/UnknownHostException; {:try_start_367 .. :try_end_36b} :catch_43e
    .catch Ljava/net/SocketException; {:try_start_367 .. :try_end_36b} :catch_435
    .catch Ljava/lang/SecurityException; {:try_start_367 .. :try_end_36b} :catch_433
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_367 .. :try_end_36b} :catch_42a
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_367 .. :try_end_36b} :catch_421
    .catch Ljava/lang/Exception; {:try_start_367 .. :try_end_36b} :catch_41a
    .catchall {:try_start_367 .. :try_end_36b} :catchall_414

    if-eqz v6, :cond_3b0

    .line 320
    :try_start_36d
    invoke-direct {v1, v6}, Lcom/helpshift/common/platform/AndroidHTTPTransport;->readInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5
    :try_end_371
    .catch Ljava/net/UnknownHostException; {:try_start_36d .. :try_end_371} :catch_3a5
    .catch Ljava/net/SocketException; {:try_start_36d .. :try_end_371} :catch_39a
    .catch Ljava/lang/SecurityException; {:try_start_36d .. :try_end_371} :catch_398
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_36d .. :try_end_371} :catch_38d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_36d .. :try_end_371} :catch_382
    .catch Ljava/lang/Exception; {:try_start_36d .. :try_end_371} :catch_379
    .catchall {:try_start_36d .. :try_end_371} :catchall_372

    goto :goto_3b1

    :catchall_372
    move-exception v0

    move-object v2, v0

    move-object v10, v6

    move-object/from16 v5, v18

    goto/16 :goto_51

    :catch_379
    move-exception v0

    move-object v3, v0

    move-object/from16 v16, v6

    move-object v6, v7

    move-object/from16 v5, v18

    goto/16 :goto_3df

    :catch_382
    move-exception v0

    move-object v3, v0

    move-object/from16 v16, v6

    move-object v6, v7

    move-object/from16 v8, v17

    move-object/from16 v5, v18

    goto/16 :goto_3eb

    :catch_38d
    move-exception v0

    move-object v3, v0

    move-object/from16 v16, v6

    move-object v6, v7

    move-object/from16 v8, v17

    move-object/from16 v5, v18

    goto/16 :goto_3f7

    :catch_398
    move-exception v0

    goto :goto_39b

    :catch_39a
    move-exception v0

    :goto_39b
    move-object v3, v0

    move-object/from16 v16, v6

    move-object v6, v7

    move-object/from16 v8, v17

    move-object/from16 v5, v18

    goto/16 :goto_405

    :catch_3a5
    move-exception v0

    move-object v3, v0

    move-object/from16 v16, v6

    move-object v6, v7

    move-object/from16 v8, v17

    move-object/from16 v5, v18

    goto/16 :goto_411

    :cond_3b0
    const/4 v5, 0x0

    .line 322
    :goto_3b1
    :try_start_3b1
    new-instance v8, Lcom/helpshift/common/platform/network/Response;

    const/4 v9, 0x0

    invoke-direct {v8, v3, v5, v9}, Lcom/helpshift/common/platform/network/Response;-><init>(ILjava/lang/String;Ljava/util/List;)V
    :try_end_3b7
    .catch Ljava/net/UnknownHostException; {:try_start_3b1 .. :try_end_3b7} :catch_408
    .catch Ljava/net/SocketException; {:try_start_3b1 .. :try_end_3b7} :catch_3fc
    .catch Ljava/lang/SecurityException; {:try_start_3b1 .. :try_end_3b7} :catch_3fa
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_3b1 .. :try_end_3b7} :catch_3ee
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_3b1 .. :try_end_3b7} :catch_3e2
    .catch Ljava/lang/Exception; {:try_start_3b1 .. :try_end_3b7} :catch_3d8
    .catchall {:try_start_3b1 .. :try_end_3b7} :catchall_3d1

    .line 357
    invoke-static {v13}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 358
    invoke-static {v12}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 359
    invoke-static {v6}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 360
    invoke-static {v9}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    if-eqz v7, :cond_3d0

    .line 363
    :try_start_3c5
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3c8
    .catch Ljava/lang/Exception; {:try_start_3c5 .. :try_end_3c8} :catch_3c9

    goto :goto_3d0

    :catch_3c9
    move-exception v0

    move-object v2, v0

    move-object/from16 v5, v18

    .line 367
    invoke-static {v4, v5, v2}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3d0
    :goto_3d0
    return-object v8

    :catchall_3d1
    move-exception v0

    move-object/from16 v5, v18

    move-object v2, v0

    move-object v10, v6

    goto/16 :goto_51

    :catch_3d8
    move-exception v0

    move-object/from16 v5, v18

    move-object v3, v0

    move-object/from16 v16, v6

    move-object v6, v7

    :goto_3df
    const/4 v10, 0x0

    goto/16 :goto_5fc

    :catch_3e2
    move-exception v0

    move-object/from16 v5, v18

    move-object v3, v0

    move-object/from16 v16, v6

    move-object v6, v7

    move-object/from16 v8, v17

    :goto_3eb
    const/4 v10, 0x0

    goto/16 :goto_613

    :catch_3ee
    move-exception v0

    move-object/from16 v5, v18

    move-object v3, v0

    move-object/from16 v16, v6

    move-object v6, v7

    move-object/from16 v8, v17

    :goto_3f7
    const/4 v10, 0x0

    goto/16 :goto_628

    :catch_3fa
    move-exception v0

    goto :goto_3fd

    :catch_3fc
    move-exception v0

    :goto_3fd
    move-object/from16 v5, v18

    move-object v3, v0

    move-object/from16 v16, v6

    move-object v6, v7

    move-object/from16 v8, v17

    :goto_405
    const/4 v10, 0x0

    goto/16 :goto_63f

    :catch_408
    move-exception v0

    move-object/from16 v5, v18

    move-object v3, v0

    move-object/from16 v16, v6

    move-object v6, v7

    move-object/from16 v8, v17

    :goto_411
    const/4 v10, 0x0

    goto/16 :goto_654

    :catchall_414
    move-exception v0

    move-object/from16 v5, v18

    move-object v2, v0

    goto/16 :goto_308

    :catch_41a
    move-exception v0

    move-object/from16 v5, v18

    move-object v3, v0

    move-object v6, v7

    goto/16 :goto_310

    :catch_421
    move-exception v0

    move-object/from16 v5, v18

    move-object v3, v0

    move-object v6, v7

    move-object/from16 v8, v17

    goto/16 :goto_31a

    :catch_42a
    move-exception v0

    move-object/from16 v5, v18

    move-object v3, v0

    move-object v6, v7

    move-object/from16 v8, v17

    goto/16 :goto_324

    :catch_433
    move-exception v0

    goto :goto_436

    :catch_435
    move-exception v0

    :goto_436
    move-object/from16 v5, v18

    move-object v3, v0

    move-object v6, v7

    move-object/from16 v8, v17

    goto/16 :goto_330

    :catch_43e
    move-exception v0

    move-object/from16 v5, v18

    move-object v3, v0

    move-object v6, v7

    move-object/from16 v8, v17

    goto/16 :goto_33a

    :cond_447
    move-object/from16 v5, v18

    .line 326
    :try_start_449
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_44d
    .catch Ljava/net/UnknownHostException; {:try_start_449 .. :try_end_44d} :catch_4c7
    .catch Ljava/net/SocketException; {:try_start_449 .. :try_end_44d} :catch_4c5
    .catch Ljava/lang/SecurityException; {:try_start_449 .. :try_end_44d} :catch_4c3
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_449 .. :try_end_44d} :catch_4c1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_449 .. :try_end_44d} :catch_4bf
    .catch Ljava/lang/Exception; {:try_start_449 .. :try_end_44d} :catch_4bd
    .catchall {:try_start_449 .. :try_end_44d} :catchall_4bb

    .line 327
    :try_start_44d
    invoke-direct {v1, v6}, Lcom/helpshift/common/platform/AndroidHTTPTransport;->readInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    .line 328
    new-instance v9, Lcom/helpshift/common/platform/network/Response;
    :try_end_453
    .catch Ljava/net/UnknownHostException; {:try_start_44d .. :try_end_453} :catch_4b0
    .catch Ljava/net/SocketException; {:try_start_44d .. :try_end_453} :catch_4a5
    .catch Ljava/lang/SecurityException; {:try_start_44d .. :try_end_453} :catch_4a3
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_44d .. :try_end_453} :catch_498
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_44d .. :try_end_453} :catch_48d
    .catch Ljava/lang/Exception; {:try_start_44d .. :try_end_453} :catch_484
    .catchall {:try_start_44d .. :try_end_453} :catchall_47d

    const/4 v10, 0x0

    :try_start_454
    invoke-direct {v9, v3, v8, v10}, Lcom/helpshift/common/platform/network/Response;-><init>(ILjava/lang/String;Ljava/util/List;)V
    :try_end_457
    .catch Ljava/net/UnknownHostException; {:try_start_454 .. :try_end_457} :catch_47b
    .catch Ljava/net/SocketException; {:try_start_454 .. :try_end_457} :catch_479
    .catch Ljava/lang/SecurityException; {:try_start_454 .. :try_end_457} :catch_477
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_454 .. :try_end_457} :catch_475
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_454 .. :try_end_457} :catch_473
    .catch Ljava/lang/Exception; {:try_start_454 .. :try_end_457} :catch_471
    .catchall {:try_start_454 .. :try_end_457} :catchall_46f

    .line 357
    invoke-static {v13}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 358
    invoke-static {v12}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 359
    invoke-static {v10}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 360
    invoke-static {v6}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    if-eqz v7, :cond_46e

    .line 363
    :try_start_465
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_468
    .catch Ljava/lang/Exception; {:try_start_465 .. :try_end_468} :catch_469

    goto :goto_46e

    :catch_469
    move-exception v0

    move-object v2, v0

    .line 367
    invoke-static {v4, v5, v2}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_46e
    :goto_46e
    return-object v9

    :catchall_46f
    move-exception v0

    goto :goto_47f

    :catch_471
    move-exception v0

    goto :goto_486

    :catch_473
    move-exception v0

    goto :goto_48f

    :catch_475
    move-exception v0

    goto :goto_49a

    :catch_477
    move-exception v0

    goto :goto_4a7

    :catch_479
    move-exception v0

    goto :goto_4a7

    :catch_47b
    move-exception v0

    goto :goto_4b2

    :catchall_47d
    move-exception v0

    const/4 v10, 0x0

    :goto_47f
    move-object v2, v0

    move-object/from16 v16, v6

    goto/16 :goto_668

    :catch_484
    move-exception v0

    const/4 v10, 0x0

    :goto_486
    move-object v3, v0

    move-object/from16 v16, v10

    move-object v10, v6

    move-object v6, v7

    goto/16 :goto_5fc

    :catch_48d
    move-exception v0

    const/4 v10, 0x0

    :goto_48f
    move-object v3, v0

    move-object/from16 v16, v10

    move-object/from16 v8, v17

    move-object v10, v6

    move-object v6, v7

    goto/16 :goto_613

    :catch_498
    move-exception v0

    const/4 v10, 0x0

    :goto_49a
    move-object v3, v0

    move-object/from16 v16, v10

    move-object/from16 v8, v17

    move-object v10, v6

    move-object v6, v7

    goto/16 :goto_628

    :catch_4a3
    move-exception v0

    goto :goto_4a6

    :catch_4a5
    move-exception v0

    :goto_4a6
    const/4 v10, 0x0

    :goto_4a7
    move-object v3, v0

    move-object/from16 v16, v10

    move-object/from16 v8, v17

    move-object v10, v6

    move-object v6, v7

    goto/16 :goto_63f

    :catch_4b0
    move-exception v0

    const/4 v10, 0x0

    :goto_4b2
    move-object v3, v0

    move-object/from16 v16, v10

    move-object/from16 v8, v17

    move-object v10, v6

    move-object v6, v7

    goto/16 :goto_654

    :catchall_4bb
    move-exception v0

    goto :goto_4cc

    :catch_4bd
    move-exception v0

    goto :goto_4d5

    :catch_4bf
    move-exception v0

    goto :goto_4df

    :catch_4c1
    move-exception v0

    goto :goto_4e9

    :catch_4c3
    move-exception v0

    goto :goto_4f5

    :catch_4c5
    move-exception v0

    goto :goto_4f5

    :catch_4c7
    move-exception v0

    goto :goto_4ff

    :catchall_4c9
    move-exception v0

    move-object/from16 v5, v18

    :goto_4cc
    const/4 v10, 0x0

    move-object v2, v0

    move-object/from16 v16, v10

    goto/16 :goto_668

    :catch_4d2
    move-exception v0

    move-object/from16 v5, v18

    :goto_4d5
    const/4 v10, 0x0

    move-object v3, v0

    move-object v6, v7

    move-object/from16 v16, v10

    goto/16 :goto_5fc

    :catch_4dc
    move-exception v0

    move-object/from16 v5, v18

    :goto_4df
    const/4 v10, 0x0

    move-object v3, v0

    move-object v6, v7

    move-object/from16 v16, v10

    goto/16 :goto_5b3

    :catch_4e6
    move-exception v0

    move-object/from16 v5, v18

    :goto_4e9
    const/4 v10, 0x0

    move-object v3, v0

    move-object v6, v7

    move-object/from16 v16, v10

    goto/16 :goto_5c2

    :catch_4f0
    move-exception v0

    goto :goto_4f3

    :catch_4f2
    move-exception v0

    :goto_4f3
    move-object/from16 v5, v18

    :goto_4f5
    const/4 v10, 0x0

    move-object v3, v0

    move-object v6, v7

    move-object/from16 v16, v10

    goto/16 :goto_5d3

    :catch_4fc
    move-exception v0

    move-object/from16 v5, v18

    :goto_4ff
    const/4 v10, 0x0

    move-object v3, v0

    move-object v6, v7

    move-object/from16 v16, v10

    goto/16 :goto_5e2

    :catchall_506
    move-exception v0

    move-object/from16 v5, v18

    goto :goto_538

    :catch_50a
    move-exception v0

    move-object/from16 v5, v18

    goto :goto_522

    :catch_50e
    move-exception v0

    move-object/from16 v5, v18

    goto :goto_526

    :catch_512
    move-exception v0

    move-object/from16 v5, v18

    goto :goto_52a

    :catch_516
    move-exception v0

    goto :goto_519

    :catch_518
    move-exception v0

    :goto_519
    move-object/from16 v5, v18

    goto :goto_530

    :catch_51c
    move-exception v0

    move-object/from16 v5, v18

    goto :goto_534

    :catch_520
    move-exception v0

    move-object v5, v3

    :goto_522
    const/4 v10, 0x0

    goto :goto_542

    :catch_524
    move-exception v0

    move-object v5, v3

    :goto_526
    const/4 v10, 0x0

    goto :goto_54c

    :catch_528
    move-exception v0

    move-object v5, v3

    :goto_52a
    const/4 v10, 0x0

    goto :goto_556

    :catch_52c
    move-exception v0

    goto :goto_52f

    :catch_52e
    move-exception v0

    :goto_52f
    move-object v5, v3

    :goto_530
    const/4 v10, 0x0

    goto :goto_562

    :catch_532
    move-exception v0

    move-object v5, v3

    :goto_534
    const/4 v10, 0x0

    goto :goto_56c

    :catchall_536
    move-exception v0

    move-object v5, v3

    :goto_538
    const/4 v10, 0x0

    move-object v2, v0

    move-object v13, v10

    goto/16 :goto_5ed

    :catch_53d
    move-exception v0

    move-object/from16 v17, v5

    const/4 v10, 0x0

    move-object v5, v3

    :goto_542
    move-object v3, v0

    move-object v6, v7

    move-object v13, v10

    goto/16 :goto_5fa

    :catch_547
    move-exception v0

    move-object/from16 v17, v5

    const/4 v10, 0x0

    move-object v5, v3

    :goto_54c
    move-object v3, v0

    move-object v6, v7

    move-object v13, v10

    goto/16 :goto_5b1

    :catch_551
    move-exception v0

    move-object/from16 v17, v5

    const/4 v10, 0x0

    move-object v5, v3

    :goto_556
    move-object v3, v0

    move-object v6, v7

    move-object v13, v10

    goto/16 :goto_5c0

    :catch_55b
    move-exception v0

    goto :goto_55e

    :catch_55d
    move-exception v0

    :goto_55e
    move-object/from16 v17, v5

    const/4 v10, 0x0

    move-object v5, v3

    :goto_562
    move-object v3, v0

    move-object v6, v7

    move-object v13, v10

    goto/16 :goto_5d1

    :catch_567
    move-exception v0

    move-object/from16 v17, v5

    const/4 v10, 0x0

    move-object v5, v3

    :goto_56c
    move-object v3, v0

    move-object v6, v7

    move-object v13, v10

    goto/16 :goto_5e0

    :catchall_571
    move-exception v0

    move-object v5, v3

    const/4 v10, 0x0

    move-object v2, v0

    move-object v12, v10

    goto/16 :goto_5ec

    :catch_578
    move-exception v0

    move-object/from16 v17, v5

    const/4 v10, 0x0

    move-object v5, v3

    move-object v3, v0

    move-object v6, v7

    move-object v12, v10

    goto/16 :goto_5f9

    :catch_582
    move-exception v0

    move-object/from16 v17, v5

    const/4 v10, 0x0

    move-object v5, v3

    move-object v3, v0

    move-object v6, v7

    move-object v12, v10

    goto :goto_5b0

    :catch_58b
    move-exception v0

    move-object/from16 v17, v5

    const/4 v10, 0x0

    move-object v5, v3

    move-object v3, v0

    move-object v6, v7

    move-object v12, v10

    goto :goto_5bf

    :catch_594
    move-exception v0

    goto :goto_597

    :catch_596
    move-exception v0

    :goto_597
    move-object/from16 v17, v5

    const/4 v10, 0x0

    move-object v5, v3

    move-object v3, v0

    move-object v6, v7

    move-object v12, v10

    goto :goto_5d0

    :catch_59f
    move-exception v0

    move-object/from16 v17, v5

    const/4 v10, 0x0

    move-object v5, v3

    move-object v3, v0

    move-object v6, v7

    move-object v12, v10

    goto :goto_5df

    :catch_5a8
    move-exception v0

    move-object/from16 v17, v5

    const/4 v10, 0x0

    move-object v5, v3

    move-object v3, v0

    move-object v6, v10

    move-object v12, v6

    :goto_5b0
    move-object v13, v12

    :goto_5b1
    move-object/from16 v16, v13

    :goto_5b3
    move-object/from16 v8, v17

    goto/16 :goto_613

    :catch_5b7
    move-exception v0

    move-object/from16 v17, v5

    const/4 v10, 0x0

    move-object v5, v3

    move-object v3, v0

    move-object v6, v10

    move-object v12, v6

    :goto_5bf
    move-object v13, v12

    :goto_5c0
    move-object/from16 v16, v13

    :goto_5c2
    move-object/from16 v8, v17

    goto/16 :goto_628

    :catch_5c6
    move-exception v0

    goto :goto_5c9

    :catch_5c8
    move-exception v0

    :goto_5c9
    move-object/from16 v17, v5

    const/4 v10, 0x0

    move-object v5, v3

    move-object v3, v0

    move-object v6, v10

    move-object v12, v6

    :goto_5d0
    move-object v13, v12

    :goto_5d1
    move-object/from16 v16, v13

    :goto_5d3
    move-object/from16 v8, v17

    goto/16 :goto_63f

    :catch_5d7
    move-exception v0

    move-object/from16 v17, v5

    const/4 v10, 0x0

    move-object v5, v3

    move-object v3, v0

    move-object v6, v10

    move-object v12, v6

    :goto_5df
    move-object v13, v12

    :goto_5e0
    move-object/from16 v16, v13

    :goto_5e2
    move-object/from16 v8, v17

    goto/16 :goto_654

    :catchall_5e6
    move-exception v0

    move-object v5, v3

    const/4 v10, 0x0

    move-object v2, v0

    move-object v7, v10

    move-object v12, v7

    :goto_5ec
    move-object v13, v12

    :goto_5ed
    move-object/from16 v16, v13

    goto/16 :goto_668

    :catch_5f1
    move-exception v0

    move-object/from16 v17, v5

    const/4 v10, 0x0

    move-object v5, v3

    move-object v3, v0

    move-object v6, v10

    move-object v12, v6

    :goto_5f9
    move-object v13, v12

    :goto_5fa
    move-object/from16 v16, v13

    .line 352
    :goto_5fc
    :try_start_5fc
    sget-object v7, Lcom/helpshift/common/exception/NetworkException;->GENERIC:Lcom/helpshift/common/exception/NetworkException;

    .line 353
    iget-object v2, v2, Lcom/helpshift/common/platform/network/UploadRequest;->url:Ljava/lang/String;

    iput-object v2, v7, Lcom/helpshift/common/exception/NetworkException;->route:Ljava/lang/String;

    move-object/from16 v8, v17

    .line 354
    invoke-static {v3, v7, v8}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object v2

    throw v2

    :catch_609
    move-exception v0

    move-object v8, v5

    const/4 v10, 0x0

    move-object v5, v3

    move-object v3, v0

    move-object v6, v10

    move-object v12, v6

    move-object v13, v12

    move-object/from16 v16, v13

    .line 347
    :goto_613
    sget-object v7, Lcom/helpshift/common/exception/NetworkException;->SSL_HANDSHAKE:Lcom/helpshift/common/exception/NetworkException;

    .line 348
    iget-object v2, v2, Lcom/helpshift/common/platform/network/UploadRequest;->url:Ljava/lang/String;

    iput-object v2, v7, Lcom/helpshift/common/exception/NetworkException;->route:Ljava/lang/String;

    .line 349
    invoke-static {v3, v7, v8}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object v2

    throw v2

    :catch_61e
    move-exception v0

    move-object v8, v5

    const/4 v10, 0x0

    move-object v5, v3

    move-object v3, v0

    move-object v6, v10

    move-object v12, v6

    move-object v13, v12

    move-object/from16 v16, v13

    .line 342
    :goto_628
    sget-object v7, Lcom/helpshift/common/exception/NetworkException;->SSL_PEER_UNVERIFIED:Lcom/helpshift/common/exception/NetworkException;

    .line 343
    iget-object v2, v2, Lcom/helpshift/common/platform/network/UploadRequest;->url:Ljava/lang/String;

    iput-object v2, v7, Lcom/helpshift/common/exception/NetworkException;->route:Ljava/lang/String;

    .line 344
    invoke-static {v3, v7, v8}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object v2

    throw v2

    :catch_633
    move-exception v0

    goto :goto_636

    :catch_635
    move-exception v0

    :goto_636
    move-object v8, v5

    const/4 v10, 0x0

    move-object v5, v3

    move-object v3, v0

    move-object v6, v10

    move-object v12, v6

    move-object v13, v12

    move-object/from16 v16, v13

    .line 337
    :goto_63f
    sget-object v7, Lcom/helpshift/common/exception/NetworkException;->NO_CONNECTION:Lcom/helpshift/common/exception/NetworkException;

    .line 338
    iget-object v2, v2, Lcom/helpshift/common/platform/network/UploadRequest;->url:Ljava/lang/String;

    iput-object v2, v7, Lcom/helpshift/common/exception/NetworkException;->route:Ljava/lang/String;

    .line 339
    invoke-static {v3, v7, v8}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object v2

    throw v2

    :catch_64a
    move-exception v0

    move-object v8, v5

    const/4 v10, 0x0

    move-object v5, v3

    move-object v3, v0

    move-object v6, v10

    move-object v12, v6

    move-object v13, v12

    move-object/from16 v16, v13

    .line 332
    :goto_654
    sget-object v7, Lcom/helpshift/common/exception/NetworkException;->UNKNOWN_HOST:Lcom/helpshift/common/exception/NetworkException;

    .line 333
    iget-object v2, v2, Lcom/helpshift/common/platform/network/UploadRequest;->url:Ljava/lang/String;

    iput-object v2, v7, Lcom/helpshift/common/exception/NetworkException;->route:Ljava/lang/String;

    .line 334
    invoke-static {v3, v7, v8}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object v2

    throw v2
    :try_end_65f
    .catchall {:try_start_5fc .. :try_end_65f} :catchall_65f

    :catchall_65f
    move-exception v0

    move-object v2, v0

    move-object v7, v6

    move-object/from16 v19, v16

    move-object/from16 v16, v10

    move-object/from16 v10, v19

    .line 357
    :goto_668
    invoke-static {v13}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 358
    invoke-static {v12}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 359
    invoke-static {v10}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    .line 360
    invoke-static/range {v16 .. v16}, Lcom/helpshift/util/IOUtils;->closeQuitely(Ljava/io/Closeable;)V

    if-eqz v7, :cond_67f

    .line 363
    :try_start_676
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_679
    .catch Ljava/lang/Exception; {:try_start_676 .. :try_end_679} :catch_67a

    goto :goto_67f

    :catch_67a
    move-exception v0

    move-object v3, v0

    .line 367
    invoke-static {v4, v5, v3}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 369
    :cond_67f
    :goto_67f
    throw v2

    return-void
.end method


# virtual methods
.method public makeRequest(Lcom/helpshift/common/platform/network/Request;)Lcom/helpshift/common/platform/network/Response;
    .registers 3

    .line 53
    instance-of v0, p1, Lcom/helpshift/common/platform/network/UploadRequest;

    if-eqz v0, :cond_b

    .line 54
    check-cast p1, Lcom/helpshift/common/platform/network/UploadRequest;

    invoke-direct {p0, p1}, Lcom/helpshift/common/platform/AndroidHTTPTransport;->upload(Lcom/helpshift/common/platform/network/UploadRequest;)Lcom/helpshift/common/platform/network/Response;

    move-result-object p1

    return-object p1

    .line 57
    :cond_b
    invoke-direct {p0, p1}, Lcom/helpshift/common/platform/AndroidHTTPTransport;->makeNetworkRequest(Lcom/helpshift/common/platform/network/Request;)Lcom/helpshift/common/platform/network/Response;

    move-result-object p1

    return-object p1
.end method
