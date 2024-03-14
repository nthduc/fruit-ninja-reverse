.class Lcom/ironsource/adapters/facebook/FacebookAdapter$FacebookRewardedVideoAdListener;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Lcom/facebook/ads/RewardedVideoAdExtendedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/facebook/FacebookAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FacebookRewardedVideoAdListener"
.end annotation


# instance fields
.field private mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

.field private mPlacementId:Ljava/lang/String;

.field final synthetic this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/facebook/FacebookAdapter;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;Ljava/lang/String;)V
    .registers 4

    .line 432
    iput-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$FacebookRewardedVideoAdListener;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    iput-object p3, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$FacebookRewardedVideoAdListener;->mPlacementId:Ljava/lang/String;

    .line 434
    iput-object p2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$FacebookRewardedVideoAdListener;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .registers 4

    .line 497
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPlacementId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$FacebookRewardedVideoAdListener;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 498
    iget-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$FacebookRewardedVideoAdListener;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdClicked()V

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .registers 4

    .line 490
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPlacementId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$FacebookRewardedVideoAdListener;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 491
    iget-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$FacebookRewardedVideoAdListener;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    .line 492
    iget-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$FacebookRewardedVideoAdListener;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    # getter for: Lcom/ironsource/adapters/facebook/FacebookAdapter;->mRvAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$600(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$FacebookRewardedVideoAdListener;->mPlacementId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .registers 5

    .line 472
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPlacementId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$FacebookRewardedVideoAdListener;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    if-eqz p2, :cond_52

    .line 475
    :try_start_1a
    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v0

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 476
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 477
    iget-object p2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$FacebookRewardedVideoAdListener;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p2, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_52} :catch_52

    .line 484
    :catch_52
    :cond_52
    iget-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$FacebookRewardedVideoAdListener;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    .line 485
    iget-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$FacebookRewardedVideoAdListener;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    # getter for: Lcom/ironsource/adapters/facebook/FacebookAdapter;->mRvAdsAvailability:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$600(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$FacebookRewardedVideoAdListener;->mPlacementId:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .registers 4

    .line 446
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPlacementId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$FacebookRewardedVideoAdListener;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 447
    iget-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$FacebookRewardedVideoAdListener;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    const/4 v0, 0x0

    # setter for: Lcom/ironsource/adapters/facebook/FacebookAdapter;->mDidCallClosed:Z
    invoke-static {p1, v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$502(Lcom/ironsource/adapters/facebook/FacebookAdapter;Z)Z

    .line 448
    iget-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$FacebookRewardedVideoAdListener;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdOpened()V

    .line 449
    iget-object p1, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$FacebookRewardedVideoAdListener;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdStarted()V

    return-void
.end method

.method public onRewardedVideoActivityDestroyed()V
    .registers 4

    .line 461
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPlacementId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$FacebookRewardedVideoAdListener;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$FacebookRewardedVideoAdListener;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    # getter for: Lcom/ironsource/adapters/facebook/FacebookAdapter;->mDidCallClosed:Z
    invoke-static {v0}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$500(Lcom/ironsource/adapters/facebook/FacebookAdapter;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 466
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$FacebookRewardedVideoAdListener;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdClosed()V

    :cond_25
    return-void
.end method

.method public onRewardedVideoClosed()V
    .registers 4

    .line 454
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPlacementId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$FacebookRewardedVideoAdListener;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$FacebookRewardedVideoAdListener;->this$0:Lcom/ironsource/adapters/facebook/FacebookAdapter;

    const/4 v1, 0x1

    # setter for: Lcom/ironsource/adapters/facebook/FacebookAdapter;->mDidCallClosed:Z
    invoke-static {v0, v1}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->access$502(Lcom/ironsource/adapters/facebook/FacebookAdapter;Z)Z

    .line 456
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$FacebookRewardedVideoAdListener;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdClosed()V

    return-void
.end method

.method public onRewardedVideoCompleted()V
    .registers 4

    .line 439
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPlacementId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$FacebookRewardedVideoAdListener;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$FacebookRewardedVideoAdListener;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdEnded()V

    .line 441
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/FacebookAdapter$FacebookRewardedVideoAdListener;->mListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdRewarded()V

    return-void
.end method
