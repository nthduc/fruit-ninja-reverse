.class public final Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final zzadi:Lcom/google/android/gms/internal/ads/zzza;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzza;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/ads/zzza;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadi:Lcom/google/android/gms/internal/ads/zzza;

    const-string v0, "Context cannot be null"

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getAdListener()Lcom/google/android/gms/ads/AdListener;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadi:Lcom/google/android/gms/internal/ads/zzza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzza;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v0

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadi:Lcom/google/android/gms/internal/ads/zzza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzza;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadi:Lcom/google/android/gms/internal/ads/zzza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzza;->getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    move-result-object v0

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadi:Lcom/google/android/gms/internal/ads/zzza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzza;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOnCustomRenderedAdLoadedListener()Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadi:Lcom/google/android/gms/internal/ads/zzza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzza;->getOnCustomRenderedAdLoadedListener()Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    move-result-object v0

    return-object v0
.end method

.method public final getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadi:Lcom/google/android/gms/internal/ads/zzza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzza;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public final isLoaded()Z
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadi:Lcom/google/android/gms/internal/ads/zzza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzza;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public final isLoading()Z
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadi:Lcom/google/android/gms/internal/ads/zzza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzza;->isLoading()Z

    move-result v0

    return v0
.end method

.method public final loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadi:Lcom/google/android/gms/internal/ads/zzza;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzdr()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzza;->zza(Lcom/google/android/gms/internal/ads/zzyw;)V

    return-void
.end method

.method public final setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .registers 3

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadi:Lcom/google/android/gms/internal/ads/zzza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzza;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method public final setAdUnitId(Ljava/lang/String;)V
    .registers 3

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadi:Lcom/google/android/gms/internal/ads/zzza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzza;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method

.method public final setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .registers 3

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadi:Lcom/google/android/gms/internal/ads/zzza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzza;->setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    return-void
.end method

.method public final setCorrelator(Lcom/google/android/gms/ads/Correlator;)V
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public final setImmersiveMode(Z)V
    .registers 3

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadi:Lcom/google/android/gms/internal/ads/zzza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzza;->setImmersiveMode(Z)V

    return-void
.end method

.method public final setOnCustomRenderedAdLoadedListener(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V
    .registers 3

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadi:Lcom/google/android/gms/internal/ads/zzza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzza;->setOnCustomRenderedAdLoadedListener(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    return-void
.end method

.method public final show()V
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->zzadi:Lcom/google/android/gms/internal/ads/zzza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzza;->show()V

    return-void
.end method
