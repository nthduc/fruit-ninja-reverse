.class Lcom/ironsource/mediationsdk/DemandOnlyRvManager;
.super Ljava/lang/Object;
.source "DemandOnlyRvManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;


# instance fields
.field private mAppKey:Ljava/lang/String;

.field private mAuctionSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

.field private mSmashes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/ProviderSettings;",
            ">;",
            "Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p3, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->mAppKey:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->mAuctionSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    .line 45
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_16
    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .line 46
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SupersonicAds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_54

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IronSource"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    goto :goto_54

    .line 54
    :cond_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->logInternal(Ljava/lang/String;)V

    goto :goto_16

    .line 47
    :cond_54
    :goto_54
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/ironsource/mediationsdk/AdapterRepository;->getAdapter(Lcom/ironsource/mediationsdk/model/ProviderSettings;Lorg/json/JSONObject;Z)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v7

    if-eqz v7, :cond_16

    .line 50
    new-instance v8, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAdaptersSmartLoadTimeout()I

    move-result v6

    move-object v1, v8

    move-object v2, p3

    move-object v3, p4

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v1 .. v7}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/ProviderSettings;Lcom/ironsource/mediationsdk/sdk/DemandOnlyRvManagerListener;ILcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 51
    iget-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getSubProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_7b
    return-void
.end method

.method private logInternal(Ljava/lang/String;)V
    .registers 6

    .line 313
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DemandOnlyRvManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logSmashCallback(Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;Ljava/lang/String;)V
    .registers 5

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DemandOnlyRvManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 320
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private sendMediationEvent(ILjava/lang/String;)V
    .registers 6

    .line 302
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "provider"

    const-string v2, "Mediation"

    .line 303
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 304
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isDemandOnly"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_19

    goto :goto_1b

    :cond_19
    const-string p2, ""

    :goto_1b
    const-string v1, "spId"

    .line 305
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    new-instance p2, Lcom/ironsource/eventsmodule/EventData;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p2, p1, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 307
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyRvSmash;)V
    .registers 4

    const/4 v0, 0x0

    .line 277
    check-cast v0, [[Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyRvSmash;[[Ljava/lang/Object;)V

    return-void
.end method

.method private sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyRvSmash;[[Ljava/lang/Object;)V
    .registers 10

    .line 283
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->getProviderEventData()Ljava/util/Map;

    move-result-object p2

    if-eqz p3, :cond_3c

    .line 287
    :try_start_6
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_3c

    aget-object v3, p3, v2

    .line 288
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_1c

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :catch_1c
    move-exception p3

    .line 292
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RV sendProviderEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 295
    :cond_3c
    new-instance p3, Lcom/ironsource/eventsmodule/EventData;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p3, p1, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 296
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method


# virtual methods
.method public isRewardedVideoAvailable(Ljava/lang/String;)Z
    .registers 4

    .line 141
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const/16 v0, 0x5dc

    .line 142
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->sendMediationEvent(ILjava/lang/String;)V

    return v1

    .line 146
    :cond_f
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;

    .line 147
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->isRewardedVideoAvailable()Z

    move-result v0

    if-eqz v0, :cond_24

    const/16 v0, 0x4ba

    .line 148
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyRvSmash;)V

    const/4 p1, 0x1

    return p1

    :cond_24
    const/16 v0, 0x4bb

    .line 151
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyRvSmash;)V

    return v1
.end method

.method public loadRewardedVideoWithAdm(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9

    const-string v0, ""

    .line 69
    :try_start_2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const/16 p2, 0x5dc

    .line 70
    invoke-direct {p0, p2, p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->sendMediationEvent(ILjava/lang/String;)V

    const-string p2, "Rewarded Video"

    .line 71
    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNonExistentInstanceError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    .line 72
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 76
    :cond_1d
    iget-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;

    const/16 v2, 0x3e9

    const/16 v3, 0x4b0

    if-eqz p3, :cond_9e

    .line 78
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->isBidder()Z

    move-result p3

    if-nez p3, :cond_4a

    const-string p2, "loadRewardedVideoWithAdm in IAB flow must be called by bidder instances"

    .line 79
    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    .line 80
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->logInternal(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 82
    invoke-direct {p0, v3, v1}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyRvSmash;)V

    goto/16 :goto_ea

    .line 89
    :cond_4a
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->decodeAdmResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 90
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getAuctionDataFromResponse(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;

    move-result-object p2

    .line 91
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object p3

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->getWaterfall()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3, v0, v4}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getAuctionResponseItem(Ljava/lang/String;Ljava/util/List;)Lcom/ironsource/mediationsdk/AuctionResponseItem;

    move-result-object p3

    if-eqz p3, :cond_86

    .line 93
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getServerData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->setDynamicDemandSourceIdByServerData(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getServerData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->getAuctionId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getBurls()Ljava/util/List;

    move-result-object p3

    invoke-virtual {v1, v0, p2, p3}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->loadRewardedVideo(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 95
    invoke-direct {p0, v2, v1}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyRvSmash;)V

    goto :goto_ea

    :cond_86
    const-string p2, "loadRewardedVideoWithAdm invalid enriched adm"

    .line 98
    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    .line 99
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->logInternal(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 101
    invoke-direct {p0, v3, v1}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyRvSmash;)V

    goto :goto_ea

    .line 105
    :cond_9e
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->isBidder()Z

    move-result p2

    if-nez p2, :cond_ac

    .line 106
    invoke-direct {p0, v2, v1}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyRvSmash;)V

    const/4 p2, 0x0

    .line 107
    invoke-virtual {v1, v0, v0, p2}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->loadRewardedVideo(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_ea

    :cond_ac
    const-string p2, "loadRewardedVideoWithAdm in non IAB flow must be called by non bidder instances"

    .line 110
    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    .line 111
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->logInternal(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 113
    invoke-direct {p0, v3, v1}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyRvSmash;)V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c3} :catch_c4

    goto :goto_ea

    :catch_c4
    move-exception p2

    .line 117
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadRewardedVideoWithAdm exception "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->logInternal(Ljava/lang/String;)V

    const-string p2, "loadRewardedVideoWithAdm exception"

    .line 118
    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    .line 119
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_ea
    return-void
.end method

.method public onRewardedVideoAdClicked(Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;)V
    .registers 3

    const-string v0, "onRewardedVideoAdClicked"

    .line 219
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;Ljava/lang/String;)V

    const/16 v0, 0x3ee

    .line 220
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyRvSmash;)V

    .line 221
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdClicked(Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdClosed(Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;)V
    .registers 8

    const-string v0, "onRewardedVideoAdClosed"

    .line 196
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(I)I

    move-result v0

    .line 200
    new-array v2, v1, [[Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "sessionDepth"

    aput-object v5, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    aput-object v3, v2, v4

    const/16 v0, 0x4b3

    invoke-direct {p0, v0, p1, v2}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyRvSmash;[[Ljava/lang/Object;)V

    .line 201
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->increaseSessionDepth(I)V

    .line 203
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdClosed(Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;J)V
    .registers 15

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRewardedVideoAdLoadFailed error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 172
    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "errorCode"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v3, v7

    aput-object v3, v1, v5

    new-array v3, v2, [Ljava/lang/Object;

    const-string v6, "reason"

    aput-object v6, v3, v5

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    aput-object v3, v1, v7

    new-array v3, v2, [Ljava/lang/Object;

    const-string v8, "duration"

    aput-object v8, v3, v5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v3, v7

    aput-object v3, v1, v2

    const/16 v3, 0x4b0

    invoke-direct {p0, v3, p2, v1}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyRvSmash;[[Ljava/lang/Object;)V

    .line 173
    new-array v0, v0, [[Ljava/lang/Object;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v4, v1, v5

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v7

    aput-object v1, v0, v5

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v6, v1, v5

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v7

    aput-object v1, v0, v7

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v8, v1, v5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v1, v7

    aput-object v1, v0, v2

    const/16 p3, 0x4bc

    invoke-direct {p0, p3, p2, v0}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyRvSmash;[[Ljava/lang/Object;)V

    .line 174
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object p3

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public onRewardedVideoAdOpened(Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;)V
    .registers 12

    const-string v0, "onRewardedVideoAdOpened"

    .line 181
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;Ljava/lang/String;)V

    const/16 v0, 0x3ed

    .line 182
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyRvSmash;)V

    .line 183
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdOpened(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->isBidder()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 185
    iget-object v0, p1, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mBUrl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 186
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->getInstanceType()I

    move-result v5

    iget-object v6, p1, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->mDynamicDemandSourceId:Ljava/lang/String;

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    invoke-virtual/range {v2 .. v9}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->enrichNotificationURL(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->sendResponse(Ljava/lang/String;)V

    goto :goto_21

    :cond_4e
    return-void
.end method

.method public onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;)V
    .registers 7

    const-string v0, "onRewardedVideoAdRewarded"

    .line 236
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->getProviderEventData()Ljava/util/Map;

    move-result-object v0

    .line 240
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDynamicUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 241
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDynamicUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dynamicUserId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_24
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRvServerParams()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_6b

    .line 245
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRvServerParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "custom_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRvServerParams()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    .line 251
    :cond_6b
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getCurrentServerResponse()Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v1

    if-eqz v1, :cond_a1

    .line 254
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "placement"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rewardName"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardAmount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rewardAmount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ad

    .line 259
    :cond_a1
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x3

    const-string v4, "defaultPlacement is null"

    invoke-virtual {v1, v2, v4, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 262
    :goto_ad
    new-instance v1, Lcom/ironsource/eventsmodule/EventData;

    const/16 v2, 0x3f2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {v1, v2, v3}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ironsource/eventsmodule/EventData;->getTimeStamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->mAppKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getTransId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "transId"

    .line 267
    invoke-virtual {v1, v2, v0}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 271
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdRewarded(Ljava/lang/String;)V

    return-void
.end method

.method public onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;)V
    .registers 8

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRewardedVideoAdShowFailed error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 211
    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "errorCode"

    aput-object v4, v2, v3

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    aput-object v2, v1, v3

    const/16 v0, 0x4b2

    invoke-direct {p0, v0, p2, v1}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyRvSmash;[[Ljava/lang/Object;)V

    .line 212
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public onRewardedVideoAdVisible(Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;)V
    .registers 3

    const-string v0, "onRewardedVideoAdVisible"

    .line 228
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;Ljava/lang/String;)V

    const/16 v0, 0x4b6

    .line 229
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyRvSmash;)V

    return-void
.end method

.method public onRewardedVideoLoadSuccess(Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;J)V
    .registers 9

    const-string v0, "onRewardedVideoLoadSuccess"

    .line 162
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 163
    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "duration"

    aput-object v4, v2, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, v0

    aput-object v2, v1, v3

    const/16 p2, 0x3ea

    invoke-direct {p0, p2, p1, v1}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyRvSmash;[[Ljava/lang/Object;)V

    .line 164
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoLoadSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public showRewardedVideo(Ljava/lang/String;)V
    .registers 4

    .line 126
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const/16 v0, 0x5dc

    .line 127
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->sendMediationEvent(ILjava/lang/String;)V

    const-string v0, "Rewarded Video"

    .line 128
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNonExistentInstanceError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 129
    invoke-static {}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/ironsource/mediationsdk/RVDemandOnlyListenerWrapper;->onRewardedVideoAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 133
    :cond_1b
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;

    const/16 v0, 0x4b1

    .line 134
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyRvSmash;)V

    .line 135
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyRvSmash;->showRewardedVideo()V

    return-void
.end method
