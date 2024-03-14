.class Lcom/ironsource/adapters/facebook/FacebookAdapter$3;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/facebook/FacebookAdapter;->loadInterstitial(Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

.field final synthetic val$placement:Ljava/lang/String;

.field final synthetic val$serverData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 5

    .line 573
    iput-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->val$placement:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->val$serverData:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    # getter for: Lcom/ironsource/adapters/facebook/FacebookAdapter;->mISPlacementToAdMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$700(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->val$placement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 579
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroying old placement = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->val$placement:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    # getter for: Lcom/ironsource/adapters/facebook/FacebookAdapter;->mISPlacementToAdMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$700(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->val$placement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->destroy()V

    .line 581
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    # getter for: Lcom/ironsource/adapters/facebook/FacebookAdapter;->mISPlacementToAdMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$700(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->val$placement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    :cond_42
    new-instance v0, Lcom/facebook/ads/InterstitialAd;

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->val$placement:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 586
    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->buildLoadAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object v1

    .line 587
    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    # getter for: Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInterstitialFacebookFlags:Ljava/util/EnumSet;
    invoke-static {v2}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$800(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->withCacheFlags(Ljava/util/EnumSet;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    .line 588
    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    # getter for: Lcom/ironsource/adapters/facebook/FacebookAdapter;->mISPlacementToFBListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$900(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->val$placement:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/InterstitialAdListener;

    invoke-interface {v1, v2}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/InterstitialAdListener;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    .line 591
    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->val$serverData:Ljava/lang/String;

    if-eqz v2, :cond_78

    .line 592
    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->val$serverData:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->withBid(Ljava/lang/String;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    .line 595
    :cond_78
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loading placement = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->val$placement:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with facebook flags = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    # getter for: Lcom/ironsource/adapters/facebook/FacebookAdapter;->mInterstitialFacebookFlags:Ljava/util/EnumSet;
    invoke-static {v4}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$800(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/EnumSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/EnumSet;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 597
    invoke-interface {v1}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->build()Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/InterstitialAd;->loadAd(Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;)V

    .line 598
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    # getter for: Lcom/ironsource/adapters/facebook/FacebookAdapter;->mISPlacementToAdMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$700(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->val$placement:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b4} :catch_b5

    goto :goto_c3

    :catch_b5
    move-exception v0

    .line 601
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$3;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_c3
    return-void
.end method
