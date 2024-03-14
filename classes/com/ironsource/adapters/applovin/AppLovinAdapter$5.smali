.class Lcom/ironsource/adapters/applovin/AppLovinAdapter$5;
.super Ljava/lang/Object;
.source "AppLovinAdapter.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/applovin/AppLovinAdapter;->createAppLovinAdDisplayListener()Lcom/applovin/sdk/AppLovinAdDisplayListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)V
    .registers 2

    .line 455
    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$5;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 5

    .line 458
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$5;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    # invokes: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$400(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;

    move-result-object p1

    .line 459
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$5;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    # getter for: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToRewardedVideoSmashListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$600(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 461
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$5;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    # getter for: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToRewardedVideoSmashListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$600(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdOpened()V

    :cond_37
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 5

    .line 467
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$5;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    # invokes: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$400(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;

    move-result-object p1

    .line 468
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$5;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    # getter for: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToRewardedVideoSmashListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$600(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 470
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$5;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    # getter for: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToRewardedVideoSmashListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$600(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    .line 471
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$5;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    # getter for: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToRewardedVideoSmashListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$600(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdClosed()V

    :cond_47
    return-void
.end method
