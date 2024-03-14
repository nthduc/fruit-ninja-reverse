.class public Lcom/applovin/impl/sdk/d/n;
.super Lcom/applovin/impl/sdk/d/m;


# instance fields
.field private final a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/j;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V
    .registers 6

    invoke-static {p1}, Lcom/applovin/impl/sdk/ad/d;->g(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "TaskFetchNextNativeAd"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/applovin/impl/sdk/d/m;-><init>(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/sdk/AppLovinAdLoadListener;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iput-object p2, p0, Lcom/applovin/impl/sdk/d/n;->a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/d/a;
    .registers 5

    new-instance v0, Lcom/applovin/impl/sdk/d/w;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/n;->b:Lcom/applovin/impl/sdk/j;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/n;->a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    invoke-direct {v0, p1, v1, v2}, Lcom/applovin/impl/sdk/d/w;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V

    return-object v0
.end method

.method protected a(I)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/n;->a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsFailedToLoad(I)V

    :cond_7
    return-void
.end method

.method protected c()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/n;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->aG:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "4.0/nad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/n;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->aH:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "4.0/nad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
