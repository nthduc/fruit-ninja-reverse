.class public Lcom/chartboost/sdk/Networking/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/chartboost/sdk/Networking/l;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/chartboost/sdk/Networking/m;

.field private final c:Lcom/chartboost/sdk/Networking/h;

.field private final d:Lcom/chartboost/sdk/Libraries/i;

.field private final e:Landroid/os/Handler;

.field public final f:Lcom/chartboost/sdk/Networking/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chartboost/sdk/Networking/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private g:Lcom/chartboost/sdk/Networking/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chartboost/sdk/Networking/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field private h:Lcom/chartboost/sdk/Networking/f;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/chartboost/sdk/Networking/m;Lcom/chartboost/sdk/Networking/h;Lcom/chartboost/sdk/Libraries/i;Landroid/os/Handler;Lcom/chartboost/sdk/Networking/c;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/chartboost/sdk/Networking/m;",
            "Lcom/chartboost/sdk/Networking/h;",
            "Lcom/chartboost/sdk/Libraries/i;",
            "Landroid/os/Handler;",
            "Lcom/chartboost/sdk/Networking/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/Networking/l;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/chartboost/sdk/Networking/l;->b:Lcom/chartboost/sdk/Networking/m;

    .line 4
    iput-object p3, p0, Lcom/chartboost/sdk/Networking/l;->c:Lcom/chartboost/sdk/Networking/h;

    .line 5
    iput-object p4, p0, Lcom/chartboost/sdk/Networking/l;->d:Lcom/chartboost/sdk/Libraries/i;

    .line 6
    iput-object p5, p0, Lcom/chartboost/sdk/Networking/l;->e:Landroid/os/Handler;

    .line 7
    iput-object p6, p0, Lcom/chartboost/sdk/Networking/l;->f:Lcom/chartboost/sdk/Networking/c;

    return-void
.end method

.method private a(Lcom/chartboost/sdk/Networking/c;)Lcom/chartboost/sdk/Networking/f;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/Networking/c<",
            "TT;>;)",
            "Lcom/chartboost/sdk/Networking/f;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2710

    const/4 v1, 0x0

    .line 1
    :goto_3
    :try_start_3
    invoke-direct {p0, p1, v0}, Lcom/chartboost/sdk/Networking/l;->a(Lcom/chartboost/sdk/Networking/c;I)Lcom/chartboost/sdk/Networking/f;

    move-result-object p1
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_7} :catch_8

    return-object p1

    :catch_8
    move-exception v2

    const/4 v3, 0x1

    if-ge v1, v3, :cond_11

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 7
    :cond_11
    throw v2

    return-void
.end method

.method private a(Lcom/chartboost/sdk/Networking/c;I)Lcom/chartboost/sdk/Networking/f;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/Networking/c<",
            "TT;>;I)",
            "Lcom/chartboost/sdk/Networking/f;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p1}, Lcom/chartboost/sdk/Networking/c;->a()Lcom/chartboost/sdk/Networking/d;

    move-result-object v0

    .line 10
    iget-object v1, v0, Lcom/chartboost/sdk/Networking/d;->a:Ljava/util/Map;

    .line 12
    iget-object v2, p0, Lcom/chartboost/sdk/Networking/l;->b:Lcom/chartboost/sdk/Networking/m;

    invoke-virtual {v2, p1}, Lcom/chartboost/sdk/Networking/m;->a(Lcom/chartboost/sdk/Networking/c;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 13
    invoke-virtual {v2, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 14
    invoke-virtual {v2, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p2, 0x0

    .line 15
    invoke-virtual {v2, p2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v3, 0x1

    .line 16
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    if-eqz v1, :cond_3a

    .line 20
    :try_start_1c
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 21
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 25
    :cond_3a
    iget-object v1, p1, Lcom/chartboost/sdk/Networking/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 26
    iget-object v1, p1, Lcom/chartboost/sdk/Networking/c;->a:Ljava/lang/String;

    const-string v4, "POST"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_7e

    .line 27
    iget-object v1, v0, Lcom/chartboost/sdk/Networking/d;->b:[B

    if-eqz v1, :cond_7e

    .line 28
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 29
    iget-object v1, v0, Lcom/chartboost/sdk/Networking/d;->b:[B

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 30
    iget-object v1, v0, Lcom/chartboost/sdk/Networking/d;->c:Ljava/lang/String;
    :try_end_59
    .catchall {:try_start_1c .. :try_end_59} :catchall_1a4

    if-eqz v1, :cond_62

    const-string v1, "Content-Type"

    .line 31
    :try_start_5d
    iget-object v3, v0, Lcom/chartboost/sdk/Networking/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_1a4

    .line 35
    :cond_62
    :try_start_62
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6b
    .catchall {:try_start_62 .. :try_end_6b} :catchall_76

    .line 36
    :try_start_6b
    iget-object v0, v0, Lcom/chartboost/sdk/Networking/d;->b:[B

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_70
    .catchall {:try_start_6b .. :try_end_70} :catchall_74

    .line 40
    :try_start_70
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_7e
    .catchall {:try_start_70 .. :try_end_73} :catchall_1a4

    goto :goto_7e

    :catchall_74
    move-exception p1

    goto :goto_78

    :catchall_76
    move-exception p1

    move-object v1, v4

    :goto_78
    if-eqz v1, :cond_7d

    :try_start_7a
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_1a4

    .line 43
    :catch_7d
    :cond_7d
    :try_start_7d
    throw p1

    .line 47
    :catch_7e
    :cond_7e
    :goto_7e
    iget-object v0, p0, Lcom/chartboost/sdk/Networking/l;->d:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v0
    :try_end_84
    .catchall {:try_start_7d .. :try_end_84} :catchall_1a4

    .line 51
    :try_start_84
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3
    :try_end_88
    .catchall {:try_start_84 .. :try_end_88} :catchall_199

    .line 53
    :try_start_88
    iget-object v5, p0, Lcom/chartboost/sdk/Networking/l;->d:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v5}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v5

    sub-long v0, v5, v0

    .line 54
    iput-wide v0, p1, Lcom/chartboost/sdk/Networking/c;->g:J
    :try_end_92
    .catchall {:try_start_88 .. :try_end_92} :catchall_1a4

    const/4 v0, -0x1

    if-eq v3, v0, :cond_191

    .line 64
    :try_start_95
    invoke-static {v3}, Lcom/chartboost/sdk/Networking/l;->a(I)Z

    move-result v0

    if-eqz v0, :cond_172

    .line 65
    iget-object v0, p1, Lcom/chartboost/sdk/Networking/c;->e:Ljava/io/File;

    if-eqz v0, :cond_14b

    .line 66
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/chartboost/sdk/Networking/c;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p1, Lcom/chartboost/sdk/Networking/c;->e:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    new-array p2, p2, [B
    :try_end_c3
    .catchall {:try_start_95 .. :try_end_c3} :catchall_186

    .line 72
    :try_start_c3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_c7
    .catchall {:try_start_c3 .. :try_end_c7} :catchall_13c

    .line 73
    :try_start_c7
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_cc
    .catchall {:try_start_c7 .. :try_end_cc} :catchall_13a

    .line 74
    :try_start_cc
    invoke-static {v1, v7}, Lcom/chartboost/sdk/impl/y1;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_cf
    .catchall {:try_start_cc .. :try_end_cf} :catchall_137

    if-eqz v1, :cond_d4

    .line 78
    :try_start_d1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d4} :catch_d4
    .catchall {:try_start_d1 .. :try_end_d4} :catchall_186

    .line 84
    :catch_d4
    :cond_d4
    :try_start_d4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_d7
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_186

    .line 89
    :catch_d7
    :try_start_d7
    iget-object v1, p1, Lcom/chartboost/sdk/Networking/c;->e:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_174

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_10e

    .line 91
    new-instance p2, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to delete "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " after failing to rename to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/chartboost/sdk/Networking/c;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 92
    :cond_10e
    new-instance p2, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to move "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/chartboost/sdk/Networking/c;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_137
    .catchall {:try_start_d7 .. :try_end_137} :catchall_186

    :catchall_137
    move-exception p2

    move-object v4, v7

    goto :goto_13e

    :catchall_13a
    move-exception p2

    goto :goto_13e

    :catchall_13c
    move-exception p2

    move-object v1, v4

    :goto_13e
    if-eqz v1, :cond_145

    .line 93
    :try_start_140
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_143} :catch_144
    .catchall {:try_start_140 .. :try_end_143} :catchall_186

    goto :goto_145

    :catch_144
    nop

    :cond_145
    :goto_145
    if-eqz v4, :cond_14a

    .line 99
    :try_start_147
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_14a
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_14a} :catch_14a
    .catchall {:try_start_147 .. :try_end_14a} :catchall_186

    .line 103
    :catch_14a
    :cond_14a
    :try_start_14a
    throw p2
    :try_end_14b
    .catchall {:try_start_14a .. :try_end_14b} :catchall_186

    .line 113
    :cond_14b
    :try_start_14b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_14f} :catch_153
    .catchall {:try_start_14b .. :try_end_14f} :catchall_151

    :goto_14f
    move-object v4, v0

    goto :goto_158

    :catchall_151
    move-exception p2

    goto :goto_16c

    .line 115
    :catch_153
    :try_start_153
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_14f

    :goto_158
    if-eqz v4, :cond_164

    .line 118
    new-instance p2, Ljava/io/BufferedInputStream;

    invoke-direct {p2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p2}, Lcom/chartboost/sdk/impl/y1;->b(Ljava/io/InputStream;)[B

    move-result-object p2

    goto :goto_166

    .line 120
    :cond_164
    new-array p2, p2, [B
    :try_end_166
    .catchall {:try_start_153 .. :try_end_166} :catchall_151

    :goto_166
    if-eqz v4, :cond_174

    .line 125
    :try_start_168
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_16b
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_16b} :catch_174
    .catchall {:try_start_168 .. :try_end_16b} :catchall_186

    goto :goto_174

    :goto_16c
    if-eqz v4, :cond_171

    :try_start_16e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_171
    .catch Ljava/io/IOException; {:try_start_16e .. :try_end_171} :catch_171
    .catchall {:try_start_16e .. :try_end_171} :catchall_186

    .line 128
    :catch_171
    :cond_171
    :try_start_171
    throw p2

    .line 131
    :cond_172
    new-array p2, p2, [B
    :try_end_174
    .catchall {:try_start_171 .. :try_end_174} :catchall_186

    .line 134
    :catch_174
    :cond_174
    :goto_174
    :try_start_174
    iget-object v0, p0, Lcom/chartboost/sdk/Networking/l;->d:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v0

    sub-long/2addr v0, v5

    iput-wide v0, p1, Lcom/chartboost/sdk/Networking/c;->h:J

    .line 137
    new-instance p1, Lcom/chartboost/sdk/Networking/f;

    invoke-direct {p1, v3, p2}, Lcom/chartboost/sdk/Networking/f;-><init>(I[B)V
    :try_end_182
    .catchall {:try_start_174 .. :try_end_182} :catchall_1a4

    .line 139
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :catchall_186
    move-exception p2

    .line 140
    :try_start_187
    iget-object v0, p0, Lcom/chartboost/sdk/Networking/l;->d:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v0

    sub-long/2addr v0, v5

    iput-wide v0, p1, Lcom/chartboost/sdk/Networking/c;->h:J

    .line 141
    throw p2

    .line 142
    :cond_191
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_199
    move-exception p2

    .line 143
    iget-object v3, p0, Lcom/chartboost/sdk/Networking/l;->d:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 144
    iput-wide v3, p1, Lcom/chartboost/sdk/Networking/c;->g:J

    .line 145
    throw p2
    :try_end_1a4
    .catchall {:try_start_187 .. :try_end_1a4} :catchall_1a4

    :catchall_1a4
    move-exception p1

    .line 214
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 215
    throw p1

    return-void
.end method

.method private static a(I)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-gt v2, p0, :cond_c

    const/16 v2, 0xc8

    if-ge p0, v2, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    if-nez v2, :cond_18

    const/16 v2, 0xcc

    if-eq p0, v2, :cond_18

    const/16 v2, 0x130

    if-eq p0, v2, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Networking/l;)I
    .registers 3

    .line 216
    iget-object v0, p0, Lcom/chartboost/sdk/Networking/l;->f:Lcom/chartboost/sdk/Networking/c;

    iget v0, v0, Lcom/chartboost/sdk/Networking/c;->c:I

    iget-object p1, p1, Lcom/chartboost/sdk/Networking/l;->f:Lcom/chartboost/sdk/Networking/c;

    iget p1, p1, Lcom/chartboost/sdk/Networking/c;->c:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lcom/chartboost/sdk/Networking/l;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Networking/l;->a(Lcom/chartboost/sdk/Networking/l;)I

    move-result p1

    return p1
.end method

.method public run()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Networking/l;->g:Lcom/chartboost/sdk/Networking/e;

    if-eqz v0, :cond_25

    .line 3
    :try_start_4
    iget-object v1, v0, Lcom/chartboost/sdk/Networking/e;->b:Lcom/chartboost/sdk/Model/CBError;

    if-nez v1, :cond_12

    .line 4
    iget-object v1, p0, Lcom/chartboost/sdk/Networking/l;->f:Lcom/chartboost/sdk/Networking/c;

    iget-object v0, v0, Lcom/chartboost/sdk/Networking/e;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/chartboost/sdk/Networking/l;->h:Lcom/chartboost/sdk/Networking/f;

    invoke-virtual {v1, v0, v2}, Lcom/chartboost/sdk/Networking/c;->a(Ljava/lang/Object;Lcom/chartboost/sdk/Networking/f;)V

    goto :goto_24

    .line 6
    :cond_12
    iget-object v1, p0, Lcom/chartboost/sdk/Networking/l;->f:Lcom/chartboost/sdk/Networking/c;

    iget-object v0, v0, Lcom/chartboost/sdk/Networking/e;->b:Lcom/chartboost/sdk/Model/CBError;

    iget-object v2, p0, Lcom/chartboost/sdk/Networking/l;->h:Lcom/chartboost/sdk/Networking/f;

    invoke-virtual {v1, v0, v2}, Lcom/chartboost/sdk/Networking/c;->a(Lcom/chartboost/sdk/Model/CBError;Lcom/chartboost/sdk/Networking/f;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception v0

    .line 9
    const-class v1, Lcom/chartboost/sdk/Networking/l;

    const-string v2, "deliver result"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_24
    return-void

    .line 15
    :cond_25
    iget-object v0, p0, Lcom/chartboost/sdk/Networking/l;->f:Lcom/chartboost/sdk/Networking/c;

    iget-object v0, v0, Lcom/chartboost/sdk/Networking/c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_32

    return-void

    .line 18
    :cond_32
    iget-object v0, p0, Lcom/chartboost/sdk/Networking/l;->d:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v0

    .line 21
    :try_start_38
    iget-object v3, p0, Lcom/chartboost/sdk/Networking/l;->c:Lcom/chartboost/sdk/Networking/h;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Networking/h;->d()Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 22
    iget-object v3, p0, Lcom/chartboost/sdk/Networking/l;->f:Lcom/chartboost/sdk/Networking/c;

    invoke-direct {p0, v3}, Lcom/chartboost/sdk/Networking/l;->a(Lcom/chartboost/sdk/Networking/c;)Lcom/chartboost/sdk/Networking/f;

    move-result-object v3

    iput-object v3, p0, Lcom/chartboost/sdk/Networking/l;->h:Lcom/chartboost/sdk/Networking/f;

    .line 23
    iget v4, v3, Lcom/chartboost/sdk/Networking/f;->a:I

    const/16 v5, 0xc8

    if-lt v4, v5, :cond_5b

    const/16 v5, 0x12c

    if-ge v4, v5, :cond_5b

    .line 25
    iget-object v4, p0, Lcom/chartboost/sdk/Networking/l;->f:Lcom/chartboost/sdk/Networking/c;

    invoke-virtual {v4, v3}, Lcom/chartboost/sdk/Networking/c;->a(Lcom/chartboost/sdk/Networking/f;)Lcom/chartboost/sdk/Networking/e;

    move-result-object v3

    iput-object v3, p0, Lcom/chartboost/sdk/Networking/l;->g:Lcom/chartboost/sdk/Networking/e;

    goto :goto_89

    .line 27
    :cond_5b
    new-instance v3, Lcom/chartboost/sdk/Model/CBError;

    sget-object v5, Lcom/chartboost/sdk/Model/CBError$b;->e:Lcom/chartboost/sdk/Model/CBError$b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure due to HTTP status code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$b;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/chartboost/sdk/Networking/e;->a(Lcom/chartboost/sdk/Model/CBError;)Lcom/chartboost/sdk/Networking/e;

    move-result-object v3

    iput-object v3, p0, Lcom/chartboost/sdk/Networking/l;->g:Lcom/chartboost/sdk/Networking/e;

    goto :goto_89

    .line 30
    :cond_7a
    new-instance v3, Lcom/chartboost/sdk/Model/CBError;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$b;->b:Lcom/chartboost/sdk/Model/CBError$b;

    const-string v5, "Internet Unavailable"

    invoke-direct {v3, v4, v5}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$b;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/chartboost/sdk/Networking/e;->a(Lcom/chartboost/sdk/Model/CBError;)Lcom/chartboost/sdk/Networking/e;

    move-result-object v3

    iput-object v3, p0, Lcom/chartboost/sdk/Networking/l;->g:Lcom/chartboost/sdk/Networking/e;
    :try_end_89
    .catchall {:try_start_38 .. :try_end_89} :catchall_9d

    .line 35
    :goto_89
    iget-object v3, p0, Lcom/chartboost/sdk/Networking/l;->f:Lcom/chartboost/sdk/Networking/c;

    iget-object v4, p0, Lcom/chartboost/sdk/Networking/l;->d:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v4

    sub-long/2addr v4, v0

    iput-wide v4, v3, Lcom/chartboost/sdk/Networking/c;->f:J

    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/Networking/l;->f:Lcom/chartboost/sdk/Networking/c;

    iget v0, v0, Lcom/chartboost/sdk/Networking/c;->i:I

    if-eqz v0, :cond_c9

    if-eq v0, v2, :cond_c3

    goto :goto_ce

    :catchall_9d
    move-exception v3

    .line 43
    :try_start_9e
    new-instance v4, Lcom/chartboost/sdk/Model/CBError;

    sget-object v5, Lcom/chartboost/sdk/Model/CBError$b;->e:Lcom/chartboost/sdk/Model/CBError$b;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$b;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/chartboost/sdk/Networking/e;->a(Lcom/chartboost/sdk/Model/CBError;)Lcom/chartboost/sdk/Networking/e;

    move-result-object v3

    iput-object v3, p0, Lcom/chartboost/sdk/Networking/l;->g:Lcom/chartboost/sdk/Networking/e;
    :try_end_af
    .catchall {:try_start_9e .. :try_end_af} :catchall_cf

    .line 45
    iget-object v3, p0, Lcom/chartboost/sdk/Networking/l;->f:Lcom/chartboost/sdk/Networking/c;

    iget-object v4, p0, Lcom/chartboost/sdk/Networking/l;->d:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v4

    sub-long/2addr v4, v0

    iput-wide v4, v3, Lcom/chartboost/sdk/Networking/c;->f:J

    .line 46
    iget-object v0, p0, Lcom/chartboost/sdk/Networking/l;->f:Lcom/chartboost/sdk/Networking/c;

    iget v0, v0, Lcom/chartboost/sdk/Networking/c;->i:I

    if-eqz v0, :cond_c9

    if-eq v0, v2, :cond_c3

    goto :goto_ce

    .line 41
    :cond_c3
    iget-object v0, p0, Lcom/chartboost/sdk/Networking/l;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_ce

    .line 42
    :cond_c9
    iget-object v0, p0, Lcom/chartboost/sdk/Networking/l;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_ce
    return-void

    :catchall_cf
    move-exception v3

    .line 47
    iget-object v4, p0, Lcom/chartboost/sdk/Networking/l;->f:Lcom/chartboost/sdk/Networking/c;

    iget-object v5, p0, Lcom/chartboost/sdk/Networking/l;->d:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v5}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v5

    sub-long/2addr v5, v0

    iput-wide v5, v4, Lcom/chartboost/sdk/Networking/c;->f:J

    .line 48
    iget-object v0, p0, Lcom/chartboost/sdk/Networking/l;->f:Lcom/chartboost/sdk/Networking/c;

    iget v0, v0, Lcom/chartboost/sdk/Networking/c;->i:I

    if-eqz v0, :cond_ea

    if-eq v0, v2, :cond_e4

    goto :goto_ef

    .line 53
    :cond_e4
    iget-object v0, p0, Lcom/chartboost/sdk/Networking/l;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_ef

    .line 54
    :cond_ea
    iget-object v0, p0, Lcom/chartboost/sdk/Networking/l;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    :goto_ef
    throw v3
.end method
