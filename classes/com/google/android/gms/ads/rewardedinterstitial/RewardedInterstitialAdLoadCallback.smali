.class public Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewardedInterstitialAdFailedToLoad(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onRewardedInterstitialAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 2

    return-void
.end method

.method public onRewardedInterstitialAdLoaded(Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;)V
    .registers 2
    .param p1    # Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
