.class public Lcom/chartboost/sdk/impl/y1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 17
    new-instance v0, Lcom/chartboost/sdk/impl/a2;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/a2;-><init>(I)V

    .line 18
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 19
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 20
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/a2;->toString()Ljava/lang/String;

    .line 21
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-static {p0, p1}, Lcom/chartboost/sdk/impl/y1;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide p0

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-lez v2, :cond_d

    const/4 p0, -0x1

    return p0

    :cond_d
    long-to-int p1, p0

    return p1
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 20
    :goto_2
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v3, v2, :cond_10

    const/4 v3, 0x0

    .line 21
    invoke-virtual {p1, p2, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_2

    :cond_10
    return-wide v0
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 2
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static a(Ljava/io/InputStream;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/chartboost/sdk/impl/y1;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public static a(Ljava/io/InputStream;I)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_39

    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 5
    new-array p0, v0, [B

    return-object p0

    .line 8
    :cond_8
    new-array v1, p1, [B

    :goto_a
    if-ge v0, p1, :cond_17

    sub-int v2, p1, v0

    .line 12
    invoke-virtual {p0, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_17

    add-int/2addr v0, v2

    goto :goto_a

    :cond_17
    if-ne v0, p1, :cond_1a

    return-object v1

    .line 17
    :cond_1a
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected readed size. current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", excepted: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size must be equal or greater than zero: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    return-void
.end method

.method public static a(Ljava/io/InputStream;J)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_d

    long-to-int p2, p1

    .line 3
    invoke-static {p0, p2}, Lcom/chartboost/sdk/impl/y1;->a(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0

    .line 4
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size cannot be greater than Integer max value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 4
    new-array v0, v0, [B

    invoke-static {p0, p1, v0}, Lcom/chartboost/sdk/impl/y1;->a(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J

    move-result-wide p0

    return-wide p0
.end method

.method public static b(Ljava/io/InputStream;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/chartboost/sdk/impl/z1;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/z1;-><init>()V

    .line 2
    invoke-static {p0, v0}, Lcom/chartboost/sdk/impl/y1;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 3
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/z1;->a()[B

    move-result-object p0

    return-object p0
.end method
