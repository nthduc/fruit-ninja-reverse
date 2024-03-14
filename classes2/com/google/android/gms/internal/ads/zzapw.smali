.class final Lcom/google/android/gms/internal/ads/zzapw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;
.implements Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;
.implements Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;


# instance fields
.field private zzdmr:Lcom/google/android/gms/internal/ads/zzanh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzanh;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapw;->zzdmr:Lcom/google/android/gms/internal/ads/zzanh;

    return-void
.end method


# virtual methods
.method public final onAdClosed()V
    .registers 2

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapw;->zzdmr:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanh;->onAdClosed()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public final onAdFailedToShow(Lcom/google/android/gms/ads/AdError;)V
    .registers 7

    .line 47
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result v0

    .line 48
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x56

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Mediated ad failed to show: Error Code = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". Error Message = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Error Domain = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapw;->zzdmr:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->zzdo()Lcom/google/android/gms/internal/ads/zzva;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzanh;->zze(Lcom/google/android/gms/internal/ads/zzva;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4c} :catch_4c

    :catch_4c
    return-void
.end method

.method public final onAdFailedToShow(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    const-string v0, "Mediated ad failed to show: "

    .line 41
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_11
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_17
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapw;->zzdmr:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzanh;->zzdo(Ljava/lang/String;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method

.method public final onAdLeftApplication()V
    .registers 2

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapw;->zzdmr:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanh;->onAdLeftApplication()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public final onAdOpened()V
    .registers 2

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapw;->zzdmr:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanh;->onAdOpened()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public final onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .registers 4

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapw;->zzdmr:Lcom/google/android/gms/internal/ads/zzanh;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzavu;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzavu;-><init>(Lcom/google/android/gms/ads/rewarded/RewardItem;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzanh;->zza(Lcom/google/android/gms/internal/ads/zzaux;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method

.method public final onVideoComplete()V
    .registers 2

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapw;->zzdmr:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanh;->onVideoEnd()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public final onVideoMute()V
    .registers 1

    return-void
.end method

.method public final onVideoPause()V
    .registers 1

    return-void
.end method

.method public final onVideoPlay()V
    .registers 2

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapw;->zzdmr:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanh;->onVideoPlay()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public final onVideoStart()V
    .registers 2

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapw;->zzdmr:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanh;->zzuc()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public final onVideoUnmute()V
    .registers 1

    return-void
.end method

.method public final reportAdClicked()V
    .registers 2

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapw;->zzdmr:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanh;->onAdClicked()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public final reportAdImpression()V
    .registers 2

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapw;->zzdmr:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanh;->onAdImpression()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
