.class Lcom/adcolony/sdk/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adcolony/sdk/l$a;
    }
.end annotation


# instance fields
.field private a:Ljava/net/HttpURLConnection;

.field private b:Ljava/io/InputStream;

.field private c:Lcom/adcolony/sdk/x;

.field private d:Lcom/adcolony/sdk/l$a;

.field private final e:I

.field private final f:I

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Z

.field private j:Ljava/util/Map;
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

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Z

.field p:I

.field q:I


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/x;Lcom/adcolony/sdk/l$a;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    .line 2
    iput v0, p0, Lcom/adcolony/sdk/l;->e:I

    const/16 v0, 0x12b

    .line 3
    iput v0, p0, Lcom/adcolony/sdk/l;->f:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/adcolony/sdk/l;->h:I

    .line 6
    iput-boolean v0, p0, Lcom/adcolony/sdk/l;->i:Z

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/adcolony/sdk/l;->k:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/adcolony/sdk/l;->l:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/adcolony/sdk/l;->m:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/adcolony/sdk/l;->n:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/x;

    .line 18
    iput-object p2, p0, Lcom/adcolony/sdk/l;->d:Lcom/adcolony/sdk/l$a;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    const-string v0, "/"

    .line 101
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 102
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    .line 103
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/h;->v()Lcom/adcolony/sdk/g0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/g0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 104
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_6e

    .line 110
    new-instance p2, Lcom/adcolony/sdk/u$a;

    invoke-direct {p2}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v0, "Moving of "

    .line 111
    invoke-virtual {p2, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p2

    .line 112
    invoke-virtual {p2, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    const-string p2, " failed."

    .line 113
    invoke-virtual {p1, p2}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    sget-object p2, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    .line 114
    invoke-virtual {p1, p2}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_51} :catch_52

    goto :goto_6e

    :catch_52
    move-exception p1

    .line 118
    new-instance p2, Lcom/adcolony/sdk/u$a;

    invoke-direct {p2}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v0, "Exception: "

    .line 119
    invoke-virtual {p2, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p2

    .line 120
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p2

    sget-object v0, Lcom/adcolony/sdk/u;->i:Lcom/adcolony/sdk/u;

    .line 121
    invoke-virtual {p2, v0}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    .line 122
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6e
    :goto_6e
    return-void
.end method

.method private a()Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/x;

    invoke-virtual {v0}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "content_type"

    .line 2
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    .line 3
    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "no_redirect"

    .line 4
    invoke-static {v0, v3}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    const-string v4, "url"

    .line 5
    invoke-static {v0, v4}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/adcolony/sdk/l;->m:Ljava/lang/String;

    const-string v4, "filepath"

    .line 6
    invoke-static {v0, v4}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/adcolony/sdk/l;->k:Ljava/lang/String;

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adcolony/sdk/h;->v()Lcom/adcolony/sdk/g0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adcolony/sdk/g0;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/adcolony/sdk/l;->k:Ljava/lang/String;

    const-string v6, "/"

    .line 8
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/adcolony/sdk/l;->l:Ljava/lang/String;

    const-string v4, "encoding"

    .line 9
    invoke-static {v0, v4}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/adcolony/sdk/l;->g:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "max_size"

    .line 10
    invoke-static {v0, v5, v4}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/l;->h:I

    if-eqz v0, :cond_68

    const/4 v0, 0x1

    goto :goto_69

    :cond_68
    const/4 v0, 0x0

    .line 11
    :goto_69
    iput-boolean v0, p0, Lcom/adcolony/sdk/l;->i:Z

    .line 12
    iput v4, p0, Lcom/adcolony/sdk/l;->p:I

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/adcolony/sdk/l;->b:Ljava/io/InputStream;

    .line 14
    iput-object v0, p0, Lcom/adcolony/sdk/l;->a:Ljava/net/HttpURLConnection;

    .line 15
    iput-object v0, p0, Lcom/adcolony/sdk/l;->j:Ljava/util/Map;

    .line 18
    iget-object v0, p0, Lcom/adcolony/sdk/l;->m:Ljava/lang/String;

    const-string v5, "file://"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 20
    iget-object v0, p0, Lcom/adcolony/sdk/l;->m:Ljava/lang/String;

    const-string v1, "file:///android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 22
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_122

    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/l;->m:Ljava/lang/String;

    const/16 v2, 0x16

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/l;->b:Ljava/io/InputStream;

    goto/16 :goto_122

    .line 27
    :cond_a2
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/adcolony/sdk/l;->m:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adcolony/sdk/l;->b:Ljava/io/InputStream;

    goto :goto_122

    .line 30
    :cond_b1
    new-instance v0, Ljava/net/URL;

    iget-object v5, p0, Lcom/adcolony/sdk/l;->m:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/adcolony/sdk/l;->a:Ljava/net/HttpURLConnection;

    xor-int/2addr v3, v7

    .line 31
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 32
    iget-object v0, p0, Lcom/adcolony/sdk/l;->a:Ljava/net/HttpURLConnection;

    const-string v3, "UTF-8"

    const-string v5, "Accept-Charset"

    invoke-virtual {v0, v5, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/j;->G()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    if-eqz v0, :cond_ea

    .line 35
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ea

    .line 36
    iget-object v6, p0, Lcom/adcolony/sdk/l;->a:Ljava/net/HttpURLConnection;

    const-string v8, "User-Agent"

    invoke-virtual {v6, v8, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_ea
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f7

    .line 39
    iget-object v0, p0, Lcom/adcolony/sdk/l;->a:Ljava/net/HttpURLConnection;

    const-string v5, "Content-Type"

    invoke-virtual {v0, v5, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_f7
    iget-object v0, p0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/x;

    invoke-virtual {v0}, Lcom/adcolony/sdk/x;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebServices.post"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_122

    .line 43
    iget-object v0, p0, Lcom/adcolony/sdk/l;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 44
    iget-object v0, p0, Lcom/adcolony/sdk/l;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 45
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/adcolony/sdk/l;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 46
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 50
    :cond_122
    :goto_122
    iget-object v0, p0, Lcom/adcolony/sdk/l;->a:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_12a

    iget-object v0, p0, Lcom/adcolony/sdk/l;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_12b

    :cond_12a
    const/4 v4, 0x1

    :cond_12b
    return v4
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 51
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8a
    .catchall {:try_start_1 .. :try_end_6} :catchall_88

    const/16 v0, 0x1000

    .line 54
    :try_start_8
    new-array v2, v0, [B

    :goto_a
    const/4 v3, 0x0

    .line 55
    invoke-virtual {v1, v2, v3, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_59

    .line 56
    iget v5, p0, Lcom/adcolony/sdk/l;->p:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/adcolony/sdk/l;->p:I

    .line 57
    iget-boolean v6, p0, Lcom/adcolony/sdk/l;->i:Z

    if-eqz v6, :cond_55

    iget v6, p0, Lcom/adcolony/sdk/l;->h:I

    if-gt v5, v6, :cond_20

    goto :goto_55

    .line 58
    :cond_20
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data exceeds expected maximum ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/adcolony/sdk/l;->p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/adcolony/sdk/l;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/adcolony/sdk/l;->a:Ljava/net/HttpURLConnection;

    .line 59
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_55
    :goto_55
    invoke-virtual {p2, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_a

    .line 66
    :cond_59
    iget-object v0, p0, Lcom/adcolony/sdk/l;->g:Ljava/lang/String;

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/adcolony/sdk/l;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_68

    .line 67
    iget-object v0, p0, Lcom/adcolony/sdk/l;->g:Ljava/lang/String;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_67} :catch_86
    .catchall {:try_start_8 .. :try_end_67} :catchall_8f

    goto :goto_6a

    :cond_68
    const-string v0, "UTF-8"

    .line 71
    :goto_6a
    :try_start_6a
    instance-of v2, p2, Ljava/io/ByteArrayOutputStream;

    if-eqz v2, :cond_77

    .line 72
    move-object v2, p2

    check-cast v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/l;->n:Ljava/lang/String;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_77} :catch_86
    .catchall {:try_start_6a .. :try_end_77} :catchall_8f

    :cond_77
    const/4 v0, 0x1

    if-eqz p2, :cond_7d

    .line 82
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    :cond_7d
    if-eqz p1, :cond_82

    .line 85
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 88
    :cond_82
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    return v0

    :catch_86
    move-exception v0

    goto :goto_8e

    :catchall_88
    move-exception v1

    goto :goto_93

    :catch_8a
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 89
    :goto_8e
    :try_start_8e
    throw v0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8f

    :catchall_8f
    move-exception v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_93
    if-eqz p2, :cond_98

    .line 92
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    :cond_98
    if-eqz p1, :cond_9d

    .line 95
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_9d
    if-eqz v0, :cond_a2

    .line 98
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 100
    :cond_a2
    throw v1

    return-void
.end method

.method private c()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/x;

    invoke-virtual {v0}, Lcom/adcolony/sdk/x;->c()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/adcolony/sdk/l;->b:Ljava/io/InputStream;

    const/16 v2, 0x1000

    if-eqz v1, :cond_2d

    .line 5
    iget-object v0, p0, Lcom/adcolony/sdk/l;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1b

    .line 6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    goto/16 :goto_92

    .line 8
    :cond_1b
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adcolony/sdk/l;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_92

    :cond_2d
    const-string v1, "WebServices.download"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 12
    iget-object v0, p0, Lcom/adcolony/sdk/l;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/l;->b:Ljava/io/InputStream;

    .line 13
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/adcolony/sdk/l;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_92

    :cond_45
    const-string v1, "WebServices.get"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 15
    iget-object v0, p0, Lcom/adcolony/sdk/l;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/l;->b:Ljava/io/InputStream;

    .line 16
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    goto :goto_92

    :cond_5b
    const-string v1, "WebServices.post"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 19
    iget-object v0, p0, Lcom/adcolony/sdk/l;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 20
    iget-object v0, p0, Lcom/adcolony/sdk/l;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_83

    iget-object v0, p0, Lcom/adcolony/sdk/l;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x12b

    if-gt v0, v1, :cond_83

    iget-object v0, p0, Lcom/adcolony/sdk/l;->a:Ljava/net/HttpURLConnection;

    .line 21
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_89

    :cond_83
    iget-object v0, p0, Lcom/adcolony/sdk/l;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_89
    iput-object v0, p0, Lcom/adcolony/sdk/l;->b:Ljava/io/InputStream;

    .line 22
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    goto :goto_92

    :cond_91
    const/4 v0, 0x0

    .line 25
    :goto_92
    iget-object v1, p0, Lcom/adcolony/sdk/l;->a:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_a4

    .line 26
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/l;->q:I

    .line 27
    iget-object v1, p0, Lcom/adcolony/sdk/l;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/l;->j:Ljava/util/Map;

    .line 30
    :cond_a4
    iget-object v1, p0, Lcom/adcolony/sdk/l;->b:Ljava/io/InputStream;

    invoke-direct {p0, v1, v0}, Lcom/adcolony/sdk/l;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method b()Lcom/adcolony/sdk/x;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/x;

    return-object v0
.end method

.method public run()V
    .registers 5

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/adcolony/sdk/l;->o:Z

    const/4 v1, 0x1

    .line 4
    :try_start_4
    invoke-direct {p0}, Lcom/adcolony/sdk/l;->a()Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 5
    invoke-direct {p0}, Lcom/adcolony/sdk/l;->c()Z

    move-result v2

    iput-boolean v2, p0, Lcom/adcolony/sdk/l;->o:Z

    .line 8
    iget-object v2, p0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/x;

    invoke-virtual {v2}, Lcom/adcolony/sdk/x;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WebServices.post"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ee

    iget v2, p0, Lcom/adcolony/sdk/l;->q:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_ee

    .line 10
    iput-boolean v0, p0, Lcom/adcolony/sdk/l;->o:Z
    :try_end_26
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_26} :catch_d3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_26} :catch_92
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_26} :catch_64
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_26} :catch_46
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_26} :catch_28

    goto/16 :goto_ee

    :catch_28
    move-exception v0

    .line 42
    new-instance v2, Lcom/adcolony/sdk/u$a;

    invoke-direct {v2}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v3, "Exception: "

    .line 43
    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v2

    sget-object v3, Lcom/adcolony/sdk/u;->i:Lcom/adcolony/sdk/u;

    .line 44
    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    .line 45
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_ee

    :catch_46
    move-exception v1

    .line 46
    new-instance v2, Lcom/adcolony/sdk/u$a;

    invoke-direct {v2}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v3, "okhttp error: "

    .line 47
    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v2

    sget-object v3, Lcom/adcolony/sdk/u;->i:Lcom/adcolony/sdk/u;

    .line 48
    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    .line 49
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_ef

    :catch_64
    move-exception v0

    .line 50
    new-instance v2, Lcom/adcolony/sdk/u$a;

    invoke-direct {v2}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v3, "Download of "

    .line 51
    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v2

    iget-object v3, p0, Lcom/adcolony/sdk/l;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v2

    .line 52
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    sget-object v2, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    .line 53
    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    .line 54
    iget v0, p0, Lcom/adcolony/sdk/l;->q:I

    if-nez v0, :cond_8f

    const/16 v0, 0x1f8

    :cond_8f
    iput v0, p0, Lcom/adcolony/sdk/l;->q:I

    goto :goto_ee

    .line 55
    :catch_92
    new-instance v0, Lcom/adcolony/sdk/u$a;

    invoke-direct {v0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v2, "Out of memory error - disabling AdColony. ("

    .line 56
    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    iget v2, p0, Lcom/adcolony/sdk/l;->p:I

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/u$a;->a(I)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    const-string v2, "/"

    .line 57
    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    iget v2, p0, Lcom/adcolony/sdk/l;->h:I

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/u$a;->a(I)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/adcolony/sdk/l;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    sget-object v2, Lcom/adcolony/sdk/u;->i:Lcom/adcolony/sdk/u;

    .line 58
    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    .line 59
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/h;->b(Z)V

    goto :goto_ee

    :catch_d3
    move-exception v0

    .line 60
    new-instance v2, Lcom/adcolony/sdk/u$a;

    invoke-direct {v2}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v3, "MalformedURLException: "

    .line 61
    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    sget-object v2, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 62
    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    .line 63
    iput-boolean v1, p0, Lcom/adcolony/sdk/l;->o:Z

    :cond_ee
    :goto_ee
    const/4 v0, 0x1

    :goto_ef
    if-eqz v0, :cond_10f

    .line 91
    iget-object v0, p0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/x;

    invoke-virtual {v0}, Lcom/adcolony/sdk/x;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebServices.download"

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    .line 93
    iget-object v0, p0, Lcom/adcolony/sdk/l;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/adcolony/sdk/l;->k:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/adcolony/sdk/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_106
    iget-object v0, p0, Lcom/adcolony/sdk/l;->d:Lcom/adcolony/sdk/l$a;

    iget-object v1, p0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/x;

    iget-object v2, p0, Lcom/adcolony/sdk/l;->j:Ljava/util/Map;

    invoke-interface {v0, p0, v1, v2}, Lcom/adcolony/sdk/l$a;->a(Lcom/adcolony/sdk/l;Lcom/adcolony/sdk/x;Ljava/util/Map;)V

    :cond_10f
    return-void
.end method
