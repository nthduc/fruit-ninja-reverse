.class public Lcom/applovin/impl/sdk/d/e;
.super Lcom/applovin/impl/sdk/d/f;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/applovin/impl/sdk/j;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/ad/NativeAdImpl;",
            ">;",
            "Lcom/applovin/impl/sdk/j;",
            "Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;",
            ")V"
        }
    .end annotation

    const-string v0, "TaskCacheNativeAdImages"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/applovin/impl/sdk/d/f;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/j;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/applovin/impl/sdk/j;Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/ad/NativeAdImpl;",
            ">;",
            "Lcom/applovin/impl/sdk/j;",
            "Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;",
            ")V"
        }
    .end annotation

    const-string v0, "TaskCacheNativeAdImages"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/applovin/impl/sdk/d/f;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/j;Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;)V

    return-void
.end method

.method private b(Lcom/applovin/impl/sdk/ad/NativeAdImpl;)Z
    .registers 3

    const-string v0, "Unable to cache image resource"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/e;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/e;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    const/16 v0, -0x67

    goto :goto_14

    :cond_12
    const/16 v0, -0xc9

    :goto_14
    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/d/e;->a(Lcom/applovin/impl/sdk/ad/NativeAdImpl;I)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected a(Lcom/applovin/impl/sdk/ad/NativeAdImpl;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/e;->a:Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/e;->a:Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;

    invoke-interface {v0, p1}, Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;->onNativeAdImagesPrecached(Lcom/applovin/nativeAds/AppLovinNativeAd;)V

    :cond_9
    return-void
.end method

.method protected a(Lcom/applovin/impl/sdk/ad/NativeAdImpl;I)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/e;->a:Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/e;->a:Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;

    invoke-interface {v0, p1, p2}, Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;->onNativeAdImagePrecachingFailed(Lcom/applovin/nativeAds/AppLovinNativeAd;I)V

    :cond_9
    return-void
.end method

.method protected a(Lcom/applovin/impl/sdk/ad/NativeAdImpl;Lcom/applovin/impl/sdk/o;)Z
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Beginning native ad image caching for #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->getAdId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/e;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->bC:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->getSourceIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->getResourcePrefixes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, p2, v1}, Lcom/applovin/impl/sdk/d/e;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/o;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->setIconUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->getSourceImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->getResourcePrefixes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, p2, v1}, Lcom/applovin/impl/sdk/d/e;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/o;Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4b

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->setImageUrl(Ljava/lang/String;)V

    goto :goto_5a

    :cond_4b
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/d/e;->b(Lcom/applovin/impl/sdk/ad/NativeAdImpl;)Z

    move-result p1

    return p1

    :cond_50
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/d/e;->b(Lcom/applovin/impl/sdk/ad/NativeAdImpl;)Z

    move-result p1

    return p1

    :cond_55
    const-string p1, "Resource caching is disabled, skipping..."

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/d/e;->a(Ljava/lang/String;)V

    :goto_5a
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic run()V
    .registers 1

    invoke-super {p0}, Lcom/applovin/impl/sdk/d/f;->run()V

    return-void
.end method
