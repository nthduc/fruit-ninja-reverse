.class final Lcom/google/android/gms/internal/ads/zzdzi;
.super Lcom/google/android/gms/internal/ads/zzdzf;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdzb;
.implements Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private final zzhts:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdzf;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzi;->zzhts:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final synthetic schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 6

    const/4 v0, 0x0

    .line 21
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdzq;->zza(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzq;

    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzi;->zzhts:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    .line 23
    new-instance p3, Lcom/google/android/gms/internal/ads/zzdzh;

    invoke-direct {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzdzh;-><init>(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/util/concurrent/ScheduledFuture;)V

    return-object p3
.end method

.method public final synthetic schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 6

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdzq;->zzf(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzq;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzi;->zzhts:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    .line 18
    new-instance p3, Lcom/google/android/gms/internal/ads/zzdzh;

    invoke-direct {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzdzh;-><init>(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/util/concurrent/ScheduledFuture;)V

    return-object p3
.end method

.method public final synthetic scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 15

    .line 11
    new-instance v7, Lcom/google/android/gms/internal/ads/zzdzk;

    invoke-direct {v7, p1}, Lcom/google/android/gms/internal/ads/zzdzk;-><init>(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzi;->zzhts:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, v7

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 13
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdzh;

    invoke-direct {p2, v7, p1}, Lcom/google/android/gms/internal/ads/zzdzh;-><init>(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/util/concurrent/ScheduledFuture;)V

    return-object p2
.end method

.method public final synthetic scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .registers 15

    .line 5
    new-instance v7, Lcom/google/android/gms/internal/ads/zzdzk;

    invoke-direct {v7, p1}, Lcom/google/android/gms/internal/ads/zzdzk;-><init>(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzi;->zzhts:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, v7

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    .line 7
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 8
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdzh;

    invoke-direct {p2, v7, p1}, Lcom/google/android/gms/internal/ads/zzdzh;-><init>(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/util/concurrent/ScheduledFuture;)V

    return-object p2
.end method
