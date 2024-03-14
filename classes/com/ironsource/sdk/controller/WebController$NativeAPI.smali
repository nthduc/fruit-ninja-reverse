.class public Lcom/ironsource/sdk/controller/WebController$NativeAPI;
.super Ljava/lang/Object;
.source "WebController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/WebController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NativeAPI"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/controller/WebController$NativeAPI$JSCallbackTask;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/WebController;


# direct methods
.method public constructor <init>(Lcom/ironsource/sdk/controller/WebController;)V
    .registers 2

    .line 757
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addSupportedNativeFeaturesToConfig(Lorg/json/JSONObject;)V
    .registers 5

    .line 890
    :try_start_0
    invoke-static {}, Lcom/ironsource/sdk/controller/FeaturesManager;->getInstance()Lcom/ironsource/sdk/controller/FeaturesManager;

    move-result-object v0

    .line 891
    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/FeaturesManager;->getSupportedFeatures()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    return-void

    :cond_f
    const-string v1, "nativeFeatures"

    .line 894
    new-instance v2, Lorg/json/JSONArray;

    .line 896
    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/FeaturesManager;->getSupportedFeatures()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 894
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_42

    :catch_1e
    move-exception p1

    .line 899
    new-instance v0, Lcom/ironsource/sdk/Events/ISNEventParams;

    invoke-direct {v0}, Lcom/ironsource/sdk/Events/ISNEventParams;-><init>()V

    .line 900
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "callfailreason"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/sdk/Events/ISNEventParams;->addPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/sdk/Events/ISNEventParams;

    move-result-object p1

    .line 901
    sget-object v0, Lcom/ironsource/sdk/Events/SDK5Events;->appendNativeFeaturesDataFailed:Lcom/ironsource/sdk/Events/SDK5Events$Event;

    invoke-virtual {p1}, Lcom/ironsource/sdk/Events/ISNEventParams;->getData()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/Events/ISNEventsTracker;->logEvent(Lcom/ironsource/sdk/Events/SDK5Events$Event;Ljava/util/Map;)V

    .line 902
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getControllerConfig Error while adding supported features data from FeaturesManager"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_42
    return-void
.end method

.method private addTesterParametersToConfig(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 6

    const-string v0, "testFriendlyName"

    const-string v1, "testerABGroup"

    .line 907
    invoke-virtual {p0, p2}, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->areTesterParametersValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 909
    :try_start_a
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 910
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 911
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_1d} :catch_1e

    goto :goto_29

    .line 913
    :catch_1e
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getControllerConfig Error while parsing Tester AB Group parameters"

    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    :goto_29
    return-void
.end method

.method private callJavaScriptFunction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1251
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1252
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1, p2}, Lcom/ironsource/sdk/controller/WebController;->access$400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1253
    iget-object p2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V
    invoke-static {p2, p1}, Lcom/ironsource/sdk/controller/WebController;->access$500(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method private extendControllerConfig(Lorg/json/JSONObject;)V
    .registers 3

    .line 884
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->addSupportedNativeFeaturesToConfig(Lorg/json/JSONObject;)V

    .line 885
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getTesterParameters()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->addTesterParametersToConfig(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private handleAdCreditedOnInterstitial(Ljava/lang/String;I)V
    .registers 5

    .line 1393
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/ironsource/sdk/controller/WebController;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->access$2900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 1396
    :cond_f
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$3800(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceById(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1397
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->isRewarded()Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_2e

    .line 1401
    :cond_24
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    new-instance v1, Lcom/ironsource/sdk/controller/WebController$NativeAPI$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$5;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method private setInterstitialAvailability(Ljava/lang/String;Z)V
    .registers 5

    .line 1704
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$3800(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceById(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 1706
    invoke-virtual {p1, p2}, Lcom/ironsource/sdk/data/DemandSource;->setAvailabilityState(Z)V

    :cond_11
    return-void
.end method


# virtual methods
.method public adClicked(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1652
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adClicked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string p1, "productType"

    .line 1655
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1656
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v0

    .line 1657
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    return-void

    .line 1661
    :cond_35
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->getStringProductTypeAsEnum(Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    invoke-static {v1, p1}, Lcom/ironsource/sdk/controller/WebController;->access$4500(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    move-result-object p1

    .line 1662
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->getAdProductListenerByProductType(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;
    invoke-static {v1, p1}, Lcom/ironsource/sdk/controller/WebController;->access$4600(Lcom/ironsource/sdk/controller/WebController;Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;

    move-result-object v1

    if-eqz p1, :cond_4f

    if-eqz v1, :cond_4f

    .line 1665
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    new-instance v3, Lcom/ironsource/sdk/controller/WebController$NativeAPI$12;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$12;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4f
    return-void
.end method

.method public adCredited(Ljava/lang/String;)V
    .registers 15
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1297
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->PUB_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$3900(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adCredited("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "credits"

    .line 1300
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_33

    .line 1301
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v7, v1

    goto :goto_34

    :cond_33
    const/4 v7, 0x0

    .line 1303
    :goto_34
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "productType"

    .line 1304
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1306
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 1307
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->PUB_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/WebController;->access$3900(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "adCredited | not product NAME !!!!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    :cond_4f
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 1311
    invoke-direct {p0, v6, v7}, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->handleAdCreditedOnInterstitial(Ljava/lang/String;I)V

    return-void

    :cond_5f
    const-string v1, "total"

    .line 1315
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6d

    .line 1316
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v9, v3

    goto :goto_6e

    :cond_6d
    const/4 v9, 0x0

    :goto_6e
    const-string v3, "externalPoll"

    .line 1318
    invoke-virtual {v0, v3}, Lcom/ironsource/sdk/data/SSAObj;->getBoolean(Ljava/lang/String;)Z

    .line 1326
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_e2

    const-string v3, "signature"

    .line 1329
    invoke-virtual {v0, v3}, Lcom/ironsource/sdk/data/SSAObj;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_da

    const-string v8, "timestamp"

    invoke-virtual {v0, v8}, Lcom/ironsource/sdk/data/SSAObj;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_da

    const-string v10, "totalCreditsFlag"

    invoke-virtual {v0, v10}, Lcom/ironsource/sdk/data/SSAObj;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_99

    goto :goto_da

    .line 1336
    :cond_99
    invoke-virtual {v0, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1339
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mApplicationKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/WebController;->access$4100(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mUserId:Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/WebController;->access$4000(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1343
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c7

    const/4 v2, 0x1

    goto :goto_ce

    .line 1347
    :cond_c7
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v3, "Controller signature is not equal to SDK signature"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, p1, v2, v3, v4}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1351
    :goto_ce
    invoke-virtual {v0, v10}, Lcom/ironsource/sdk/data/SSAObj;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1354
    invoke-virtual {v0, v8}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    move v10, v1

    move v8, v2

    goto :goto_e5

    .line 1331
    :cond_da
    :goto_da
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "One of the keys are missing: signature/timestamp/totalCreditsFlag"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v2, v1, v4}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e2
    move-object v11, v4

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 1357
    :goto_e5
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v0, v5}, Lcom/ironsource/sdk/controller/WebController;->access$2900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 1363
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    new-instance v1, Lcom/ironsource/sdk/controller/WebController$NativeAPI$4;

    move-object v3, v1

    move-object v4, p0

    move-object v12, p1

    invoke-direct/range {v3 .. v12}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$4;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;Ljava/lang/String;Ljava/lang/String;IZIZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_fa
    return-void
.end method

.method public adUnitsReady(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1030
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adUnitsReady("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1033
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v0

    .line 1035
    new-instance v1, Lcom/ironsource/sdk/data/AdUnitsReady;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/AdUnitsReady;-><init>(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {v1}, Lcom/ironsource/sdk/data/AdUnitsReady;->isNumOfAdUnitsExist()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3d

    .line 1038
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v1, 0x0

    const-string v2, "Num Of Ad Units Do Not Exist"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v2, v3}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1042
    :cond_3d
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v4, 0x1

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, p1, v4, v3, v3}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1044
    invoke-virtual {v1}, Lcom/ironsource/sdk/data/AdUnitsReady;->getProductType()Ljava/lang/String;

    move-result-object p1

    .line 1045
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 1046
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v2, p1}, Lcom/ironsource/sdk/controller/WebController;->access$2900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 1047
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    new-instance v2, Lcom/ironsource/sdk/controller/WebController$NativeAPI$3;

    invoke-direct {v2, p0, v1, v0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$3;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;Lcom/ironsource/sdk/data/AdUnitsReady;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_65
    return-void
.end method

.method areTesterParametersValid(Ljava/lang/String;)Z
    .registers 3

    .line 919
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 921
    :try_start_e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "testerABGroup"

    .line 922
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_31

    const-string p1, "testFriendlyName"

    .line 923
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_29} :catch_2d

    if-nez p1, :cond_31

    const/4 p1, 0x1

    return p1

    :catch_2d
    move-exception p1

    .line 927
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_31
    const/4 p1, 0x0

    return p1
.end method

.method public bannerViewAPI(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2332
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mBannerJsAdapter:Lcom/ironsource/sdk/controller/BannerJSAdapter;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$5100(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/BannerJSAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/BannerJSAdapter;->sendMessageToISNAdView(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_2c

    :catch_a
    move-exception p1

    .line 2334
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2335
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bannerViewAPI failed with exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    return-void
.end method

.method public deleteFile(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1090
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    new-instance v0, Lcom/ironsource/sdk/data/SSAFile;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAFile;-><init>(Ljava/lang/String;)V

    .line 1094
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mCacheDirectory:Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/WebController;->access$1300(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->isPathExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 1095
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v1, 0x0

    const-string v2, "File not exist"

    const-string v3, "1"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v2, v3}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    .line 1098
    :cond_3f
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mCacheDirectory:Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/WebController;->access$1300(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1099
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v2, 0x0

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, p1, v0, v2, v2}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :goto_57
    return-void
.end method

.method public deleteFolder(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1076
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFolder("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    new-instance v0, Lcom/ironsource/sdk/data/SSAFile;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAFile;-><init>(Ljava/lang/String;)V

    .line 1080
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mCacheDirectory:Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/WebController;->access$1300(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->isPathExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 1081
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v1, 0x0

    const-string v2, "Folder not exist"

    const-string v3, "1"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v2, v3}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    .line 1083
    :cond_3f
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mCacheDirectory:Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/WebController;->access$1300(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1084
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v2, 0x0

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, p1, v0, v2, v2}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :goto_53
    return-void
.end method

.method public deviceDataAPI(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2371
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceDataAPI("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2372
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2373
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mDeviceDataJsAdapter:Lcom/ironsource/sdk/controller/DeviceDataJSAdapter;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$5500(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/DeviceDataJSAdapter;

    move-result-object p1

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAObj;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ironsource/sdk/controller/WebController$NativeAPI$JSCallbackTask;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$JSCallbackTask;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;)V

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/sdk/controller/DeviceDataJSAdapter;->call(Ljava/lang/String;Lcom/ironsource/sdk/controller/WebController$NativeAPI$JSCallbackTask;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    goto :goto_59

    :catch_37
    move-exception p1

    .line 2375
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2376
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceDataAPI failed with exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_59
    return-void
.end method

.method public displayWebView(Ljava/lang/String;)V
    .registers 11
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1105
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayWebView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v2, v1, v1}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1109
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string p1, "display"

    .line 1110
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "productType"

    .line 1111
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "standaloneView"

    .line 1112
    invoke-virtual {v0, v3}, Lcom/ironsource/sdk/data/SSAObj;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1114
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_1aa

    .line 1118
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v5, "immersive"

    invoke-virtual {v0, v5}, Lcom/ironsource/sdk/data/SSAObj;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    # setter for: Lcom/ironsource/sdk/controller/WebController;->mIsImmersive:Z
    invoke-static {p1, v6}, Lcom/ironsource/sdk/controller/WebController;->access$3202(Lcom/ironsource/sdk/controller/WebController;Z)Z

    const-string p1, "activityThemeTranslucent"

    .line 1119
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 1121
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/WebController;->getState()Lcom/ironsource/sdk/controller/WebController$State;

    move-result-object v0

    sget-object v6, Lcom/ironsource/sdk/controller/WebController$State;->Display:Lcom/ironsource/sdk/controller/WebController$State;

    const-string v7, "State: "

    if-eq v0, v6, :cond_18b

    .line 1123
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    sget-object v6, Lcom/ironsource/sdk/controller/WebController$State;->Display:Lcom/ironsource/sdk/controller/WebController$State;

    invoke-virtual {v0, v6}, Lcom/ironsource/sdk/controller/WebController;->setState(Lcom/ironsource/sdk/controller/WebController$State;)V

    .line 1125
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mState:Lcom/ironsource/sdk/controller/WebController$State;
    invoke-static {v7}, Lcom/ironsource/sdk/controller/WebController;->access$3300(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/WebController$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/WebController;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v0

    .line 1129
    iget-object v6, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v6}, Lcom/ironsource/sdk/controller/WebController;->getOrientationState()Ljava/lang/String;

    move-result-object v6

    .line 1130
    invoke-static {v0}, Lcom/ironsource/environment/DeviceStatus;->getApplicationRotation(Landroid/content/Context;)I

    move-result v7

    if-eqz v3, :cond_b2

    .line 1135
    new-instance p1, Lcom/ironsource/sdk/controller/ControllerView;

    invoke-direct {p1, v0}, Lcom/ironsource/sdk/controller/ControllerView;-><init>(Landroid/content/Context;)V

    .line 1136
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mControllerLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$3400(Lcom/ironsource/sdk/controller/WebController;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/controller/ControllerView;->addView(Landroid/view/View;)V

    .line 1137
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/controller/ControllerView;->showInterstitial(Lcom/ironsource/sdk/controller/WebController;)V

    goto/16 :goto_1b6

    :cond_b2
    if-eqz p1, :cond_bc

    .line 1144
    new-instance p1, Landroid/content/Intent;

    const-class v3, Lcom/ironsource/sdk/controller/InterstitialActivity;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_c3

    .line 1146
    :cond_bc
    new-instance p1, Landroid/content/Intent;

    const-class v3, Lcom/ironsource/sdk/controller/ControllerActivity;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1149
    :goto_c3
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v8, "application"

    if-eqz v3, :cond_120

    .line 1150
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 1151
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v2}, Lcom/ironsource/sdk/controller/WebController;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ironsource/environment/DeviceStatus;->getActivityRequestedOrientation(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/ironsource/sdk/utils/SDKUtils;->translateRequestedOrientation(I)Ljava/lang/String;

    move-result-object v6

    .line 1154
    :cond_e5
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1157
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/WebController;->access$3500(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v1

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/AdUnitsState;->adOpened(I)V

    .line 1158
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/WebController;->access$3500(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/ironsource/sdk/data/AdUnitsState;->setDisplayedDemandSourceId(Ljava/lang/String;)V

    .line 1159
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/ironsource/sdk/controller/WebController;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/ironsource/sdk/controller/WebController;->access$2900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16f

    .line 1160
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mDSRewardedVideoListener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/WebController;->access$3000(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    move-result-object v1

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-interface {v1, v2, v4}, Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;->onAdProductOpen(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    goto :goto_16f

    .line 1163
    :cond_120
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_145

    .line 1164
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1166
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/WebController;->access$3500(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v1

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/AdUnitsState;->adOpened(I)V

    goto :goto_16f

    .line 1167
    :cond_145
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16f

    .line 1168
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_166

    .line 1169
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v2}, Lcom/ironsource/sdk/controller/WebController;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ironsource/environment/DeviceStatus;->getActivityRequestedOrientation(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/ironsource/sdk/utils/SDKUtils;->translateRequestedOrientation(I)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 1171
    :cond_166
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_16f
    :goto_16f
    const/high16 v1, 0x20000000

    .line 1175
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1176
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mIsImmersive:Z
    invoke-static {v1}, Lcom/ironsource/sdk/controller/WebController;->access$3200(Lcom/ironsource/sdk/controller/WebController;)Z

    move-result v1

    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "orientation_set_flag"

    .line 1177
    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "rotation_set_flag"

    .line 1178
    invoke-virtual {p1, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1180
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1b6

    .line 1184
    :cond_18b
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mState:Lcom/ironsource/sdk/controller/WebController$State;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/WebController;->access$3300(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/WebController$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b6

    .line 1188
    :cond_1aa
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    sget-object v0, Lcom/ironsource/sdk/controller/WebController$State;->Gone:Lcom/ironsource/sdk/controller/WebController$State;

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/controller/WebController;->setState(Lcom/ironsource/sdk/controller/WebController$State;)V

    .line 1189
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->closeWebView()V
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$3600(Lcom/ironsource/sdk/controller/WebController;)V

    :goto_1b6
    return-void
.end method

.method public getApplicationInfo(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 935
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApplicationInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/WebController;->access$1800(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 938
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->extractFailFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/ironsource/sdk/controller/WebController;->access$1900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 941
    new-instance v2, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v2, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string p1, "productType"

    .line 942
    invoke-virtual {v2, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 943
    invoke-static {v2}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 947
    new-array v3, v3, [Ljava/lang/Object;

    .line 949
    iget-object v3, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->getApplicationParams(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    invoke-static {v3, p1, v2}, Lcom/ironsource/sdk/controller/WebController;->access$2600(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x0

    .line 951
    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    .line 952
    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 955
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_62

    move-object v0, v1

    goto :goto_63

    .line 959
    :cond_5b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_62

    goto :goto_63

    :cond_62
    const/4 v0, 0x0

    .line 964
    :goto_63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_78

    .line 965
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "onGetApplicationInfoSuccess"

    const-string v3, "onGetApplicationInfoFail"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v0, v2, v1, v3}, Lcom/ironsource/sdk/controller/WebController;->access$2100(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 966
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/WebController;->access$500(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)V

    :cond_78
    return-void
.end method

.method public getCachedFilesMap(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1221
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCachedFilesMap("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/WebController;->access$1800(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1225
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_75

    .line 1227
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v2, "path"

    .line 1230
    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v3, :cond_42

    .line 1231
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "path key does not exist"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v5, v1, v4}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1235
    :cond_42
    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1238
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mCacheDirectory:Ljava/lang/String;
    invoke-static {v2}, Lcom/ironsource/sdk/controller/WebController;->access$1300(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->isPathExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 1239
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "path file does not exist on disk"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v5, v1, v4}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1243
    :cond_5c
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mCacheDirectory:Ljava/lang/String;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$1300(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->getCachedFilesMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1244
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v2, "onGetCachedFilesMapSuccess"

    const-string v3, "onGetCachedFilesMapFail"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v0, p1, v2, v3}, Lcom/ironsource/sdk/controller/WebController;->access$2100(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1246
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/WebController;->access$500(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)V

    :cond_75
    return-void
.end method

.method public getConnectivityInfo(Ljava/lang/String;)V
    .registers 14
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 835
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnectivityInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 838
    # getter for: Lcom/ironsource/sdk/controller/WebController;->JSON_KEY_SUCCESS:Ljava/lang/String;
    invoke-static {}, Lcom/ironsource/sdk/controller/WebController;->access$2200()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 839
    # getter for: Lcom/ironsource/sdk/controller/WebController;->JSON_KEY_FAIL:Ljava/lang/String;
    invoke-static {}, Lcom/ironsource/sdk/controller/WebController;->access$2300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 840
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 842
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mConnectivityAdapter:Lcom/ironsource/sdk/service/ConnectivityAdapter;
    invoke-static {v2}, Lcom/ironsource/sdk/controller/WebController;->access$2400(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/service/ConnectivityAdapter;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 843
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mConnectivityAdapter:Lcom/ironsource/sdk/service/ConnectivityAdapter;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/WebController;->access$2400(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/service/ConnectivityAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v2}, Lcom/ironsource/sdk/controller/WebController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/service/ConnectivityAdapter;->getConnectivityData(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 848
    :cond_51
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_62

    .line 849
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1, v1}, Lcom/ironsource/sdk/controller/WebController;->access$400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_7a

    .line 851
    :cond_62
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v2, "errMsg"

    const-string v3, "failed to retrieve connection info"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static/range {v1 .. v11}, Lcom/ironsource/sdk/controller/WebController;->access$2500(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 852
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v0, p1}, Lcom/ironsource/sdk/controller/WebController;->access$400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 855
    :goto_7a
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/WebController;->access$500(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)V

    return-void
.end method

.method public getControllerConfig(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 872
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getControllerConfig("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 874
    # getter for: Lcom/ironsource/sdk/controller/WebController;->JSON_KEY_SUCCESS:Ljava/lang/String;
    invoke-static {}, Lcom/ironsource/sdk/controller/WebController;->access$2200()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 875
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 876
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerConfigAsJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 877
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->extendControllerConfig(Lorg/json/JSONObject;)V

    .line 878
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1, v0}, Lcom/ironsource/sdk/controller/WebController;->access$400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 879
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/WebController;->access$500(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)V

    :cond_48
    return-void
.end method

.method public getDemandSourceState(Ljava/lang/String;)V
    .registers 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1259
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMediationState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "demandSourceName"

    .line 1262
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1263
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "productType"

    .line 1265
    invoke-virtual {v0, v4}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8e

    if-eqz v2, :cond_8e

    .line 1269
    :try_start_38
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->getProductType(Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    move-result-object v5

    if-eqz v5, :cond_8e

    .line 1271
    iget-object v6, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;
    invoke-static {v6}, Lcom/ironsource/sdk/controller/WebController;->access$3800(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v6

    invoke-virtual {v6, v5, v3}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceById(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v5

    .line 1274
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1275
    invoke-virtual {v6, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1276
    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "demandSourceId"

    .line 1277
    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v5, :cond_71

    const/4 v0, -0x1

    .line 1279
    invoke-virtual {v5, v0}, Lcom/ironsource/sdk/data/DemandSource;->isMediationState(I)Z

    move-result v0

    if-nez v0, :cond_71

    .line 1280
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/WebController;->access$1800(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "state"

    .line 1281
    invoke-virtual {v5}, Lcom/ironsource/sdk/data/DemandSource;->getMediationState()I

    move-result v2

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_77

    .line 1283
    :cond_71
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->extractFailFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/WebController;->access$1900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1285
    :goto_77
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->callJavaScriptFunction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_7e} :catch_7f

    goto :goto_8e

    :catch_7f
    move-exception v0

    .line 1289
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, p1, v2, v3, v4}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1290
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8e
    :goto_8e
    return-void
.end method

.method public getDeviceStatus(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 804
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceStatus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/WebController;->access$1800(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 807
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->extractFailFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/ironsource/sdk/controller/WebController;->access$1900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    .line 809
    new-array v1, v1, [Ljava/lang/Object;

    .line 810
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v1}, Lcom/ironsource/sdk/controller/WebController;->getContext()Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/ironsource/sdk/controller/WebController;->getDeviceParams(Landroid/content/Context;)[Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/ironsource/sdk/controller/WebController;->access$2000(Lcom/ironsource/sdk/controller/WebController;Landroid/content/Context;)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 812
    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    .line 813
    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 818
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    move-object v0, p1

    goto :goto_58

    .line 822
    :cond_50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_57

    goto :goto_58

    :cond_57
    const/4 v0, 0x0

    .line 827
    :goto_58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6d

    .line 828
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "onGetDeviceStatusSuccess"

    const-string v3, "onGetDeviceStatusFail"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v0, v2, v1, v3}, Lcom/ironsource/sdk/controller/WebController;->access$2100(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 829
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/WebController;->access$500(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)V

    :cond_6d
    return-void
.end method

.method public getDeviceVolume(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2383
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceVolume("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2386
    :try_start_1f
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/WebController;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/DeviceProperties;->getInstance(Landroid/content/Context;)Lcom/ironsource/sdk/utils/DeviceProperties;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v1}, Lcom/ironsource/sdk/controller/WebController;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceVolume(Landroid/content/Context;)F

    move-result v0

    .line 2388
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string p1, "deviceVolume"

    .line 2389
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2390
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAObj;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v0, v1, v2, v2}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_4c} :catch_4d

    goto :goto_51

    :catch_4d
    move-exception p1

    .line 2392
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_51
    return-void
.end method

.method public getOrientation(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1195
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/WebController;->access$1800(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1196
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/WebController;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->getOrientation(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 1199
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v2, "onGetOrientationSuccess"

    const-string v3, "onGetOrientationFail"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1, v0, v2, v3}, Lcom/ironsource/sdk/controller/WebController;->access$2100(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1200
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/WebController;->access$500(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public getUserData(Ljava/lang/String;)V
    .registers 15
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2131
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserData("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2133
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "key"

    .line 2135
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 2136
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "key does not exist"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v3, v2}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2140
    :cond_36
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/ironsource/sdk/controller/WebController;->access$1800(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2141
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2143
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getUserData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2145
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    # invokes: Lcom/ironsource/sdk/controller/WebController;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static/range {v2 .. v12}, Lcom/ironsource/sdk/controller/WebController;->access$2500(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2147
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1, v0}, Lcom/ironsource/sdk/controller/WebController;->access$400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2148
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/WebController;->access$500(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)V

    return-void
.end method

.method public iabTokenAPI(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1065
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iabTokenAPI("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1067
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mTokenJSAdapter:Lcom/ironsource/sdk/controller/TokenJSAdapter;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$3100(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/TokenJSAdapter;

    move-result-object p1

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAObj;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ironsource/sdk/controller/WebController$NativeAPI$JSCallbackTask;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$JSCallbackTask;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;)V

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/sdk/controller/TokenJSAdapter;->call(Ljava/lang/String;Lcom/ironsource/sdk/controller/WebController$NativeAPI$JSCallbackTask;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    goto :goto_59

    :catch_37
    move-exception p1

    .line 1069
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1070
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iabTokenAPI failed with exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_59
    return-void
.end method

.method public initController(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 772
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initController("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 776
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    iget-object p1, p1, Lcom/ironsource/sdk/controller/WebController;->mLoadControllerTimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_36

    .line 777
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    iget-object p1, p1, Lcom/ironsource/sdk/controller/WebController;->mLoadControllerTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 778
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/ironsource/sdk/controller/WebController;->mLoadControllerTimer:Landroid/os/CountDownTimer;

    :cond_36
    const-string p1, "stage"

    .line 781
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 782
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ready"

    .line 784
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 785
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v0, 0x1

    # setter for: Lcom/ironsource/sdk/controller/WebController;->mIsWebControllerReady:Z
    invoke-static {p1, v0}, Lcom/ironsource/sdk/controller/WebController;->access$302(Lcom/ironsource/sdk/controller/WebController;Z)Z

    .line 786
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mControllerListener:Lcom/ironsource/sdk/controller/ControllerEventListener;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$1200(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/ControllerEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/sdk/controller/ControllerEventListener;->handleControllerStageReady()V

    return-void

    :cond_5a
    const-string v1, "loaded"

    .line 789
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 790
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mControllerListener:Lcom/ironsource/sdk/controller/ControllerEventListener;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$1200(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/ControllerEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/sdk/controller/ControllerEventListener;->handleControllerStageLoaded()V

    return-void

    :cond_6c
    const-string v1, "failed"

    .line 793
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_95

    const-string p1, "errMsg"

    .line 794
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 795
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mControllerListener:Lcom/ironsource/sdk/controller/ControllerEventListener;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$1200(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/ControllerEventListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controller failed to initialize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/controller/ControllerEventListener;->handleControllerStageFailed(Ljava/lang/String;)V

    return-void

    .line 798
    :cond_95
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "No STAGE mentioned! Should not get here!"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a0
    return-void
.end method

.method public omidAPI(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2341
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    new-instance v1, Lcom/ironsource/sdk/controller/WebController$NativeAPI$28;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$28;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdWindowsClosed(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2176
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdWindowsClosed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2179
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$3500(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/AdUnitsState;->adClosed()V

    .line 2180
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$3500(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setDisplayedDemandSourceId(Ljava/lang/String;)V

    .line 2183
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string p1, "productType"

    .line 2184
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2185
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v0

    .line 2186
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->getStringProductTypeAsEnum(Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    invoke-static {v1, p1}, Lcom/ironsource/sdk/controller/WebController;->access$4500(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    move-result-object v1

    .line 2188
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->PUB_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/ironsource/sdk/controller/WebController;->access$3900(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAdClosed() with type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v2, p1}, Lcom/ironsource/sdk/controller/WebController;->access$2900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_73

    .line 2192
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    new-instance v2, Lcom/ironsource/sdk/controller/WebController$NativeAPI$26;

    invoke-direct {v2, p0, v1, v0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$26;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_73
    return-void
.end method

.method public onGenericFunctionFail(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1993
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGenericFunctionFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mOnGenericFunctionListener:Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$4800(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;

    move-result-object v0

    if-nez v0, :cond_33

    .line 1996
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "genericFunctionListener was not found"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2000
    :cond_33
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "errMsg"

    .line 2001
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2003
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    new-instance v2, Lcom/ironsource/sdk/controller/WebController$NativeAPI$24;

    invoke-direct {v2, p0, v0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$24;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2009
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v2, v2}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2010
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "onGenericFunctionFail"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/WebController;->access$4400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGenericFunctionSuccess(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1975
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGenericFunctionSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mOnGenericFunctionListener:Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$4800(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;

    move-result-object v0

    if-nez v0, :cond_33

    .line 1978
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "genericFunctionListener was not found"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1982
    :cond_33
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    new-instance v1, Lcom/ironsource/sdk/controller/WebController$NativeAPI$23;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$23;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1988
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v2, v2}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetApplicationInfoFail(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1480
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetApplicationInfoFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v2, v1, v1}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1483
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "onGetApplicationInfoFail"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/WebController;->access$4400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetApplicationInfoSuccess(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1472
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetApplicationInfoSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v2, v1, v1}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1475
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "onGetApplicationInfoSuccess"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/WebController;->access$4400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetCachedFilesMapFail(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1533
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetCachedFilesMapFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v2, v1, v1}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1537
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "onGetCachedFilesMapFail"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/WebController;->access$4400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetCachedFilesMapSuccess(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1524
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetCachedFilesMapSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v2, v1, v1}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1528
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "onGetCachedFilesMapSuccess"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/WebController;->access$4400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetDeviceStatusFail(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1431
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetDeviceStatusFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v2, v1, v1}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1435
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "onGetDeviceStatusFail"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/WebController;->access$4400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetDeviceStatusSuccess(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1422
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetDeviceStatusSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v2, v1, v1}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1426
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "onGetDeviceStatusSuccess"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/WebController;->access$4400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetUserCreditsFail(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2153
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetUserCreditsFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2155
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "errMsg"

    .line 2156
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2158
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/ironsource/sdk/controller/WebController;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/ironsource/sdk/controller/WebController;->access$2900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 2159
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    new-instance v2, Lcom/ironsource/sdk/controller/WebController$NativeAPI$25;

    invoke-direct {v2, p0, v0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$25;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2170
    :cond_42
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v2, v2}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2171
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "onGetUserCreditsFail"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/WebController;->access$4400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInitBannerFail(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1886
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitBannerFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "errMsg"

    .line 1889
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1890
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v0

    .line 1892
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1893
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onInitBannerFail failed with no demand source"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1897
    :cond_40
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;
    invoke-static {v2}, Lcom/ironsource/sdk/controller/WebController;->access$3800(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2, v3, v0}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceById(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v2

    if-eqz v2, :cond_52

    const/4 v3, 0x3

    .line 1900
    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/data/DemandSource;->setDemandSourceInitState(I)V

    .line 1903
    :cond_52
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/ironsource/sdk/controller/WebController;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/WebController;->access$2900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 1905
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    new-instance v3, Lcom/ironsource/sdk/controller/WebController$NativeAPI$20;

    invoke-direct {v3, p0, v1, v0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$20;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1918
    :cond_6a
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v2, v2}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1919
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "onInitBannerFail"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/WebController;->access$4400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInitBannerSuccess(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1862
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInitBannerSuccess()"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "onInitBannerSuccess"

    const-string v2, "true"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/ironsource/sdk/controller/WebController;->access$4400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1866
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object p1

    .line 1868
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1869
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onInitBannerSuccess failed with no demand source"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1873
    :cond_2f
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/ironsource/sdk/controller/WebController;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->access$2900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1874
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    new-instance v1, Lcom/ironsource/sdk/controller/WebController$NativeAPI$19;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$19;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_47
    return-void
.end method

.method public onInitInterstitialFail(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1615
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitInterstitialFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "errMsg"

    .line 1618
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1619
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v0

    .line 1621
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1622
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onInitInterstitialSuccess failed with no demand source"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1625
    :cond_40
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;
    invoke-static {v2}, Lcom/ironsource/sdk/controller/WebController;->access$3800(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2, v3, v0}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceById(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v2

    if-eqz v2, :cond_52

    const/4 v3, 0x3

    .line 1628
    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/data/DemandSource;->setDemandSourceInitState(I)V

    .line 1631
    :cond_52
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/ironsource/sdk/controller/WebController;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/WebController;->access$2900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 1633
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    new-instance v3, Lcom/ironsource/sdk/controller/WebController$NativeAPI$11;

    invoke-direct {v3, p0, v1, v0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$11;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1646
    :cond_6a
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v2, v2}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1647
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "onInitInterstitialFail"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/WebController;->access$4400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInitInterstitialSuccess(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1589
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInitInterstitialSuccess()"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "onInitInterstitialSuccess"

    const-string v2, "true"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/ironsource/sdk/controller/WebController;->access$4400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1593
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object p1

    .line 1595
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1596
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onInitInterstitialSuccess failed with no demand source"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1600
    :cond_2f
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/ironsource/sdk/controller/WebController;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->access$2900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1602
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    new-instance v1, Lcom/ironsource/sdk/controller/WebController$NativeAPI$10;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$10;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_47
    return-void
.end method

.method public onInitOfferWallFail(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1734
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitOfferWallFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$3500(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setOfferwallInitSuccess(Z)V

    .line 1739
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v2, "errMsg"

    .line 1740
    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1743
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;
    invoke-static {v2}, Lcom/ironsource/sdk/controller/WebController;->access$3500(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/AdUnitsState;->reportInitOfferwall()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 1746
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;
    invoke-static {v2}, Lcom/ironsource/sdk/controller/WebController;->access$3500(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setOfferwallReportInit(Z)V

    .line 1748
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/ironsource/sdk/controller/WebController;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/ironsource/sdk/controller/WebController;->access$2900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 1750
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    new-instance v2, Lcom/ironsource/sdk/controller/WebController$NativeAPI$15;

    invoke-direct {v2, p0, v0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$15;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1764
    :cond_61
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v2, v2}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1765
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "onInitOfferWallFail"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/WebController;->access$4400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInitOfferWallSuccess(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1712
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v0, "onInitOfferWallSuccess"

    const-string v1, "true"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v0, v1}, Lcom/ironsource/sdk/controller/WebController;->access$4400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$3500(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/data/AdUnitsState;->setOfferwallInitSuccess(Z)V

    .line 1717
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$3500(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->reportInitOfferwall()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 1719
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$3500(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/data/AdUnitsState;->setOfferwallReportInit(Z)V

    .line 1720
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/ironsource/sdk/controller/WebController;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {p1, v0}, Lcom/ironsource/sdk/controller/WebController;->access$2900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 1721
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    new-instance v0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$14;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$14;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;)V

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_41
    return-void
.end method

.method public onInitRewardedVideoFail(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1440
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitRewardedVideoFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "errMsg"

    .line 1443
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1445
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v0

    .line 1447
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;
    invoke-static {v2}, Lcom/ironsource/sdk/controller/WebController;->access$3800(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2, v3, v0}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceById(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v2

    if-eqz v2, :cond_40

    const/4 v3, 0x3

    .line 1450
    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/data/DemandSource;->setDemandSourceInitState(I)V

    .line 1453
    :cond_40
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/ironsource/sdk/controller/WebController;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/WebController;->access$2900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1454
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    new-instance v3, Lcom/ironsource/sdk/controller/WebController$NativeAPI$6;

    invoke-direct {v3, p0, v1, v0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$6;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1466
    :cond_58
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v2, v2}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1467
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "onInitRewardedVideoFail"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/WebController;->access$4400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLoadBannerFail(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1945
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLoadBannerFail()"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "errMsg"

    .line 1947
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1948
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v0

    .line 1950
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v3, 0x0

    const/4 v4, 0x1

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, p1, v4, v3, v3}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1952
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_28

    return-void

    .line 1956
    :cond_28
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/ironsource/sdk/controller/WebController;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {p1, v2}, Lcom/ironsource/sdk/controller/WebController;->access$2900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 1957
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    new-instance v2, Lcom/ironsource/sdk/controller/WebController$NativeAPI$22;

    invoke-direct {v2, p0, v1, v0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$22;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_40
    return-void
.end method

.method public onLoadBannerSuccess(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1924
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLoadBannerSuccess()"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1928
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v0

    .line 1930
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v2, 0x0

    const/4 v3, 0x1

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, p1, v3, v2, v2}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1932
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/ironsource/sdk/controller/WebController;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {p1, v1}, Lcom/ironsource/sdk/controller/WebController;->access$2900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 1933
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    new-instance v1, Lcom/ironsource/sdk/controller/WebController$NativeAPI$21;

    invoke-direct {v1, p0, v0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$21;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_33
    return-void
.end method

.method public onLoadInterstitialFail(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1794
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadInterstitialFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "errMsg"

    .line 1797
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1798
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v0

    .line 1800
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v3, 0x0

    const/4 v4, 0x1

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, p1, v4, v3, v3}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1801
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3c

    return-void

    :cond_3c
    const/4 p1, 0x0

    .line 1805
    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->setInterstitialAvailability(Ljava/lang/String;Z)V

    .line 1808
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/ironsource/sdk/controller/WebController;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {p1, v2}, Lcom/ironsource/sdk/controller/WebController;->access$2900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_58

    .line 1810
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    new-instance v2, Lcom/ironsource/sdk/controller/WebController$NativeAPI$17;

    invoke-direct {v2, p0, v1, v0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$17;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1821
    :cond_58
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v0, "onLoadInterstitialFail"

    const-string v1, "true"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v0, v1}, Lcom/ironsource/sdk/controller/WebController;->access$4400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLoadInterstitialSuccess(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1770
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadInterstitialSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1773
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 1775
    invoke-direct {p0, v0, v1}, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->setInterstitialAvailability(Ljava/lang/String;Z)V

    .line 1776
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v3, 0x0

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, p1, v1, v3, v3}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1779
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/ironsource/sdk/controller/WebController;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {p1, v1}, Lcom/ironsource/sdk/controller/WebController;->access$2900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 1781
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    new-instance v1, Lcom/ironsource/sdk/controller/WebController$NativeAPI$16;

    invoke-direct {v1, p0, v0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$16;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1789
    :cond_4a
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v0, "onLoadInterstitialSuccess"

    const-string v1, "true"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v0, v1}, Lcom/ironsource/sdk/controller/WebController;->access$4400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOfferWallGeneric(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2093
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOfferWallGeneric("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2094
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/ironsource/sdk/controller/WebController;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {p1, v0}, Lcom/ironsource/sdk/controller/WebController;->access$2900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 2095
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$4200(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p1, v0, v0}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onOWGeneric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    return-void
.end method

.method public onShowInterstitialFail(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1827
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowInterstitialFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "errMsg"

    .line 1830
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1831
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v0

    .line 1833
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v3, 0x0

    const/4 v4, 0x1

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, p1, v4, v3, v3}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1835
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3c

    return-void

    :cond_3c
    const/4 v2, 0x0

    .line 1839
    invoke-direct {p0, v0, v2}, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->setInterstitialAvailability(Ljava/lang/String;Z)V

    .line 1841
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/ironsource/sdk/controller/WebController;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/WebController;->access$2900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1843
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    new-instance v3, Lcom/ironsource/sdk/controller/WebController$NativeAPI$18;

    invoke-direct {v3, p0, v1, v0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$18;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1855
    :cond_58
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "onShowInterstitialFail"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/WebController;->access$4400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onShowInterstitialSuccess(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1675
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowInterstitialSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v2, v1, v1}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1679
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1680
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v0

    .line 1682
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1683
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onShowInterstitialSuccess called with no demand"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1687
    :cond_41
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/WebController;->access$3500(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v1

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/AdUnitsState;->adOpened(I)V

    .line 1688
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/WebController;->access$3500(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/sdk/data/AdUnitsState;->setDisplayedDemandSourceId(Ljava/lang/String;)V

    .line 1690
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/ironsource/sdk/controller/WebController;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/ironsource/sdk/controller/WebController;->access$2900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 1692
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    new-instance v2, Lcom/ironsource/sdk/controller/WebController$NativeAPI$13;

    invoke-direct {v2, p0, v0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$13;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1698
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v2, "onShowInterstitialSuccess"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, p1}, Lcom/ironsource/sdk/controller/WebController;->access$4400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)V

    :cond_78
    const/4 p1, 0x0

    .line 1700
    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->setInterstitialAvailability(Ljava/lang/String;Z)V

    return-void
.end method

.method public onShowOfferWallFail(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1564
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowOfferWallFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "errMsg"

    .line 1567
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1569
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/ironsource/sdk/controller/WebController;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/ironsource/sdk/controller/WebController;->access$2900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1570
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    new-instance v2, Lcom/ironsource/sdk/controller/WebController$NativeAPI$9;

    invoke-direct {v2, p0, v0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$9;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1581
    :cond_42
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v2, v2}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1582
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "onShowOfferWallFail"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/WebController;->access$4400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onShowOfferWallSuccess(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1545
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowOfferWallSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$3500(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v0

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->adOpened(I)V

    const-string v0, "placementId"

    .line 1548
    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/SDKUtils;->getValueFromJsonObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1550
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/ironsource/sdk/controller/WebController;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/ironsource/sdk/controller/WebController;->access$2900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1551
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    new-instance v2, Lcom/ironsource/sdk/controller/WebController$NativeAPI$8;

    invoke-direct {v2, p0, v0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$8;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1558
    :cond_4c
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v2, v2}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1559
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "onShowOfferWallSuccess"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/WebController;->access$4400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onShowRewardedVideoFail(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1496
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowRewardedVideoFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "errMsg"

    .line 1499
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1500
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v0

    .line 1502
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/ironsource/sdk/controller/WebController;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/WebController;->access$2900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1504
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    new-instance v3, Lcom/ironsource/sdk/controller/WebController$NativeAPI$7;

    invoke-direct {v3, p0, v1, v0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$7;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1517
    :cond_46
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v2, v2}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1518
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "onShowRewardedVideoFail"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/WebController;->access$4400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onShowRewardedVideoSuccess(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1488
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowRewardedVideoSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v2, v1, v1}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1491
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "onShowRewardedVideoSuccess"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/WebController;->access$4400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoStatusChanged(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2210
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoStatusChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string p1, "productType"

    .line 2212
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2214
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mVideoEventsListener:Lcom/ironsource/sdk/controller/VideoEventsListener;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/WebController;->access$5000(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/VideoEventsListener;

    move-result-object v1

    if-eqz v1, :cond_b2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b2

    const-string p1, "status"

    .line 2215
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "started"

    .line 2216
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 2217
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mVideoEventsListener:Lcom/ironsource/sdk/controller/VideoEventsListener;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$5000(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/VideoEventsListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/sdk/controller/VideoEventsListener;->onVideoStarted()V

    goto :goto_b2

    :cond_50
    const-string v0, "paused"

    .line 2218
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 2219
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mVideoEventsListener:Lcom/ironsource/sdk/controller/VideoEventsListener;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$5000(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/VideoEventsListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/sdk/controller/VideoEventsListener;->onVideoPaused()V

    goto :goto_b2

    :cond_62
    const-string v0, "playing"

    .line 2220
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 2221
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mVideoEventsListener:Lcom/ironsource/sdk/controller/VideoEventsListener;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$5000(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/VideoEventsListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/sdk/controller/VideoEventsListener;->onVideoResumed()V

    goto :goto_b2

    :cond_74
    const-string v0, "ended"

    .line 2222
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 2223
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mVideoEventsListener:Lcom/ironsource/sdk/controller/VideoEventsListener;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$5000(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/VideoEventsListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/sdk/controller/VideoEventsListener;->onVideoEnded()V

    goto :goto_b2

    :cond_86
    const-string v0, "stopped"

    .line 2224
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 2225
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mVideoEventsListener:Lcom/ironsource/sdk/controller/VideoEventsListener;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$5000(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/VideoEventsListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/sdk/controller/VideoEventsListener;->onVideoStopped()V

    goto :goto_b2

    .line 2227
    :cond_98
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoStatusChanged: unknown status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b2
    :goto_b2
    return-void
.end method

.method public openUrl(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2019
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openUrl("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v1, "url"

    .line 2022
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "method"

    .line 2023
    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2026
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v2}, Lcom/ironsource/sdk/controller/WebController;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v2

    :try_start_36
    const-string v3, "external_browser"

    .line 2028
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 2029
    invoke-static {v2, v1}, Lcom/ironsource/environment/UrlHandler;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_9c

    :cond_42
    const-string v3, "webview"

    .line 2030
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6b

    .line 2032
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2033
    sget-object v3, Lcom/ironsource/sdk/controller/WebController;->EXTERNAL_URL:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2034
    sget-object v1, Lcom/ironsource/sdk/controller/WebController;->SECONDARY_WEB_VIEW:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "immersive"

    .line 2035
    iget-object v3, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mIsImmersive:Z
    invoke-static {v3}, Lcom/ironsource/sdk/controller/WebController;->access$3200(Lcom/ironsource/sdk/controller/WebController;)Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2036
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_9c

    :cond_6b
    const-string v3, "store"

    .line 2038
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 2040
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2041
    sget-object v3, Lcom/ironsource/sdk/controller/WebController;->EXTERNAL_URL:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2042
    sget-object v1, Lcom/ironsource/sdk/controller/WebController;->IS_STORE:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2043
    sget-object v1, Lcom/ironsource/sdk/controller/WebController;->SECONDARY_WEB_VIEW:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2044
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_8c} :catch_8d

    goto :goto_9c

    :catch_8d
    move-exception v0

    .line 2047
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, p1, v2, v3, v4}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2048
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9c
    :goto_9c
    return-void
.end method

.method public permissionsAPI(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2359
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "permissionsAPI("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2360
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2361
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mPermissionsJsAdapter:Lcom/ironsource/sdk/controller/PermissionsJSAdapter;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$5400(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/controller/PermissionsJSAdapter;

    move-result-object p1

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAObj;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ironsource/sdk/controller/WebController$NativeAPI$JSCallbackTask;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$JSCallbackTask;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;)V

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/sdk/controller/PermissionsJSAdapter;->call(Ljava/lang/String;Lcom/ironsource/sdk/controller/WebController$NativeAPI$JSCallbackTask;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    goto :goto_59

    :catch_37
    move-exception p1

    .line 2363
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2364
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "permissionsAPI failed with exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_59
    return-void
.end method

.method public postAdEventNotification(Ljava/lang/String;)V
    .registers 23
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 2235
    :try_start_4
    iget-object v1, v7, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postAdEventNotification("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2237
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, v0}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v2, "eventName"

    .line 2240
    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2241
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_3e

    .line 2242
    iget-object v1, v7, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v2, "eventName does not exist"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v0, v4, v2, v3}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3e
    const-string v2, "dsName"

    .line 2247
    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2248
    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lcom/ironsource/sdk/data/SSAObj;)Ljava/lang/String;

    move-result-object v2

    .line 2249
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_50

    move-object v6, v2

    goto :goto_51

    :cond_50
    move-object v6, v14

    :goto_51
    const-string v2, "extData"

    .line 2252
    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lorg/json/JSONObject;

    const-string v2, "productType"

    .line 2254
    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2255
    iget-object v1, v7, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->getStringProductTypeAsEnum(Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    invoke-static {v1, v10}, Lcom/ironsource/sdk/controller/WebController;->access$4500(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    move-result-object v20

    .line 2257
    iget-object v1, v7, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->shouldNotifyDeveloper(Ljava/lang/String;)Z
    invoke-static {v1, v10}, Lcom/ironsource/sdk/controller/WebController;->access$2900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 2259
    iget-object v1, v7, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/ironsource/sdk/controller/WebController;->access$1800(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2260
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9f

    .line 2261
    iget-object v8, v7, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v9, "productType"

    const-string v11, "eventName"

    const-string v13, "demandSourceName"

    const-string v15, "demandSourceId"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v5

    move-object/from16 v16, v6

    # invokes: Lcom/ironsource/sdk/controller/WebController;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static/range {v8 .. v18}, Lcom/ironsource/sdk/controller/WebController;->access$2500(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2263
    iget-object v2, v7, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v3, "postAdEventNotificationSuccess"

    const-string v4, "postAdEventNotificationFail"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0, v1, v3, v4}, Lcom/ironsource/sdk/controller/WebController;->access$2100(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2264
    iget-object v1, v7, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/ironsource/sdk/controller/WebController;->access$500(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)V

    .line 2267
    :cond_9f
    iget-object v0, v7, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    new-instance v8, Lcom/ironsource/sdk/controller/WebController$NativeAPI$27;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, v20

    move-object v4, v6

    move-object/from16 v6, v19

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$27;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v8}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_be

    .line 2280
    :cond_b2
    iget-object v1, v7, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v2, "productType does not exist"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v0, v4, v2, v3}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b9} :catch_ba

    goto :goto_be

    :catch_ba
    move-exception v0

    .line 2283
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_be
    return-void
.end method

.method public removeCloseEventHandler(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1411
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCloseEventHandler("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mCloseEventTimer:Landroid/os/CountDownTimer;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$1100(Lcom/ironsource/sdk/controller/WebController;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 1414
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mCloseEventTimer:Landroid/os/CountDownTimer;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$1100(Lcom/ironsource/sdk/controller/WebController;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 1417
    :cond_30
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v0, 0x1

    # setter for: Lcom/ironsource/sdk/controller/WebController;->isRemoveCloseEventHandler:Z
    invoke-static {p1, v0}, Lcom/ironsource/sdk/controller/WebController;->access$1002(Lcom/ironsource/sdk/controller/WebController;Z)Z

    return-void
.end method

.method public removeMessagingInterface(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 762
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    new-instance v0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$1;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$1;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;)V

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveFile(Ljava/lang/String;)V
    .registers 10
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 973
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveFile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    new-instance v0, Lcom/ironsource/sdk/data/SSAFile;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAFile;-><init>(Ljava/lang/String;)V

    .line 977
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mCacheDirectory:Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/WebController;->access$1300(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/environment/DeviceStatus;->getAvailableMemorySizeInMegaBytes(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-gtz v7, :cond_3e

    .line 979
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "no_disk_space"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v3, v1, v4}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 983
    :cond_3e
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->isExternalStorageAvailable()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 985
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "sotrage_unavailable"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v3, v1, v4}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 989
    :cond_4c
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mCacheDirectory:Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/WebController;->access$1300(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->isFileCached(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAFile;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 990
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "file_already_exist"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v3, v1, v4}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 994
    :cond_60
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v1}, Lcom/ironsource/sdk/controller/WebController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/network/ConnectivityService;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_74

    .line 996
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "no_network_connection"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v3, v1, v4}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1000
    :cond_74
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v2, 0x1

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, p1, v2, v4, v4}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1002
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAFile;->getLastUpdateTime()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a9

    .line 1006
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1009
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a9

    .line 1012
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    .line 1014
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 1015
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1016
    array-length v3, v1

    sub-int/2addr v3, v2

    aget-object v1, v1, v3

    .line 1021
    :cond_a2
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setCampaignLastUpdate(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    :cond_a9
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;
    invoke-static {p1}, Lcom/ironsource/sdk/controller/WebController;->access$2800(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/precache/DownloadManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/precache/DownloadManager;->downloadFile(Lcom/ironsource/sdk/data/SSAFile;)V

    return-void
.end method

.method sendUnauthorizedError(Ljava/lang/String;)V
    .registers 5

    .line 2288
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v1, 0x0

    const-string v2, "unauthorizedMessage"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v2, p1, v1, v1}, Lcom/ironsource/sdk/controller/WebController;->access$2100(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2289
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/WebController;->access$500(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)V

    return-void
.end method

.method public setBackButtonState(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2069
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackButtonState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string p1, "state"

    .line 2072
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2074
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setBackButtonState(Ljava/lang/String;)V

    return-void
.end method

.method public setForceClose(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2054
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setForceClose("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string p1, "width"

    .line 2058
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "height"

    .line 2059
    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2061
    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    # setter for: Lcom/ironsource/sdk/controller/WebController;->mHiddenForceCloseWidth:I
    invoke-static {v2, p1}, Lcom/ironsource/sdk/controller/WebController;->access$702(Lcom/ironsource/sdk/controller/WebController;I)I

    .line 2062
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/ironsource/sdk/controller/WebController;->mHiddenForceCloseHeight:I
    invoke-static {p1, v1}, Lcom/ironsource/sdk/controller/WebController;->access$802(Lcom/ironsource/sdk/controller/WebController;I)I

    .line 2063
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "position"

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/ironsource/sdk/controller/WebController;->mHiddenForceCloseLocation:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/ironsource/sdk/controller/WebController;->access$902(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public setMixedContentAlwaysAllow(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 860
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMixedContentAlwaysAllow("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    new-instance v0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$2;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/WebController$NativeAPI$2;-><init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;)V

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/controller/WebController;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOrientation(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1206
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string p1, "orientation"

    .line 1209
    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1211
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/WebController;->setOrientationState(Ljava/lang/String;)V

    .line 1212
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/WebController;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/environment/DeviceStatus;->getApplicationRotation(Landroid/content/Context;)I

    move-result v0

    .line 1214
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/WebController;->access$3700(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 1215
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/WebController;->access$3700(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;->onOrientationChanged(Ljava/lang/String;I)V

    :cond_4a
    return-void
.end method

.method public setStoreSearchKeys(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2079
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStoreSearchKeys("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2081
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setSearchKeys(Ljava/lang/String;)V

    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .registers 20
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2100
    iget-object v2, v0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setUserData("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2102
    new-instance v2, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v2, v1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string v3, "key"

    .line 2104
    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v4, :cond_3a

    .line 2105
    iget-object v2, v0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v3, "key does not exist"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v1, v6, v3, v5}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3a
    const-string v4, "value"

    .line 2109
    invoke-virtual {v2, v4}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4a

    .line 2110
    iget-object v2, v0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v3, "value does not exist"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v1, v6, v3, v5}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2114
    :cond_4a
    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2115
    invoke-virtual {v2, v4}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2117
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setUserData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 2120
    iget-object v2, v0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/ironsource/sdk/controller/WebController;->access$1800(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2121
    iget-object v7, v0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    # invokes: Lcom/ironsource/sdk/controller/WebController;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static/range {v7 .. v17}, Lcom/ironsource/sdk/controller/WebController;->access$2500(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 2122
    iget-object v3, v0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v1, v2}, Lcom/ironsource/sdk/controller/WebController;->access$400(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2123
    iget-object v2, v0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->injectJavascript(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/ironsource/sdk/controller/WebController;->access$500(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)V

    goto :goto_85

    .line 2125
    :cond_7e
    iget-object v2, v0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v3, "SetUserData failed writing to shared preferences"

    # invokes: Lcom/ironsource/sdk/controller/WebController;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v1, v6, v3, v5}, Lcom/ironsource/sdk/controller/WebController;->access$2700(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :goto_85
    return-void
.end method

.method public setWebviewBackgroundColor(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2086
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWebviewBackgroundColor("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->setWebviewBackground(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/WebController;->access$4900(Lcom/ironsource/sdk/controller/WebController;Ljava/lang/String;)V

    return-void
.end method
