.class public Lcom/applovin/impl/sdk/c;
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

    check-cast p1, Lcom/applovin/impl/sdk/AppLovinAdBase;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getAdZone()Lcom/applovin/impl/sdk/ad/d;

    move-result-object p1

    return-object p1
.end method

.method a(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/d/a;
    .registers 4

    new-instance v0, Lcom/applovin/impl/sdk/d/m;

    iget-object v1, p0, Lcom/applovin/impl/sdk/c;->a:Lcom/applovin/impl/sdk/j;

    invoke-direct {v0, p1, p0, v1}, Lcom/applovin/impl/sdk/d/m;-><init>(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/d/m;->a(Z)V

    return-object v0
.end method

.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/c;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ad/d;->a(Lcom/applovin/impl/sdk/j;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/d;->e()Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_a

    :cond_1d
    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/c;->h(Lcom/applovin/impl/sdk/ad/d;)V

    goto :goto_a

    :cond_21
    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/ad/d;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/sdk/c;->c(Lcom/applovin/impl/sdk/ad/d;I)V

    return-void
.end method

.method a(Ljava/lang/Object;Lcom/applovin/impl/sdk/ad/d;I)V
    .registers 5

    instance-of v0, p1, Lcom/applovin/impl/sdk/n;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/sdk/n;

    invoke-interface {v0, p2, p3}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/ad/d;I)V

    :cond_a
    instance-of p2, p1, Lcom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz p2, :cond_13

    check-cast p1, Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-interface {p1, p3}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    :cond_13
    return-void
.end method

.method a(Ljava/lang/Object;Lcom/applovin/impl/sdk/ad/j;)V
    .registers 3

    check-cast p1, Lcom/applovin/sdk/AppLovinAdLoadListener;

    check-cast p2, Lcom/applovin/sdk/AppLovinAd;

    invoke-interface {p1, p2}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

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

    check-cast p1, Lcom/applovin/impl/sdk/ad/j;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/c;->b(Lcom/applovin/impl/sdk/ad/j;)V

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
    .registers 2

    return-void
.end method

.method public onNativeAdsLoaded(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/nativeAds/AppLovinNativeAd;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
