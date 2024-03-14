.class public final Lcom/google/android/gms/internal/ads/zzbeo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhs;


# instance fields
.field private zzbiz:I

.field private final zzekj:Lcom/google/android/gms/internal/ads/zzoq;

.field private zzekk:J

.field private zzekl:J

.field private zzekm:J

.field private zzekn:J

.field private zzeko:Z


# direct methods
.method constructor <init>()V
    .registers 8

    const/16 v1, 0x3a98

    const/16 v2, 0x7530

    const-wide/16 v3, 0x9c4

    const-wide/16 v5, 0x1388

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzbeo;-><init>(IIJJ)V

    return-void
.end method

.method private constructor <init>(IIJJ)V
    .registers 7

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzoq;

    const/4 p2, 0x1

    const/high16 p3, 0x10000

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzoq;-><init>(ZI)V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbeo;->zzekj:Lcom/google/android/gms/internal/ads/zzoq;

    const-wide/32 p1, 0xe4e1c0

    .line 7
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbeo;->zzekk:J

    const-wide/32 p1, 0x1c9c380

    .line 8
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbeo;->zzekl:J

    const-wide/32 p1, 0x2625a0

    .line 9
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbeo;->zzekm:J

    const-wide/32 p1, 0x4c4b40

    .line 10
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbeo;->zzekn:J

    return-void
.end method

.method private final zzk(Z)V
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbeo;->zzbiz:I

    .line 45
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbeo;->zzeko:Z

    if-eqz p1, :cond_c

    .line 47
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbeo;->zzekj:Lcom/google/android/gms/internal/ads/zzoq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzoq;->reset()V

    :cond_c
    return-void
.end method


# virtual methods
.method public final onStopped()V
    .registers 2

    const/4 v0, 0x1

    .line 21
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbeo;->zzk(Z)V

    return-void
.end method

.method public final zza([Lcom/google/android/gms/internal/ads/zzhx;Lcom/google/android/gms/internal/ads/zznp;Lcom/google/android/gms/internal/ads/zzod;)V
    .registers 6

    const/4 p2, 0x0

    .line 14
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbeo;->zzbiz:I

    .line 15
    :goto_3
    array-length v0, p1

    if-ge p2, v0, :cond_1e

    .line 16
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzod;->zzbg(I)Lcom/google/android/gms/internal/ads/zzob;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbeo;->zzbiz:I

    aget-object v1, p1, p2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhx;->getTrackType()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzpq;->zzbs(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbeo;->zzbiz:I

    :cond_1b
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 19
    :cond_1e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbeo;->zzekj:Lcom/google/android/gms/internal/ads/zzoq;

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbeo;->zzbiz:I

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzoq;->zzbi(I)V

    return-void
.end method

.method public final declared-synchronized zzc(JZ)Z
    .registers 8

    monitor-enter p0

    if-eqz p3, :cond_6

    .line 26
    :try_start_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbeo;->zzekn:J

    goto :goto_8

    :cond_6
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbeo;->zzekm:J
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_18

    :goto_8
    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_16

    cmp-long p3, p1, v0

    if-ltz p3, :cond_13

    goto :goto_16

    :cond_13
    const/4 p1, 0x0

    .line 27
    :goto_14
    monitor-exit p0

    return p1

    :cond_16
    :goto_16
    const/4 p1, 0x1

    goto :goto_14

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public final declared-synchronized zzdn(I)V
    .registers 6

    monitor-enter p0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 40
    :try_start_6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbeo;->zzekm:J
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_a

    .line 41
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzdo(I)V
    .registers 6

    monitor-enter p0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 42
    :try_start_6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbeo;->zzekn:J
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_a

    .line 43
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzds(I)V
    .registers 6

    monitor-enter p0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 36
    :try_start_6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbeo;->zzekk:J
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_a

    .line 37
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzdt(I)V
    .registers 6

    monitor-enter p0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 38
    :try_start_6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbeo;->zzekl:J
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_a

    .line 39
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzdt(J)Z
    .registers 9

    monitor-enter p0

    .line 29
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbeo;->zzekl:J

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    cmp-long v5, p1, v0

    if-lez v5, :cond_c

    const/4 p1, 0x0

    goto :goto_15

    .line 31
    :cond_c
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbeo;->zzekk:J

    cmp-long v5, p1, v0

    if-gez v5, :cond_14

    const/4 p1, 0x2

    goto :goto_15

    :cond_14
    const/4 p1, 0x1

    .line 33
    :goto_15
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbeo;->zzekj:Lcom/google/android/gms/internal/ads/zzoq;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzoq;->zzir()I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbeo;->zzbiz:I

    if-lt p2, v0, :cond_21

    const/4 p2, 0x1

    goto :goto_22

    :cond_21
    const/4 p2, 0x0

    :goto_22
    if-eq p1, v2, :cond_2c

    if-ne p1, v4, :cond_2d

    .line 34
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbeo;->zzeko:Z

    if-eqz p1, :cond_2d

    if-nez p2, :cond_2d

    :cond_2c
    const/4 v3, 0x1

    :cond_2d
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbeo;->zzeko:Z

    .line 35
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbeo;->zzeko:Z
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    monitor-exit p0

    return p1

    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzfb()V
    .registers 2

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbeo;->zzk(Z)V

    return-void
.end method

.method public final zzfc()V
    .registers 2

    const/4 v0, 0x1

    .line 23
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbeo;->zzk(Z)V

    return-void
.end method

.method public final zzfd()Lcom/google/android/gms/internal/ads/zzok;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbeo;->zzekj:Lcom/google/android/gms/internal/ads/zzoq;

    return-object v0
.end method
