.class Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;
.super Ljava/lang/Object;
.source "AppLovinAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/applovin/AppLovinAdapter;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

.field final synthetic val$banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field final synthetic val$bannerSize:Lcom/applovin/sdk/AppLovinAdSize;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

.field final synthetic val$zoneId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/applovin/sdk/AppLovinAdSize;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
    .registers 6

    .line 774
    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;->val$zoneId:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;->val$banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iput-object p4, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;->val$bannerSize:Lcom/applovin/sdk/AppLovinAdSize;

    iput-object p5, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 780
    :try_start_0
    new-instance v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$ALBannerListener;

    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    iget-object v2, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;->val$zoneId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$ALBannerListener;-><init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Ljava/lang/String;)V

    .line 785
    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;->val$zoneId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 786
    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    iget-object v2, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;->val$banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;->val$bannerSize:Lcom/applovin/sdk/AppLovinAdSize;

    iget-object v4, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;->val$banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getActivity()Landroid/app/Activity;

    move-result-object v4

    # invokes: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->calcLayoutParams(Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/applovin/sdk/AppLovinAdSize;Landroid/app/Activity;)Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v1, v2, v3, v4}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$1000(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/applovin/sdk/AppLovinAdSize;Landroid/app/Activity;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 787
    new-instance v2, Lcom/applovin/adview/AppLovinAdView;

    # getter for: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;
    invoke-static {}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$1100()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;->val$bannerSize:Lcom/applovin/sdk/AppLovinAdSize;

    iget-object v5, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;->val$banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/applovin/adview/AppLovinAdView;-><init>(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Landroid/content/Context;)V

    goto :goto_58

    .line 789
    :cond_37
    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    sget-object v2, Lcom/ironsource/mediationsdk/ISBannerSize;->BANNER:Lcom/ironsource/mediationsdk/ISBannerSize;

    sget-object v3, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    iget-object v4, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;->val$banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getActivity()Landroid/app/Activity;

    move-result-object v4

    # invokes: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->calcLayoutParams(Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/applovin/sdk/AppLovinAdSize;Landroid/app/Activity;)Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v1, v2, v3, v4}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$1000(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/applovin/sdk/AppLovinAdSize;Landroid/app/Activity;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 790
    new-instance v2, Lcom/applovin/adview/AppLovinAdView;

    # getter for: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;
    invoke-static {}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$1100()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v3

    sget-object v4, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    iget-object v5, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;->val$banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/applovin/adview/AppLovinAdView;-><init>(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Landroid/content/Context;)V

    .line 794
    :goto_58
    invoke-virtual {v2, v0}, Lcom/applovin/adview/AppLovinAdView;->setAdLoadListener(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 795
    invoke-virtual {v2, v0}, Lcom/applovin/adview/AppLovinAdView;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 796
    invoke-virtual {v2, v0}, Lcom/applovin/adview/AppLovinAdView;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 797
    invoke-virtual {v2, v0}, Lcom/applovin/adview/AppLovinAdView;->setAdViewEventListener(Lcom/applovin/adview/AppLovinAdViewEventListener;)V

    .line 800
    iget-object v3, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    # getter for: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$1200(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;->val$zoneId:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    iget-object v3, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    # getter for: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$1300(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;->val$zoneId:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    # getter for: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToAppLovinBannerListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$1400(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;->val$zoneId:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;->val$zoneId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9b

    .line 807
    # getter for: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mAppLovinSdk:Lcom/applovin/sdk/AppLovinSdk;
    invoke-static {}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$1100()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;->val$zoneId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAdForZoneId(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_c7

    .line 812
    :cond_9b
    invoke-virtual {v2}, Lcom/applovin/adview/AppLovinAdView;->loadNextAd()V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9e} :catch_9f

    goto :goto_c7

    :catch_9f
    move-exception v0

    .line 816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-virtual {v2}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " loadBanner exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 817
    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$15;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-interface {v1, v0}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_c7
    return-void
.end method
