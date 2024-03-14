.class public final Lcom/google/android/gms/internal/ads/zzajn;
.super Lcom/google/android/gms/internal/ads/zzajj;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final zzdgi:Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajj;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajn;->zzdgi:Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;

    return-void
.end method


# virtual methods
.method public final onInstreamAdFailedToLoad(I)V
    .registers 3

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajn;->zzdgi:Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;->onInstreamAdFailedToLoad(I)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaje;)V
    .registers 4

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajn;->zzdgi:Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzajl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzajl;-><init>(Lcom/google/android/gms/internal/ads/zzaje;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;->onInstreamAdLoaded(Lcom/google/android/gms/ads/instream/InstreamAd;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzva;)V
    .registers 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajn;->zzdgi:Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzva;->zzpi()Lcom/google/android/gms/ads/LoadAdError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;->onInstreamAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    return-void
.end method
