.class public final Lcom/google/android/gms/internal/ads/zzabz;
.super Lcom/google/android/gms/internal/ads/zzabx;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final zzcjv:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzabx;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabz;->zzcjv:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzabt;)V
    .registers 4

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabz;->zzcjv:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzabu;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzabu;-><init>(Lcom/google/android/gms/internal/ads/zzabt;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;->onCustomRenderedAdLoaded(Lcom/google/android/gms/ads/doubleclick/CustomRenderedAd;)V

    return-void
.end method
