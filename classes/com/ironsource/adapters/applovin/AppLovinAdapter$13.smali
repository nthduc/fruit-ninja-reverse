.class Lcom/ironsource/adapters/applovin/AppLovinAdapter$13;
.super Ljava/lang/Object;
.source "AppLovinAdapter.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;


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

    .line 704
    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$13;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 5

    .line 707
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$13;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    # invokes: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$400(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .registers 5

    .line 712
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "zoneId = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$13;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    # invokes: Lcom/ironsource/adapters/applovin/AppLovinAdapter;->getZoneId(Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;
    invoke-static {p4, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->access$400(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/applovin/sdk/AppLovinAd;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method
