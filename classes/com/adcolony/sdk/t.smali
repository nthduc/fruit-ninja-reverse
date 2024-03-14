.class Lcom/adcolony/sdk/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/adcolony/sdk/t;->a:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :try_start_3
    iget-object v3, p0, Lcom/adcolony/sdk/t;->a:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_b} :catch_73
    .catchall {:try_start_3 .. :try_end_b} :catchall_6f

    :try_start_b
    const-string v4, "POST"

    .line 2
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v4, "Content-Encoding"

    const-string v5, "gzip"

    .line 3
    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Content-Type"

    const-string v5, "application/json"

    .line 4
    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 6
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_2a} :catch_6d
    .catchall {:try_start_b .. :try_end_2a} :catchall_6b

    .line 7
    :try_start_2a
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2f} :catch_69
    .catchall {:try_start_2a .. :try_end_2f} :catchall_67

    :try_start_2f
    const-string v1, "UTF-8"

    .line 8
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 9
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3f} :catch_63
    .catchall {:try_start_2f .. :try_end_3f} :catchall_60

    .line 11
    :try_start_3f
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_43} :catch_5d
    .catchall {:try_start_3f .. :try_end_43} :catchall_59

    .line 19
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V

    if-eqz v3, :cond_58

    .line 22
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 23
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 25
    :cond_55
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_58
    return p1

    :catchall_59
    move-exception p1

    move-object v1, v5

    const/4 v2, 0x1

    goto :goto_7a

    :catch_5d
    move-exception p1

    const/4 v2, 0x1

    goto :goto_64

    :catchall_60
    move-exception p1

    move-object v1, v5

    goto :goto_7a

    :catch_63
    move-exception p1

    :goto_64
    move v0, v2

    move-object v1, v5

    goto :goto_77

    :catchall_67
    move-exception p1

    goto :goto_7a

    :catch_69
    move-exception p1

    goto :goto_76

    :catchall_6b
    move-exception p1

    goto :goto_71

    :catch_6d
    move-exception p1

    goto :goto_75

    :catchall_6f
    move-exception p1

    move-object v3, v1

    :goto_71
    move-object v4, v1

    goto :goto_7a

    :catch_73
    move-exception p1

    move-object v3, v1

    :goto_75
    move-object v4, v1

    :goto_76
    const/4 v0, 0x0

    .line 26
    :goto_77
    :try_start_77
    throw p1
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_78

    :catchall_78
    move-exception p1

    move v2, v0

    :goto_7a
    if-eqz v1, :cond_81

    if-nez v2, :cond_81

    .line 29
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_81
    if-eqz v4, :cond_86

    .line 32
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_86
    if-eqz v3, :cond_98

    .line 35
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_95

    .line 36
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 38
    :cond_95
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 40
    :cond_98
    throw p1
.end method
