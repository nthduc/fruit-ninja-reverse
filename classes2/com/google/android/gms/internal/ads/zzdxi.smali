.class public final Lcom/google/android/gms/internal/ads/zzdxi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.4.0"


# static fields
.field private static final zzhrk:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdxl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdxi;->zzhrk:Ljava/io/OutputStream;

    return-void
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdwd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    const/4 v1, 0x0

    const/16 v2, 0x2000

    const/4 v2, 0x0

    const/16 v3, 0x2000

    :goto_10
    const/4 v4, -0x1

    const v5, 0x7ffffff7

    if-ge v2, v5, :cond_3c

    sub-int/2addr v5, v2

    .line 15
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-array v5, v5, [B

    .line 16
    invoke-interface {v0, v5}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    move v6, v2

    const/4 v2, 0x0

    .line 18
    :goto_22
    array-length v7, v5

    if-ge v2, v7, :cond_35

    .line 19
    array-length v7, v5

    sub-int/2addr v7, v2

    invoke-virtual {p0, v5, v2, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-ne v7, v4, :cond_32

    .line 21
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzdxi;->zza(Ljava/util/Deque;I)[B

    move-result-object p0

    return-object p0

    :cond_32
    add-int/2addr v2, v7

    add-int/2addr v6, v7

    goto :goto_22

    :cond_35
    const/4 v2, 0x2

    .line 25
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzdxn;->zzx(II)I

    move-result v3

    move v2, v6

    goto :goto_10

    .line 26
    :cond_3c
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-ne p0, v4, :cond_47

    .line 27
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzdxi;->zza(Ljava/util/Deque;I)[B

    move-result-object p0

    return-object p0

    .line 28
    :cond_47
    new-instance p0, Ljava/lang/OutOfMemoryError;

    const-string v0, "input is too large to fit in a byte array"

    invoke-direct {p0, v0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p0

    return-void
.end method

.method private static zza(Ljava/util/Deque;I)[B
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "[B>;I)[B"
        }
    .end annotation

    .line 1
    new-array v0, p1, [B

    move v1, p1

    :goto_3
    if-lez v1, :cond_18

    .line 4
    invoke-interface {p0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 5
    array-length v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v4, p1, v1

    const/4 v5, 0x0

    .line 7
    invoke-static {v2, v5, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v1, v3

    goto :goto_3

    :cond_18
    return-object v0
.end method
