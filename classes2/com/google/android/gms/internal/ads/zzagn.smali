.class public final Lcom/google/android/gms/internal/ads/zzagn;
.super Lcom/google/android/gms/internal/ads/zzafi;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final zzdeh:Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafi;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagn;->zzdeh:Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaew;)V
    .registers 4

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagn;->zzdeh:Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaex;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaex;-><init>(Lcom/google/android/gms/internal/ads/zzaew;)V

    .line 6
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;->onContentAdLoaded(Lcom/google/android/gms/ads/formats/NativeContentAd;)V

    return-void
.end method
