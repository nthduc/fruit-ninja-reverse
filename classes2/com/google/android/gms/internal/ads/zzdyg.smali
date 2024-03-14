.class abstract Lcom/google/android/gms/internal/ads/zzdyg;
.super Lcom/google/android/gms/internal/ads/zzdyy;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdyy<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzhsx:Ljava/util/concurrent/Executor;

.field zzhsy:Z

.field private final synthetic zzhsz:Lcom/google/android/gms/internal/ads/zzdye;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdye;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhsz:Lcom/google/android/gms/internal/ads/zzdye;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdyy;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhsy:Z

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdwd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhsx:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method final execute()V
    .registers 3

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhsx:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 9
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhsy:Z

    if-eqz v1, :cond_10

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhsz:Lcom/google/android/gms/internal/ads/zzdye;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdxq;->setException(Ljava/lang/Throwable;)Z

    :cond_10
    return-void
.end method

.method final isDone()Z
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhsz:Lcom/google/android/gms/internal/ads/zzdye;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxq;->isDone()Z

    move-result v0

    return v0
.end method

.method abstract setValue(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method final zzb(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhsz:Lcom/google/android/gms/internal/ads/zzdye;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdye;->zza(Lcom/google/android/gms/internal/ads/zzdye;Lcom/google/android/gms/internal/ads/zzdyg;)Lcom/google/android/gms/internal/ads/zzdyg;

    if-eqz p2, :cond_27

    .line 14
    instance-of p1, p2, Ljava/util/concurrent/ExecutionException;

    if-eqz p1, :cond_16

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhsz:Lcom/google/android/gms/internal/ads/zzdye;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdxq;->setException(Ljava/lang/Throwable;)Z

    return-void

    .line 16
    :cond_16
    instance-of p1, p2, Ljava/util/concurrent/CancellationException;

    if-eqz p1, :cond_21

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhsz:Lcom/google/android/gms/internal/ads/zzdye;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdxq;->cancel(Z)Z

    return-void

    .line 18
    :cond_21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyg;->zzhsz:Lcom/google/android/gms/internal/ads/zzdye;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdxq;->setException(Ljava/lang/Throwable;)Z

    return-void

    .line 19
    :cond_27
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdyg;->setValue(Ljava/lang/Object;)V

    return-void
.end method
