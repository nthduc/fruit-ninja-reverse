.class public final Lcom/google/android/gms/internal/ads/zzeiy;
.super Ljava/io/OutputStream;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# static fields
.field private static final zziex:[B


# instance fields
.field private buffer:[B

.field private final zziey:I

.field private final zziez:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/zzeip;",
            ">;"
        }
    .end annotation
.end field

.field private zzifa:I

.field private zzifb:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 46
    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeiy;->zziex:[B

    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/16 p1, 0x80

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzeiy;->zziey:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeiy;->zziez:Ljava/util/ArrayList;

    .line 4
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeiy;->buffer:[B

    return-void
.end method

.method private final declared-synchronized size()I
    .registers 3

    monitor-enter p0

    .line 36
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeiy;->zzifa:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeiy;->zzifb:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final zzfx(I)V
    .registers 5

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeiy;->zziez:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeiz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeiy;->buffer:[B

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzeiz;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeiy;->zzifa:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeiy;->buffer:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzeiy;->zzifa:I

    .line 42
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeiy;->zziey:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeiy;->zzifa:I

    ushr-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 43
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeiy;->buffer:[B

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzeiy;->zzifb:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    .line 37
    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeiy;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "<ByteString.Output@%s size=%d>"

    .line 39
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized write(I)V
    .registers 5

    monitor-enter p0

    .line 6
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeiy;->zzifb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeiy;->buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzeiy;->zzfx(I)V

    .line 8
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeiy;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeiy;->zzifb:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzeiy;->zzifb:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 9
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized write([BII)V
    .registers 7

    monitor-enter p0

    .line 10
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeiy;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeiy;->zzifb:I

    sub-int/2addr v0, v1

    if-gt p3, v0, :cond_17

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeiy;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeiy;->zzifb:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzeiy;->zzifb:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzeiy;->zzifb:I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_33

    monitor-exit p0

    return-void

    .line 13
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeiy;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeiy;->zzifb:I

    sub-int/2addr v0, v1

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeiy;->buffer:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzeiy;->zzifb:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 17
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzeiy;->zzfx(I)V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeiy;->buffer:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzeiy;->zzifb:I
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_33

    .line 20
    monitor-exit p0

    return-void

    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzbdw()Lcom/google/android/gms/internal/ads/zzeip;
    .registers 6

    monitor-enter p0

    .line 22
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeiy;->zzifb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeiy;->buffer:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_26

    .line 23
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeiy;->zzifb:I

    if-lez v0, :cond_36

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeiy;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeiy;->zzifb:I

    .line 25
    new-array v3, v1, [B

    .line 26
    array-length v4, v0

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeiy;->zziez:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeiz;

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/zzeiz;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 31
    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeiy;->zziez:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeiz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeiy;->buffer:[B

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/zzeiz;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeiy;->zziex:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeiy;->buffer:[B

    .line 33
    :cond_36
    :goto_36
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeiy;->zzifa:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeiy;->zzifb:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzeiy;->zzifa:I

    .line 34
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzeiy;->zzifb:I

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeiy;->zziez:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeip;->zzl(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v0
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_47

    monitor-exit p0

    return-object v0

    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method
