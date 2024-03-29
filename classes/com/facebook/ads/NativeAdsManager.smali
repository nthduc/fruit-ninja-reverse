.class public Lcom/facebook/ads/NativeAdsManager;
.super Ljava/lang/Object;
.source "NativeAdsManager.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/NativeAdsManager$Listener;
    }
.end annotation


# instance fields
.field private final mNativeAdsManagerApi:Lcom/facebook/ads/internal/api/NativeAdsManagerApi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Context can not be null"

    .line 45
    invoke-static {p1, v0}, Lcom/facebook/ads/internal/util/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, -0x1

    if-le p3, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    const-string v1, "Number of requested ads should be not be negative"

    .line 46
    invoke-static {v0, v1}, Lcom/facebook/ads/internal/util/common/Preconditions;->checkIsTrue(ZLjava/lang/String;)V

    .line 50
    invoke-static {p1}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    .line 51
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createNativeAdsManagerApi(Landroid/content/Context;Ljava/lang/String;I)Lcom/facebook/ads/internal/api/NativeAdsManagerApi;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/NativeAdsManager;->mNativeAdsManagerApi:Lcom/facebook/ads/internal/api/NativeAdsManagerApi;

    return-void
.end method


# virtual methods
.method public disableAutoRefresh()V
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->mNativeAdsManagerApi:Lcom/facebook/ads/internal/api/NativeAdsManagerApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdsManagerApi;->disableAutoRefresh()V

    return-void
.end method

.method public getUniqueNativeAdCount()I
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->mNativeAdsManagerApi:Lcom/facebook/ads/internal/api/NativeAdsManagerApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdsManagerApi;->getUniqueNativeAdCount()I

    move-result v0

    return v0
.end method

.method public isLoaded()Z
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->mNativeAdsManagerApi:Lcom/facebook/ads/internal/api/NativeAdsManagerApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdsManagerApi;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public loadAds()V
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->mNativeAdsManagerApi:Lcom/facebook/ads/internal/api/NativeAdsManagerApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdsManagerApi;->loadAds()V

    return-void
.end method

.method public loadAds(Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)V
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->mNativeAdsManagerApi:Lcom/facebook/ads/internal/api/NativeAdsManagerApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/NativeAdsManagerApi;->loadAds(Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)V

    return-void
.end method

.method public nextNativeAd()Lcom/facebook/ads/NativeAd;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->mNativeAdsManagerApi:Lcom/facebook/ads/internal/api/NativeAdsManagerApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdsManagerApi;->nextNativeAd()Lcom/facebook/ads/NativeAd;

    move-result-object v0

    return-object v0
.end method

.method public setExtraHints(Ljava/lang/String;)V
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->mNativeAdsManagerApi:Lcom/facebook/ads/internal/api/NativeAdsManagerApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/NativeAdsManagerApi;->setExtraHints(Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/facebook/ads/NativeAdsManager$Listener;)V
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->mNativeAdsManagerApi:Lcom/facebook/ads/internal/api/NativeAdsManagerApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/NativeAdsManagerApi;->setListener(Lcom/facebook/ads/NativeAdsManager$Listener;)V

    return-void
.end method
