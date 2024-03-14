.class Lcom/ironsource/adapters/admob/AdMobAdapter$5;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;
.source "AdMobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;->createRewardedAdCallback(Ljava/lang/String;)Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

.field final synthetic val$adUnitId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;)V
    .registers 3

    .line 256
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->val$adUnitId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewardedAdClosed()V
    .registers 4

    .line 265
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adUnitId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    # getter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdUnitIdToRewardedVideoListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 267
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    # getter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdUnitIdToRewardedVideoListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdClosed()V

    :cond_37
    return-void
.end method

.method public onRewardedAdFailedToShow(Lcom/google/android/gms/ads/AdError;)V
    .registers 7

    .line 280
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adUnitId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    if-eqz p1, :cond_5a

    .line 285
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result v0

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCause()Lcom/google/android/gms/ads/AdError;

    move-result-object v2

    if-eqz v2, :cond_6d

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Caused by - "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCause()Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6d

    :cond_5a
    const/16 v0, 0x1fe

    .line 293
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rewarded video failed to show (AdError is null) Error code - "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 295
    :cond_6d
    :goto_6d
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adapterError = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 297
    iget-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    # getter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdUnitIdToRewardedVideoListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_dd

    .line 298
    iget-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    # getter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdUnitIdToRewardedVideoListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-virtual {v4}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "onRewardedAdFailedToShow "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 299
    iget-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    # getter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdUnitIdToRewardedVideoListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    :cond_dd
    return-void
.end method

.method public onRewardedAdOpened()V
    .registers 4

    .line 258
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adUnitId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    # getter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdUnitIdToRewardedVideoListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 260
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    # getter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdUnitIdToRewardedVideoListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdOpened()V

    :cond_37
    return-void
.end method

.method public onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/ads/rewarded/RewardItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 273
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adUnitId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 274
    iget-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    # getter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdUnitIdToRewardedVideoListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 275
    iget-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    # getter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdUnitIdToRewardedVideoListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$5;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdRewarded()V

    :cond_37
    return-void
.end method
