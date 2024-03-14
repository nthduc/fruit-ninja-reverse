.class public final Lcom/google/android/gms/internal/ads/zzdaa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private zzadt:Lcom/google/android/gms/internal/ads/zzyn;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzafc:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzbuu:Ljava/lang/String;

.field private final zzgtp:Lcom/google/android/gms/internal/ads/zzdae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdae<",
            "Lcom/google/android/gms/internal/ads/zzbqo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdae;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdae<",
            "Lcom/google/android/gms/internal/ads/zzbqo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdaa;->zzafc:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaa;->zzgtp:Lcom/google/android/gms/internal/ads/zzdae;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdaa;->zzbuu:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdaa;Lcom/google/android/gms/internal/ads/zzyn;)Lcom/google/android/gms/internal/ads/zzyn;
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaa;->zzadt:Lcom/google/android/gms/internal/ads/zzyn;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdaa;Z)Z
    .registers 2

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdaa;->zzafc:Z

    return p1
.end method


# virtual methods
.method public final declared-synchronized getMediationAdapterClassName()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 12
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdaa;->zzadt:Lcom/google/android/gms/internal/ads/zzyn;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdaa;->zzadt:Lcom/google/android/gms/internal/ads/zzyn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzyn;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_12
    .catchall {:try_start_2 .. :try_end_c} :catchall_10

    monitor-exit p0

    return-object v0

    :cond_e
    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    goto :goto_1a

    :catch_12
    move-exception v1

    :try_start_13
    const-string v2, "#007 Could not call remote method."

    .line 14
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzayp;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_10

    .line 15
    monitor-exit p0

    return-object v0

    :goto_1a
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isLoading()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 6
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaa;->zzgtp:Lcom/google/android/gms/internal/ads/zzdae;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdae;->isLoading()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvg;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 7
    :try_start_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaa;->zzadt:Lcom/google/android/gms/internal/ads/zzyn;

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdaf;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzdaf;-><init>(I)V

    .line 9
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdaa;->zzgtp:Lcom/google/android/gms/internal/ads/zzdae;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdaa;->zzbuu:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzczz;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzczz;-><init>(Lcom/google/android/gms/internal/ads/zzdaa;)V

    .line 10
    invoke-interface {p2, p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdae;->zza(Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdad;Lcom/google/android/gms/internal/ads/zzdag;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdaa;->zzafc:Z
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_1a

    .line 11
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzkh()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 16
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdaa;->zzadt:Lcom/google/android/gms/internal/ads/zzyn;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdaa;->zzadt:Lcom/google/android/gms/internal/ads/zzyn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzyn;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_12
    .catchall {:try_start_2 .. :try_end_c} :catchall_10

    monitor-exit p0

    return-object v0

    :cond_e
    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    goto :goto_1a

    :catch_12
    move-exception v1

    :try_start_13
    const-string v2, "#007 Could not call remote method."

    .line 18
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzayp;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_10

    .line 19
    monitor-exit p0

    return-object v0

    :goto_1a
    monitor-exit p0

    throw v0
.end method
