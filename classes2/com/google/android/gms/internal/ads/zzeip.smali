.class public abstract Lcom/google/android/gms/internal/ads/zzeip;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field public static final zzier:Lcom/google/android/gms/internal/ads/zzeip;

.field private static final zzies:Lcom/google/android/gms/internal/ads/zzeiv;

.field private static final zziet:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/gms/internal/ads/zzeip;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzidx:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 105
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeiz;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzekb;->zziex:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeiz;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeip;->zzier:Lcom/google/android/gms/internal/ads/zzeip;

    .line 106
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeii;->zzbdz()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    new-instance v0, Lcom/google/android/gms/internal/ads/zzejb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzejb;-><init>(Lcom/google/android/gms/internal/ads/zzeio;)V

    goto :goto_1b

    :cond_16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeit;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeit;-><init>(Lcom/google/android/gms/internal/ads/zzeio;)V

    :goto_1b
    sput-object v0, Lcom/google/android/gms/internal/ads/zzeip;->zzies:Lcom/google/android/gms/internal/ads/zzeiv;

    .line 107
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeir;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeir;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeip;->zziet:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzeip;->zzidx:I

    return-void
.end method

.method private static zza(Ljava/util/Iterator;I)Lcom/google/android/gms/internal/ads/zzeip;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/google/android/gms/internal/ads/zzeip;",
            ">;I)",
            "Lcom/google/android/gms/internal/ads/zzeip;"
        }
    .end annotation

    const/4 v0, 0x1

    if-lez p1, :cond_53

    if-ne p1, v0, :cond_c

    .line 47
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzeip;

    goto :goto_29

    :cond_c
    ushr-int/lit8 v0, p1, 0x1

    .line 49
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzeip;->zza(Ljava/util/Iterator;I)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v1

    sub-int/2addr p1, v0

    .line 50
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzeip;->zza(Ljava/util/Iterator;I)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p0

    const p1, 0x7fffffff

    .line 52
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result v0

    if-lt p1, v0, :cond_2a

    .line 55
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzemc;->zza(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p0

    :goto_29
    return-object p0

    .line 53
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 54
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result p0

    const/16 v1, 0x35

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ByteString would be too long: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "+"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "length (%s) must be >= 1"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static zzaa(II)V
    .registers 5

    add-int/lit8 v0, p0, 0x1

    sub-int v0, p1, v0

    or-int/2addr v0, p0

    if-gez v0, :cond_43

    if-gez p0, :cond_22

    .line 85
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v0, 0x16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Index < 0: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_22
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v1, 0x28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Index > length: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    return-void
.end method

.method private static zzb(B)I
    .registers 1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static zzbei()Lcom/google/android/gms/internal/ads/zzeiy;
    .registers 2

    .line 80
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeiy;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeiy;-><init>(I)V

    return-object v0
.end method

.method static synthetic zzc(B)I
    .registers 1

    .line 104
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzeip;->zzb(B)I

    move-result p0

    return p0
.end method

.method static zzfw(I)Lcom/google/android/gms/internal/ads/zzeix;
    .registers 3

    .line 81
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeix;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzeix;-><init>(ILcom/google/android/gms/internal/ads/zzeio;)V

    return-object v0
.end method

.method public static zzg(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzeip;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x100

    .line 16
    :goto_7
    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v1, :cond_18

    sub-int v5, v1, v4

    .line 19
    invoke-virtual {p0, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_18

    add-int/2addr v4, v5

    goto :goto_b

    :cond_18
    if-nez v4, :cond_1c

    const/4 v2, 0x0

    goto :goto_20

    .line 25
    :cond_1c
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzeip;->zzi([BII)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v2

    :goto_20
    if-eqz v2, :cond_2e

    .line 28
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    shl-int/lit8 v1, v1, 0x1

    const/16 v2, 0x2000

    .line 29
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_7

    .line 31
    :cond_2e
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeip;->zzl(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p0

    return-object p0
.end method

.method public static zzhu(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeip;
    .registers 3

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeiz;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzekb;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeiz;-><init>([B)V

    return-object v0
.end method

.method static zzi(III)I
    .registers 6

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_6e

    if-ltz p0, :cond_50

    if-ge p1, p0, :cond_2f

    .line 93
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const/16 v0, 0x42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Beginning index larger than ending index: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 94
    :cond_2f
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const/16 v0, 0x25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "End index: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_50
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const/16 p2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Beginning index: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6e
    return v0
.end method

.method public static zzi([BII)Lcom/google/android/gms/internal/ads/zzeip;
    .registers 5

    add-int v0, p1, p2

    .line 7
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzeip;->zzi(III)I

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeiz;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzeip;->zzies:Lcom/google/android/gms/internal/ads/zzeiv;

    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzeiv;->zzj([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeiz;-><init>([B)V

    return-object v0
.end method

.method public static zzl(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzeip;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/gms/internal/ads/zzeip;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzeip;"
        }
    .end annotation

    .line 33
    instance-of v0, p0, Ljava/util/Collection;

    if-nez v0, :cond_15

    const/4 v0, 0x0

    .line 35
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 36
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 40
    :cond_15
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    :cond_1c
    if-nez v0, :cond_21

    .line 42
    sget-object p0, Lcom/google/android/gms/internal/ads/zzeip;->zzier:Lcom/google/android/gms/internal/ads/zzeip;

    return-object p0

    .line 43
    :cond_21
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzeip;->zza(Ljava/util/Iterator;I)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p0

    return-object p0
.end method

.method public static zzu([B)Lcom/google/android/gms/internal/ads/zzeip;
    .registers 3

    .line 9
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzeip;->zzi([BII)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p0

    return-object p0
.end method

.method static zzv([B)Lcom/google/android/gms/internal/ads/zzeip;
    .registers 2

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeiz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeiz;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final hashCode()I
    .registers 3

    .line 72
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeip;->zzidx:I

    if-nez v0, :cond_12

    .line 74
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0, v0, v1, v0}, Lcom/google/android/gms/internal/ads/zzeip;->zzh(III)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 78
    :cond_10
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzeip;->zzidx:I

    :cond_12
    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 103
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeip;->zzbee()Lcom/google/android/gms/internal/ads/zzeiu;

    move-result-object v0

    return-object v0
.end method

.method public abstract size()I
.end method

.method public final toByteArray()[B
    .registers 4

    .line 63
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 65
    sget-object v0, Lcom/google/android/gms/internal/ads/zzekb;->zziex:[B

    return-object v0

    .line 66
    :cond_9
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 67
    invoke-virtual {p0, v1, v2, v2, v0}, Lcom/google/android/gms/internal/ads/zzeip;->zzb([BIII)V

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .line 96
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 97
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 100
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result v2

    const/16 v4, 0x32

    if-gt v2, v4, :cond_28

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzemt;->zzam(Lcom/google/android/gms/internal/ads/zzeip;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3c

    :cond_28
    const/16 v2, 0x2f

    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/internal/ads/zzeip;->zzz(II)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzemt;->zzam(Lcom/google/android/gms/internal/ads/zzeip;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3c
    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "<ByteString@%s size=%d contents=\"%s\">"

    .line 102
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zza(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method abstract zza(Lcom/google/android/gms/internal/ads/zzeim;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zza([BIII)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    add-int v0, p2, p4

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzeip;->zzi(III)I

    add-int v0, p3, p4

    .line 59
    array-length v1, p1

    invoke-static {p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzeip;->zzi(III)I

    if-lez p4, :cond_14

    .line 61
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzeip;->zzb([BIII)V

    :cond_14
    return-void
.end method

.method protected abstract zzb([BIII)V
.end method

.method public zzbee()Lcom/google/android/gms/internal/ads/zzeiu;
    .registers 2

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeio;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeio;-><init>(Lcom/google/android/gms/internal/ads/zzeip;)V

    return-object v0
.end method

.method public final zzbef()Ljava/lang/String;
    .registers 3

    .line 69
    sget-object v0, Lcom/google/android/gms/internal/ads/zzekb;->UTF_8:Ljava/nio/charset/Charset;

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result v1

    if-nez v1, :cond_b

    const-string v0, ""

    return-object v0

    :cond_b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzeip;->zza(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract zzbeg()Z
.end method

.method public abstract zzbeh()Lcom/google/android/gms/internal/ads/zzeja;
.end method

.method protected abstract zzbej()I
.end method

.method protected abstract zzbek()Z
.end method

.method protected final zzbel()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeip;->zzidx:I

    return v0
.end method

.method public abstract zzfu(I)B
.end method

.method abstract zzfv(I)B
.end method

.method protected abstract zzg(III)I
.end method

.method protected abstract zzh(III)I
.end method

.method public abstract zzz(II)Lcom/google/android/gms/internal/ads/zzeip;
.end method
