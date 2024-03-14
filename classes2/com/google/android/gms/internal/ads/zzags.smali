.class public final Lcom/google/android/gms/internal/ads/zzags;
.super Lcom/google/android/gms/internal/ads/zzafw;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final zzdeo:Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafw;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzags;->zzdeo:Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzage;)V
    .registers 4

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->zzdeo:Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzagf;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzagf;-><init>(Lcom/google/android/gms/internal/ads/zzage;)V

    .line 6
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;->onUnifiedNativeAdLoaded(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V

    return-void
.end method
