.class Lcom/ironsource/mediationsdk/ProgRvManager;
.super Ljava/lang/Object;
.source "ProgRvManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/ProgRvManagerListener;
.implements Lcom/ironsource/mediationsdk/RvLoadTriggerCallback;
.implements Lcom/ironsource/mediationsdk/AuctionEventListener;
.implements Lcom/ironsource/mediationsdk/IProgRvManager;
.implements Lcom/ironsource/environment/NetworkStateReceiver$NetworkStateReceiverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;
    }
.end annotation


# instance fields
.field private mAdvancedLoading:Z

.field private mAuctionFallback:Ljava/lang/String;

.field private mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

.field private mAuctionHistory:Lcom/ironsource/mediationsdk/AuctionHistory;

.field private mAuctionStartTime:J

.field private mAuctionTrial:I

.field private mCurrentAuctionId:Ljava/lang/String;

.field private mCurrentPlacement:Ljava/lang/String;

.field private mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

.field private mIsAuctionEnabled:Z

.field private mIsAuctionOnShowStart:Z

.field private mIsShowingVideo:Z

.field private mLastChangedAvailabilityTime:J

.field private mLastReportedAvailabilityState:Ljava/lang/Boolean;

.field private mMaxSmashesToLoad:I

.field private mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

.field private mNextWaterfallToLoad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRvLoadTrigger:Lcom/ironsource/mediationsdk/RvLoadTrigger;

.field private mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

.field private mSessionDepth:I

.field private mShouldLoadAfterClose:Z

.field private mShouldTrackNetworkState:Z

.field private final mSmashes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/ProgRvSmash;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

.field private mTimeToWaitBeforeLoadMS:J

.field private mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ironsource/mediationsdk/ProgRvSmash;",
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
.method public constructor <init>(Ljava/util/List;Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21
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

    move-object/from16 v7, p0

    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v8, 0x1

    .line 57
    iput v8, v7, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionDepth:I

    const-string v0, ""

    .line 67
    iput-object v0, v7, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionFallback:Ljava/lang/String;

    const/4 v9, 0x0

    .line 68
    iput-boolean v9, v7, Lcom/ironsource/mediationsdk/ProgRvManager;->mShouldTrackNetworkState:Z

    .line 74
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    const v1, 0x13da0

    .line 75
    invoke-direct {v7, v1}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEventWithoutAuctionId(I)V

    .line 76
    sget-object v1, Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;->RV_STATE_INITIATING:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    invoke-direct {v7, v1}, Lcom/ironsource/mediationsdk/ProgRvManager;->setState(Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;)V

    const/4 v1, 0x0

    .line 77
    iput-object v1, v7, Lcom/ironsource/mediationsdk/ProgRvManager;->mLastReportedAvailabilityState:Ljava/lang/Boolean;

    .line 79
    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAdaptersSmartLoadAmount()I

    move-result v1

    iput v1, v7, Lcom/ironsource/mediationsdk/ProgRvManager;->mMaxSmashesToLoad:I

    .line 80
    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAdvancedLoading()Z

    move-result v1

    iput-boolean v1, v7, Lcom/ironsource/mediationsdk/ProgRvManager;->mAdvancedLoading:Z

    .line 82
    iput-object v0, v7, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentPlacement:Ljava/lang/String;

    .line 83
    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v12

    .line 84
    iput-boolean v9, v7, Lcom/ironsource/mediationsdk/ProgRvManager;->mIsShowingVideo:Z

    .line 86
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, v7, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lcom/ironsource/mediationsdk/ProgRvManager;->mNextWaterfallToLoad:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v7, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    .line 89
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v7, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    .line 90
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/ironsource/mediationsdk/ProgRvManager;->mLastChangedAvailabilityTime:J

    .line 92
    invoke-virtual {v12}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getNumOfMaxTrials()I

    move-result v0

    if-lez v0, :cond_69

    const/4 v0, 0x1

    goto :goto_6a

    :cond_69
    const/4 v0, 0x0

    :goto_6a
    iput-boolean v0, v7, Lcom/ironsource/mediationsdk/ProgRvManager;->mIsAuctionEnabled:Z

    .line 93
    invoke-virtual {v12}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getIsAuctionOnShowStart()Z

    move-result v0

    iput-boolean v0, v7, Lcom/ironsource/mediationsdk/ProgRvManager;->mIsAuctionOnShowStart:Z

    .line 94
    invoke-virtual {v12}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getIsLoadWhileShow()Z

    move-result v0

    xor-int/2addr v0, v8

    iput-boolean v0, v7, Lcom/ironsource/mediationsdk/ProgRvManager;->mShouldLoadAfterClose:Z

    .line 95
    invoke-virtual {v12}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getTimeToWaitBeforeLoadMs()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/ironsource/mediationsdk/ProgRvManager;->mTimeToWaitBeforeLoadMS:J

    .line 97
    iget-boolean v0, v7, Lcom/ironsource/mediationsdk/ProgRvManager;->mIsAuctionEnabled:Z

    if-eqz v0, :cond_8c

    .line 98
    new-instance v0, Lcom/ironsource/mediationsdk/AuctionHandler;

    const-string v1, "rewardedVideo"

    invoke-direct {v0, v1, v12, v7}, Lcom/ironsource/mediationsdk/AuctionHandler;-><init>(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/AuctionSettings;Lcom/ironsource/mediationsdk/AuctionEventListener;)V

    iput-object v0, v7, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    .line 101
    :cond_8c
    new-instance v0, Lcom/ironsource/mediationsdk/RvLoadTrigger;

    invoke-direct {v0, v12, v7}, Lcom/ironsource/mediationsdk/RvLoadTrigger;-><init>(Lcom/ironsource/mediationsdk/utils/AuctionSettings;Lcom/ironsource/mediationsdk/RvLoadTriggerCallback;)V

    iput-object v0, v7, Lcom/ironsource/mediationsdk/ProgRvManager;->mRvLoadTrigger:Lcom/ironsource/mediationsdk/RvLoadTrigger;

    .line 102
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v7, Lcom/ironsource/mediationsdk/ProgRvManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 103
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_a3
    :goto_a3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .line 106
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v0

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/ironsource/mediationsdk/AdapterRepository;->getAdapter(Lcom/ironsource/mediationsdk/model/ProviderSettings;Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v6

    if-eqz v6, :cond_a3

    .line 107
    invoke-static {}, Lcom/ironsource/mediationsdk/AdaptersCompatibilityHandler;->getInstance()Lcom/ironsource/mediationsdk/AdaptersCompatibilityHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/ironsource/mediationsdk/AdaptersCompatibilityHandler;->isAdapterVersionRVCompatible(Lcom/ironsource/mediationsdk/AbstractAdapter;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 108
    new-instance v15, Lcom/ironsource/mediationsdk/ProgRvSmash;

    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAdaptersSmartLoadTimeout()I

    move-result v5

    move-object v0, v15

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/ironsource/mediationsdk/ProgRvSmash;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/ProviderSettings;Lcom/ironsource/mediationsdk/ProgRvManagerListener;ILcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 109
    invoke-virtual {v15}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v0

    .line 110
    iget-object v1, v7, Lcom/ironsource/mediationsdk/ProgRvManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a3

    .line 115
    :cond_e5
    new-instance v0, Lcom/ironsource/mediationsdk/AuctionHistory;

    invoke-virtual {v12}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getAuctionSavedHistoryLimit()I

    move-result v1

    invoke-direct {v0, v13, v1}, Lcom/ironsource/mediationsdk/AuctionHistory;-><init>(Ljava/util/List;I)V

    iput-object v0, v7, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionHistory:Lcom/ironsource/mediationsdk/AuctionHistory;

    .line 116
    new-instance v0, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v7, Lcom/ironsource/mediationsdk/ProgRvManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;-><init>(Ljava/util/List;)V

    iput-object v0, v7, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    .line 117
    iget-object v0, v7, Lcom/ironsource/mediationsdk/ProgRvManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10c
    :goto_10c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_122

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/ProgRvSmash;

    .line 118
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->isBidder()Z

    move-result v2

    if-eqz v2, :cond_10c

    .line 119
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->initForBidding()V

    goto :goto_10c

    .line 123
    :cond_122
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, v10

    const v2, 0x13da1

    .line 124
    new-array v3, v8, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "duration"

    aput-object v5, v4, v9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v8

    aput-object v4, v3, v9

    invoke-direct {v7, v2, v3}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEventWithoutAuctionId(I[[Ljava/lang/Object;)V

    .line 126
    invoke-virtual {v12}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getTimeToWaitBeforeFirstAuctionMs()J

    move-result-wide v0

    invoke-direct {v7, v0, v1}, Lcom/ironsource/mediationsdk/ProgRvManager;->loadRewardedVideo(J)V

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/ProgRvManager;)V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvManager;->makeAuction()V

    return-void
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/ProgRvManager;Ljava/lang/String;)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->logInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/ironsource/mediationsdk/ProgRvManager;)Lcom/ironsource/mediationsdk/AuctionHistory;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionHistory:Lcom/ironsource/mediationsdk/AuctionHistory;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ironsource/mediationsdk/ProgRvManager;)I
    .registers 1

    .line 41
    iget p0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionDepth:I

    return p0
.end method

.method static synthetic access$1200(Lcom/ironsource/mediationsdk/ProgRvManager;)Lcom/ironsource/mediationsdk/AuctionHandler;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ironsource/mediationsdk/ProgRvManager;)V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvManager;->loadSmashesForNextWaterfall()V

    return-void
.end method

.method static synthetic access$202(Lcom/ironsource/mediationsdk/ProgRvManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentAuctionId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/ironsource/mediationsdk/ProgRvManager;J)J
    .registers 3

    .line 41
    iput-wide p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionStartTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/ironsource/mediationsdk/ProgRvManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ironsource/mediationsdk/ProgRvManager;)Lcom/ironsource/mediationsdk/utils/SessionCappingManager;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ironsource/mediationsdk/ProgRvManager;I[[Ljava/lang/Object;)V
    .registers 3

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/ironsource/mediationsdk/ProgRvManager;)V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvManager;->handleLoadFailure()V

    return-void
.end method

.method static synthetic access$800(Lcom/ironsource/mediationsdk/ProgRvManager;I)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEventWithoutAuctionId(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/ironsource/mediationsdk/ProgRvManager;I[[Ljava/lang/Object;)V
    .registers 3

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEventWithoutAuctionId(I[[Ljava/lang/Object;)V

    return-void
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

    .line 364
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 365
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

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

    check-cast v2, Lcom/ironsource/mediationsdk/ProgRvSmash;

    .line 366
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->isBidder()Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->isCapped(Lcom/ironsource/mediationsdk/ProgSmash;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_f

    .line 370
    :cond_2a
    new-instance v3, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/ironsource/mediationsdk/AuctionResponseItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_37
    return-object v0
.end method

.method private getAsString(Lcom/ironsource/mediationsdk/AuctionResponseItem;)Ljava/lang/String;
    .registers 4

    .line 378
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/ProgRvSmash;

    if-eqz v0, :cond_17

    .line 382
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    .line 385
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

    .line 388
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

.method private handleLoadFailure()V
    .registers 2

    .line 469
    sget-object v0, Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;->RV_STATE_NOT_LOADED:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->setState(Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;)V

    const/4 v0, 0x0

    .line 470
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->reportAvailabilityIfNeeded(Z)V

    .line 471
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mRvLoadTrigger:Lcom/ironsource/mediationsdk/RvLoadTrigger;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/RvLoadTrigger;->loadError()V

    return-void
.end method

.method private loadRewardedVideo(J)V
    .registers 10

    .line 132
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->areAllSmashesCapped()Z

    move-result v0

    const-string v1, "reason"

    const-string v2, "errorCode"

    const v3, 0x13c69

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v0, :cond_34

    .line 133
    new-array p1, v6, [[Ljava/lang/Object;

    new-array p2, v6, [Ljava/lang/Object;

    aput-object v2, p2, v5

    const v0, 0x13881

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v4

    aput-object p2, p1, v5

    new-array p2, v6, [Ljava/lang/Object;

    aput-object v1, p2, v5

    const-string v0, "all smashes are capped"

    aput-object v0, p2, v4

    aput-object p2, p1, v4

    invoke-direct {p0, v3, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 134
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvManager;->handleLoadFailure()V

    return-void

    .line 138
    :cond_34
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mIsAuctionEnabled:Z

    if-eqz v0, :cond_5a

    .line 139
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 141
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionHistory:Lcom/ironsource/mediationsdk/AuctionHistory;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/AuctionHistory;->storeWaterfallPerformance(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 142
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 145
    :cond_4c
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/ironsource/mediationsdk/ProgRvManager$1;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/ProgRvManager$1;-><init>(Lcom/ironsource/mediationsdk/ProgRvManager;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_97

    .line 153
    :cond_5a
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvManager;->updateWaterfallToNonBidding()V

    .line 155
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mNextWaterfallToLoad:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_87

    .line 156
    new-array p1, v6, [[Ljava/lang/Object;

    new-array p2, v6, [Ljava/lang/Object;

    aput-object v2, p2, v5

    const v0, 0x13882

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v4

    aput-object p2, p1, v5

    new-array p2, v6, [Ljava/lang/Object;

    aput-object v1, p2, v5

    const-string v0, "waterfall is empty"

    aput-object v0, p2, v4

    aput-object p2, p1, v4

    invoke-direct {p0, v3, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 157
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvManager;->handleLoadFailure()V

    return-void

    :cond_87
    const/16 p1, 0x3e8

    .line 161
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEventWithoutAuctionId(I)V

    .line 163
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mShouldLoadAfterClose:Z

    if-eqz p1, :cond_94

    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mIsShowingVideo:Z

    if-nez p1, :cond_97

    .line 169
    :cond_94
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvManager;->loadSmashesForNextWaterfall()V

    :cond_97
    :goto_97
    return-void
.end method

.method private loadSmash(Lcom/ironsource/mediationsdk/ProgRvSmash;)V
    .registers 10

    .line 422
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getServerData()Ljava/lang/String;

    move-result-object v2

    .line 423
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getDynamicDemandSourceIdFromServerData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 424
    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentAuctionId:Ljava/lang/String;

    iget v4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionTrial:I

    iget-object v5, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionFallback:Ljava/lang/String;

    iget v6, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionDepth:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/ironsource/mediationsdk/ProgRvSmash;->loadVideo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private loadSmashes()V
    .registers 8

    .line 430
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    const v0, 0x13c69

    const/4 v2, 0x2

    .line 431
    new-array v3, v2, [[Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v1

    const v5, 0x13884

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    aput-object v4, v3, v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "reason"

    aput-object v4, v2, v1

    const-string v1, "waterfall is empty"

    aput-object v1, v2, v6

    aput-object v2, v3, v6

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 432
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvManager;->handleLoadFailure()V

    return-void

    .line 436
    :cond_34
    sget-object v0, Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;->RV_STATE_LOADING_SMASHES:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->setState(Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;)V

    const/4 v0, 0x0

    .line 439
    :goto_3a
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8a

    iget v2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mMaxSmashesToLoad:I

    if-ge v0, v2, :cond_8a

    .line 440
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/ProgRvSmash;

    .line 442
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getIsLoadCandidate()Z

    move-result v3

    if-eqz v3, :cond_87

    .line 444
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAdvancedLoading:Z

    if-eqz v3, :cond_82

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->isBidder()Z

    move-result v3

    if-eqz v3, :cond_82

    if-nez v0, :cond_64

    .line 450
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/ProgRvManager;->loadSmash(Lcom/ironsource/mediationsdk/ProgRvSmash;)V

    goto :goto_8a

    .line 453
    :cond_64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Advanced Loading: Won\'t start loading bidder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as a non bidder is being loaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->logInternal(Ljava/lang/String;)V

    goto :goto_8a

    .line 459
    :cond_82
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/ProgRvManager;->loadSmash(Lcom/ironsource/mediationsdk/ProgRvSmash;)V

    add-int/lit8 v0, v0, 0x1

    :cond_87
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :cond_8a
    :goto_8a
    return-void
.end method

.method private loadSmashesForNextWaterfall()V
    .registers 2

    .line 327
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mNextWaterfallToLoad:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->updateWaterfall(Ljava/util/List;)V

    .line 328
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvManager;->loadSmashes()V

    return-void
.end method

.method private logAPIError(Ljava/lang/String;)V
    .registers 5

    .line 742
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logApi(Ljava/lang/String;)V
    .registers 5

    .line 748
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logErrorInternal(Ljava/lang/String;)V
    .registers 6

    .line 735
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProgRvManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logInternal(Ljava/lang/String;)V
    .registers 6

    .line 729
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProgRvManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logSmashCallback(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V
    .registers 6

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 723
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProgRvManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private makeAuction()V
    .registers 2

    .line 277
    sget-object v0, Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;->RV_STATE_AUCTION_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->setState(Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;)V

    .line 278
    new-instance v0, Lcom/ironsource/mediationsdk/ProgRvManager$2;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/ProgRvManager$2;-><init>(Lcom/ironsource/mediationsdk/ProgRvManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private reportAvailabilityIfNeeded(Z)V
    .registers 10

    .line 705
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mLastReportedAvailabilityState:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_5c

    .line 706
    :cond_a
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mLastReportedAvailabilityState:Ljava/lang/Boolean;

    .line 707
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mLastChangedAvailabilityTime:J

    sub-long/2addr v0, v2

    .line 708
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mLastChangedAvailabilityTime:J

    const-string v2, "duration"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_42

    const/16 v6, 0x457

    .line 711
    new-array v7, v5, [[Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v5

    aput-object v3, v7, v4

    invoke-direct {p0, v6, v7}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    goto :goto_55

    :cond_42
    const/16 v6, 0x458

    .line 713
    new-array v7, v5, [[Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v5

    aput-object v3, v7, v4

    invoke-direct {p0, v6, v7}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 715
    :goto_55
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAvailabilityChanged(Z)V

    :cond_5c
    return-void
.end method

.method private sendMediationEvent(I[[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 766
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;ZZ)V

    return-void
.end method

.method private sendMediationEvent(I[[Ljava/lang/Object;ZZ)V
    .registers 10

    .line 784
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "provider"

    const-string v2, "Mediation"

    .line 785
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 786
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "programmatic"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_27

    .line 788
    iget-object p4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentAuctionId:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_27

    .line 789
    iget-object p4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentAuctionId:Ljava/lang/String;

    const-string v2, "auctionId"

    invoke-interface {v0, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    if-eqz p3, :cond_38

    .line 792
    iget-object p3, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentPlacement:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_38

    .line 793
    iget-object p3, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentPlacement:Ljava/lang/String;

    const-string p4, "placement"

    invoke-interface {v0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    :cond_38
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->shouldAddAuctionParams(I)Z

    move-result p3

    if-eqz p3, :cond_49

    .line 797
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p3

    iget p4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionTrial:I

    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionFallback:Ljava/lang/String;

    invoke-virtual {p3, v0, p4, v2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setEventAuctionParams(Ljava/util/Map;ILjava/lang/String;)V

    .line 800
    :cond_49
    iget p3, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionDepth:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "sessionDepth"

    invoke-interface {v0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_8b

    .line 804
    :try_start_56
    array-length p3, p2

    const/4 p4, 0x0

    const/4 v2, 0x0

    :goto_59
    if-ge v2, p3, :cond_8b

    aget-object v3, p2, v2

    .line 805
    aget-object v4, v3, p4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v3, v3, v1

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_68} :catch_6b

    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    :catch_6b
    move-exception p2

    .line 809
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p3

    sget-object p4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProgRvManager: RV sendMediationEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x3

    invoke-virtual {p3, p4, p2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 812
    :cond_8b
    new-instance p2, Lcom/ironsource/eventsmodule/EventData;

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p2, p1, p3}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 813
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private sendMediationEventWithPlacement(I)V
    .registers 4

    const/4 v0, 0x0

    .line 772
    check-cast v0, [[Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;ZZ)V

    return-void
.end method

.method private sendMediationEventWithPlacement(I[[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x1

    .line 778
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;ZZ)V

    return-void
.end method

.method private sendMediationEventWithoutAuctionId(I)V
    .registers 4

    const/4 v0, 0x0

    .line 760
    check-cast v0, [[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;ZZ)V

    return-void
.end method

.method private sendMediationEventWithoutAuctionId(I[[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    .line 754
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;ZZ)V

    return-void
.end method

.method private setState(Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;)V
    .registers 4

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", new state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 478
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    return-void
.end method

.method private shouldAddAuctionParams(I)Z
    .registers 3

    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_f

    const/16 v0, 0x516

    if-eq p1, v0, :cond_f

    const/16 v0, 0x515

    if-ne p1, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method private shouldNotifyNetworkAvailabilityChanged(Z)Z
    .registers 5

    .line 945
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mLastReportedAvailabilityState:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x1

    if-eqz p1, :cond_16

    .line 949
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/ProgRvManager;->isRewardedVideoAvailable()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_22

    :cond_16
    if-nez p1, :cond_21

    .line 953
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mLastReportedAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :goto_22
    return v2
.end method

.method private showVideo(Lcom/ironsource/mediationsdk/ProgRvSmash;Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 5

    const-string v0, "showVideo()"

    .line 240
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->increaseShowCounter(Lcom/ironsource/mediationsdk/ProgSmash;)V

    .line 242
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->isCapped(Lcom/ironsource/mediationsdk/ProgSmash;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 243
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->setCappedPerSession()V

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rewarded video is now session capped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    .line 247
    :cond_2d
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->incrementRvShowCounter(Landroid/content/Context;Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isRvPlacementCapped(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    const/16 v0, 0x578

    .line 249
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEventWithPlacement(I)V

    .line 252
    :cond_53
    iget v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionDepth:I

    invoke-virtual {p1, p2, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->showVideo(Lcom/ironsource/mediationsdk/model/Placement;I)V

    return-void
.end method

.method private updateNextWaterfallToLoad(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ">;)V"
        }
    .end annotation

    .line 344
    iput-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mNextWaterfallToLoad:Ljava/util/List;

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/ProgRvManager;->getAsString(Lcom/ironsource/mediationsdk/AuctionResponseItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 351
    :cond_30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNextWaterfallToLoad() - next waterfall is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_53

    const-string p1, "Updated waterfall is empty"

    .line 354
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->logInternal(Ljava/lang/String;)V

    :cond_53
    const/16 p1, 0x51f

    const/4 v1, 0x1

    .line 357
    new-array v2, v1, [[Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ext1"

    aput-object v5, v3, v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    aput-object v3, v2, v4

    invoke-direct {p0, p1, v2}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    return-void
.end method

.method private updateWaterfall(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ">;)V"
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 395
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 396
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 398
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    .line 399
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSmashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/ProgRvSmash;

    if-eqz v1, :cond_4b

    const/4 v2, 0x1

    .line 401
    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->setIsLoadCandidate(Z)V

    .line 402
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    iget-object v2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceDidntAttemptToLoad:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 407
    :cond_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWaterfall() - could not find matching smash for auction response item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->logInternal(Ljava/lang/String;)V

    goto :goto_13

    .line 411
    :cond_64
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mNextWaterfallToLoad:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method private updateWaterfallToNonBidding()V
    .registers 4

    .line 335
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvManager;->extractNonBidderProvidersFromWaterfall()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->updateNextWaterfallToLoad(Ljava/util/List;)V

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fallback_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentAuctionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized isRewardedVideoAvailable()Z
    .registers 4

    monitor-enter p0

    .line 258
    :try_start_1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mShouldTrackNetworkState:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_40

    if-nez v0, :cond_16

    .line 259
    monitor-exit p0

    return v1

    .line 262
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    sget-object v2, Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;->RV_STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    if-ne v0, v2, :cond_3e

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mIsShowingVideo:Z

    if-eqz v0, :cond_21

    goto :goto_3e

    .line 265
    :cond_21
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/ProgRvSmash;

    .line 266
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->isReadyToShow()Z

    move-result v2
    :try_end_37
    .catchall {:try_start_16 .. :try_end_37} :catchall_40

    if-eqz v2, :cond_27

    const/4 v0, 0x1

    .line 267
    monitor-exit p0

    return v0

    .line 271
    :cond_3c
    monitor-exit p0

    return v1

    .line 263
    :cond_3e
    :goto_3e
    monitor-exit p0

    return v1

    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method public onAuctionFailed(ILjava/lang/String;ILjava/lang/String;J)V
    .registers 13

    const-string v0, "Auction failed | moving to fallback waterfall"

    .line 859
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 861
    iput p3, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionTrial:I

    .line 862
    iput-object p4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionFallback:Ljava/lang/String;

    .line 863
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string p4, "duration"

    const-string v0, "errorCode"

    const/16 v1, 0x515

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p3, :cond_36

    .line 864
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

    invoke-direct {p0, v1, p2}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEventWithoutAuctionId(I[[Ljava/lang/Object;)V

    goto :goto_5e

    :cond_36
    const/4 p3, 0x3

    .line 866
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

    invoke-direct {p0, v1, p3}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEventWithoutAuctionId(I[[Ljava/lang/Object;)V

    .line 869
    :goto_5e
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvManager;->updateWaterfallToNonBidding()V

    .line 871
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mShouldLoadAfterClose:Z

    if-eqz p1, :cond_69

    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mIsShowingVideo:Z

    if-nez p1, :cond_6c

    .line 877
    :cond_69
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvManager;->loadSmashesForNextWaterfall()V

    :cond_6c
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

    const-string v0, "makeAuction(): success"

    .line 836
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 837
    iput-object p2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentAuctionId:Ljava/lang/String;

    .line 838
    iput-object p3, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    .line 839
    iput p4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionTrial:I

    const-string p2, ""

    .line 840
    iput-object p2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionFallback:Ljava/lang/String;

    const/4 p2, 0x1

    .line 841
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

    const/16 p2, 0x516

    invoke-direct {p0, p2, p3}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 842
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->updateNextWaterfallToLoad(Ljava/util/List;)V

    .line 844
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mShouldLoadAfterClose:Z

    if-eqz p1, :cond_32

    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mIsShowingVideo:Z

    if-nez p1, :cond_35

    .line 850
    :cond_32
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ProgRvManager;->loadSmashesForNextWaterfall()V

    :cond_35
    return-void
.end method

.method public onLoadError(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V
    .registers 11

    .line 520
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 522
    monitor-enter p0

    :try_start_6
    const-string v1, "onLoadError "

    .line 523
    invoke-direct {p0, p1, v1}, Lcom/ironsource/mediationsdk/ProgRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V

    .line 525
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentAuctionId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_6a

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadError was invoked with auctionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and the current id is "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentAuctionId:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/ProgRvManager;->logInternal(Ljava/lang/String;)V

    const p2, 0x13da3

    const/4 v0, 0x2

    .line 527
    new-array v1, v0, [[Ljava/lang/Object;

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v3

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object v4, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "reason"

    aput-object v4, v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadError wrong auction ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    aput-object v0, v1, v2

    invoke-virtual {p1, p2, v1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    .line 528
    monitor-exit p0

    return-void

    .line 531
    :cond_6a
    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceFailedToLoad:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {p2, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v4, 0x0

    :cond_7d
    :goto_7d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_fd

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ironsource/mediationsdk/ProgRvSmash;

    .line 536
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getIsLoadCandidate()Z

    move-result v6

    if-eqz v6, :cond_ee

    .line 537
    iget-boolean v6, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAdvancedLoading:Z

    if-eqz v6, :cond_c5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgRvSmash;->isBidder()Z

    move-result v6

    if-eqz v6, :cond_c5

    if-nez v1, :cond_9d

    if-eqz v4, :cond_c5

    :cond_9d
    if-eqz v1, :cond_a2

    const-string p1, "a non bidder is being loaded"

    goto :goto_a4

    :cond_a2
    const-string p1, "a non bidder was already loaded successfully"

    .line 545
    :goto_a4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Advanced Loading: Won\'t start loading bidder "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->logInternal(Ljava/lang/String;)V

    goto :goto_fd

    .line 549
    :cond_c5
    iget-object v6, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7d

    .line 551
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    iget-boolean v6, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAdvancedLoading:Z

    if-eqz v6, :cond_fd

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->isBidder()Z

    move-result v6

    if-eqz v6, :cond_fd

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgRvSmash;->isBidder()Z

    move-result v5

    if-nez v5, :cond_fd

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mMaxSmashesToLoad:I

    if-ge v5, v6, :cond_fd

    :goto_ec
    const/4 v1, 0x1

    goto :goto_7d

    .line 565
    :cond_ee
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgRvSmash;->isLoadingInProgress()Z

    move-result v6

    if-eqz v6, :cond_f5

    goto :goto_ec

    .line 567
    :cond_f5
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgRvSmash;->isReadyToShow()Z

    move-result v5

    if-eqz v5, :cond_7d

    const/4 v4, 0x1

    goto :goto_7d

    .line 572
    :cond_fd
    :goto_fd
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_119

    if-nez v4, :cond_119

    if-nez v1, :cond_119

    const-string p1, "onLoadError(): No other available smashes"

    .line 573
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 574
    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/ProgRvManager;->reportAvailabilityIfNeeded(Z)V

    .line 575
    sget-object p1, Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;->RV_STATE_NOT_LOADED:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->setState(Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;)V

    .line 576
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mRvLoadTrigger:Lcom/ironsource/mediationsdk/RvLoadTrigger;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RvLoadTrigger;->loadError()V

    .line 578
    :cond_119
    monitor-exit p0
    :try_end_11a
    .catchall {:try_start_6 .. :try_end_11a} :catchall_12f

    .line 581
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_12e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/mediationsdk/ProgRvSmash;

    .line 582
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/ProgRvManager;->loadSmash(Lcom/ironsource/mediationsdk/ProgRvSmash;)V

    goto :goto_11e

    :cond_12e
    return-void

    :catchall_12f
    move-exception p1

    .line 578
    :try_start_130
    monitor-exit p0
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_12f

    throw p1

    return-void
.end method

.method public declared-synchronized onLoadSuccess(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V
    .registers 14

    monitor-enter p0

    :try_start_1
    const-string v0, "onLoadSuccess "

    .line 486
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentAuctionId:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentAuctionId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLoadSuccess was invoked with auctionId: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and the current id is "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentAuctionId:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/ProgRvManager;->logInternal(Ljava/lang/String;)V

    const p2, 0x13da3

    .line 490
    new-array v0, v2, [[Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "errorCode"

    aput-object v5, v4, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    aput-object v4, v0, v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "reason"

    aput-object v4, v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLoadSuccess wrong auction ID "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    aput-object v2, v0, v3

    invoke-virtual {p1, p2, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V
    :try_end_66
    .catchall {:try_start_1 .. :try_end_66} :catchall_144

    .line 491
    monitor-exit p0

    return-void

    .line 494
    :cond_68
    :try_start_68
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    .line 495
    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceLoadedSuccessfully:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/ProgRvManager;->reportAvailabilityIfNeeded(Z)V

    .line 498
    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    sget-object v5, Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;->RV_STATE_LOADING_SMASHES:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    if-ne v4, v5, :cond_142

    .line 499
    sget-object v4, Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;->RV_STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/ProgRvManager;->setState(Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;)V

    .line 500
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionStartTime:J

    sub-long/2addr v4, v6

    const/16 v6, 0x3eb

    .line 501
    new-array v7, v3, [[Ljava/lang/Object;

    new-array v8, v2, [Ljava/lang/Object;

    const-string v9, "duration"

    aput-object v9, v8, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v3

    aput-object v8, v7, v1

    invoke-direct {p0, v6, v7}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 503
    iget-boolean v4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mIsAuctionEnabled:Z

    if-eqz v4, :cond_142

    .line 504
    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    if-eqz v10, :cond_d5

    .line 507
    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceType()I

    move-result v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {p2, v10, v0, v1}, Lcom/ironsource/mediationsdk/AuctionHandler;->reportLoadSuccess(Lcom/ironsource/mediationsdk/AuctionResponseItem;ILcom/ironsource/mediationsdk/AuctionResponseItem;)V

    .line 508
    iget-object v5, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v6, p2

    check-cast v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceType()I

    move-result v8

    iget-object v9, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual/range {v5 .. v10}, Lcom/ironsource/mediationsdk/AuctionHandler;->reportAuctionLose(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/concurrent/ConcurrentHashMap;ILcom/ironsource/mediationsdk/AuctionResponseItem;Lcom/ironsource/mediationsdk/AuctionResponseItem;)V

    goto :goto_142

    :cond_d5
    if-eqz p1, :cond_dc

    .line 510
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    goto :goto_de

    :cond_dc
    const-string p1, "Smash is null"

    .line 511
    :goto_de
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLoadSuccess winner instance "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " missing from waterfall. auctionId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and the current id is "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentAuctionId:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/ProgRvManager;->logErrorInternal(Ljava/lang/String;)V

    const p2, 0x13da5

    const/4 v4, 0x3

    .line 512
    new-array v4, v4, [[Ljava/lang/Object;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "errorCode"

    aput-object v6, v5, v1

    const/16 v6, 0x3f2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    aput-object v5, v4, v1

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "reason"

    aput-object v6, v5, v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loaded missing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    aput-object v5, v4, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v5, "ext1"

    aput-object v5, v0, v1

    aput-object p1, v0, v3

    aput-object v0, v4, v2

    invoke-direct {p0, p2, v4}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V
    :try_end_142
    .catchall {:try_start_68 .. :try_end_142} :catchall_144

    .line 516
    :cond_142
    :goto_142
    monitor-exit p0

    return-void

    :catchall_144
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onLoadTriggered()V
    .registers 3

    monitor-enter p0

    .line 828
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadTriggered: RV load was triggered in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->logInternal(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 829
    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/ProgRvManager;->loadRewardedVideo(J)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 830
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onNetworkAvailabilityChanged(Z)V
    .registers 6

    .line 895
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mShouldTrackNetworkState:Z

    if-nez v0, :cond_5

    return-void

    .line 899
    :cond_5
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network Availability Changed To: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 901
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->shouldNotifyNetworkAvailabilityChanged(Z)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 902
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->reportAvailabilityIfNeeded(Z)V

    :cond_29
    return-void
.end method

.method public onRewardedVideoAdClicked(Lcom/ironsource/mediationsdk/ProgRvSmash;Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 4

    const-string v0, "onRewardedVideoAdClicked"

    .line 698
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V

    .line 699
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdClicked(Lcom/ironsource/mediationsdk/model/Placement;)V

    return-void
.end method

.method public onRewardedVideoAdClosed(Lcom/ironsource/mediationsdk/ProgRvSmash;)V
    .registers 8

    .line 639
    monitor-enter p0

    const/16 v0, 0x4b3

    const/4 v1, 0x1

    .line 643
    :try_start_4
    new-array v2, v1, [[Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ext1"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "otherRVAvailable = false"

    aput-object v4, v3, v1

    aput-object v3, v2, v5

    invoke-virtual {p1, v0, v2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->sendProviderEventWithPlacement(I[[Ljava/lang/Object;)V

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRewardedVideoAdClosed, mediation state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V

    .line 646
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdClosed()V

    .line 647
    iput-boolean v5, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mIsShowingVideo:Z

    .line 649
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    sget-object v0, Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;->RV_STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    if-eq p1, v0, :cond_43

    .line 650
    invoke-direct {p0, v5}, Lcom/ironsource/mediationsdk/ProgRvManager;->reportAvailabilityIfNeeded(Z)V

    .line 653
    :cond_43
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mIsAuctionOnShowStart:Z

    if-eqz p1, :cond_63

    .line 655
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mNextWaterfallToLoad:Ljava/util/List;

    if-eqz p1, :cond_68

    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mNextWaterfallToLoad:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_68

    .line 656
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    new-instance v0, Lcom/ironsource/mediationsdk/ProgRvManager$3;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/ProgRvManager$3;-><init>(Lcom/ironsource/mediationsdk/ProgRvManager;)V

    iget-wide v1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mTimeToWaitBeforeLoadMS:J

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_68

    .line 665
    :cond_63
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mRvLoadTrigger:Lcom/ironsource/mediationsdk/RvLoadTrigger;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RvLoadTrigger;->showEnd()V

    .line 667
    :cond_68
    :goto_68
    monitor-exit p0

    return-void

    :catchall_6a
    move-exception p1

    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_4 .. :try_end_6c} :catchall_6a

    throw p1
.end method

.method public onRewardedVideoAdEnded(Lcom/ironsource/mediationsdk/ProgRvSmash;)V
    .registers 3

    const-string v0, "onRewardedVideoAdEnded"

    .line 682
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V

    .line 683
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdEnded()V

    return-void
.end method

.method public onRewardedVideoAdOpened(Lcom/ironsource/mediationsdk/ProgRvSmash;)V
    .registers 10

    .line 591
    monitor-enter p0

    .line 592
    :try_start_1
    iget v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionDepth:I

    const-string v0, "onRewardedVideoAdOpened"

    .line 593
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V

    .line 594
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdOpened()V

    .line 596
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mIsAuctionEnabled:Z

    if-eqz v0, :cond_a2

    .line 597
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    if-eqz v0, :cond_3e

    .line 600
    iget-object v1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceType()I

    move-result v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentPlacement:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/ironsource/mediationsdk/AuctionHandler;->reportImpression(Lcom/ironsource/mediationsdk/AuctionResponseItem;ILcom/ironsource/mediationsdk/AuctionResponseItem;Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceShowedSuccessfully:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a2

    :cond_3e
    if-eqz p1, :cond_45

    .line 604
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    goto :goto_47

    :cond_45
    const-string p1, "Smash is null"

    .line 605
    :goto_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRewardedVideoAdOpened showing instance "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " missing from waterfall"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->logErrorInternal(Ljava/lang/String;)V

    const v0, 0x13da5

    const/4 v2, 0x3

    .line 606
    new-array v2, v2, [[Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "errorCode"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/16 v5, 0x3f3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object v4, v2, v6

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "reason"

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Showing missing "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object v4, v2, v1

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "ext1"

    aput-object v5, v4, v6

    aput-object p1, v4, v1

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 612
    :cond_a2
    :goto_a2
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mRvLoadTrigger:Lcom/ironsource/mediationsdk/RvLoadTrigger;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RvLoadTrigger;->showStart()V

    .line 613
    monitor-exit p0

    return-void

    :catchall_a9
    move-exception p1

    monitor-exit p0
    :try_end_ab
    .catchall {:try_start_1 .. :try_end_ab} :catchall_a9

    throw p1
.end method

.method public onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/ProgRvSmash;Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 4

    const-string v0, "onRewardedVideoAdRewarded"

    .line 690
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V

    .line 691
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/model/Placement;)V

    return-void
.end method

.method public onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/ProgRvSmash;)V
    .registers 10

    .line 620
    monitor-enter p0

    .line 621
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRewardedVideoAdShowFailed error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V

    const/16 v0, 0x459

    const/4 v1, 0x2

    .line 622
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

    move-result-object v3

    aput-object v3, v1, v6

    aput-object v1, v2, v6

    invoke-direct {p0, v0, v2}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEventWithPlacement(I[[Ljava/lang/Object;)V

    .line 624
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 625
    iput-boolean v5, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mIsShowingVideo:Z

    .line 626
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceFailedToShow:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    sget-object p2, Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;->RV_STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    if-eq p1, p2, :cond_60

    .line 629
    invoke-direct {p0, v5}, Lcom/ironsource/mediationsdk/ProgRvManager;->reportAvailabilityIfNeeded(Z)V

    .line 631
    :cond_60
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mRvLoadTrigger:Lcom/ironsource/mediationsdk/RvLoadTrigger;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RvLoadTrigger;->showError()V

    .line 632
    monitor-exit p0

    return-void

    :catchall_67
    move-exception p1

    monitor-exit p0
    :try_end_69
    .catchall {:try_start_1 .. :try_end_69} :catchall_67

    throw p1
.end method

.method public onRewardedVideoAdStarted(Lcom/ironsource/mediationsdk/ProgRvSmash;)V
    .registers 3

    const-string v0, "onRewardedVideoAdStarted"

    .line 674
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/ProgRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/ProgRvSmash;Ljava/lang/String;)V

    .line 675
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdStarted()V

    return-void
.end method

.method public shouldTrackNetworkState(Landroid/content/Context;Z)V
    .registers 7

    .line 916
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProgRvManager Should Track Network State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 917
    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mShouldTrackNetworkState:Z

    .line 919
    iget-boolean p2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mShouldTrackNetworkState:Z

    if-eqz p2, :cond_3d

    .line 920
    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    if-nez p2, :cond_2c

    .line 921
    new-instance p2, Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-direct {p2, p1, p0}, Lcom/ironsource/environment/NetworkStateReceiver;-><init>(Landroid/content/Context;Lcom/ironsource/environment/NetworkStateReceiver$NetworkStateReceiverListener;)V

    iput-object p2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    .line 924
    :cond_2c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_4a

    .line 926
    :cond_3d
    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    if-eqz p2, :cond_4a

    .line 927
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public declared-synchronized showRewardedVideo(Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 10

    monitor-enter p0

    const/16 v0, 0x459

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_3a

    :try_start_8
    const-string p1, "showRewardedVideo error: empty default placement"

    .line 180
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->logAPIError(Ljava/lang/String;)V

    .line 181
    new-instance v4, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v5, 0x3fd

    invoke-direct {v4, v5, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 183
    new-array v4, v1, [[Ljava/lang/Object;

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v6, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v3

    aput-object v6, v4, v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "reason"

    aput-object v5, v1, v2

    aput-object p1, v1, v3

    aput-object v1, v4, v3

    invoke-direct {p0, v0, v4, v2, v3}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;ZZ)V
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_188

    .line 184
    monitor-exit p0

    return-void

    .line 187
    :cond_3a
    :try_start_3a
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentPlacement:Ljava/lang/String;

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showRewardedVideo() placement="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentPlacement:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/ProgRvManager;->logApi(Ljava/lang/String;)V

    const/16 v4, 0x44c

    .line 189
    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEventWithPlacement(I)V

    .line 191
    iget-boolean v4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mIsShowingVideo:Z

    if-eqz v4, :cond_91

    const-string p1, "showRewardedVideo error: can\'t show ad while an ad is already showing"

    .line 193
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->logAPIError(Ljava/lang/String;)V

    .line 194
    new-instance v4, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v5, 0x3fe

    invoke-direct {v4, v5, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 196
    new-array v4, v1, [[Ljava/lang/Object;

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v6, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v3

    aput-object v6, v4, v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "reason"

    aput-object v5, v1, v2

    aput-object p1, v1, v3

    aput-object v1, v4, v3

    invoke-direct {p0, v0, v4}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEventWithPlacement(I[[Ljava/lang/Object;)V
    :try_end_8f
    .catchall {:try_start_3a .. :try_end_8f} :catchall_188

    .line 197
    monitor-exit p0

    return-void

    .line 200
    :cond_91
    :try_start_91
    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mState:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    sget-object v5, Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;->RV_STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    if-eq v4, v5, :cond_c9

    const-string p1, "showRewardedVideo error: show called while no ads are available"

    .line 202
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->logAPIError(Ljava/lang/String;)V

    .line 203
    new-instance v4, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v5, 0x3ff

    invoke-direct {v4, v5, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 205
    new-array v4, v1, [[Ljava/lang/Object;

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v6, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v3

    aput-object v6, v4, v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "reason"

    aput-object v5, v1, v2

    aput-object p1, v1, v3

    aput-object v1, v4, v3

    invoke-direct {p0, v0, v4}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEventWithPlacement(I[[Ljava/lang/Object;)V
    :try_end_c7
    .catchall {:try_start_91 .. :try_end_c7} :catchall_188

    .line 206
    monitor-exit p0

    return-void

    .line 209
    :cond_c9
    :try_start_c9
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentPlacement:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isRvPlacementCapped(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_121

    .line 210
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showRewardedVideo error: placement "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mCurrentPlacement:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is capped"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->logAPIError(Ljava/lang/String;)V

    .line 212
    new-instance v4, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v5, 0x20c

    invoke-direct {v4, v5, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 214
    new-array v4, v1, [[Ljava/lang/Object;

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v6, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v3

    aput-object v6, v4, v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "reason"

    aput-object v5, v1, v2

    aput-object p1, v1, v3

    aput-object v1, v4, v3

    invoke-direct {p0, v0, v4}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEventWithPlacement(I[[Ljava/lang/Object;)V
    :try_end_11f
    .catchall {:try_start_c9 .. :try_end_11f} :catchall_188

    .line 215
    monitor-exit p0

    return-void

    .line 218
    :cond_121
    :try_start_121
    iget-object v4, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mWaterfall:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_127
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_150

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ironsource/mediationsdk/ProgRvSmash;

    .line 219
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/ProgRvSmash;->isReadyToShow()Z

    move-result v6

    if-eqz v6, :cond_14a

    .line 220
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mIsShowingVideo:Z

    .line 221
    iget v0, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionDepth:I

    invoke-virtual {v5, v3, v0}, Lcom/ironsource/mediationsdk/ProgRvSmash;->reportShowChance(ZI)V

    .line 222
    invoke-direct {p0, v5, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->showVideo(Lcom/ironsource/mediationsdk/ProgRvSmash;Lcom/ironsource/mediationsdk/model/Placement;)V

    .line 223
    sget-object p1, Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;->RV_STATE_NOT_LOADED:Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->setState(Lcom/ironsource/mediationsdk/ProgRvManager$RV_MEDIATION_STATE;)V
    :try_end_148
    .catchall {:try_start_121 .. :try_end_148} :catchall_188

    .line 224
    monitor-exit p0

    return-void

    .line 226
    :cond_14a
    :try_start_14a
    iget v6, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mSessionDepth:I

    invoke-virtual {v5, v2, v6}, Lcom/ironsource/mediationsdk/ProgRvSmash;->reportShowChance(ZI)V

    goto :goto_127

    :cond_150
    const-string p1, "showRewardedVideo(): No ads to show"

    .line 231
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/ProgRvManager;->logApi(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v4

    const-string v5, "Rewarded Video"

    invoke-static {v5}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 233
    new-array v4, v1, [[Ljava/lang/Object;

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "errorCode"

    aput-object v6, v5, v2

    const/16 v6, 0x1fd

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    aput-object v5, v4, v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "reason"

    aput-object v5, v1, v2

    aput-object p1, v1, v3

    aput-object v1, v4, v3

    invoke-direct {p0, v0, v4}, Lcom/ironsource/mediationsdk/ProgRvManager;->sendMediationEventWithPlacement(I[[Ljava/lang/Object;)V

    .line 234
    iget-object p1, p0, Lcom/ironsource/mediationsdk/ProgRvManager;->mRvLoadTrigger:Lcom/ironsource/mediationsdk/RvLoadTrigger;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RvLoadTrigger;->showError()V
    :try_end_186
    .catchall {:try_start_14a .. :try_end_186} :catchall_188

    .line 235
    monitor-exit p0

    return-void

    :catchall_188
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method
