.class public final Lcom/google/android/gms/internal/ads/zzbtd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbuh;
.implements Lcom/google/android/gms/internal/ads/zzbuv;
.implements Lcom/google/android/gms/internal/ads/zzbyc;
.implements Lcom/google/android/gms/internal/ads/zzbzu;


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzftk:Lcom/google/android/gms/internal/ads/zzbuu;

.field private final zzftl:Lcom/google/android/gms/internal/ads/zzdnv;

.field private final zzftm:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzftn:Lcom/google/android/gms/internal/ads/zzdzj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdzj<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private zzfto:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbuu;Lcom/google/android/gms/internal/ads/zzdnv;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdzj;->zzayi()Lcom/google/android/gms/internal/ads/zzdzj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzftn:Lcom/google/android/gms/internal/ads/zzdzj;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzftk:Lcom/google/android/gms/internal/ads/zzbuu;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzftl:Lcom/google/android/gms/internal/ads/zzdnv;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzftm:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbtd;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbtd;)Lcom/google/android/gms/internal/ads/zzbuu;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzftk:Lcom/google/android/gms/internal/ads/zzbuu;

    return-object p0
.end method


# virtual methods
.method public final onAdClosed()V
    .registers 1

    return-void
.end method

.method public final onAdLeftApplication()V
    .registers 1

    return-void
.end method

.method public final onAdOpened()V
    .registers 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzftl:Lcom/google/android/gms/internal/ads/zzdnv;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzhed:I

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzftl:Lcom/google/android/gms/internal/ads/zzdnv;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzhed:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 9
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzftk:Lcom/google/android/gms/internal/ads/zzbuu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbuu;->onAdImpression()V

    :cond_12
    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .registers 1

    return-void
.end method

.method public final onRewardedVideoStarted()V
    .registers 1

    return-void
.end method

.method public final zzajj()V
    .registers 6

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcqh:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzftl:Lcom/google/android/gms/internal/ads/zzdnv;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzhed:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_45

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzftl:Lcom/google/android/gms/internal/ads/zzdnv;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdp:I

    if-nez v0, :cond_25

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzftk:Lcom/google/android/gms/internal/ads/zzbuu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbuu;->onAdImpression()V

    return-void

    .line 16
    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzftn:Lcom/google/android/gms/internal/ads/zzdzj;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbtf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbtf;-><init>(Lcom/google/android/gms/internal/ads/zzbtd;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbtd;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdyr;Ljava/util/concurrent/Executor;)V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzftm:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbtg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbtg;-><init>(Lcom/google/android/gms/internal/ads/zzbtd;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzftl:Lcom/google/android/gms/internal/ads/zzdnv;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzdnv;->zzhdp:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 18
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzfto:Ljava/util/concurrent/ScheduledFuture;

    :cond_45
    return-void
.end method

.method public final declared-synchronized zzajk()V
    .registers 3

    monitor-enter p0

    .line 26
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzftn:Lcom/google/android/gms/internal/ads/zzdzj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxq;->isDone()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_20

    if-eqz v0, :cond_b

    .line 27
    monitor-exit p0

    return-void

    .line 28
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzfto:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzfto:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 30
    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzftn:Lcom/google/android/gms/internal/ads/zzdzj;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzj;->set(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_20

    .line 31
    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzajl()V
    .registers 1

    return-void
.end method

.method public final zzajm()V
    .registers 1

    return-void
.end method

.method final synthetic zzajn()V
    .registers 3

    .line 39
    monitor-enter p0

    .line 40
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzftn:Lcom/google/android/gms/internal/ads/zzdzj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxq;->isDone()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 41
    monitor-exit p0

    return-void

    .line 42
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzftn:Lcom/google/android/gms/internal/ads/zzdzj;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzj;->set(Ljava/lang/Object;)Z

    .line 43
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzatw;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public final declared-synchronized zzj(Lcom/google/android/gms/internal/ads/zzva;)V
    .registers 3

    monitor-enter p0

    .line 20
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzftn:Lcom/google/android/gms/internal/ads/zzdzj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdxq;->isDone()Z

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_21

    if-eqz p1, :cond_b

    .line 21
    monitor-exit p0

    return-void

    .line 22
    :cond_b
    :try_start_b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzfto:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_15

    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzfto:Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 24
    :cond_15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtd;->zzftn:Lcom/google/android/gms/internal/ads/zzdzj;

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdzj;->setException(Ljava/lang/Throwable;)Z
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_21

    .line 25
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method
