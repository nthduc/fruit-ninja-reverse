.class Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$15;
.super Ljava/lang/Object;
.source "IronSourceAdsPublisherAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->loadInitializedInstance(Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

.field final synthetic val$adInstance:Lcom/ironsource/sdk/IronSourceAdInstance;

.field final synthetic val$loadParams:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Lcom/ironsource/sdk/IronSourceAdInstance;Ljava/util/Map;)V
    .registers 4

    .line 844
    iput-object p1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$15;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    iput-object p2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$15;->val$adInstance:Lcom/ironsource/sdk/IronSourceAdInstance;

    iput-object p3, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$15;->val$loadParams:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 847
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$15;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    # getter for: Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;
    invoke-static {v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->access$300(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$15;->val$adInstance:Lcom/ironsource/sdk/IronSourceAdInstance;

    invoke-virtual {v2}, Lcom/ironsource/sdk/IronSourceAdInstance;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceById(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 849
    iget-object v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$15;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    # getter for: Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mControllerManager:Lcom/ironsource/sdk/controller/ControllerManager;
    invoke-static {v1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->access$000(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Lcom/ironsource/sdk/controller/ControllerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$15;->val$loadParams:Ljava/util/Map;

    iget-object v3, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$15;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    invoke-virtual {v1, v0, v2, v3}, Lcom/ironsource/sdk/controller/ControllerManager;->loadInterstitial(Lcom/ironsource/sdk/data/DemandSource;Ljava/util/Map;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V

    :cond_21
    return-void
.end method
