.class public final Lcom/google/android/gms/internal/ads/zzavw;
.super Lcom/google/android/gms/internal/ads/zzavj;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final zzdwg:Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;

.field private final zzdwh:Lcom/google/android/gms/internal/ads/zzavz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;Lcom/google/android/gms/internal/ads/zzavz;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzavj;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavw;->zzdwg:Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzavw;->zzdwh:Lcom/google/android/gms/internal/ads/zzavz;

    return-void
.end method


# virtual methods
.method public final onRewardedAdFailedToLoad(I)V
    .registers 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavw;->zzdwg:Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;

    if-eqz v0, :cond_7

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;->onRewardedInterstitialAdFailedToLoad(I)V

    :cond_7
    return-void
.end method

.method public final onRewardedAdLoaded()V
    .registers 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavw;->zzdwg:Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavw;->zzdwh:Lcom/google/android/gms/internal/ads/zzavz;

    if-eqz v1, :cond_b

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;->onRewardedInterstitialAdLoaded(Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;)V

    :cond_b
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzva;)V
    .registers 3

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavw;->zzdwg:Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;

    if-eqz v0, :cond_b

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzva;->zzpi()Lcom/google/android/gms/ads/LoadAdError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;->onRewardedInterstitialAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    :cond_b
    return-void
.end method
