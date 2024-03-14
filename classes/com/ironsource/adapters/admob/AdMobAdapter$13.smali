.class Lcom/ironsource/adapters/admob/AdMobAdapter$13;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;->reloadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

.field final synthetic val$adUnitId:Ljava/lang/String;

.field final synthetic val$config:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 4

    .line 573
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$13;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$13;->val$config:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$13;->val$adUnitId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 576
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$13;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    # getter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$1600(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$13;->val$config:Lorg/json/JSONObject;

    const-string v2, "adUnitId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 577
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$13;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    # invokes: Lcom/ironsource/adapters/admob/AdMobAdapter;->createAdRequest()Lcom/google/android/gms/ads/AdRequest;
    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$1300(Lcom/ironsource/adapters/admob/AdMobAdapter;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 578
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$13;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    # getter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$1600(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$13;->val$config:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/AdView;

    if-eqz v1, :cond_32

    .line 580
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_74

    .line 582
    :cond_32
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$13;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    # getter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdUnitIdToBannerListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$1400(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$13;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 583
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$13;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    # getter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdUnitIdToBannerListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$1400(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$13;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    sget v2, Lcom/ironsource/adapters/admob/AdMobAdapter;->BN_FAILED_TO_RELOAD_ERROR_CODE:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$13;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-virtual {v4}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "reloadBanner missing banner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$13;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_74
    :goto_74
    return-void
.end method
