.class public final Lcom/google/android/gms/internal/ads/zzege;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeam;


# instance fields
.field private final zzibo:Ljavax/crypto/SecretKey;

.field private final zzibp:I

.field private zzibq:[B

.field private zzibr:[B


# direct methods
.method public constructor <init>([BI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    array-length v0, p1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeht;->zzfp(I)V

    const/16 v0, 0xa

    if-lt p2, v0, :cond_41

    const/16 v0, 0x10

    if-gt p2, v0, :cond_39

    .line 8
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzege;->zzibo:Ljavax/crypto/SecretKey;

    .line 9
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzege;->zzibp:I

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzege;->zzbdl()Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 p2, 0x1

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzege;->zzibo:Ljavax/crypto/SecretKey;

    invoke-virtual {p1, p2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 13
    new-array p2, v0, [B

    .line 14
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzegm;->zzq([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzege;->zzibq:[B

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzege;->zzibq:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzegm;->zzq([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzege;->zzibr:[B

    return-void

    .line 7
    :cond_39
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "tag size too large, max is 16 bytes"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_41
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "tag size too small, min is 10 bytes"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static zzbdl()Ljavax/crypto/Cipher;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzehb;->zzicx:Lcom/google/android/gms/internal/ads/zzehb;

    const-string v1, "AES/ECB/NoPadding"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzehb;->zzhs(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    return-object v0
.end method


# virtual methods
.method public final zzm([B)[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzege;->zzbdl()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzege;->zzibo:Ljavax/crypto/SecretKey;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 20
    array-length v1, p1

    int-to-double v3, v1

    const-wide/high16 v5, 0x4030000000000000L    # 16.0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    shl-int/lit8 v3, v1, 0x4

    .line 21
    array-length v4, p1

    const/4 v5, 0x0

    const/16 v6, 0x10

    if-ne v3, v4, :cond_2e

    add-int/lit8 v3, v1, -0x1

    shl-int/lit8 v3, v3, 0x4

    .line 22
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzege;->zzibq:[B

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzegl;->zza([BI[BII)[B

    move-result-object v3

    goto :goto_49

    :cond_2e
    add-int/lit8 v3, v1, -0x1

    shl-int/lit8 v3, v3, 0x4

    .line 23
    array-length v4, p1

    .line 24
    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 25
    array-length v4, v3

    if-ge v4, v6, :cond_70

    .line 27
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    .line 28
    array-length v3, v3

    const/16 v7, -0x80

    aput-byte v7, v4, v3

    .line 30
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzege;->zzibr:[B

    .line 31
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzegl;->zzd([B[B)[B

    move-result-object v3

    .line 32
    :goto_49
    new-array v4, v6, [B

    move-object v7, v4

    const/4 v4, 0x0

    :goto_4d
    add-int/lit8 v8, v1, -0x1

    if-ge v4, v8, :cond_5e

    shl-int/lit8 v8, v4, 0x4

    .line 34
    invoke-static {v7, v5, p1, v8, v6}, Lcom/google/android/gms/internal/ads/zzegl;->zza([BI[BII)[B

    move-result-object v7

    .line 35
    invoke-virtual {v0, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    .line 37
    :cond_5e
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzegl;->zzd([B[B)[B

    move-result-object p1

    .line 38
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzege;->zzibp:I

    new-array v1, v1, [B

    .line 39
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzege;->zzibp:I

    invoke-static {p1, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 26
    :cond_70
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "x must be smaller than a block."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method
