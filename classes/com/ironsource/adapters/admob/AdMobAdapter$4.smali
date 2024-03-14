.class Lcom/ironsource/adapters/admob/AdMobAdapter$4;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;->showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

.field final synthetic val$config:Lorg/json/JSONObject;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 4

    .line 222
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->val$config:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 225
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->val$config:Lorg/json/JSONObject;

    const-string v1, "adUnitId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    # getter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToRewardedVideoAd:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$500(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 227
    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adUnitId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz v2, :cond_66

    .line 228
    invoke-virtual {v2}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->isLoaded()Z

    move-result v4

    if-eqz v4, :cond_66

    .line 229
    iget-object v4, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    # getter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->mRewardedVideoAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$600(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    # getter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToRewardedVideoAd:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$500(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v4, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iget-object v5, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->val$config:Lorg/json/JSONObject;

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/ironsource/adapters/admob/AdMobAdapter;->createRewardedAdCallback(Ljava/lang/String;)Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;
    invoke-static {v4, v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$700(Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;)Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;)V

    .line 232
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0, v3}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_91

    .line 235
    :cond_66
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    sget v4, Lcom/ironsource/adapters/admob/AdMobAdapter;->RV_NOT_READY_ERROR_CODE:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-virtual {v6}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "showRewardedVideo rv not ready "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 236
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$4;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0, v3}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    :goto_91
    return-void
.end method
