.class Lcom/google/android/gms/ads/BaseAdView;
.super Landroid/view/ViewGroup;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field protected final zzadh:Lcom/google/android/gms/internal/ads/zzyy;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzyy;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzyy;-><init>(Landroid/view/ViewGroup;I)V

    iput-object p1, p0, Lcom/google/android/gms/ads/BaseAdView;->zzadh:Lcom/google/android/gms/internal/ads/zzyy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzyy;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzyy;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZI)V

    iput-object p1, p0, Lcom/google/android/gms/ads/BaseAdView;->zzadh:Lcom/google/android/gms/internal/ads/zzyy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzyy;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzyy;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZI)V

    iput-object p1, p0, Lcom/google/android/gms/ads/BaseAdView;->zzadh:Lcom/google/android/gms/internal/ads/zzyy;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzadh:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyy;->destroy()V

    return-void
.end method

.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzadh:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyy;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v0

    return-object v0
.end method

.method public getAdSize()Lcom/google/android/gms/ads/AdSize;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzadh:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyy;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzadh:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyy;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzadh:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyy;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzadh:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyy;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzadh:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyy;->isLoading()Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzadh:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zzdr()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->zza(Lcom/google/android/gms/internal/ads/zzyw;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/BaseAdView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_24

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p4, p2

    sub-int/2addr p4, v0

    .line 41
    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p3

    sub-int/2addr p5, v1

    .line 42
    div-int/lit8 p5, p5, 0x2

    add-int/2addr v0, p4

    add-int/2addr v1, p5

    .line 43
    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_24
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/BaseAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 48
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1b

    .line 49
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/ads/BaseAdView;->measureChild(Landroid/view/View;II)V

    .line 50
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 51
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_39

    :cond_1b
    const/4 v1, 0x0

    .line 53
    :try_start_1c
    invoke-virtual {p0}, Lcom/google/android/gms/ads/BaseAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v1
    :try_end_20
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_20} :catch_21

    goto :goto_27

    :catch_21
    move-exception v2

    const-string v3, "Unable to retrieve ad size."

    .line 56
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_27
    if-eqz v1, :cond_38

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/ads/BaseAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 59
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v2

    .line 60
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v0

    move v1, v0

    move v0, v2

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    .line 61
    :goto_39
    invoke-virtual {p0}, Lcom/google/android/gms/ads/BaseAdView;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/ads/BaseAdView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 64
    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-static {v1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/ads/BaseAdView;->setMeasuredDimension(II)V

    return-void
.end method

.method public pause()V
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzadh:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyy;->pause()V

    return-void
.end method

.method public resume()V
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzadh:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyy;->resume()V

    return-void
.end method

.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .registers 4

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzadh:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    if-nez p1, :cond_13

    .line 24
    iget-object p1, p0, Lcom/google/android/gms/ads/BaseAdView;->zzadh:Lcom/google/android/gms/internal/ads/zzyy;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzyy;->zza(Lcom/google/android/gms/internal/ads/zzux;)V

    .line 25
    iget-object p1, p0, Lcom/google/android/gms/ads/BaseAdView;->zzadh:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzyy;->setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    return-void

    .line 27
    :cond_13
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzux;

    if-eqz v0, :cond_1f

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzadh:Lcom/google/android/gms/internal/ads/zzyy;

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzux;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzyy;->zza(Lcom/google/android/gms/internal/ads/zzux;)V

    .line 29
    :cond_1f
    instance-of v0, p1, Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    if-eqz v0, :cond_2a

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzadh:Lcom/google/android/gms/internal/ads/zzyy;

    check-cast p1, Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    :cond_2a
    return-void
.end method

.method public setAdSize(Lcom/google/android/gms/ads/AdSize;)V
    .registers 5

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzadh:Lcom/google/android/gms/internal/ads/zzyy;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/ads/AdSize;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzyy;->setAdSizes([Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .registers 3

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzadh:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method

.method public setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/ads/OnPaidEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->zzadh:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyy;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    return-void
.end method
