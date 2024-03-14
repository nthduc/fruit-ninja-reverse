.class final Lcom/facebook/appevents/internal/HashUtils;
.super Ljava/lang/Object;
.source "HashUtils.java"


# static fields
.field private static final MD5:Ljava/lang/String; = "MD5"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final computeChecksum(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/appevents/internal/HashUtils;->computeFileMd5(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static computeFileMd5(Ljava/io/File;)Ljava/lang/String;
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p0, 0x400

    invoke-direct {v0, v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 v1, 0x0

    :try_start_d
    const-string v2, "MD5"

    .line 26
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 27
    new-array p0, p0, [B

    .line 31
    :cond_15
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1f

    const/4 v4, 0x0

    .line 33
    invoke-virtual {v2, p0, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    :cond_1f
    const/4 v4, -0x1

    if-ne v3, v4, :cond_15

    .line 38
    new-instance p0, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-direct {p0, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_32} :catch_38
    .catchall {:try_start_d .. :try_end_32} :catchall_36

    .line 39
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_36
    move-exception p0

    goto :goto_3b

    :catch_38
    move-exception p0

    move-object v1, p0

    .line 25
    :try_start_3a
    throw v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_36

    :goto_3b
    if-eqz v1, :cond_46

    .line 39
    :try_start_3d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_49

    :catch_41
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_49

    :cond_46
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :goto_49
    throw p0

    return-void
.end method
