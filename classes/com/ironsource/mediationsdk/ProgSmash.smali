.class public abstract Lcom/ironsource/mediationsdk/ProgSmash;
.super Ljava/lang/Object;
.source "ProgSmash.java"


# instance fields
.field protected mAdUnitSettings:Lorg/json/JSONObject;

.field protected mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

.field protected mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

.field protected mDynamicDemandSourceId:Ljava/lang/String;

.field private mIsLoadCandidate:Z


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/model/AdapterConfig;Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    .line 26
    iput-object p2, p0, Lcom/ironsource/mediationsdk/ProgSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 27
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getAdUnitSetings()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgSmash;->mAdUnitSettings:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public getInstanceName()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getProviderName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceType()I
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getInstanceType()I

    move-result v0

    return v0
.end method

.method public getIsLoadCandidate()Z
    .registers 2

    .line 55
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/ProgSmash;->mIsLoadCandidate:Z

    return v0
.end method

.method public getMaxAdsPerSession()I
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getMaxAdsPerSession()I

    move-result v0

    return v0
.end method

.method public getNameForReflection()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getProviderNameForReflection()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgrammaticValue()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getProviderEventData()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_5
    const-string v1, "providerAdapterVersion"

    .line 67
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_6c

    const-string v3, ""

    if-eqz v2, :cond_14

    :try_start_d
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getVersion()Ljava/lang/String;

    move-result-object v2

    goto :goto_15

    :cond_14
    move-object v2, v3

    :goto_15
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "providerSDKVersion"

    .line 68
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getCoreSDKVersion()Ljava/lang/String;

    move-result-object v3

    :cond_24
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "spId"

    .line 69
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getSubProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "provider"

    .line 70
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getAdSourceNameForEvents()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "instanceType"

    .line 71
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgSmash;->isBidder()Z

    move-result v2

    if-eqz v2, :cond_47

    const/4 v2, 0x2

    goto :goto_48

    :cond_47
    const/4 v2, 0x1

    :goto_48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "programmatic"

    .line 72
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgSmash;->getProgrammaticValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgSmash;->mDynamicDemandSourceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_90

    const-string v1, "dynamicDemandSource"

    .line 74
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgSmash;->mDynamicDemandSourceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_6b} :catch_6c

    goto :goto_90

    :catch_6c
    move-exception v1

    .line 78
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProviderEventData "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_90
    :goto_90
    return-object v0
.end method

.method public isBidder()Z
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->isBidder()Z

    move-result v0

    return v0
.end method

.method public setDynamicDemandSourceIdByServerData(Ljava/lang/String;)V
    .registers 3

    .line 85
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getDynamicDemandSourceIdFromServerData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgSmash;->mDynamicDemandSourceId:Ljava/lang/String;

    return-void
.end method

.method public setIsLoadCandidate(Z)V
    .registers 2

    .line 51
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/ProgSmash;->mIsLoadCandidate:Z

    return-void
.end method
