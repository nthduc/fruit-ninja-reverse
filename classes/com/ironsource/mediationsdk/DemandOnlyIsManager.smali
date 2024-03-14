.class Lcom/ironsource/mediationsdk/DemandOnlyIsManager;
.super Ljava/lang/Object;
.source "DemandOnlyIsManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/DemandOnlyIsManagerListener;


# instance fields
.field private mAuctionSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

.field private mSmashes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/ProviderSettings;",
            ">;",
            "Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->mAuctionSettings:Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .line 40
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SupersonicAds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_52

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IronSource"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    goto :goto_52

    .line 48
    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->logInternal(Ljava/lang/String;)V

    goto :goto_14

    .line 41
    :cond_52
    :goto_52
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/ironsource/mediationsdk/AdapterRepository;->getAdapter(Lcom/ironsource/mediationsdk/model/ProviderSettings;Lorg/json/JSONObject;Z)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v7

    if-eqz v7, :cond_14

    .line 44
    new-instance v8, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAdaptersSmartLoadTimeout()I

    move-result v6

    move-object v1, v8

    move-object v2, p3

    move-object v3, p4

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v1 .. v7}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/ProviderSettings;Lcom/ironsource/mediationsdk/sdk/DemandOnlyIsManagerListener;ILcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 45
    iget-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getSubProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_79
    return-void
.end method

.method private logInternal(Ljava/lang/String;)V
    .registers 6

    .line 264
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DemandOnlyIsManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logSmashCallback(Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;Ljava/lang/String;)V
    .registers 5

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DemandOnlyIsManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 271
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private sendMediationEvent(ILjava/lang/String;)V
    .registers 6

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "provider"

    const-string v2, "Mediation"

    .line 254
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 255
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

    .line 256
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    new-instance p2, Lcom/ironsource/eventsmodule/EventData;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p2, p1, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 258
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V
    .registers 4

    const/4 v0, 0x0

    .line 228
    check-cast v0, [[Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;[[Ljava/lang/Object;)V

    return-void
.end method

.method private sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;[[Ljava/lang/Object;)V
    .registers 10

    .line 234
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->getProviderEventData()Ljava/util/Map;

    move-result-object p2

    if-eqz p3, :cond_3c

    .line 238
    :try_start_6
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_3c

    aget-object v3, p3, v2

    .line 239
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

    .line 243
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IS sendProviderEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 246
    :cond_3c
    new-instance p3, Lcom/ironsource/eventsmodule/EventData;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p3, p1, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 247
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method


# virtual methods
.method public isInterstitialReady(Ljava/lang/String;)Z
    .registers 4

    .line 134
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const/16 v0, 0x9c4

    .line 135
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendMediationEvent(ILjava/lang/String;)V

    return v1

    .line 139
    :cond_f
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;

    .line 140
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->isInterstitialReady()Z

    move-result v0

    if-eqz v0, :cond_24

    const/16 v0, 0x8a3

    .line 141
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V

    const/4 p1, 0x1

    return p1

    :cond_24
    const/16 v0, 0x8a4

    .line 144
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V

    return v1
.end method

.method public loadInterstitialWithAdm(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9

    const-string v0, ""

    .line 63
    :try_start_2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const/16 p2, 0x9c4

    .line 64
    invoke-direct {p0, p2, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendMediationEvent(ILjava/lang/String;)V

    const-string p2, "Interstitial"

    .line 65
    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNonExistentInstanceError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    .line 66
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 70
    :cond_1d
    iget-object v1, p0, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;

    const/16 v2, 0x7d2

    const/16 v3, 0x898

    if-eqz p3, :cond_9e

    .line 72
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->isBidder()Z

    move-result p3

    if-nez p3, :cond_4a

    const-string p2, "loadInterstitialWithAdm in IAB flow must be called by bidder instances"

    .line 73
    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    .line 74
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->logInternal(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 76
    invoke-direct {p0, v3, v1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V

    goto/16 :goto_d8

    .line 83
    :cond_4a
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->decodeAdmResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 84
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getAuctionDataFromResponse(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;

    move-result-object p2

    .line 85
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object p3

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->getWaterfall()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3, v0, v4}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getAuctionResponseItem(Ljava/lang/String;Ljava/util/List;)Lcom/ironsource/mediationsdk/AuctionResponseItem;

    move-result-object p3

    if-eqz p3, :cond_86

    .line 87
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getServerData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->setDynamicDemandSourceIdByServerData(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getServerData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->getAuctionId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getBurls()Ljava/util/List;

    move-result-object p3

    invoke-virtual {v1, v0, p2, p3}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->loadInterstitial(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 89
    invoke-direct {p0, v2, v1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V

    goto :goto_d8

    :cond_86
    const-string p2, "loadInterstitialWithAdm invalid enriched adm"

    .line 91
    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    .line 92
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->logInternal(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 94
    invoke-direct {p0, v3, v1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V

    goto :goto_d8

    .line 98
    :cond_9e
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->isBidder()Z

    move-result p2

    if-nez p2, :cond_ac

    .line 99
    invoke-direct {p0, v2, v1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V

    const/4 p2, 0x0

    .line 100
    invoke-virtual {v1, v0, v0, p2}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->loadInterstitial(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_d8

    :cond_ac
    const-string p2, "loadInterstitialWithAdm in non IAB flow must be called by non bidder instances"

    .line 103
    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    .line 104
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->logInternal(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 106
    invoke-direct {p0, v3, v1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c3} :catch_c4

    goto :goto_d8

    :catch_c4
    const-string p2, "loadInterstitialWithAdm exception"

    .line 110
    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p2

    .line 111
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->logInternal(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :goto_d8
    return-void
.end method

.method public onInterstitialAdClicked(Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V
    .registers 3

    const-string v0, "onInterstitialAdClicked"

    .line 212
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;Ljava/lang/String;)V

    const/16 v0, 0x7d6

    .line 213
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V

    .line 214
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdClicked(Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdClosed(Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V
    .registers 9

    const-string v0, "onInterstitialAdClosed"

    .line 189
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(I)I

    move-result v0

    const/4 v2, 0x1

    .line 193
    new-array v3, v2, [[Ljava/lang/Object;

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "sessionDepth"

    aput-object v6, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    aput-object v4, v3, v5

    const/16 v0, 0x89c

    invoke-direct {p0, v0, p1, v3}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;[[Ljava/lang/Object;)V

    .line 194
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->increaseSessionDepth(I)V

    .line 196
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdClosed(Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;J)V
    .registers 11

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterstitialAdLoadFailed error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 165
    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "errorCode"

    aput-object v4, v2, v3

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v4, "reason"

    aput-object v4, v2, v3

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v4, "duration"

    aput-object v4, v2, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v2, v5

    aput-object v2, v0, v1

    const/16 p3, 0x898

    invoke-direct {p0, p3, p2, v0}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;[[Ljava/lang/Object;)V

    .line 166
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object p3

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public onInterstitialAdOpened(Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V
    .registers 12

    const-string v0, "onInterstitialAdOpened"

    .line 173
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;Ljava/lang/String;)V

    const/16 v0, 0x7d5

    .line 174
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V

    .line 175
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdOpened(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->isBidder()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 177
    iget-object v0, p1, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->mBUrl:Ljava/util/List;

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

    .line 178
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->getInstanceType()I

    move-result v5

    iget-object v6, p1, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->mDynamicDemandSourceId:Ljava/lang/String;

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    invoke-virtual/range {v2 .. v9}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->enrichNotificationURL(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->sendResponse(Ljava/lang/String;)V

    goto :goto_21

    :cond_4e
    return-void
.end method

.method public onInterstitialAdReady(Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;J)V
    .registers 9

    const-string v0, "onInterstitialAdReady"

    .line 155
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 156
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

    const/16 p2, 0x7d3

    invoke-direct {p0, p2, p1, v1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;[[Ljava/lang/Object;)V

    .line 157
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdReady(Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V
    .registers 9

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterstitialAdShowFailed error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 204
    new-array v1, v0, [[Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "errorCode"

    aput-object v4, v2, v3

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "reason"

    aput-object v2, v0, v3

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    aput-object v0, v1, v5

    const/16 v0, 0x89b

    invoke-direct {p0, v0, p2, v1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;[[Ljava/lang/Object;)V

    .line 205
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public onInterstitialAdVisible(Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V
    .registers 3

    const/16 v0, 0x8a2

    .line 221
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V

    const-string v0, "onInterstitialAdVisible"

    .line 222
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;Ljava/lang/String;)V

    return-void
.end method

.method public showInterstitial(Ljava/lang/String;)V
    .registers 4

    .line 119
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const/16 v0, 0x9c4

    .line 120
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendMediationEvent(ILjava/lang/String;)V

    const-string v0, "Interstitial"

    .line 121
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNonExistentInstanceError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 122
    invoke-static {}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/ironsource/mediationsdk/ISDemandOnlyListenerWrapper;->onInterstitialAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 126
    :cond_1b
    iget-object v0, p0, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;

    const/16 v0, 0x899

    .line 127
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/DemandOnlyIsSmash;)V

    .line 128
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/DemandOnlyIsSmash;->showInterstitial()V

    return-void
.end method
