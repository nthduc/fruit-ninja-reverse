.class public final Lcom/google/android/gms/internal/ads/zzdze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# direct methods
.method public static zza(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/ads/zzdzb;
    .registers 2

    .line 2
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzdzb;

    if-eqz v0, :cond_7

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/ads/zzdzb;

    return-object p0

    .line 4
    :cond_7
    instance-of v0, p0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_13

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdzi;

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdzi;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0

    .line 6
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdzf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdzf;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method static zza(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdxq;)Ljava/util/concurrent/Executor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/zzdxq<",
            "*>;)",
            "Ljava/util/concurrent/Executor;"
        }
    .end annotation

    .line 8
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdwd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdyj;->zzhtb:Lcom/google/android/gms/internal/ads/zzdyj;

    if-ne p0, v0, :cond_b

    return-object p0

    .line 14
    :cond_b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdzd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdzd;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdxq;)V

    return-object v0
.end method

.method public static zzayh()Ljava/util/concurrent/Executor;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdyj;->zzhtb:Lcom/google/android/gms/internal/ads/zzdyj;

    return-object v0
.end method
