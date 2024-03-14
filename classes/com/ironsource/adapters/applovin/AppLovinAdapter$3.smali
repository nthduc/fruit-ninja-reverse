.class Lcom/ironsource/adapters/applovin/AppLovinAdapter$3;
.super Ljava/lang/Object;
.source "AppLovinAdapter.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdRewardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/applovin/AppLovinAdapter;->createAppLovinAdRewardListener()Lcom/applovin/sdk/AppLovinAdRewardListener;
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

    .line 393
    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$3;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public userDeclinedToViewAd(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 5

    .line 419
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$3;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    # invokes: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$400(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;

    move-result-object p1

    .line 420
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$3;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    # getter for: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToRewardedVideoSmashListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$600(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 422
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$3;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    # getter for: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToRewardedVideoSmashListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$600(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdClosed()V

    :cond_37
    return-void
.end method

.method public userOverQuota(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/sdk/AppLovinAd;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 402
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appLovinAd.getZoneId() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$3;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    # invokes: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$400(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method public userRewardRejected(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/sdk/AppLovinAd;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 408
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appLovinAd.getZoneId() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$3;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    # invokes: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$400(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method public userRewardVerified(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/sdk/AppLovinAd;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 396
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appLovinAd.getZoneId() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$3;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    # invokes: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$400(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method public validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V
    .registers 6

    .line 413
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appLovinAd.getZoneId() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$3;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    # invokes: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$400(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 414
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$3;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    # invokes: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getErrorString(I)Ljava/lang/String;
    invoke-static {v1, p2}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$500(Lcom/ironsource/adapters/applovin/AppLovinAdapter;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method
