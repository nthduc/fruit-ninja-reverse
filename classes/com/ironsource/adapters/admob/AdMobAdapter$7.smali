.class Lcom/ironsource/adapters/admob/AdMobAdapter$7;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;->initInterstitial(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

.field final synthetic val$adUnitId:Ljava/lang/String;

.field final synthetic val$config:Lorg/json/JSONObject;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;Lorg/json/JSONObject;)V
    .registers 5

    .line 360
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$adUnitId:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    iput-object p4, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$config:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 363
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    # getter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdUnitIdToInterstitialListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$800(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$adUnitId:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$config:Lorg/json/JSONObject;

    const-string v2, "appId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/ironsource/adapters/admob/AdMobAdapter;->initSDK(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$300(Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;)V

    .line 365
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    .line 366
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    # getter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToInterstitialAd:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$900(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$config:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$adUnitId:Ljava/lang/String;

    # invokes: Lcom/ironsource/adapters/admob/AdMobAdapter;->createInterstitialAdListener(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/ads/AdListener;
    invoke-static {v1, v2, v3}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$1000(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/ads/AdListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 369
    # getter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->mDidInitSdkFinished:Z
    invoke-static {}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$000()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 370
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$7;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitSuccess()V

    :cond_4f
    return-void
.end method
