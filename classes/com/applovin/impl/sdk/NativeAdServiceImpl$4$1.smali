.class Lcom/applovin/impl/sdk/NativeAdServiceImpl$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/NativeAdServiceImpl$4;->onNativeAdsLoaded(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/NativeAdServiceImpl$4;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/NativeAdServiceImpl$4;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/NativeAdServiceImpl$4$1;->a:Lcom/applovin/impl/sdk/NativeAdServiceImpl$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeAdsFailedToLoad(I)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdServiceImpl$4$1;->a:Lcom/applovin/impl/sdk/NativeAdServiceImpl$4;

    iget-object v0, v0, Lcom/applovin/impl/sdk/NativeAdServiceImpl$4;->b:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdServiceImpl$4$1;->a:Lcom/applovin/impl/sdk/NativeAdServiceImpl$4;

    iget-object v0, v0, Lcom/applovin/impl/sdk/NativeAdServiceImpl$4;->b:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    invoke-interface {v0, p1}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsFailedToLoad(I)V

    :cond_d
    return-void
.end method

.method public onNativeAdsLoaded(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/nativeAds/AppLovinNativeAd;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdServiceImpl$4$1;->a:Lcom/applovin/impl/sdk/NativeAdServiceImpl$4;

    iget-object v0, v0, Lcom/applovin/impl/sdk/NativeAdServiceImpl$4;->b:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/applovin/impl/sdk/NativeAdServiceImpl$4$1;->a:Lcom/applovin/impl/sdk/NativeAdServiceImpl$4;

    iget-object v0, v0, Lcom/applovin/impl/sdk/NativeAdServiceImpl$4;->b:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    invoke-interface {v0, p1}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsLoaded(Ljava/util/List;)V

    :cond_d
    return-void
.end method
