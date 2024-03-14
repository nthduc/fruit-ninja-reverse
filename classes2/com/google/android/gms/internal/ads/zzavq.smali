.class public final Lcom/google/android/gms/internal/ads/zzavq;
.super Lcom/google/android/gms/internal/ads/zzavj;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final zzdwf:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzavj;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzdwf:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    return-void
.end method


# virtual methods
.method public final onRewardedAdFailedToLoad(I)V
    .registers 3

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzdwf:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    if-eqz v0, :cond_7

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;->onRewardedAdFailedToLoad(I)V

    :cond_7
    return-void
.end method

.method public final onRewardedAdLoaded()V
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzdwf:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;->onRewardedAdLoaded()V

    :cond_7
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzva;)V
    .registers 3

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzdwf:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    if-eqz v0, :cond_b

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzva;->zzpi()Lcom/google/android/gms/ads/LoadAdError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;->onRewardedAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    :cond_b
    return-void
.end method
