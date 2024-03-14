.class public final Lcom/google/android/gms/internal/ads/zzczk;
.super Lcom/google/android/gms/internal/ads/zzwx;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzgsy:Lcom/google/android/gms/internal/ads/zzdaa;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbix;Lcom/google/android/gms/internal/ads/zzdom;Lcom/google/android/gms/internal/ads/zzcep;Lcom/google/android/gms/internal/ads/zzwt;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwx;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdac;

    invoke-direct {v0, p4}, Lcom/google/android/gms/internal/ads/zzdac;-><init>(Lcom/google/android/gms/internal/ads/zzcep;)V

    .line 3
    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/ads/zzdac;->zzc(Lcom/google/android/gms/internal/ads/zzwt;)V

    .line 4
    new-instance p4, Lcom/google/android/gms/internal/ads/zzdai;

    invoke-direct {p4, p2, p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzdai;-><init>(Lcom/google/android/gms/internal/ads/zzbix;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdac;Lcom/google/android/gms/internal/ads/zzdom;)V

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdaa;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdom;->zzatl()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p4, p2}, Lcom/google/android/gms/internal/ads/zzdaa;-><init>(Lcom/google/android/gms/internal/ads/zzdae;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczk;->zzgsy:Lcom/google/android/gms/internal/ads/zzdaa;

    return-void
.end method


# virtual methods
.method public final declared-synchronized getMediationAdapterClassName()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 13
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczk;->zzgsy:Lcom/google/android/gms/internal/ads/zzdaa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdaa;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

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

    .line 7
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczk;->zzgsy:Lcom/google/android/gms/internal/ads/zzdaa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdaa;->isLoading()Z

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
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 11
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczk;->zzgsy:Lcom/google/android/gms/internal/ads/zzdaa;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdaa;->zza(Lcom/google/android/gms/internal/ads/zzvg;I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 12
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzvg;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczk;->zzgsy:Lcom/google/android/gms/internal/ads/zzdaa;

    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdaa;->zza(Lcom/google/android/gms/internal/ads/zzvg;I)V

    return-void
.end method

.method public final declared-synchronized zzkh()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 14
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczk;->zzgsy:Lcom/google/android/gms/internal/ads/zzdaa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdaa;->zzkh()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
