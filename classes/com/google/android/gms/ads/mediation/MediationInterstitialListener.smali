.class public interface abstract Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# virtual methods
.method public abstract onAdClicked(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
.end method

.method public abstract onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
.end method

.method public abstract onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;Lcom/google/android/gms/ads/AdError;)V
    .param p2    # Lcom/google/android/gms/ads/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
.end method

.method public abstract onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
.end method

.method public abstract onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
.end method
