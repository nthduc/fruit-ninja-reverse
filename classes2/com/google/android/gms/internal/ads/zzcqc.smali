.class public final Lcom/google/android/gms/internal/ads/zzcqc;
.super Lcom/google/android/gms/internal/ads/zzcpv;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private zzgkm:Ljava/lang/String;

.field private zzgkn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcpv;-><init>()V

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzcqd;->zzgko:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzgkn:I

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlf()Lcom/google/android/gms/internal/ads/zzbas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbas;->zzyj()Landroid/os/Looper;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/ads/zzask;

    invoke-direct {v1, p1, v0, p0, p0}, Lcom/google/android/gms/internal/ads/zzask;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzgkh:Lcom/google/android/gms/internal/ads/zzask;

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 39
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqc;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 40
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzgkf:Z

    if-nez v0, :cond_68

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzgkf:Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_6a

    .line 42
    :try_start_a
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzgkn:I

    sget v1, Lcom/google/android/gms/internal/ads/zzcqd;->zzgkp:I

    if-ne v0, v1, :cond_21

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzgkh:Lcom/google/android/gms/internal/ads/zzask;

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzask;->zzve()Lcom/google/android/gms/internal/ads/zzast;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzgkg:Lcom/google/android/gms/internal/ads/zzatc;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcpy;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcpy;-><init>(Lcom/google/android/gms/internal/ads/zzcpv;)V

    .line 45
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzast;->zzc(Lcom/google/android/gms/internal/ads/zzatc;Lcom/google/android/gms/internal/ads/zzasw;)V

    goto :goto_68

    .line 46
    :cond_21
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzgkn:I

    sget v1, Lcom/google/android/gms/internal/ads/zzcqd;->zzgkq:I

    if-ne v0, v1, :cond_38

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzgkh:Lcom/google/android/gms/internal/ads/zzask;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzask;->zzve()Lcom/google/android/gms/internal/ads/zzast;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzgkm:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcpy;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcpy;-><init>(Lcom/google/android/gms/internal/ads/zzcpv;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzast;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzasw;)V

    goto :goto_68

    .line 48
    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzdja:Lcom/google/android/gms/internal/ads/zzbcg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcqm;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfw:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcqm;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->setException(Ljava/lang/Throwable;)Z
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_44} :catch_5c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_44} :catch_5c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_44} :catch_45
    .catchall {:try_start_a .. :try_end_44} :catchall_6a

    goto :goto_68

    :catch_45
    move-exception v0

    .line 54
    :try_start_46
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v1

    const-string v2, "RemoteUrlAndCacheKeyClientTask.onConnected"

    .line 55
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzayb;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzdja:Lcom/google/android/gms/internal/ads/zzbcg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcqm;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfw:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcqm;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->setException(Ljava/lang/Throwable;)Z

    goto :goto_68

    .line 51
    :catch_5c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzdja:Lcom/google/android/gms/internal/ads/zzbcg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcqm;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfw:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcqm;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->setException(Ljava/lang/Throwable;)Z

    .line 57
    :cond_68
    :goto_68
    monitor-exit p1

    return-void

    :catchall_6a
    move-exception v0

    monitor-exit p1
    :try_end_6c
    .catchall {:try_start_46 .. :try_end_6c} :catchall_6a

    throw v0
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "Cannot connect to remote service, fallback to local instance."

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzdja:Lcom/google/android/gms/internal/ads/zzbcg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqm;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfw:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcqm;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final zzgm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqc;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzgkn:I

    sget v2, Lcom/google/android/gms/internal/ads/zzcqd;->zzgko:I

    if-eq v1, v2, :cond_1c

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzgkn:I

    sget v2, Lcom/google/android/gms/internal/ads/zzcqd;->zzgkq:I

    if-eq v1, v2, :cond_1c

    .line 23
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcqm;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfx:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzcqm;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyq;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 24
    :cond_1c
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzgke:Z

    if-eqz v1, :cond_24

    .line 25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzdja:Lcom/google/android/gms/internal/ads/zzbcg;

    monitor-exit v0

    return-object p1

    .line 26
    :cond_24
    sget v1, Lcom/google/android/gms/internal/ads/zzcqd;->zzgkq:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzgkn:I

    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzgke:Z

    .line 28
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzgkm:Ljava/lang/String;

    .line 30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpv;->zzgkh:Lcom/google/android/gms/internal/ads/zzask;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzask;->checkAvailabilityAndConnect()V

    .line 31
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzdja:Lcom/google/android/gms/internal/ads/zzbcg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcqe;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcqe;-><init>(Lcom/google/android/gms/internal/ads/zzcqc;)V

    .line 32
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 33
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 34
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzdja:Lcom/google/android/gms/internal/ads/zzbcg;

    monitor-exit v0

    return-object p1

    :catchall_42
    move-exception p1

    .line 35
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw p1
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzatc;)Lcom/google/android/gms/internal/ads/zzdzc;
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

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqc;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzgkn:I

    sget v2, Lcom/google/android/gms/internal/ads/zzcqd;->zzgko:I

    if-eq v1, v2, :cond_1c

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzgkn:I

    sget v2, Lcom/google/android/gms/internal/ads/zzcqd;->zzgkp:I

    if-eq v1, v2, :cond_1c

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcqm;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfx:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzcqm;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyq;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 9
    :cond_1c
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzgke:Z

    if-eqz v1, :cond_24

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzdja:Lcom/google/android/gms/internal/ads/zzbcg;

    monitor-exit v0

    return-object p1

    .line 11
    :cond_24
    sget v1, Lcom/google/android/gms/internal/ads/zzcqd;->zzgkp:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzgkn:I

    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzgke:Z

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzgkg:Lcom/google/android/gms/internal/ads/zzatc;

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpv;->zzgkh:Lcom/google/android/gms/internal/ads/zzask;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzask;->checkAvailabilityAndConnect()V

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzdja:Lcom/google/android/gms/internal/ads/zzbcg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcqb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcqb;-><init>(Lcom/google/android/gms/internal/ads/zzcqc;)V

    .line 17
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 18
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqc;->zzdja:Lcom/google/android/gms/internal/ads/zzbcg;

    monitor-exit v0

    return-object p1

    :catchall_42
    move-exception p1

    .line 20
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw p1
.end method
