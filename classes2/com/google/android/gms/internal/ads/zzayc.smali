.class final Lcom/google/android/gms/internal/ads/zzayc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final lock:Ljava/lang/Object;

.field private volatile zzdzi:I

.field private volatile zzdzj:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayc;->lock:Ljava/lang/Object;

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzayf;->zzdzu:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzayc;->zzdzi:I

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzayc;->zzdzj:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzayd;)V
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayc;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzwp()V
    .registers 8

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayc;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 9
    :try_start_b
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzayc;->zzdzi:I

    sget v4, Lcom/google/android/gms/internal/ads/zzayf;->zzdzw:I

    if-ne v3, v4, :cond_2c

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzayc;->zzdzj:J

    sget-object v5, Lcom/google/android/gms/internal/ads/zzabb;->zzcvx:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v5

    .line 12
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v3, v5

    cmp-long v5, v3, v0

    if-gtz v5, :cond_2c

    .line 13
    sget v0, Lcom/google/android/gms/internal/ads/zzayf;->zzdzu:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzayc;->zzdzi:I

    .line 14
    :cond_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_b .. :try_end_2d} :catchall_4f

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 16
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzayc;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 17
    :try_start_38
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzayc;->zzdzi:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3f

    .line 18
    monitor-exit v3

    return-void

    :cond_3f
    const/4 v2, 0x3

    .line 19
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzayc;->zzdzi:I

    .line 20
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzayc;->zzdzi:I

    sget v4, Lcom/google/android/gms/internal/ads/zzayf;->zzdzw:I

    if-ne v2, v4, :cond_4a

    .line 21
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzayc;->zzdzj:J

    .line 22
    :cond_4a
    monitor-exit v3

    return-void

    :catchall_4c
    move-exception v0

    .line 23
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_38 .. :try_end_4e} :catchall_4c

    throw v0

    :catchall_4f
    move-exception v0

    .line 14
    :try_start_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v0
.end method
