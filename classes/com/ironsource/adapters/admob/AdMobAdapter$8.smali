.class Lcom/ironsource/adapters/admob/AdMobAdapter$8;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;->loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

.field final synthetic val$config:Lorg/json/JSONObject;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 4

    .line 381
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$8;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$8;->val$config:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$8;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 384
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$8;->val$config:Lorg/json/JSONObject;

    const-string v1, "adUnitId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adUnitId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$8;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    # getter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$1100(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$8;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$8;->val$config:Lorg/json/JSONObject;

    # invokes: Lcom/ironsource/adapters/admob/AdMobAdapter;->getInterstitialAd(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/InterstitialAd;
    invoke-static {v1, v2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$1200(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v1

    if-nez v1, :cond_44

    .line 389
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$8;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz v0, :cond_43

    const-string v1, "invalid adUnitId"

    .line 390
    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_43
    return-void

    .line 394
    :cond_44
    invoke-virtual {v1}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 395
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$8;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    # getter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdUnitIdToInterstitialListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$800(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 396
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$8;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    # getter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->mInterstitialAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$1100(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$8;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    # getter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdUnitIdToInterstitialListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$800(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdReady()V

    goto :goto_8a

    .line 399
    :cond_74
    invoke-virtual {v1}, Lcom/google/android/gms/ads/InterstitialAd;->isLoading()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 400
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v2, "loadAd"

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$8;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    # invokes: Lcom/ironsource/adapters/admob/AdMobAdapter;->createAdRequest()Lcom/google/android/gms/ads/AdRequest;
    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$1300(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    :cond_8a
    :goto_8a
    return-void
.end method
