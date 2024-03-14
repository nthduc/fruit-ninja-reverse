.class final Lcom/google/android/gms/internal/ads/zztm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;


# instance fields
.field final synthetic zzbvl:Lcom/google/android/gms/internal/ads/zztk;

.field private final synthetic zzbvr:Lcom/google/android/gms/internal/ads/zzte;

.field private final synthetic zzbvs:Lcom/google/android/gms/internal/ads/zzbcg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zztk;Lcom/google/android/gms/internal/ads/zzte;Lcom/google/android/gms/internal/ads/zzbcg;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvl:Lcom/google/android/gms/internal/ads/zztk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvr:Lcom/google/android/gms/internal/ads/zzte;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvs:Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvl:Lcom/google/android/gms/internal/ads/zztk;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zztk;->zzb(Lcom/google/android/gms/internal/ads/zztk;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvl:Lcom/google/android/gms/internal/ads/zztk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zztk;->zzc(Lcom/google/android/gms/internal/ads/zztk;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4
    monitor-exit p1

    return-void

    .line 5
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvl:Lcom/google/android/gms/internal/ads/zztk;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zztk;->zza(Lcom/google/android/gms/internal/ads/zztk;Z)Z

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvl:Lcom/google/android/gms/internal/ads/zztk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zztk;->zzd(Lcom/google/android/gms/internal/ads/zztk;)Lcom/google/android/gms/internal/ads/zztb;

    move-result-object v0

    if-nez v0, :cond_21

    .line 8
    monitor-exit p1

    return-void

    .line 9
    :cond_21
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbz;->zzeep:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v2, Lcom/google/android/gms/internal/ads/zztl;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvr:Lcom/google/android/gms/internal/ads/zzte;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvs:Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zztl;-><init>(Lcom/google/android/gms/internal/ads/zztm;Lcom/google/android/gms/internal/ads/zztb;Lcom/google/android/gms/internal/ads/zzte;Lcom/google/android/gms/internal/ads/zzbcg;)V

    .line 10
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzdzb;->zzg(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvs:Lcom/google/android/gms/internal/ads/zzbcg;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzto;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zztm;->zzbvs:Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzto;-><init>(Lcom/google/android/gms/internal/ads/zzbcg;Ljava/util/concurrent/Future;)V

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 13
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 14
    monitor-exit p1

    return-void

    :catchall_40
    move-exception v0

    monitor-exit p1
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_40

    throw v0
.end method

.method public final onConnectionSuspended(I)V
    .registers 2

    return-void
.end method
