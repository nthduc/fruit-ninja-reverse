.class Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$3;
.super Ljava/lang/Object;
.source "SupersonicAdsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->initOfferwall(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;

.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$config:Lorg/json/JSONObject;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 369
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$3;->val$config:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$3;->val$appKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$3;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;

    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$3;->val$config:Lorg/json/JSONObject;

    # invokes: Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getOfferwallExtraParams(Lorg/json/JSONObject;)Ljava/util/HashMap;
    invoke-static {v0, v1}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->access$700(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    .line 374
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/ironsource/sdk/SSAFactory;->getPublisherInstance(Landroid/app/Activity;)Lcom/ironsource/sdk/SSAPublisher;

    move-result-object v2

    # setter for: Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;
    invoke-static {v1, v2}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->access$002(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;Lcom/ironsource/sdk/SSAPublisher;)Lcom/ironsource/sdk/SSAPublisher;

    .line 376
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mDidSetConsent:Z
    invoke-static {v1}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->access$200(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 377
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;

    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mConsent:Z
    invoke-static {v2}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->access$300(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;)Z

    move-result v2

    # invokes: Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->applyConsent(Z)V
    invoke-static {v1, v2}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->access$400(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;Z)V

    .line 379
    :cond_2c
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mSSAPublisher.initOfferWall"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;
    invoke-static {v1}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->access$000(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/ironsource/sdk/SSAPublisher;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$3;->val$appKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$3;->val$userId:Ljava/lang/String;

    iget-object v4, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/ironsource/sdk/SSAPublisher;->initOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V

    .line 381
    # getter for: Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mDidInitSdk:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->access$500()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5f} :catch_60

    goto :goto_c0

    :catch_60
    move-exception v0

    .line 383
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 384
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":initOfferwall(userId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$3;->val$userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;

    # getter for: Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;
    invoke-static {v1}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->access$800(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adapter initialization failure - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$3;->this$0:Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;

    .line 386
    invoke-virtual {v4}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Offerwall"

    invoke-static {v0, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 385
    invoke-interface {v1, v2, v0}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onOfferwallAvailable(ZLcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_c0
    return-void
.end method
