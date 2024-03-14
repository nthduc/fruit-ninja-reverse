.class public Lcom/applovin/impl/sdk/s;
.super Lcom/applovin/impl/sdk/t;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/t;-><init>(Lcom/applovin/impl/sdk/j;)V

    return-void
.end method


# virtual methods
.method a(Lcom/applovin/impl/sdk/ad/j;)Lcom/applovin/impl/sdk/ad/d;
    .registers 2

    check-cast p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->getAdZone()Lcom/applovin/impl/sdk/ad/d;

    move-result-object p1

    return-object p1
.end method

.method a(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/d/a;
    .registers 3

    new-instance p1, Lcom/applovin/impl/sdk/d/n;

    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->a:Lcom/applovin/impl/sdk/j;

    invoke-direct {p1, v0, p0}, Lcom/applovin/impl/sdk/d/n;-><init>(Lcom/applovin/impl/sdk/j;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V

    return-object p1
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ad/d;->g(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/s;->h(Lcom/applovin/impl/sdk/ad/d;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/ad/d;I)V
    .registers 3

    return-void
.end method

.method a(Ljava/lang/Object;Lcom/applovin/impl/sdk/ad/d;I)V
    .registers 4

    check-cast p1, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    invoke-interface {p1, p3}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsFailedToLoad(I)V

    return-void
.end method

.method a(Ljava/lang/Object;Lcom/applovin/impl/sdk/ad/j;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/applovin/nativeAds/AppLovinNativeAd;

    check-cast p2, Lcom/applovin/nativeAds/AppLovinNativeAd;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    check-cast p1, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    invoke-interface {p1, p2}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsLoaded(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/util/LinkedHashSet;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/t;->a(Ljava/util/LinkedHashSet;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/sdk/AppLovinAdLoadListener;)Z
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/applovin/impl/sdk/t;->a(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/sdk/AppLovinAdLoadListener;)Z

    move-result p1

    return p1
.end method

.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic b(Lcom/applovin/impl/sdk/ad/d;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/applovin/impl/sdk/t;->b(Lcom/applovin/impl/sdk/ad/d;I)V

    return-void
.end method

.method public bridge synthetic b(Lcom/applovin/impl/sdk/ad/d;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/t;->b(Lcom/applovin/impl/sdk/ad/d;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic c(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/ad/j;
    .registers 2

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/t;->c(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/ad/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/ad/j;
    .registers 2

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/t;->d(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/ad/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/ad/j;
    .registers 2

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/t;->e(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/ad/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Lcom/applovin/impl/sdk/ad/d;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/t;->f(Lcom/applovin/impl/sdk/ad/d;)V

    return-void
.end method

.method public failedToReceiveAd(I)V
    .registers 2

    return-void
.end method

.method public bridge synthetic g(Lcom/applovin/impl/sdk/ad/d;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/t;->g(Lcom/applovin/impl/sdk/ad/d;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic h(Lcom/applovin/impl/sdk/ad/d;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/t;->h(Lcom/applovin/impl/sdk/ad/d;)V

    return-void
.end method

.method public bridge synthetic i(Lcom/applovin/impl/sdk/ad/d;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/t;->i(Lcom/applovin/impl/sdk/ad/d;)V

    return-void
.end method

.method public onNativeAdsFailedToLoad(I)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ad/d;->g(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/sdk/s;->c(Lcom/applovin/impl/sdk/ad/d;I)V

    return-void
.end method

.method public onNativeAdsLoaded(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/nativeAds/AppLovinNativeAd;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/nativeAds/AppLovinNativeAd;

    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->bB:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->p()Lcom/applovin/impl/sdk/NativeAdServiceImpl;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/s$1;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/s$1;-><init>(Lcom/applovin/impl/sdk/s;)V

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/NativeAdServiceImpl;->precacheResources(Lcom/applovin/nativeAds/AppLovinNativeAd;Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;)V

    goto :goto_2b

    :cond_26
    check-cast p1, Lcom/applovin/impl/sdk/ad/j;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/s;->b(Lcom/applovin/impl/sdk/ad/j;)V

    :goto_2b
    return-void
.end method
