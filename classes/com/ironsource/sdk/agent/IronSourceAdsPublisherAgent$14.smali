.class Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$14;
.super Ljava/lang/Object;
.source "IronSourceAdsPublisherAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->updateConsentInfo(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

.field final synthetic val$consentParams:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Lorg/json/JSONObject;)V
    .registers 3

    .line 733
    iput-object p1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$14;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    iput-object p2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$14;->val$consentParams:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 736
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$14;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    # getter for: Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mControllerManager:Lcom/ironsource/sdk/controller/ControllerManager;
    invoke-static {v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->access$000(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Lcom/ironsource/sdk/controller/ControllerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$14;->val$consentParams:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/ControllerManager;->updateConsentInfo(Lorg/json/JSONObject;)V

    return-void
.end method
