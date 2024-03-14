.class final Lcom/google/android/gms/internal/ads/zzdzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field zzhtl:Z

.field private final synthetic zzhtm:Ljava/util/concurrent/Executor;

.field private final synthetic zzhtn:Lcom/google/android/gms/internal/ads/zzdxq;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdxq;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzd;->zzhtm:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzd;->zzhtn:Lcom/google/android/gms/internal/ads/zzdxq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdzd;->zzhtl:Z

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .registers 4

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzd;->zzhtm:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdzg;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdzg;-><init>(Lcom/google/android/gms/internal/ads/zzdzd;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    .line 6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdzd;->zzhtl:Z

    if-eqz v0, :cond_15

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzd;->zzhtn:Lcom/google/android/gms/internal/ads/zzdxq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdxq;->setException(Ljava/lang/Throwable;)Z

    :cond_15
    return-void
.end method
