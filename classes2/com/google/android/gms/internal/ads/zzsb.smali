.class public final Lcom/google/android/gms/internal/ads/zzsb;
.super Lcom/google/android/gms/internal/ads/zzsk;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final zzbup:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsk;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsb;->zzbup:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onAppOpenAdFailedToLoad(I)V
    .registers 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsb;->zzbup:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    if-eqz v0, :cond_d

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;->onAppOpenAdFailedToLoad(I)V

    :cond_d
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzsg;)V
    .registers 4

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsb;->zzbup:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    if-eqz v0, :cond_12

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzsn;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzsn;-><init>(Lcom/google/android/gms/internal/ads/zzsg;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;->onAppOpenAdLoaded(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V

    :cond_12
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzva;)V
    .registers 3

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsb;->zzbup:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    if-eqz v0, :cond_11

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzva;->zzpi()Lcom/google/android/gms/ads/LoadAdError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;->onAppOpenAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    :cond_11
    return-void
.end method
