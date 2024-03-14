.class final Lcom/google/android/gms/internal/ads/zztq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field private final synthetic zzbvl:Lcom/google/android/gms/internal/ads/zztk;

.field private final synthetic zzbvs:Lcom/google/android/gms/internal/ads/zzbcg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zztk;Lcom/google/android/gms/internal/ads/zzbcg;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztq;->zzbvl:Lcom/google/android/gms/internal/ads/zztk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zztq;->zzbvs:Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztq;->zzbvl:Lcom/google/android/gms/internal/ads/zztk;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zztk;->zzb(Lcom/google/android/gms/internal/ads/zztk;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztq;->zzbvs:Lcom/google/android/gms/internal/ads/zzbcg;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Connection failed."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->setException(Ljava/lang/Throwable;)Z

    .line 4
    monitor-exit p1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v0
.end method
