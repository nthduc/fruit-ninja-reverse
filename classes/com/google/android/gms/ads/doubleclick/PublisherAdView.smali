.class public final Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
.super Landroid/view/ViewGroup;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final zzaea:Lcom/google/android/gms/internal/ads/zzyy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzyy;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzyy;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zzaea:Lcom/google/android/gms/internal/ads/zzyy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzyy;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzyy;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V

    iput-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zzaea:Lcom/google/android/gms/internal/ads/zzyy;

    const-string p2, "Context cannot be null"

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 8
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    new-instance p1, Lcom/google/android/gms/internal/ads/zzyy;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzyy;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V

    iput-object p1, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zzaea:Lcom/google/android/gms/internal/ads/zzyy;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zzaea:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyy;->destroy()V

    return-void
.end method

.method public final getAdListener()Lcom/google/android/gms/ads/AdListener;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zzaea:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyy;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v0

    return-object v0
.end method

.method public final getAdSize()Lcom/google/android/gms/ads/AdSize;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zzaea:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyy;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public final getAdSizes()[Lcom/google/android/gms/ads/AdSize;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zzaea:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyy;->getAdSizes()[Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zzaea:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyy;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zzaea:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyy;->getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    move-result-object v0

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zzaea:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyy;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOnCustomRenderedAdLoadedListener()Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zzaea:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyy;->getOnCustomRenderedAdLoadedListener()Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    move-result-object v0

    return-object v0
.end method

.method public final getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zzaea:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyy;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/ads/VideoController;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zzaea:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyy;->getVideoController()Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zzaea:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyy;->getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;

    move-result-object v0

    return-object v0
.end method

.method public final isLoading()Z
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zzaea:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyy;->isLoading()Z

    move-result v0

    return v0
.end method

.method public final loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zzaea:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzdr()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->zza(Lcom/google/android/gms/internal/ads/zzyw;)V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .registers 8

    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_24

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p4, p2

    sub-int/2addr p4, v0

    .line 54
    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p3

    sub-int/2addr p5, v1

    .line 55
    div-int/lit8 p5, p5, 0x2

    add-int/2addr v0, p4

    add-int/2addr v1, p5

    .line 56
    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_24
    return-void
.end method

.method protected final onMeasure(II)V
    .registers 7

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 61
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1b

    .line 62
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->measureChild(Landroid/view/View;II)V

    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 64
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_39

    :cond_1b
    const/4 v1, 0x0

    .line 66
    :try_start_1c
    invoke-virtual {p0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v1
    :try_end_20
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_20} :catch_21

    goto :goto_27

    :catch_21
    move-exception v2

    const-string v3, "Unable to retrieve ad size."

    .line 69
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_27
    if-eqz v1, :cond_38

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v2

    .line 73
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v0

    move v1, v0

    move v0, v2

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    .line 74
    :goto_39
    invoke-virtual {p0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 77
    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-static {v1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setMeasuredDimension(II)V

    return-void
.end method

.method public final pause()V
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zzaea:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyy;->pause()V

    return-void
.end method

.method public final recordManualImpression()V
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zzaea:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyy;->recordManualImpression()V

    return-void
.end method

.method public final resume()V
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zzaea:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyy;->resume()V

    return-void
.end method

.method public final setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .registers 3

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zzaea:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method public final varargs setAdSizes([Lcom/google/android/gms/ads/AdSize;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 35
    array-length v0, p1

    if-lez v0, :cond_b

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zzaea:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->zza([Lcom/google/android/gms/ads/AdSize;)V

    return-void

    .line 36
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The supported ad sizes must contain at least one valid ad size."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setAdUnitId(Ljava/lang/String;)V
    .registers 3

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zzaea:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method

.method public final setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .registers 3

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zzaea:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

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

.method public final setManualImpressionsEnabled(Z)V
    .registers 3

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zzaea:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->setManualImpressionsEnabled(Z)V

    return-void
.end method

.method public final setOnCustomRenderedAdLoadedListener(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zzaea:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->setOnCustomRenderedAdLoadedListener(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    return-void
.end method

.method public final setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)V
    .registers 3

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zzaea:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxc;)Z
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->zzaea:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->zza(Lcom/google/android/gms/internal/ads/zzxc;)Z

    move-result p1

    return p1
.end method
