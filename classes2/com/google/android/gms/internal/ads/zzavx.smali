.class public final Lcom/google/android/gms/internal/ads/zzavx;
.super Lcom/google/android/gms/internal/ads/zzavc;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private zzdwi:Lcom/google/android/gms/ads/FullScreenContentCallback;

.field private zzdwj:Lcom/google/android/gms/ads/OnUserEarnedRewardListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzavc;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRewardedAdClosed()V
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavx;->zzdwi:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz v0, :cond_7

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdDismissedFullScreenContent()V

    :cond_7
    return-void
.end method

.method public final onRewardedAdFailedToShow(I)V
    .registers 2

    return-void
.end method

.method public final onRewardedAdOpened()V
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavx;->zzdwi:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz v0, :cond_7

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdShowedFullScreenContent()V

    :cond_7
    return-void
.end method

.method public final setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavx;->zzdwi:Lcom/google/android/gms/ads/FullScreenContentCallback;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V
    .registers 2

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavx;->zzdwj:Lcom/google/android/gms/ads/OnUserEarnedRewardListener;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaux;)V
    .registers 4

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavx;->zzdwj:Lcom/google/android/gms/ads/OnUserEarnedRewardListener;

    if-eqz v0, :cond_c

    .line 17
    new-instance v1, Lcom/google/android/gms/internal/ads/zzavm;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzavm;-><init>(Lcom/google/android/gms/internal/ads/zzaux;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/OnUserEarnedRewardListener;->onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V

    :cond_c
    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzva;)V
    .registers 3

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavx;->zzdwi:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz v0, :cond_b

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzva;->zzph()Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V

    :cond_b
    return-void
.end method
