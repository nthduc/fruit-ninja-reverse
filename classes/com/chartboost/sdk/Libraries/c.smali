.class public final Lcom/chartboost/sdk/Libraries/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 2
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    shl-int/2addr p0, v1

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-static {v2, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized b([B)[B
    .registers 5

    const-class v0, Lcom/chartboost/sdk/Libraries/c;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p0, :cond_2d

    :try_start_6
    const-string v2, "SHA-1"

    .line 1
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 2
    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 3
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_13} :catch_21
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_17
    .catchall {:try_start_6 .. :try_end_13} :catchall_15

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    goto :goto_2b

    :catch_17
    move-exception p0

    .line 10
    :try_start_18
    const-class v2, Lcom/chartboost/sdk/Libraries/c;

    const-string v3, "sha1"

    invoke-static {v2, v3, p0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_15

    monitor-exit v0

    return-object v1

    :catch_21
    move-exception p0

    .line 11
    :try_start_22
    const-class v2, Lcom/chartboost/sdk/Libraries/c;

    const-string v3, "sha1"

    invoke-static {v2, v3, p0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_15

    monitor-exit v0

    return-object v1

    :goto_2b
    monitor-exit v0

    throw p0

    :cond_2d
    monitor-exit v0

    return-object v1
.end method
