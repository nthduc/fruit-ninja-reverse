.class public Lcom/ironsource/mediationsdk/server/HttpFunctions;
.super Ljava/lang/Object;
.source "HttpFunctions.java"


# static fields
.field public static final ERROR_PREFIX:Ljava/lang/String; = "ERROR:"

.field private static final SERVER_BAD_REQUEST_ERROR:Ljava/lang/String; = "Bad Request - 400"

.field private static final SERVER_REQUEST_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final SERVER_REQUEST_GET_METHOD:Ljava/lang/String; = "GET"

.field private static final SERVER_REQUEST_POST_METHOD:Ljava/lang/String; = "POST"

.field private static final SERVER_REQUEST_TIMEOUT:I = 0x3a98


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStringFromPostWithAutho(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 84
    :try_start_2
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-static {p2, p3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getBase64Auth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 88
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_73
    .catchall {:try_start_2 .. :try_end_11} :catchall_61

    const/16 p3, 0x3a98

    .line 89
    :try_start_13
    invoke-virtual {p2, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 90
    invoke-virtual {p2, p3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string p3, "POST"

    .line 91
    invoke-virtual {p2, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string p3, "Authorization"

    .line 92
    invoke-virtual {p2, p3, p0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 93
    invoke-virtual {p2, p0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 94
    invoke-virtual {p2, p0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 96
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 98
    new-instance p3, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {p3, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 100
    invoke-virtual {p3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p3}, Ljava/io/BufferedWriter;->flush()V

    .line 102
    invoke-virtual {p3}, Ljava/io/BufferedWriter;->close()V

    .line 104
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_47} :catch_5f
    .catchall {:try_start_13 .. :try_end_47} :catchall_5d

    const/16 p3, 0xc8

    if-ne p1, p3, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 p0, 0x0

    :goto_4d
    if-eqz v1, :cond_57

    .line 112
    :try_start_4f
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_57
    :goto_57
    if-eqz p2, :cond_5c

    .line 117
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5c
    return p0

    :catchall_5d
    move-exception p0

    goto :goto_63

    :catch_5f
    nop

    goto :goto_74

    :catchall_61
    move-exception p0

    move-object p2, v1

    :goto_63
    if-eqz v1, :cond_6d

    .line 112
    :try_start_65
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_6d

    :catch_69
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_6d
    :goto_6d
    if-eqz p2, :cond_72

    .line 117
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 118
    :cond_72
    throw p0

    :catch_73
    move-object p2, v1

    :goto_74
    if-eqz v1, :cond_7e

    .line 112
    :try_start_76
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_7e

    :catch_7a
    move-exception p0

    .line 114
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7e
    :goto_7e
    if-eqz p2, :cond_83

    .line 117
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_83
    return v0
.end method

.method public static getStringFromURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 28
    invoke-static {p0, v0}, Lcom/ironsource/mediationsdk/server/HttpFunctions;->getStringFromURL(Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringFromURL(Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 37
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_86
    .catchall {:try_start_1 .. :try_end_c} :catchall_79

    const/16 v1, 0x3a98

    .line 40
    :try_start_e
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 41
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v1, "GET"

    .line 42
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 43
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 45
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 47
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_35

    if-eqz p1, :cond_2f

    const-string v1, "Bad Request - 400"

    .line 51
    invoke-interface {p1, v1}, Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;->onUnrecoverableError(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2f} :catch_77
    .catchall {:try_start_e .. :try_end_2f} :catchall_75

    :cond_2f
    if-eqz p0, :cond_34

    .line 73
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_34
    return-object v0

    .line 56
    :cond_35
    :try_start_35
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_43} :catch_77
    .catchall {:try_start_35 .. :try_end_43} :catchall_75

    .line 57
    :try_start_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    :goto_48
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_52

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 63
    :cond_52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_5a} :catch_73
    .catchall {:try_start_43 .. :try_end_5a} :catchall_6e

    if-eqz v2, :cond_65

    if-eqz p0, :cond_61

    .line 73
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 75
    :cond_61
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    return-object v0

    :cond_65
    if-eqz p0, :cond_6a

    .line 73
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 75
    :cond_6a
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :catchall_6e
    move-exception v0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_7b

    :catch_73
    nop

    goto :goto_88

    :catchall_75
    move-exception p1

    goto :goto_7b

    :catch_77
    move-object p1, v0

    goto :goto_88

    :catchall_79
    move-exception p1

    move-object p0, v0

    :goto_7b
    if-eqz p0, :cond_80

    .line 73
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_80
    if-eqz v0, :cond_85

    .line 75
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 76
    :cond_85
    throw p1

    :catch_86
    move-object p0, v0

    move-object p1, p0

    :goto_88
    if-eqz p0, :cond_8d

    .line 73
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8d
    if-eqz p1, :cond_92

    .line 75
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    :cond_92
    return-object v0
.end method
