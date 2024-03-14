.class Lcom/applovin/impl/sdk/s$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/s;->onNativeAdsLoaded(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/s;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/s;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/s$1;->a:Lcom/applovin/impl/sdk/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeAdImagePrecachingFailed(Lcom/applovin/nativeAds/AppLovinNativeAd;I)V
    .registers 4

    iget-object p1, p0, Lcom/applovin/impl/sdk/s$1;->a:Lcom/applovin/impl/sdk/s;

    iget-object v0, p1, Lcom/applovin/impl/sdk/s;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ad/d;->g(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/s;->c(Lcom/applovin/impl/sdk/ad/d;I)V

    return-void
.end method

.method public onNativeAdImagesPrecached(Lcom/applovin/nativeAds/AppLovinNativeAd;)V
    .registers 3

    invoke-interface {p1}, Lcom/applovin/nativeAds/AppLovinNativeAd;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/applovin/impl/sdk/s$1;->a:Lcom/applovin/impl/sdk/s;

    check-cast p1, Lcom/applovin/impl/sdk/ad/j;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/s;->b(Lcom/applovin/impl/sdk/ad/j;)V

    :cond_11
    return-void
.end method

.method public onNativeAdVideoPrecachingFailed(Lcom/applovin/nativeAds/AppLovinNativeAd;I)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/s$1;->a:Lcom/applovin/impl/sdk/s;

    iget-object v0, v0, Lcom/applovin/impl/sdk/s;->b:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video failed to cache during native ad preload. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "NativeAdPreloadManager"

    invoke-virtual {v0, v1, p2}, Lcom/applovin/impl/sdk/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/applovin/impl/sdk/s$1;->a:Lcom/applovin/impl/sdk/s;

    check-cast p1, Lcom/applovin/impl/sdk/ad/j;

    invoke-virtual {p2, p1}, Lcom/applovin/impl/sdk/s;->b(Lcom/applovin/impl/sdk/ad/j;)V

    return-void
.end method

.method public onNativeAdVideoPreceached(Lcom/applovin/nativeAds/AppLovinNativeAd;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/s$1;->a:Lcom/applovin/impl/sdk/s;

    check-cast p1, Lcom/applovin/impl/sdk/ad/j;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/s;->b(Lcom/applovin/impl/sdk/ad/j;)V

    return-void
.end method
