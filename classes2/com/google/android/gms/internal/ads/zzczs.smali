.class public final Lcom/google/android/gms/internal/ads/zzczs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbuh;
.implements Lcom/google/android/gms/internal/ads/zzbui;
.implements Lcom/google/android/gms/internal/ads/zzbuz;
.implements Lcom/google/android/gms/internal/ads/zzbvs;
.implements Lcom/google/android/gms/internal/ads/zzux;


# instance fields
.field private zzgth:Lcom/google/android/gms/internal/ads/zzwt;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized onAdClicked()V
    .registers 3

    monitor-enter p0

    .line 43
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczs;->zzgth:Lcom/google/android/gms/internal/ads/zzwt;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-eqz v0, :cond_12

    .line 44
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczs;->zzgth:Lcom/google/android/gms/internal/ads/zzwt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwt;->onAdClicked()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c
    .catchall {:try_start_5 .. :try_end_a} :catchall_14

    .line 45
    monitor-exit p0

    return-void

    :catch_c
    move-exception v0

    :try_start_d
    const-string v1, "Remote Exception at onAdClicked."

    .line 47
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_14

    .line 48
    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onAdClosed()V
    .registers 3

    monitor-enter p0

    .line 5
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczs;->zzgth:Lcom/google/android/gms/internal/ads/zzwt;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-eqz v0, :cond_12

    .line 6
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczs;->zzgth:Lcom/google/android/gms/internal/ads/zzwt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwt;->onAdClosed()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c
    .catchall {:try_start_5 .. :try_end_a} :catchall_14

    .line 7
    monitor-exit p0

    return-void

    :catch_c
    move-exception v0

    :try_start_d
    const-string v1, "Remote Exception at onAdClosed."

    .line 9
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_14

    .line 10
    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onAdImpression()V
    .registers 3

    monitor-enter p0

    .line 49
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczs;->zzgth:Lcom/google/android/gms/internal/ads/zzwt;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-eqz v0, :cond_12

    .line 50
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczs;->zzgth:Lcom/google/android/gms/internal/ads/zzwt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwt;->onAdImpression()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c
    .catchall {:try_start_5 .. :try_end_a} :catchall_14

    .line 51
    monitor-exit p0

    return-void

    :catch_c
    move-exception v0

    :try_start_d
    const-string v1, "Remote Exception at onAdImpression."

    .line 53
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_14

    .line 54
    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onAdLeftApplication()V
    .registers 3

    monitor-enter p0

    .line 22
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczs;->zzgth:Lcom/google/android/gms/internal/ads/zzwt;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-eqz v0, :cond_12

    .line 23
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczs;->zzgth:Lcom/google/android/gms/internal/ads/zzwt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwt;->onAdLeftApplication()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c
    .catchall {:try_start_5 .. :try_end_a} :catchall_14

    .line 24
    monitor-exit p0

    return-void

    :catch_c
    move-exception v0

    :try_start_d
    const-string v1, "Remote Exception at onAdLeftApplication."

    .line 26
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_14

    .line 27
    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onAdLoaded()V
    .registers 3

    monitor-enter p0

    .line 31
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczs;->zzgth:Lcom/google/android/gms/internal/ads/zzwt;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-eqz v0, :cond_12

    .line 32
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczs;->zzgth:Lcom/google/android/gms/internal/ads/zzwt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwt;->onAdLoaded()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c
    .catchall {:try_start_5 .. :try_end_a} :catchall_14

    .line 33
    monitor-exit p0

    return-void

    :catch_c
    move-exception v0

    :try_start_d
    const-string v1, "Remote Exception at onAdLoaded."

    .line 35
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_14

    .line 36
    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onAdOpened()V
    .registers 3

    monitor-enter p0

    .line 37
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczs;->zzgth:Lcom/google/android/gms/internal/ads/zzwt;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-eqz v0, :cond_12

    .line 38
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczs;->zzgth:Lcom/google/android/gms/internal/ads/zzwt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwt;->onAdOpened()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c
    .catchall {:try_start_5 .. :try_end_a} :catchall_14

    .line 39
    monitor-exit p0

    return-void

    :catch_c
    move-exception v0

    :try_start_d
    const-string v1, "Remote Exception at onAdOpened."

    .line 41
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_14

    .line 42
    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onRewardedVideoCompleted()V
    .registers 1

    return-void
.end method

.method public final onRewardedVideoStarted()V
    .registers 1

    return-void
.end method

.method public final declared-synchronized zzaqt()Lcom/google/android/gms/internal/ads/zzwt;
    .registers 2

    monitor-enter p0

    .line 4
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczs;->zzgth:Lcom/google/android/gms/internal/ads/zzwt;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzatw;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public final declared-synchronized zzc(Lcom/google/android/gms/internal/ads/zzwt;)V
    .registers 2

    monitor-enter p0

    .line 2
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczs;->zzgth:Lcom/google/android/gms/internal/ads/zzwt;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 3
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzk(Lcom/google/android/gms/internal/ads/zzva;)V
    .registers 4

    monitor-enter p0

    .line 11
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczs;->zzgth:Lcom/google/android/gms/internal/ads/zzwt;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_26

    if-eqz v0, :cond_11

    .line 12
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczs;->zzgth:Lcom/google/android/gms/internal/ads/zzwt;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzwt;->zzc(Lcom/google/android/gms/internal/ads/zzva;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b
    .catchall {:try_start_5 .. :try_end_a} :catchall_26

    goto :goto_11

    :catch_b
    move-exception v0

    :try_start_c
    const-string v1, "Remote Exception at onAdFailedToLoadWithAdError."

    .line 15
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczs;->zzgth:Lcom/google/android/gms/internal/ads/zzwt;
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_26

    if-eqz v0, :cond_24

    .line 17
    :try_start_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczs;->zzgth:Lcom/google/android/gms/internal/ads/zzwt;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzva;->errorCode:I

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzwt;->onAdFailedToLoad(I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1c} :catch_1e
    .catchall {:try_start_15 .. :try_end_1c} :catchall_26

    .line 18
    monitor-exit p0

    return-void

    :catch_1e
    move-exception p1

    :try_start_1f
    const-string v0, "Remote Exception at onAdFailedToLoad."

    .line 20
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_26

    .line 21
    :cond_24
    monitor-exit p0

    return-void

    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method
