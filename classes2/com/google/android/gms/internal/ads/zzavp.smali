.class public final Lcom/google/android/gms/internal/ads/zzavp;
.super Lcom/google/android/gms/internal/ads/zzavc;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final zzdwe:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzavc;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavp;->zzdwe:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    return-void
.end method


# virtual methods
.method public final onRewardedAdClosed()V
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavp;->zzdwe:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    if-eqz v0, :cond_7

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;->onRewardedAdClosed()V

    :cond_7
    return-void
.end method

.method public final onRewardedAdFailedToShow(I)V
    .registers 3

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavp;->zzdwe:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    if-eqz v0, :cond_7

    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;->onRewardedAdFailedToShow(I)V

    :cond_7
    return-void
.end method

.method public final onRewardedAdOpened()V
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavp;->zzdwe:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;->onRewardedAdOpened()V

    :cond_7
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaux;)V
    .registers 4

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavp;->zzdwe:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    if-eqz v0, :cond_c

    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/zzavm;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzavm;-><init>(Lcom/google/android/gms/internal/ads/zzaux;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;->onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V

    :cond_c
    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzva;)V
    .registers 3

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavp;->zzdwe:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    if-eqz v0, :cond_b

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzva;->zzph()Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;->onRewardedAdFailedToShow(Lcom/google/android/gms/ads/AdError;)V

    :cond_b
    return-void
.end method
