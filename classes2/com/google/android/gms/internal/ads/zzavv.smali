.class public final Lcom/google/android/gms/internal/ads/zzavv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;


# instance fields
.field private final zzdlq:Lcom/google/android/gms/internal/ads/zzanh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzanh;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavv;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    return-void
.end method


# virtual methods
.method public final onAdClosed()V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdClosed."

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 13
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavv;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanh;->onAdClosed()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 16
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdFailedToShow(Lcom/google/android/gms/ads/AdError;)V
    .registers 7

    const-string v0, "#008 Must be called on the main UI thread."

    .line 47
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdFailedToShow."

    .line 48
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result v0

    .line 51
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x57

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Mediation ad failed to show: Error Code = "

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

    .line 53
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V

    .line 54
    :try_start_4d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavv;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->zzdo()Lcom/google/android/gms/internal/ads/zzva;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzanh;->zze(Lcom/google/android/gms/internal/ads/zzva;)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_56} :catch_57

    return-void

    :catch_57
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 57
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdFailedToShow(Ljava/lang/String;)V
    .registers 5

    const-string v0, "#008 Must be called on the main UI thread."

    .line 39
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdFailedToShow."

    .line 40
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 41
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Mediation ad failed to show: "

    if-eqz v1, :cond_1b

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_1b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_20
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V

    .line 42
    :try_start_23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavv;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzanh;->zzdo(Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 45
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdOpened()V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdOpened."

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 6
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavv;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanh;->onAdOpened()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 9
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .registers 4

    const-string v0, "#008 Must be called on the main UI thread."

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onUserEarnedReward."

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 20
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavv;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzavu;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzavu;-><init>(Lcom/google/android/gms/ads/rewarded/RewardItem;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzanh;->zza(Lcom/google/android/gms/internal/ads/zzaux;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 23
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onVideoComplete()V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    .line 66
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onVideoComplete."

    .line 67
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 68
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavv;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanh;->zzud()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 71
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onVideoStart()V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    .line 59
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onVideoStart."

    .line 60
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 61
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavv;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanh;->zzuc()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 64
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final reportAdClicked()V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called reportAdClicked."

    .line 26
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 27
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavv;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanh;->onAdClicked()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 30
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final reportAdImpression()V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    .line 32
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called reportAdImpression."

    .line 33
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    .line 34
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavv;->zzdlq:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanh;->onAdImpression()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 37
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
