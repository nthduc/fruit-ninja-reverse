.class Lcom/ironsource/adapters/applovin/AppLovinAdapter$12;
.super Ljava/lang/Object;
.source "AppLovinAdapter.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/applovin/AppLovinAdapter;->createInterstitialAdDialog()Lcom/applovin/adview/AppLovinInterstitialAdDialog;
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

    .line 683
    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$12;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 5

    .line 686
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$12;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    # invokes: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$400(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;

    move-result-object p1

    .line 687
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$12;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    # getter for: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToInterstitialSmashListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$900(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 689
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$12;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    # getter for: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToInterstitialSmashListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$900(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdOpened()V

    .line 690
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$12;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    # getter for: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToInterstitialSmashListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$900(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowSucceeded()V

    :cond_46
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 5

    .line 696
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$12;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    # invokes: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$400(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;

    move-result-object p1

    .line 697
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$12;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    # getter for: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToInterstitialSmashListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$900(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 699
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$12;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    # getter for: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToInterstitialSmashListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$900(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdClosed()V

    :cond_37
    return-void
.end method
