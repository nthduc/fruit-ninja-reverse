.class public Lcom/google/android/gms/internal/ads/zzdyl;
.super Lcom/google/android/gms/internal/ads/zzdyu;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdyu<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdyu;-><init>()V

    return-void
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzdzc;)Lcom/google/android/gms/internal/ads/zzdyl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TV;>;)",
            "Lcom/google/android/gms/internal/ads/zzdyl<",
            "TV;>;"
        }
    .end annotation

    .line 2
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzdyl;

    if-eqz v0, :cond_7

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/ads/zzdyl;

    return-object p0

    .line 4
    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdyn;-><init>(Lcom/google/android/gms/internal/ads/zzdzc;)V

    return-object v0
.end method


# virtual methods
.method public final zza(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdyl;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdyl<",
            "TV;>;"
        }
    .end annotation

    .line 18
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdyl;

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyl;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzdvu<",
            "-TV;TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdyl<",
            "TT;>;"
        }
    .end annotation

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxv;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdxv;-><init>(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdvu;)V

    .line 30
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzdze;->zza(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdxq;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzdzc;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 32
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdyl;

    return-object v0
.end method

.method public final zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyl;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/android/gms/internal/ads/zzdvu<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdyl<",
            "TV;>;"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxo;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdxo;-><init>(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdvu;)V

    .line 9
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/zzdze;->zza(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdxq;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzdzc;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 11
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdyl;

    return-object v0
.end method

.method public final zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyl;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/android/gms/internal/ads/zzdya<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdyl<",
            "TV;>;"
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxp;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdxp;-><init>(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdya;)V

    .line 15
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/zzdze;->zza(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdxq;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzdzc;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 17
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdyl;

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyl;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzdya<",
            "-TV;TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdyl<",
            "TT;>;"
        }
    .end annotation

    .line 21
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdwd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdxs;-><init>(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdya;)V

    .line 23
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzdze;->zza(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdxq;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzdzc;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 25
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdyl;

    return-object v0
.end method
