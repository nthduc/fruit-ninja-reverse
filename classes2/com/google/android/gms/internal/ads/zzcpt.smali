.class public final Lcom/google/android/gms/internal/ads/zzcpt;
.super Lcom/google/android/gms/internal/ads/zzcpv;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcpv;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlf()Lcom/google/android/gms/internal/ads/zzbas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbas;->zzyj()Landroid/os/Looper;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzask;

    invoke-direct {v1, p1, v0, p0, p0}, Lcom/google/android/gms/internal/ads/zzask;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zzgkh:Lcom/google/android/gms/internal/ads/zzask;

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 5

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpt;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 21
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zzgkf:Z

    if-nez v0, :cond_3e

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zzgkf:Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_40

    .line 23
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zzgkh:Lcom/google/android/gms/internal/ads/zzask;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzask;->zzve()Lcom/google/android/gms/internal/ads/zzast;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zzgkg:Lcom/google/android/gms/internal/ads/zzatc;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcpy;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcpy;-><init>(Lcom/google/android/gms/internal/ads/zzcpv;)V

    .line 25
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzast;->zza(Lcom/google/android/gms/internal/ads/zzatc;Lcom/google/android/gms/internal/ads/zzasw;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1a} :catch_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_1a} :catch_32
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_1a} :catch_1b
    .catchall {:try_start_a .. :try_end_1a} :catchall_40

    goto :goto_3e

    :catch_1b
    move-exception v0

    .line 31
    :try_start_1c
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v1

    const-string v2, "RemoteAdRequestClientTask.onConnected"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzayb;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zzdja:Lcom/google/android/gms/internal/ads/zzbcg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcqm;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfw:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcqm;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->setException(Ljava/lang/Throwable;)Z

    goto :goto_3e

    .line 28
    :catch_32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zzdja:Lcom/google/android/gms/internal/ads/zzbcg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcqm;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfw:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcqm;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->setException(Ljava/lang/Throwable;)Z

    .line 33
    :cond_3e
    :goto_3e
    monitor-exit p1

    return-void

    :catchall_40
    move-exception v0

    monitor-exit p1
    :try_end_42
    .catchall {:try_start_1c .. :try_end_42} :catchall_40

    throw v0
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "Cannot connect to remote service, fallback to local instance."

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zzdja:Lcom/google/android/gms/internal/ads/zzbcg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqm;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfw:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcqm;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzatc;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzatc;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpt;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zzgke:Z

    if-eqz v1, :cond_b

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zzdja:Lcom/google/android/gms/internal/ads/zzbcg;

    monitor-exit v0

    return-object p1

    :cond_b
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zzgke:Z

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zzgkg:Lcom/google/android/gms/internal/ads/zzatc;

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpv;->zzgkh:Lcom/google/android/gms/internal/ads/zzask;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzask;->checkAvailabilityAndConnect()V

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zzdja:Lcom/google/android/gms/internal/ads/zzbcg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcpw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcpw;-><init>(Lcom/google/android/gms/internal/ads/zzcpt;)V

    .line 13
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 14
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zzdja:Lcom/google/android/gms/internal/ads/zzbcg;

    monitor-exit v0

    return-object p1

    :catchall_25
    move-exception p1

    .line 16
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p1
.end method
