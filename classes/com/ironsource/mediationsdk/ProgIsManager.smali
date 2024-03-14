.class Lcom/ironsource/mediationsdk/ProgIsManager;
.super Ljava/lang/Object;
.source "ProgIsManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/ProgIsManagerListener;
.implements Lcom/ironsource/mediationsdk/AuctionEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;
    }
.end annotation


# instance fields
.field private mAdvancedLoading:Z

.field private mAuctionFallback:Ljava/lang/String;

.field private mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

.field private mAuctionHistory:Lcom/ironsource/mediationsdk/AuctionHistory;

.field private mAuctionTrial:I

.field private mCurrentAuctionId:Ljava/lang/String;

.field private mCurrentPlacement:Ljava/lang/String;

.field private mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

.field private mInitMangerTime:J

.field private mIsAuctionEnabled:Z

.field private mLoadStartTime:J

.field private mMaxSmashesToLoad:I

.field private mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

.field mShouldTrackNetworkState:Z

.field private final mSmashes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/ProgIsSmash;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

.field private mTimeToWaitBeforeFirstAction:J

.field private mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ironsource/mediationsdk/ProgIsSmash;",
            ">;"
        }
    .end annotation
.end field

.field private mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;",
            ">;"
        }
    .end annotation
.end field

.field private mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/ProviderSettings;",
            ">;",
            "Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 59
    iput-object v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionFallback:Ljava/lang/String;

    const/4 v8, 0x0

    .line 60
    iput-boolean v8, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mShouldTrackNetworkState:Z

    .line 64
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const v1, 0x14188

    .line 65
    invoke-direct {v7, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I)V

    .line 66
    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_NOT_INITIALIZED:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-direct {v7, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    .line 67
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 69
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    iput-object v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacement:Ljava/lang/String;

    .line 72
    iput-object v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentAuctionId:Ljava/lang/String;

    .line 74
    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAdaptersSmartLoadAmount()I

    move-result v0

    iput v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mMaxSmashesToLoad:I

    .line 75
    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAdvancedLoading()Z

    move-result v0

    iput-boolean v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mAdvancedLoading:Z

    .line 77
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/CallbackThrottler;->setDelayLoadFailureNotificationInSeconds(I)V

    .line 79
    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v11

    .line 80
    invoke-virtual {v11}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getTimeToWaitBeforeFirstAuctionMs()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mTimeToWaitBeforeFirstAction:J

    .line 81
    invoke-virtual {v11}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getNumOfMaxTrials()I

    move-result v0

    const/4 v12, 0x1

    if-lez v0, :cond_68

    const/4 v0, 0x1

    goto :goto_69

    :cond_68
    const/4 v0, 0x0

    :goto_69
    iput-boolean v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mIsAuctionEnabled:Z

    .line 83
    iget-boolean v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mIsAuctionEnabled:Z

    if-eqz v0, :cond_78

    .line 84
    new-instance v0, Lcom/ironsource/mediationsdk/AuctionHandler;

    const-string v1, "interstitial"

    invoke-direct {v0, v1, v11, v7}, Lcom/ironsource/mediationsdk/AuctionHandler;-><init>(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/AuctionSettings;Lcom/ironsource/mediationsdk/AuctionEventListener;)V

    iput-object v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    .line 87
    :cond_78
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_81
    :goto_81
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .line 90
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v0

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/ironsource/mediationsdk/AdapterRepository;->getAdapter(Lcom/ironsource/mediationsdk/model/ProviderSettings;Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v6

    if-eqz v6, :cond_81

    .line 91
    invoke-static {}, Lcom/ironsource/mediationsdk/AdaptersCompatibilityHandler;->getInstance()Lcom/ironsource/mediationsdk/AdaptersCompatibilityHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/ironsource/mediationsdk/AdaptersCompatibilityHandler;->isAdapterVersionISCompatible(Lcom/ironsource/mediationsdk/AbstractAdapter;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 92
    new-instance v15, Lcom/ironsource/mediationsdk/ProgIsSmash;

    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAdaptersSmartLoadTimeout()I

    move-result v5

    move-object v0, v15

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/ironsource/mediationsdk/ProgIsSmash;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/ProviderSettings;Lcom/ironsource/mediationsdk/ProgIsManagerListener;ILcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 93
    invoke-virtual {v15}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_81

    .line 99
    :cond_c3
    new-instance v0, Lcom/ironsource/mediationsdk/AuctionHistory;

    invoke-virtual {v11}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getAuctionSavedHistoryLimit()I

    move-result v1

    invoke-direct {v0, v13, v1}, Lcom/ironsource/mediationsdk/AuctionHistory;-><init>(Ljava/util/List;I)V

    iput-object v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionHistory:Lcom/ironsource/mediationsdk/AuctionHistory;

    .line 100
    new-instance v0, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;-><init>(Ljava/util/List;)V

    iput-object v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    .line 102
    iget-object v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_ea
    :goto_ea
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_100

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/ProgIsSmash;

    .line 103
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isBidder()Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 104
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->initForBidding()V

    goto :goto_ea

    .line 108
    :cond_100
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/ironsource/mediationsdk/ProgIsManager;->mInitMangerTime:J

    .line 109
    sget-object v0, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-direct {v7, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    .line 110
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, v9

    const v2, 0x14189

    .line 111
    new-array v3, v12, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "duration"

    aput-object v5, v4, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v12

    aput-object v4, v3, v8

    invoke-direct {v7, v2, v3}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$002(Lcom/ironsource/mediationsdk/ProgIsManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentAuctionId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/ProgIsManager;)J
    .registers 3

    .line 40
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mInitMangerTime:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/ironsource/mediationsdk/ProgIsManager;)Lcom/ironsource/mediationsdk/AuctionHistory;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionHistory:Lcom/ironsource/mediationsdk/AuctionHistory;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ironsource/mediationsdk/ProgIsManager;)J
    .registers 3

    .line 40
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mTimeToWaitBeforeFirstAction:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/ironsource/mediationsdk/ProgIsManager;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsManager;->makeAuction()V

    return-void
.end method

.method static synthetic access$400(Lcom/ironsource/mediationsdk/ProgIsManager;I[[Ljava/lang/Object;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/ironsource/mediationsdk/ProgIsManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ironsource/mediationsdk/ProgIsManager;)Lcom/ironsource/mediationsdk/utils/SessionCappingManager;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ironsource/mediationsdk/ProgIsManager;Ljava/lang/String;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/ironsource/mediationsdk/ProgIsManager;Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    return-void
.end method

.method static synthetic access$900(Lcom/ironsource/mediationsdk/ProgIsManager;)Lcom/ironsource/mediationsdk/AuctionHandler;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    return-object p0
.end method

.method private extractNonBidderProvidersFromWaterfall()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ">;"
        }
    .end annotation

    .line 216
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 217
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/ProgIsSmash;

    .line 218
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isBidder()Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->isCapped(Lcom/ironsource/mediationsdk/ProgSmash;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_f

    .line 222
    :cond_2a
    new-instance v3, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/ironsource/mediationsdk/AuctionResponseItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_37
    return-object v0
.end method

.method private getAsString(Lcom/ironsource/mediationsdk/AuctionResponseItem;)Ljava/lang/String;
    .registers 4

    .line 230
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/ProgIsSmash;

    if-eqz v0, :cond_17

    .line 234
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    .line 237
    :cond_17
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getServerData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "1"

    goto :goto_26

    :cond_24
    const-string v0, "2"

    .line 240
    :goto_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadSmash(Lcom/ironsource/mediationsdk/ProgIsSmash;)V
    .registers 4

    .line 281
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getServerData()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setDynamicDemandSourceIdByServerData(Ljava/lang/String;)V

    const/16 v1, 0x7d2

    .line 283
    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;)V

    .line 284
    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->loadInterstitial(Ljava/lang/String;)V

    return-void
.end method

.method private loadSmashes()V
    .registers 9

    .line 290
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    .line 291
    sget-object v0, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    const/16 v0, 0x83e

    const/4 v2, 0x2

    .line 292
    new-array v3, v2, [[Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v1

    const/16 v5, 0x40b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    aput-object v4, v3, v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "reason"

    aput-object v4, v2, v1

    const-string v1, "Empty waterfall"

    aput-object v1, v2, v7

    aput-object v2, v3, v7

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 293
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v0

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v2, v5, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 297
    :cond_40
    sget-object v0, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_LOADING_SMASHES:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    const/4 v0, 0x0

    .line 300
    :goto_46
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_96

    iget v2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mMaxSmashesToLoad:I

    if-ge v0, v2, :cond_96

    .line 301
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/ProgIsSmash;

    .line 303
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getIsLoadCandidate()Z

    move-result v3

    if-eqz v3, :cond_93

    .line 305
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAdvancedLoading:Z

    if-eqz v3, :cond_8e

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isBidder()Z

    move-result v3

    if-eqz v3, :cond_8e

    if-nez v0, :cond_70

    .line 311
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/ProgIsManager;->loadSmash(Lcom/ironsource/mediationsdk/ProgIsSmash;)V

    goto :goto_96

    .line 314
    :cond_70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Advanced Loading: Won\'t start loading bidder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as a non bidder is being loaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    goto :goto_96

    .line 320
    :cond_8e
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/ProgIsManager;->loadSmash(Lcom/ironsource/mediationsdk/ProgIsSmash;)V

    add-int/lit8 v0, v0, 0x1

    :cond_93
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    :cond_96
    :goto_96
    return-void
.end method

.method private logAPIError(Ljava/lang/String;)V
    .registers 5

    .line 676
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logInternal(Ljava/lang/String;)V
    .registers 6

    .line 682
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProgIsManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logSmashCallback(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V
    .registers 5

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgIsManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 669
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private makeAuction()V
    .registers 2

    .line 118
    sget-object v0, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_AUCTION:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    .line 119
    new-instance v0, Lcom/ironsource/mediationsdk/ProgIsManager$1;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/ProgIsManager$1;-><init>(Lcom/ironsource/mediationsdk/ProgIsManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendMediationEvent(I)V
    .registers 4

    const/4 v0, 0x0

    .line 688
    check-cast v0, [[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private sendMediationEvent(I[[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    .line 694
    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private sendMediationEvent(I[[Ljava/lang/Object;Z)V
    .registers 10

    .line 712
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "provider"

    const-string v2, "Mediation"

    .line 713
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 714
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "programmatic"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentAuctionId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 718
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentAuctionId:Ljava/lang/String;

    const-string v3, "auctionId"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    if-eqz p3, :cond_36

    .line 721
    iget-object p3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacement:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_36

    .line 722
    iget-object p3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacement:Ljava/lang/String;

    const-string v2, "placement"

    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    :cond_36
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->shouldAddAuctionParams(I)Z

    move-result p3

    if-eqz p3, :cond_47

    .line 726
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p3

    iget v2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionTrial:I

    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionFallback:Ljava/lang/String;

    invoke-virtual {p3, v0, v2, v3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setEventAuctionParams(Ljava/util/Map;ILjava/lang/String;)V

    :cond_47
    if-eqz p2, :cond_77

    .line 731
    :try_start_49
    array-length p3, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4c
    if-ge v3, p3, :cond_77

    aget-object v4, p2, v3

    .line 732
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v4, v4, v1

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5b} :catch_5e

    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    :catch_5e
    move-exception p2

    .line 736
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMediationEvent "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    .line 739
    :cond_77
    new-instance p2, Lcom/ironsource/eventsmodule/EventData;

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p2, p1, p3}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 740
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private sendMediationEventWithPlacement(I)V
    .registers 4

    const/4 v0, 0x0

    .line 706
    check-cast v0, [[Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private sendMediationEventWithPlacement(I[[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x1

    .line 700
    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;)V
    .registers 5

    const/4 v0, 0x0

    .line 762
    check-cast v0, [[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    .line 768
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;Z)V
    .registers 10

    .line 786
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getProviderEventData()Ljava/util/Map;

    move-result-object p2

    .line 788
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentAuctionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 789
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentAuctionId:Ljava/lang/String;

    const-string v1, "auctionId"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    if-eqz p4, :cond_24

    .line 792
    iget-object p4, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacement:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_24

    .line 793
    iget-object p4, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacement:Ljava/lang/String;

    const-string v0, "placement"

    invoke-interface {p2, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    :cond_24
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->shouldAddAuctionParams(I)Z

    move-result p4

    if-eqz p4, :cond_35

    .line 797
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p4

    iget v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionTrial:I

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionFallback:Ljava/lang/String;

    invoke-virtual {p4, p2, v0, v1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setEventAuctionParams(Ljava/util/Map;ILjava/lang/String;)V

    :cond_35
    if-eqz p3, :cond_6d

    .line 802
    :try_start_37
    array-length p4, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3a
    if-ge v1, p4, :cond_6d

    aget-object v2, p3, v1

    .line 803
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4a} :catch_4d

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :catch_4d
    move-exception p3

    .line 807
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p4

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IS sendProviderEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x3

    invoke-virtual {p4, v0, p3, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 810
    :cond_6d
    new-instance p3, Lcom/ironsource/eventsmodule/EventData;

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p3, p1, p4}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 811
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private sendProviderEventWithPlacement(ILcom/ironsource/mediationsdk/ProgIsSmash;)V
    .registers 5

    const/4 v0, 0x0

    .line 780
    check-cast v0, [[Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private sendProviderEventWithPlacement(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x1

    .line 774
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V
    .registers 4

    .line 661
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    return-void
.end method

.method private shouldAddAuctionParams(I)Z
    .registers 3

    const/16 v0, 0x7d2

    if-eq p1, v0, :cond_33

    const/16 v0, 0x7d3

    if-eq p1, v0, :cond_33

    const/16 v0, 0x898

    if-eq p1, v0, :cond_33

    const/16 v0, 0x7d5

    if-eq p1, v0, :cond_33

    const/16 v0, 0x89c

    if-eq p1, v0, :cond_33

    const/16 v0, 0x899

    if-eq p1, v0, :cond_33

    const/16 v0, 0x89b

    if-eq p1, v0, :cond_33

    const/16 v0, 0x7d6

    if-eq p1, v0, :cond_33

    const/16 v0, 0x7d4

    if-eq p1, v0, :cond_33

    const/16 v0, 0x83e

    if-eq p1, v0, :cond_33

    const/16 v0, 0x8fd

    if-eq p1, v0, :cond_33

    const/16 v0, 0x8fc

    if-ne p1, v0, :cond_31

    goto :goto_33

    :cond_31
    const/4 p1, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 p1, 0x1

    :goto_34
    return p1
.end method

.method private showInterstitial(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V
    .registers 4

    .line 424
    sget-object v0, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_SHOWING:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    .line 425
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->showInterstitial()V

    const/16 v0, 0x899

    .line 426
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEventWithPlacement(ILcom/ironsource/mediationsdk/ProgIsSmash;)V

    .line 428
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->increaseShowCounter(Lcom/ironsource/mediationsdk/ProgSmash;)V

    .line 429
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->isCapped(Lcom/ironsource/mediationsdk/ProgSmash;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 430
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setCappedPerSession()V

    const/16 v0, 0x961

    .line 431
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;)V

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was session capped"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    .line 435
    :cond_3a
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->incrementIsShowCounter(Landroid/content/Context;Ljava/lang/String;)V

    .line 436
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isInterstitialPlacementCapped(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_58

    const/16 p1, 0x960

    .line 437
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEventWithPlacement(I)V

    :cond_58
    return-void
.end method

.method private updateWaterfall(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ">;)V"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 247
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 248
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_81

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->getAsString(Lcom/ironsource/mediationsdk/AuctionResponseItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/ProgIsSmash;

    if-eqz v3, :cond_68

    .line 254
    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->setIsLoadCandidate(Z)V

    .line 255
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceDidntAttemptToLoad:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 260
    :cond_68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWaterfall() - could not find matching smash for auction response item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    goto :goto_18

    .line 264
    :cond_81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWaterfall() - response waterfall is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_a4

    const-string p1, "Updated waterfall is empty"

    .line 267
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    :cond_a4
    const/16 p1, 0x907

    .line 270
    new-array v1, v2, [[Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ext1"

    aput-object v5, v3, v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    aput-object v3, v1, v4

    invoke-direct {p0, p1, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    return-void
.end method

.method private updateWaterfallToNonBidding()V
    .registers 2

    .line 209
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsManager;->extractNonBidderProvidersFromWaterfall()Ljava/util/List;

    move-result-object v0

    .line 210
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->updateWaterfall(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized isInterstitialReady()Z
    .registers 4

    monitor-enter p0

    .line 444
    :try_start_1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mShouldTrackNetworkState:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_14
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    sget-object v2, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_39

    if-eq v0, v2, :cond_1c

    .line 445
    :cond_1a
    monitor-exit p0

    return v1

    .line 448
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/ProgIsSmash;

    .line 449
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isReadyToShow()Z

    move-result v2
    :try_end_32
    .catchall {:try_start_1c .. :try_end_32} :catchall_39

    if-eqz v2, :cond_22

    const/4 v0, 0x1

    .line 450
    monitor-exit p0

    return v0

    .line 454
    :cond_37
    monitor-exit p0

    return v1

    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method public declared-synchronized loadInterstitial()V
    .registers 5

    monitor-enter p0

    .line 330
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_SHOWING:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    if-ne v0, v1, :cond_23

    const-string v0, "loadInterstitial: load cannot be invoked while showing an ad"

    .line 332
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 333
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x40d

    invoke-direct {v1, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_7c

    .line 335
    monitor-exit p0

    return-void

    .line 338
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    if-eq v0, v1, :cond_2f

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    if-ne v0, v1, :cond_39

    :cond_2f
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/CallbackThrottler;->hasPendingInvocation()Z

    move-result v0

    if-eqz v0, :cond_40

    :cond_39
    const-string v0, "loadInterstitial: load is already in progress"

    .line 339
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_23 .. :try_end_3e} :catchall_7c

    .line 340
    monitor-exit p0

    return-void

    :cond_40
    :try_start_40
    const-string v0, ""

    .line 343
    iput-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentAuctionId:Ljava/lang/String;

    const-string v0, ""

    .line 344
    iput-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacement:Ljava/lang/String;

    const/16 v0, 0x7d1

    .line 345
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I)V

    .line 346
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mLoadStartTime:J

    .line 348
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mIsAuctionEnabled:Z

    if-eqz v0, :cond_74

    .line 349
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_70

    .line 351
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionHistory:Lcom/ironsource/mediationsdk/AuctionHistory;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/AuctionHistory;->storeWaterfallPerformance(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 352
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 355
    :cond_70
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsManager;->makeAuction()V

    goto :goto_7a

    .line 357
    :cond_74
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsManager;->updateWaterfallToNonBidding()V

    .line 358
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsManager;->loadSmashes()V
    :try_end_7a
    .catchall {:try_start_40 .. :try_end_7a} :catchall_7c

    .line 360
    :goto_7a
    monitor-exit p0

    return-void

    :catchall_7c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAuctionFailed(ILjava/lang/String;ILjava/lang/String;J)V
    .registers 13

    const-string v0, "Auction failed | moving to fallback waterfall"

    .line 191
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    .line 193
    iput p3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionTrial:I

    .line 194
    iput-object p4, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionFallback:Ljava/lang/String;

    .line 195
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string p4, "duration"

    const-string v0, "errorCode"

    const/16 v1, 0x8fc

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p3, :cond_36

    .line 196
    new-array p2, v3, [[Ljava/lang/Object;

    new-array p3, v3, [Ljava/lang/Object;

    aput-object v0, p3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v2

    aput-object p3, p2, v4

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p4, p1, v4

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p1, v2

    aput-object p1, p2, v2

    invoke-direct {p0, v1, p2}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    goto :goto_5e

    :cond_36
    const/4 p3, 0x3

    .line 198
    new-array p3, p3, [[Ljava/lang/Object;

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v0, v5, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    aput-object v5, p3, v4

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "reason"

    aput-object v0, p1, v4

    aput-object p2, p1, v2

    aput-object p1, p3, v2

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p4, p1, v4

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v2

    aput-object p1, p3, v3

    invoke-direct {p0, v1, p3}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 201
    :goto_5e
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsManager;->updateWaterfallToNonBidding()V

    .line 202
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsManager;->loadSmashes()V

    return-void
.end method

.method public onAuctionSuccess(Ljava/util/List;Ljava/lang/String;Lcom/ironsource/mediationsdk/AuctionResponseItem;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            "IJ)V"
        }
    .end annotation

    .line 180
    iput-object p2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentAuctionId:Ljava/lang/String;

    .line 181
    iput-object p3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    .line 182
    iput p4, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionTrial:I

    const-string p2, ""

    .line 183
    iput-object p2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionFallback:Ljava/lang/String;

    const/4 p2, 0x1

    .line 184
    new-array p3, p2, [[Ljava/lang/Object;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "duration"

    aput-object v1, p4, v0

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    aput-object p5, p4, p2

    aput-object p4, p3, v0

    const/16 p2, 0x8fd

    invoke-direct {p0, p2, p3}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 185
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->updateWaterfall(Ljava/util/List;)V

    .line 186
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgIsManager;->loadSmashes()V

    return-void
.end method

.method public onInterstitialAdClicked(Lcom/ironsource/mediationsdk/ProgIsSmash;)V
    .registers 3

    const-string v0, "onInterstitialAdClicked"

    .line 636
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V

    .line 637
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdClicked()V

    const/16 v0, 0x7d6

    .line 638
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEventWithPlacement(ILcom/ironsource/mediationsdk/ProgIsSmash;)V

    return-void
.end method

.method public onInterstitialAdClosed(Lcom/ironsource/mediationsdk/ProgIsSmash;)V
    .registers 10

    .line 595
    monitor-enter p0

    :try_start_1
    const-string v0, "onInterstitialAdClosed"

    .line 596
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V

    .line 599
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(I)I

    move-result v0

    const/16 v2, 0x89c

    const/4 v3, 0x1

    .line 600
    new-array v4, v3, [[Ljava/lang/Object;

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "sessionDepth"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    aput-object v5, v4, v7

    invoke-direct {p0, v2, p1, v4}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEventWithPlacement(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;)V

    .line 601
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->increaseSessionDepth(I)V

    .line 603
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdClosed()V

    .line 604
    sget-object p1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    .line 605
    monitor-exit p0

    return-void

    :catchall_3b
    move-exception p1

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method public onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/ProgIsSmash;J)V
    .registers 13

    .line 498
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 500
    monitor-enter p0

    .line 501
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterstitialAdLoadFailed error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V

    const/16 v1, 0x898

    const/4 v2, 0x3

    .line 502
    new-array v2, v2, [[Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "errorCode"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    aput-object v4, v2, v6

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "reason"

    aput-object v5, v4, v6

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v7

    aput-object v4, v2, v7

    new-array p1, v3, [Ljava/lang/Object;

    const-string v4, "duration"

    aput-object v4, p1, v6

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p1, v7

    aput-object p1, v2, v3

    invoke-direct {p0, v1, p2, v2}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;)V

    if-eqz p2, :cond_7e

    .line 507
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 508
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p3

    sget-object p4, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceFailedToLoad:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {p1, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    :cond_7e
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    const/4 p4, 0x0

    :cond_86
    :goto_86
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_fa

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/ProgIsSmash;

    .line 515
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getIsLoadCandidate()Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 516
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAdvancedLoading:Z

    if-eqz v2, :cond_ce

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isBidder()Z

    move-result v2

    if-eqz v2, :cond_ce

    if-nez p3, :cond_a6

    if-eqz p4, :cond_ce

    :cond_a6
    if-eqz p3, :cond_ab

    const-string p1, "a non bidder is being loaded"

    goto :goto_ad

    :cond_ab
    const-string p1, "a non bidder was already loaded successfully"

    .line 524
    :goto_ad
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Advanced Loading: Won\'t start loading bidder "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " as "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    goto :goto_fa

    .line 529
    :cond_ce
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAdvancedLoading:Z

    if-eqz v2, :cond_fa

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isBidder()Z

    move-result v2

    if-eqz v2, :cond_fa

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isBidder()Z

    move-result v1

    if-nez v1, :cond_fa

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mMaxSmashesToLoad:I

    if-ge v1, v2, :cond_fa

    :goto_e9
    const/4 p3, 0x1

    goto :goto_86

    .line 543
    :cond_eb
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isLoadingInProgress()Z

    move-result v2

    if-eqz v2, :cond_f2

    goto :goto_e9

    .line 546
    :cond_f2
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isReadyToShow()Z

    move-result v1

    if-eqz v1, :cond_86

    const/4 p4, 0x1

    goto :goto_86

    .line 551
    :cond_fa
    :goto_fa
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_132

    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    sget-object p2, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_LOADING_SMASHES:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    if-ne p1, p2, :cond_132

    if-nez p3, :cond_132

    .line 552
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object p1

    new-instance p2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string p3, "No ads to show"

    const/16 p4, 0x1fd

    invoke-direct {p2, p4, p3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    const/16 p1, 0x83e

    .line 553
    new-array p2, v7, [[Ljava/lang/Object;

    new-array p3, v3, [Ljava/lang/Object;

    const-string v1, "errorCode"

    aput-object v1, p3, v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v7

    aput-object p3, p2, v6

    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 554
    sget-object p1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    .line 556
    :cond_132
    monitor-exit p0
    :try_end_133
    .catchall {:try_start_6 .. :try_end_133} :catchall_148

    .line 559
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_137
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_147

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/mediationsdk/ProgIsSmash;

    .line 560
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/ProgIsManager;->loadSmash(Lcom/ironsource/mediationsdk/ProgIsSmash;)V

    goto :goto_137

    :cond_147
    return-void

    :catchall_148
    move-exception p1

    .line 556
    :try_start_149
    monitor-exit p0
    :try_end_14a
    .catchall {:try_start_149 .. :try_end_14a} :catchall_148

    throw p1

    return-void
.end method

.method public onInterstitialAdOpened(Lcom/ironsource/mediationsdk/ProgIsSmash;)V
    .registers 10

    .line 569
    monitor-enter p0

    :try_start_1
    const-string v0, "onInterstitialAdOpened"

    .line 570
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V

    .line 571
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdOpened()V

    const/16 v0, 0x7d5

    .line 572
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEventWithPlacement(ILcom/ironsource/mediationsdk/ProgIsSmash;)V

    .line 574
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mIsAuctionEnabled:Z

    if-eqz v0, :cond_a2

    .line 575
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    if-eqz v0, :cond_3d

    .line 578
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceType()I

    move-result v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacement:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/ironsource/mediationsdk/AuctionHandler;->reportImpression(Lcom/ironsource/mediationsdk/AuctionResponseItem;ILcom/ironsource/mediationsdk/AuctionResponseItem;Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceShowedSuccessfully:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a2

    :cond_3d
    if-eqz p1, :cond_44

    .line 582
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    goto :goto_46

    :cond_44
    const-string p1, "Smash is null"

    .line 583
    :goto_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterstitialAdOpened showing instance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " missing from waterfall"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    const v0, 0x1418d

    const/4 v1, 0x3

    .line 584
    new-array v1, v1, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "errorCode"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/16 v4, 0x3f3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    aput-object v3, v1, v5

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "reason"

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Showing missing "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v3, v1, v6

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "ext1"

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 588
    :cond_a2
    :goto_a2
    monitor-exit p0

    return-void

    :catchall_a4
    move-exception p1

    monitor-exit p0
    :try_end_a6
    .catchall {:try_start_1 .. :try_end_a6} :catchall_a4

    throw p1
.end method

.method public onInterstitialAdReady(Lcom/ironsource/mediationsdk/ProgIsSmash;J)V
    .registers 19

    move-object v1, p0

    move-object/from16 v0, p1

    .line 461
    monitor-enter p0

    :try_start_4
    const-string v2, "onInterstitialAdReady"

    .line 462
    invoke-direct {p0, v0, v2}, Lcom/ironsource/mediationsdk/ProgIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V

    const/16 v2, 0x7d3

    const/4 v3, 0x1

    .line 463
    new-array v4, v3, [[Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "duration"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    aput-object v6, v4, v8

    invoke-direct {p0, v2, v0, v4}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;)V

    if-eqz v0, :cond_3a

    .line 468
    iget-object v2, v1, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 469
    iget-object v2, v1, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceLoadedSuccessfully:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {v2, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_3a
    iget-object v2, v1, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    sget-object v4, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_LOADING_SMASHES:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    if-ne v2, v4, :cond_ef

    .line 473
    sget-object v2, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    .line 474
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdReady()V

    .line 475
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iget-wide v9, v1, Lcom/ironsource/mediationsdk/ProgIsManager;->mLoadStartTime:J

    sub-long/2addr v6, v9

    const/16 v2, 0x7d4

    .line 476
    new-array v4, v3, [[Ljava/lang/Object;

    new-array v9, v5, [Ljava/lang/Object;

    const-string v10, "duration"

    aput-object v10, v9, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v3

    aput-object v9, v4, v8

    invoke-direct {p0, v2, v4}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 478
    iget-boolean v2, v1, Lcom/ironsource/mediationsdk/ProgIsManager;->mIsAuctionEnabled:Z

    if-eqz v2, :cond_ef

    .line 479
    iget-object v2, v1, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    if-eqz v14, :cond_9e

    .line 482
    iget-object v2, v1, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceType()I

    move-result v3

    iget-object v4, v1, Lcom/ironsource/mediationsdk/ProgIsManager;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {v2, v14, v3, v4}, Lcom/ironsource/mediationsdk/AuctionHandler;->reportLoadSuccess(Lcom/ironsource/mediationsdk/AuctionResponseItem;ILcom/ironsource/mediationsdk/AuctionResponseItem;)V

    .line 483
    iget-object v9, v1, Lcom/ironsource/mediationsdk/ProgIsManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    iget-object v2, v1, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v10, v2

    check-cast v10, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v11, v1, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceType()I

    move-result v12

    iget-object v13, v1, Lcom/ironsource/mediationsdk/ProgIsManager;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual/range {v9 .. v14}, Lcom/ironsource/mediationsdk/AuctionHandler;->reportAuctionLose(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/concurrent/ConcurrentHashMap;ILcom/ironsource/mediationsdk/AuctionResponseItem;Lcom/ironsource/mediationsdk/AuctionResponseItem;)V

    goto :goto_ef

    :cond_9e
    if-eqz v0, :cond_a5

    .line 485
    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_a7

    :cond_a5
    const-string v0, "Smash is null"

    .line 486
    :goto_a7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInterstitialAdReady winner instance "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " missing from waterfall"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    const v2, 0x1418d

    const/4 v4, 0x3

    .line 487
    new-array v4, v4, [[Ljava/lang/Object;

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v6, v8

    const/16 v7, 0x3f2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    aput-object v6, v4, v8

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "reason"

    aput-object v7, v6, v8

    const-string v7, "Loaded missing"

    aput-object v7, v6, v3

    aput-object v6, v4, v3

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "ext1"

    aput-object v7, v6, v8

    aput-object v0, v6, v3

    aput-object v6, v4, v5

    invoke-direct {p0, v2, v4}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 491
    :cond_ef
    :goto_ef
    monitor-exit p0

    return-void

    :catchall_f1
    move-exception v0

    monitor-exit p0
    :try_end_f3
    .catchall {:try_start_4 .. :try_end_f3} :catchall_f1

    throw v0
.end method

.method public onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/ProgIsSmash;)V
    .registers 10

    .line 621
    monitor-enter p0

    .line 622
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterstitialAdShowFailed error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V

    .line 623
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    const/16 v0, 0x89b

    const/4 v1, 0x2

    .line 624
    new-array v2, v1, [[Ljava/lang/Object;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "errorCode"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "reason"

    aput-object v3, v1, v5

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v6

    aput-object v1, v2, v6

    invoke-direct {p0, v0, p2, v2}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEventWithPlacement(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;)V

    .line 626
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceFailedToShow:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    sget-object p1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->setState(Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;)V

    .line 629
    monitor-exit p0

    return-void

    :catchall_5c
    move-exception p1

    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_1 .. :try_end_5e} :catchall_5c

    throw p1
.end method

.method public onInterstitialAdShowSucceeded(Lcom/ironsource/mediationsdk/ProgIsSmash;)V
    .registers 3

    const-string v0, "onInterstitialAdShowSucceeded"

    .line 612
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V

    .line 613
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowSucceeded()V

    const/16 v0, 0x89a

    .line 614
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEventWithPlacement(ILcom/ironsource/mediationsdk/ProgIsSmash;)V

    return-void
.end method

.method public onInterstitialAdVisible(Lcom/ironsource/mediationsdk/ProgIsSmash;)V
    .registers 3

    const-string v0, "onInterstitialAdVisible"

    .line 645
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/ProgIsSmash;)V
    .registers 8

    const/4 v0, 0x1

    .line 650
    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "reason"

    aput-object v4, v2, v3

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    aput-object v2, v1, v3

    const/16 p1, 0x89e

    invoke-direct {p0, p1, p2, v1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;[[Ljava/lang/Object;)V

    return-void
.end method

.method public onInterstitialInitSuccess(Lcom/ironsource/mediationsdk/ProgIsSmash;)V
    .registers 3

    const/16 v0, 0x89d

    .line 655
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendProviderEvent(ILcom/ironsource/mediationsdk/ProgIsSmash;)V

    return-void
.end method

.method shouldTrackNetworkState(Landroid/content/Context;Z)V
    .registers 6

    .line 817
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Should Track Network State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 818
    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mShouldTrackNetworkState:Z

    return-void
.end method

.method public declared-synchronized showInterstitial(Ljava/lang/String;)V
    .registers 10

    monitor-enter p0

    .line 367
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_SHOWING:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    const/16 v2, 0x83f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v0, v1, :cond_3e

    const-string p1, "showInterstitial error: can\'t show ad while an ad is already showing"

    .line 369
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logAPIError(Ljava/lang/String;)V

    .line 370
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x40c

    invoke-direct {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 371
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 372
    new-array v0, v5, [[Ljava/lang/Object;

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v6, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    aput-object v6, v0, v4

    new-array v1, v5, [Ljava/lang/Object;

    const-string v5, "reason"

    aput-object v5, v1, v4

    aput-object p1, v1, v3

    aput-object v1, v0, v3

    invoke-direct {p0, v2, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_18e

    .line 373
    monitor-exit p0

    return-void

    .line 376
    :cond_3e
    :try_start_3e
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    const/16 v6, 0x1fd

    if-eq v0, v1, :cond_90

    .line 378
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showInterstitial() error state="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mState:Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ProgIsManager$MEDIATION_STATE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    const-string p1, "showInterstitial error: show called while no ads are available"

    .line 380
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logAPIError(Ljava/lang/String;)V

    .line 381
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v0, v6, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 382
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 383
    new-array v0, v5, [[Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v1, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v3

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/Object;

    const-string v5, "reason"

    aput-object v5, v1, v4

    aput-object p1, v1, v3

    aput-object v1, v0, v3

    invoke-direct {p0, v2, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V
    :try_end_8e
    .catchall {:try_start_3e .. :try_end_8e} :catchall_18e

    .line 384
    monitor-exit p0

    return-void

    :cond_90
    if-nez p1, :cond_c4

    :try_start_92
    const-string p1, "showInterstitial error: empty default placement"

    .line 389
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logAPIError(Ljava/lang/String;)V

    .line 390
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x3fc

    invoke-direct {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 391
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 392
    new-array v0, v5, [[Ljava/lang/Object;

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v6, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    aput-object v6, v0, v4

    new-array v1, v5, [Ljava/lang/Object;

    const-string v5, "reason"

    aput-object v5, v1, v4

    aput-object p1, v1, v3

    aput-object v1, v0, v3

    invoke-direct {p0, v2, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEvent(I[[Ljava/lang/Object;)V
    :try_end_c2
    .catchall {:try_start_92 .. :try_end_c2} :catchall_18e

    .line 393
    monitor-exit p0

    return-void

    .line 396
    :cond_c4
    :try_start_c4
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacement:Ljava/lang/String;

    const/16 p1, 0x834

    .line 397
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEventWithPlacement(I)V

    .line 399
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacement:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isInterstitialPlacementCapped(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_123

    .line 400
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "placement "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacement:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is capped"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 401
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->logAPIError(Ljava/lang/String;)V

    .line 402
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x20c

    invoke-direct {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 403
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 404
    new-array v0, v5, [[Ljava/lang/Object;

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v6, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    aput-object v6, v0, v4

    new-array v1, v5, [Ljava/lang/Object;

    const-string v5, "reason"

    aput-object v5, v1, v4

    aput-object p1, v1, v3

    aput-object v1, v0, v3

    invoke-direct {p0, v2, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEventWithPlacement(I[[Ljava/lang/Object;)V
    :try_end_121
    .catchall {:try_start_c4 .. :try_end_121} :catchall_18e

    .line 405
    monitor-exit p0

    return-void

    .line 408
    :cond_123
    :try_start_123
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_129
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_160

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/ProgIsSmash;

    .line 409
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->isReadyToShow()Z

    move-result v1

    if-eqz v1, :cond_142

    .line 410
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgIsManager;->mCurrentPlacement:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->showInterstitial(Lcom/ironsource/mediationsdk/ProgIsSmash;Ljava/lang/String;)V
    :try_end_140
    .catchall {:try_start_123 .. :try_end_140} :catchall_18e

    .line 411
    monitor-exit p0

    return-void

    .line 413
    :cond_142
    :try_start_142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showInterstitial "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ProgIsSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isReadyToShow() == false"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgIsManager;->logInternal(Ljava/lang/String;)V

    goto :goto_129

    .line 417
    :cond_160
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object p1

    const-string v0, "Interstitial"

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 418
    new-array p1, v5, [[Ljava/lang/Object;

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "errorCode"

    aput-object v1, v0, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object v0, p1, v4

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "reason"

    aput-object v1, v0, v4

    const-string v1, "Show Fail - No ads to show"

    aput-object v1, v0, v3

    aput-object v0, p1, v3

    invoke-direct {p0, v2, p1}, Lcom/ironsource/mediationsdk/ProgIsManager;->sendMediationEventWithPlacement(I[[Ljava/lang/Object;)V
    :try_end_18c
    .catchall {:try_start_142 .. :try_end_18c} :catchall_18e

    .line 419
    monitor-exit p0

    return-void

    :catchall_18e
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method
