.class public final Lcom/google/android/gms/internal/ads/zzekb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# static fields
.field private static final ISO_8859_1:Ljava/nio/charset/Charset;

.field static final UTF_8:Ljava/nio/charset/Charset;

.field public static final zziex:[B

.field private static final zzijy:Ljava/nio/ByteBuffer;

.field private static final zzijz:Lcom/google/android/gms/internal/ads/zzeja;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "UTF-8"

    .line 23
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzekb;->UTF_8:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    .line 24
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzekb;->ISO_8859_1:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    .line 25
    new-array v1, v0, [B

    .line 26
    sput-object v1, Lcom/google/android/gms/internal/ads/zzekb;->zziex:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzekb;->zzijy:Ljava/nio/ByteBuffer;

    .line 27
    sget-object v1, Lcom/google/android/gms/internal/ads/zzekb;->zziex:[B

    .line 29
    array-length v2, v1

    .line 30
    invoke-static {v1, v0, v2, v0}, Lcom/google/android/gms/internal/ads/zzeja;->zzb([BIIZ)Lcom/google/android/gms/internal/ads/zzeja;

    move-result-object v0

    .line 31
    sput-object v0, Lcom/google/android/gms/internal/ads/zzekb;->zzijz:Lcom/google/android/gms/internal/ads/zzeja;

    return-void
.end method

.method static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_3

    return-object p0

    .line 2
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static hashCode([B)I
    .registers 3

    .line 11
    array-length v0, p0

    const/4 v1, 0x0

    .line 12
    invoke-static {v0, p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzekb;->zza(I[BII)I

    move-result p0

    if-nez p0, :cond_9

    const/4 p0, 0x1

    :cond_9
    return p0
.end method

.method static zza(I[BII)I
    .registers 6

    move v0, p0

    move p0, p2

    :goto_2
    add-int v1, p2, p3

    if-ge p0, v1, :cond_e

    mul-int/lit8 v0, v0, 0x1f

    .line 16
    aget-byte v1, p1, p0

    add-int/2addr v0, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_e
    return v0
.end method

.method static zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_3

    return-object p0

    .line 5
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zzbu(Z)I
    .registers 1

    if-eqz p0, :cond_5

    const/16 p0, 0x4cf

    return p0

    :cond_5
    const/16 p0, 0x4d5

    return p0
.end method

.method static zze(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 22
    check-cast p0, Lcom/google/android/gms/internal/ads/zzelj;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzelj;->zzbgl()Lcom/google/android/gms/internal/ads/zzelm;

    move-result-object p0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzelj;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzelm;->zzf(Lcom/google/android/gms/internal/ads/zzelj;)Lcom/google/android/gms/internal/ads/zzelm;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzelm;->zzbgs()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p0

    return-object p0
.end method

.method public static zzfr(J)I
    .registers 4

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method static zzk(Lcom/google/android/gms/internal/ads/zzelj;)Z
    .registers 2

    .line 19
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzeih;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/google/android/gms/internal/ads/zzeih;

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static zzy([B)Z
    .registers 1

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzeng;->zzy([B)Z

    move-result p0

    return p0
.end method

.method public static zzz([B)Ljava/lang/String;
    .registers 3

    .line 8
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzekb;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
