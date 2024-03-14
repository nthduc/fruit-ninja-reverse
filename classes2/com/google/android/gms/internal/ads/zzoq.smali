.class public final Lcom/google/android/gms/internal/ads/zzoq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzok;


# instance fields
.field private final zzbiv:Z

.field private final zzbiw:I

.field private final zzbix:[B

.field private final zzbiy:[Lcom/google/android/gms/internal/ads/zzoh;

.field private zzbiz:I

.field private zzbja:I

.field private zzbjb:I

.field private zzbjc:[Lcom/google/android/gms/internal/ads/zzoh;


# direct methods
.method public constructor <init>(ZI)V
    .registers 4

    const/4 p1, 0x1

    const/high16 p2, 0x10000

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzoq;-><init>(ZII)V

    return-void
.end method

.method private constructor <init>(ZII)V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzoz;->checkArgument(Z)V

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzoz;->checkArgument(Z)V

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbiv:Z

    const/high16 p2, 0x10000

    .line 7
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbiw:I

    const/4 p2, 0x0

    .line 8
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbjb:I

    const/16 p2, 0x64

    .line 9
    new-array p2, p2, [Lcom/google/android/gms/internal/ads/zzoh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbjc:[Lcom/google/android/gms/internal/ads/zzoh;

    const/4 p2, 0x0

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbix:[B

    .line 11
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzoh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbiy:[Lcom/google/android/gms/internal/ads/zzoh;

    return-void
.end method


# virtual methods
.method public final declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    .line 13
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbiv:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzoq;->zzbi(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 15
    :cond_9
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzoh;)V
    .registers 4

    monitor-enter p0

    .line 27
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbiy:[Lcom/google/android/gms/internal/ads/zzoh;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 28
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbiy:[Lcom/google/android/gms/internal/ads/zzoh;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzoq;->zza([Lcom/google/android/gms/internal/ads/zzoh;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 29
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza([Lcom/google/android/gms/internal/ads/zzoh;)V
    .registers 10

    monitor-enter p0

    .line 30
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbjb:I

    array-length v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbjc:[Lcom/google/android/gms/internal/ads/zzoh;

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v0, v1, :cond_21

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbjc:[Lcom/google/android/gms/internal/ads/zzoh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbjc:[Lcom/google/android/gms/internal/ads/zzoh;

    array-length v1, v1

    shl-int/2addr v1, v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbjb:I

    array-length v4, p1

    add-int/2addr v3, v4

    .line 32
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 33
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzoh;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbjc:[Lcom/google/android/gms/internal/ads/zzoh;

    .line 34
    :cond_21
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v0, :cond_47

    aget-object v4, p1, v3

    .line 35
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzoh;->data:[B

    if-eqz v5, :cond_36

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzoh;->data:[B

    array-length v5, v5

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbiw:I

    if-ne v5, v6, :cond_34

    goto :goto_36

    :cond_34
    const/4 v5, 0x0

    goto :goto_37

    :cond_36
    :goto_36
    const/4 v5, 0x1

    :goto_37
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzoz;->checkArgument(Z)V

    .line 36
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbjc:[Lcom/google/android/gms/internal/ads/zzoh;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbjb:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbjb:I

    aput-object v4, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 38
    :cond_47
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbja:I

    array-length p1, p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbja:I

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_52

    .line 40
    monitor-exit p0

    return-void

    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public final declared-synchronized zzbi(I)V
    .registers 3

    monitor-enter p0

    .line 16
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbiz:I

    if-ge p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 17
    :goto_8
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbiz:I

    if-eqz v0, :cond_f

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoq;->zzn()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 20
    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzin()Lcom/google/android/gms/internal/ads/zzoh;
    .registers 5

    monitor-enter p0

    .line 21
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbja:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbja:I

    .line 22
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbjb:I

    if-lez v0, :cond_1d

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbjc:[Lcom/google/android/gms/internal/ads/zzoh;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbjb:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbjb:I

    aget-object v0, v0, v1

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbjc:[Lcom/google/android/gms/internal/ads/zzoh;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbjb:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    goto :goto_27

    .line 25
    :cond_1d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzoh;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbiw:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzoh;-><init>([BI)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 26
    :goto_27
    monitor-exit p0

    return-object v0

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzio()I
    .registers 2

    .line 49
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbiw:I

    return v0
.end method

.method public final declared-synchronized zzir()I
    .registers 3

    monitor-enter p0

    .line 48
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbja:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbiw:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_9

    mul-int v0, v0, v1

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzn()V
    .registers 5

    monitor-enter p0

    .line 41
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbiz:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbiw:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzpq;->zzf(II)I

    move-result v0

    const/4 v1, 0x0

    .line 42
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbja:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 43
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbjb:I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_23

    if-lt v0, v1, :cond_17

    .line 44
    monitor-exit p0

    return-void

    .line 45
    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbjc:[Lcom/google/android/gms/internal/ads/zzoh;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbjb:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 46
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoq;->zzbjb:I
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_23

    .line 47
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method
