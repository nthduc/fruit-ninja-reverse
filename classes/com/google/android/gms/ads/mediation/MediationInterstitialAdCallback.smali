.class public interface abstract Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdCallback;


# virtual methods
.method public abstract onAdFailedToShow(Lcom/google/android/gms/ads/AdError;)V
    .param p1    # Lcom/google/android/gms/ads/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onAdFailedToShow(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onAdLeftApplication()V
.end method
