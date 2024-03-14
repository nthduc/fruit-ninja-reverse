.class Lcom/ironsource/mediationsdk/LWSProgRvManager;
.super Ljava/lang/Object;
.source "LWSProgRvManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/LWSRvManagerListener;
.implements Lcom/ironsource/mediationsdk/RvLoadTriggerCallback;
.implements Lcom/ironsource/mediationsdk/AuctionEventListener;
.implements Lcom/ironsource/mediationsdk/IProgRvManager;
.implements Lcom/ironsource/environment/NetworkStateReceiver$NetworkStateReceiverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;
    }
.end annotation


# instance fields
.field private mAdvancedLoading:Z

.field private mAuctionFailedReason:Ljava/lang/String;

.field private mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

.field private mAuctionHistory:Lcom/ironsource/mediationsdk/AuctionHistory;

.field private mAuctionStartTime:J

.field private mAuctionTrial:I

.field private mCurrentPlacement:Ljava/lang/String;

.field private mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

.field private mIsAuctionEnabled:Z

.field private mIsShowingVideo:Z

.field private mLastChangedAvailabilityTime:J

.field private mLastReportedAvailabilityState:Ljava/lang/Boolean;

.field private mMaxSmashesToLoad:I

.field private mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

.field private mRvLoadTrigger:Lcom/ironsource/mediationsdk/RvLoadTrigger;

.field private mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

.field private mSessionDepth:I

.field private mShouldTrackNetworkState:Z

.field private mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

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

.field private final smashes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/LWSProgRvSmash;",
            ">;"
        }
    .end annotation
.end field

.field private final stateLock:Ljava/lang/Object;

.field private waterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;Ljava/lang/String;Ljava/lang/String;)V
    .registers 22
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

    move-object/from16 v8, p0

    .line 138
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 94
    iput-object v0, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionFailedReason:Ljava/lang/String;

    const/4 v9, 0x0

    .line 98
    iput-boolean v9, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mShouldTrackNetworkState:Z

    const/4 v10, 0x1

    .line 107
    iput v10, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mSessionDepth:I

    .line 127
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->stateLock:Ljava/lang/Object;

    .line 139
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    const v1, 0x13da0

    .line 140
    invoke-direct {v8, v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEventWithoutAuctionId(I)V

    .line 141
    sget-object v1, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_INITIATING:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-direct {v8, v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->setState(Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;)V

    const/4 v1, 0x0

    .line 142
    iput-object v1, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLastReportedAvailabilityState:Ljava/lang/Boolean;

    .line 143
    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAdaptersSmartLoadAmount()I

    move-result v1

    iput v1, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mMaxSmashesToLoad:I

    .line 144
    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAdvancedLoading()Z

    move-result v1

    iput-boolean v1, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAdvancedLoading:Z

    .line 145
    iput-object v0, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mCurrentPlacement:Ljava/lang/String;

    .line 146
    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v13

    .line 147
    iput-boolean v9, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mIsShowingVideo:Z

    .line 149
    new-instance v0, Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;

    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getLoadWhileShowSupportArray()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAuctionSettings()Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getTimeToDeleteOldWaterfallAfterAuction()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;-><init>(Ljava/util/List;I)V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->waterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;

    .line 150
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    .line 151
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    .line 152
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLastChangedAvailabilityTime:J

    .line 155
    invoke-virtual {v13}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getNumOfMaxTrials()I

    move-result v0

    if-lez v0, :cond_79

    const/4 v0, 0x1

    goto :goto_7a

    :cond_79
    const/4 v0, 0x0

    :goto_7a
    iput-boolean v0, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mIsAuctionEnabled:Z

    .line 156
    iget-boolean v0, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mIsAuctionEnabled:Z

    if-eqz v0, :cond_89

    .line 157
    new-instance v0, Lcom/ironsource/mediationsdk/AuctionHandler;

    const-string v1, "rewardedVideo"

    invoke-direct {v0, v1, v13, v8}, Lcom/ironsource/mediationsdk/AuctionHandler;-><init>(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/AuctionSettings;Lcom/ironsource/mediationsdk/AuctionEventListener;)V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    .line 159
    :cond_89
    new-instance v0, Lcom/ironsource/mediationsdk/RvLoadTrigger;

    invoke-direct {v0, v13, v8}, Lcom/ironsource/mediationsdk/RvLoadTrigger;-><init>(Lcom/ironsource/mediationsdk/utils/AuctionSettings;Lcom/ironsource/mediationsdk/RvLoadTriggerCallback;)V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mRvLoadTrigger:Lcom/ironsource/mediationsdk/RvLoadTrigger;

    .line 160
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->smashes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 161
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 165
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_a0
    :goto_a0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .line 166
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v0

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/ironsource/mediationsdk/AdapterRepository;->getAdapter(Lcom/ironsource/mediationsdk/model/ProviderSettings;Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v6

    if-eqz v6, :cond_a0

    .line 168
    new-instance v7, Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAdaptersSmartLoadTimeout()I

    move-result v5

    iget v4, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mSessionDepth:I

    move-object v0, v7

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v16, v4

    move-object/from16 v4, p0

    move-object/from16 p1, v7

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/ProviderSettings;Lcom/ironsource/mediationsdk/LWSRvManagerListener;ILcom/ironsource/mediationsdk/AbstractAdapter;I)V

    .line 169
    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v0

    .line 170
    iget-object v1, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->smashes:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v2, p1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a0

    .line 174
    :cond_e2
    new-instance v0, Lcom/ironsource/mediationsdk/AuctionHistory;

    invoke-virtual {v13}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getAuctionSavedHistoryLimit()I

    move-result v1

    invoke-direct {v0, v14, v1}, Lcom/ironsource/mediationsdk/AuctionHistory;-><init>(Ljava/util/List;I)V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionHistory:Lcom/ironsource/mediationsdk/AuctionHistory;

    .line 175
    new-instance v0, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->smashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;-><init>(Ljava/util/List;)V

    iput-object v0, v8, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    .line 177
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, v11

    const v2, 0x13da1

    .line 178
    new-array v3, v10, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "duration"

    aput-object v5, v4, v9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v10

    aput-object v4, v3, v9

    invoke-direct {v8, v2, v3}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEventWithoutAuctionId(I[[Ljava/lang/Object;)V

    .line 181
    invoke-virtual {v13}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->getTimeToWaitBeforeFirstAuctionMs()J

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->loadRewardedVideo(J)V

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/LWSProgRvManager;)V
    .registers 1

    .line 78
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->makeAuction()V

    return-void
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/LWSProgRvManager;Ljava/lang/String;)V
    .registers 2

    .line 78
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/ironsource/mediationsdk/LWSProgRvManager;)Lcom/ironsource/mediationsdk/AuctionHistory;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionHistory:Lcom/ironsource/mediationsdk/AuctionHistory;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ironsource/mediationsdk/LWSProgRvManager;)I
    .registers 1

    .line 78
    iget p0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mSessionDepth:I

    return p0
.end method

.method static synthetic access$1200(Lcom/ironsource/mediationsdk/LWSProgRvManager;)Lcom/ironsource/mediationsdk/AuctionHandler;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    return-object p0
.end method

.method static synthetic access$202(Lcom/ironsource/mediationsdk/LWSProgRvManager;J)J
    .registers 3

    .line 78
    iput-wide p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionStartTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/ironsource/mediationsdk/LWSProgRvManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->smashes:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ironsource/mediationsdk/LWSProgRvManager;)Lcom/ironsource/mediationsdk/utils/SessionCappingManager;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ironsource/mediationsdk/LWSProgRvManager;)Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->waterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ironsource/mediationsdk/LWSProgRvManager;I[[Ljava/lang/Object;)V
    .registers 3

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/ironsource/mediationsdk/LWSProgRvManager;)V
    .registers 1

    .line 78
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->handleLoadFailure()V

    return-void
.end method

.method static synthetic access$800(Lcom/ironsource/mediationsdk/LWSProgRvManager;I)V
    .registers 2

    .line 78
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEventWithoutAuctionId(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/ironsource/mediationsdk/LWSProgRvManager;I[[Ljava/lang/Object;)V
    .registers 3

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEventWithoutAuctionId(I[[Ljava/lang/Object;)V

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

    .line 676
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 677
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->smashes:Ljava/util/concurrent/ConcurrentHashMap;

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

    check-cast v2, Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    .line 678
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->isBidder()Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->isCapped(Lcom/ironsource/mediationsdk/ProgSmash;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_f

    .line 682
    :cond_2a
    new-instance v3, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/ironsource/mediationsdk/AuctionResponseItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_37
    return-object v0
.end method

.method private getAuctionResponseItemAsStringForReporting(Lcom/ironsource/mediationsdk/AuctionResponseItem;)Ljava/lang/String;
    .registers 4

    .line 739
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->smashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    if-eqz v0, :cond_17

    .line 743
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    .line 746
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

    .line 749
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

    .line 808
    sget-object v0, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_NOT_LOADED:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->setState(Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;)V

    .line 809
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mIsShowingVideo:Z

    if-nez v0, :cond_d

    const/4 v0, 0x0

    .line 810
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->reportAvailabilityIfNeeded(Z)V

    .line 812
    :cond_d
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mRvLoadTrigger:Lcom/ironsource/mediationsdk/RvLoadTrigger;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/RvLoadTrigger;->loadError()V

    return-void
.end method

.method private loadRewardedVideo(J)V
    .registers 10

    .line 550
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->areAllSmashesCapped()Z

    move-result v0

    const-string v1, "reason"

    const-string v2, "errorCode"

    const v3, 0x13c69

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v0, :cond_37

    const-string p1, "all smashes are capped"

    .line 551
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 552
    new-array p2, v6, [[Ljava/lang/Object;

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v2, v0, v5

    const v2, 0x13881

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    aput-object v0, p2, v5

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v1, v0, v5

    aput-object p1, v0, v4

    aput-object v0, p2, v4

    invoke-direct {p0, v3, p2}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 553
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->handleLoadFailure()V

    return-void

    .line 557
    :cond_37
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mIsAuctionEnabled:Z

    if-eqz v0, :cond_5d

    .line 558
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 560
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionHistory:Lcom/ironsource/mediationsdk/AuctionHistory;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/AuctionHistory;->storeWaterfallPerformance(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 561
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 564
    :cond_4f
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/ironsource/mediationsdk/LWSProgRvManager$1;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/LWSProgRvManager$1;-><init>(Lcom/ironsource/mediationsdk/LWSProgRvManager;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_a0

    :cond_5d
    const-string p1, "auction fallback flow starting"

    .line 571
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 574
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->updateWaterfallToNonBidding()V

    .line 578
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->waterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;->getCurrentWaterfall()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_98

    const-string p1, "loadSmashes -  waterfall is empty"

    .line 579
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 580
    new-array p1, v6, [[Ljava/lang/Object;

    new-array p2, v6, [Ljava/lang/Object;

    aput-object v2, p2, v5

    const v0, 0x13884

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v4

    aput-object p2, p1, v5

    new-array p2, v6, [Ljava/lang/Object;

    aput-object v1, p2, v5

    const-string v0, "waterfall is empty"

    aput-object v0, p2, v4

    aput-object p2, p1, v4

    invoke-direct {p0, v3, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 581
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->handleLoadFailure()V

    return-void

    :cond_98
    const/16 p1, 0x3e8

    .line 586
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEventWithoutAuctionId(I)V

    .line 588
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->loadSmashes()V

    :goto_a0
    return-void
.end method

.method private loadSmash(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V
    .registers 4

    .line 798
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getServerData()Ljava/lang/String;

    move-result-object v0

    .line 799
    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->setDynamicDemandSourceIdByServerData(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->loadVideo(Ljava/lang/String;)V

    return-void
.end method

.method private loadSmashes()V
    .registers 8

    .line 758
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->waterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;->getCurrentWaterfall()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    const-string v0, "loadSmashes -  waterfall is empty"

    .line 759
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    const v0, 0x13c69

    const/4 v2, 0x2

    .line 760
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

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 761
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->handleLoadFailure()V

    return-void

    .line 765
    :cond_3d
    sget-object v0, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_LOADING_SMASHES:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->setState(Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;)V

    const/4 v0, 0x0

    .line 770
    :goto_43
    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->waterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;->getCurrentWaterfall()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9b

    iget v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mMaxSmashesToLoad:I

    if-ge v0, v2, :cond_9b

    .line 771
    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->waterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;->getCurrentWaterfall()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    .line 772
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getIsLoadCandidate()Z

    move-result v3

    if-eqz v3, :cond_98

    .line 774
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAdvancedLoading:Z

    if-eqz v3, :cond_93

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->isBidder()Z

    move-result v3

    if-eqz v3, :cond_93

    if-nez v0, :cond_75

    .line 780
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->loadSmash(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V

    goto :goto_9b

    .line 783
    :cond_75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Advanced Loading: Won\'t start loading bidder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as a non bidder is being loaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    goto :goto_9b

    .line 789
    :cond_93
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->loadSmash(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V

    add-int/lit8 v0, v0, 0x1

    :cond_98
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    :cond_9b
    :goto_9b
    return-void
.end method

.method private logAPIError(Ljava/lang/String;)V
    .registers 5

    .line 866
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logApi(Ljava/lang/String;)V
    .registers 5

    .line 870
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logErrorInternal(Ljava/lang/String;)V
    .registers 6

    .line 861
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LWSProgRvManager: "

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

    .line 856
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LWSProgRvManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logSmashCallback(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Ljava/lang/String;)V
    .registers 6

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 851
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LWSProgRvManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private makeAuction()V
    .registers 4

    .line 613
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 614
    :try_start_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    sget-object v2, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_AUCTION_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    if-eq v1, v2, :cond_16

    .line 615
    sget-object v1, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_AUCTION_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->setState(Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;)V

    .line 616
    new-instance v1, Lcom/ironsource/mediationsdk/LWSProgRvManager$2;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/LWSProgRvManager$2;-><init>(Lcom/ironsource/mediationsdk/LWSProgRvManager;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 662
    :cond_16
    monitor-exit v0

    return-void

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private reportAvailabilityIfNeeded(Z)V
    .registers 11

    .line 822
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 823
    :try_start_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLastReportedAvailabilityState:Ljava/lang/Boolean;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLastReportedAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, p1, :cond_63

    .line 824
    :cond_f
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLastReportedAvailabilityState:Ljava/lang/Boolean;

    .line 825
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLastChangedAvailabilityTime:J

    sub-long/2addr v1, v3

    .line 826
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLastChangedAvailabilityTime:J

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_47

    const/16 v6, 0x457

    .line 829
    new-array v7, v5, [[Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v8, "duration"

    aput-object v8, v3, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v5

    aput-object v3, v7, v4

    invoke-direct {p0, v6, v7}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    goto :goto_5c

    :cond_47
    const/16 v6, 0x458

    .line 831
    new-array v7, v5, [[Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v8, "duration"

    aput-object v8, v3, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v5

    aput-object v3, v7, v4

    invoke-direct {p0, v6, v7}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 833
    :goto_5c
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAvailabilityChanged(Z)V

    .line 835
    :cond_63
    monitor-exit v0

    return-void

    :catchall_65
    move-exception p1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_65

    throw p1
.end method

.method private sendMediationEvent(I[[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 887
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;ZZ)V

    return-void
.end method

.method private sendMediationEvent(I[[Ljava/lang/Object;ZZ)V
    .registers 10

    .line 899
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "provider"

    const-string v2, "Mediation"

    .line 900
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 902
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "programmatic"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_2f

    .line 903
    iget-object p4, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->waterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;

    invoke-virtual {p4}, Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2f

    .line 904
    iget-object p4, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->waterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;

    invoke-virtual {p4}, Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object p4

    const-string v1, "auctionId"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    if-eqz p3, :cond_40

    .line 907
    iget-object p3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mCurrentPlacement:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_40

    .line 908
    iget-object p3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mCurrentPlacement:Ljava/lang/String;

    const-string p4, "placement"

    invoke-interface {v0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    :cond_40
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->shouldAddAuctionParams(I)Z

    move-result p3

    if-eqz p3, :cond_51

    .line 912
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p3

    iget p4, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionTrial:I

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionFailedReason:Ljava/lang/String;

    invoke-virtual {p3, v0, p4, v1}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setEventAuctionParams(Ljava/util/Map;ILjava/lang/String;)V

    .line 915
    :cond_51
    iget p3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mSessionDepth:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "sessionDepth"

    invoke-interface {v0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_94

    .line 919
    :try_start_5e
    array-length p3, p2

    const/4 p4, 0x0

    const/4 v1, 0x0

    :goto_61
    if-ge v1, p3, :cond_94

    aget-object v2, p2, v1

    .line 920
    aget-object v3, v2, p4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_71} :catch_74

    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    :catch_74
    move-exception p2

    .line 924
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p3

    sget-object p4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LWSProgRvManager: RV sendMediationEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x3

    invoke-virtual {p3, p4, p2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 927
    :cond_94
    new-instance p2, Lcom/ironsource/eventsmodule/EventData;

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p2, p1, p3}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 928
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private sendMediationEventWithPlacement(I)V
    .registers 4

    const/4 v0, 0x0

    .line 891
    check-cast v0, [[Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;ZZ)V

    return-void
.end method

.method private sendMediationEventWithPlacement(I[[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x1

    .line 895
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;ZZ)V

    return-void
.end method

.method private sendMediationEventWithoutAuctionId(I)V
    .registers 4

    const/4 v0, 0x0

    .line 883
    check-cast v0, [[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;ZZ)V

    return-void
.end method

.method private sendMediationEventWithoutAuctionId(I[[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    .line 879
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;ZZ)V

    return-void
.end method

.method private setState(Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;)V
    .registers 4

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", new state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 818
    iput-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

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

    .line 995
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLastReportedAvailabilityState:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x1

    if-eqz p1, :cond_16

    .line 999
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->isRewardedVideoAvailable()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_22

    :cond_16
    if-nez p1, :cond_21

    .line 1003
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mLastReportedAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :goto_22
    return v2
.end method

.method private showVideo(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 5

    const-string v0, "showVideo()"

    .line 594
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->increaseShowCounter(Lcom/ironsource/mediationsdk/ProgSmash;)V

    .line 598
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mSessionCappingManager:Lcom/ironsource/mediationsdk/utils/SessionCappingManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/utils/SessionCappingManager;->isCapped(Lcom/ironsource/mediationsdk/ProgSmash;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 599
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->setCappedPerSession()V

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rewarded video is now session capped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    .line 603
    :cond_2d
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->incrementRvShowCounter(Landroid/content/Context;Ljava/lang/String;)V

    .line 604
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

    .line 605
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEventWithPlacement(I)V

    .line 608
    :cond_53
    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->showVideo(Lcom/ironsource/mediationsdk/model/Placement;)V

    return-void
.end method

.method private updateWaterfall(Ljava/util/List;Ljava/lang/String;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 691
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 692
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 694
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 699
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_9f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    .line 701
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->getAuctionResponseItemAsStringForReporting(Lcom/ironsource/mediationsdk/AuctionResponseItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    iget-object v4, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->smashes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    if-eqz v6, :cond_85

    .line 706
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v4

    iget-object v5, v6, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->mAdapterConfig:Lcom/ironsource/mediationsdk/model/AdapterConfig;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/AdapterConfig;->getProviderSettings()Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/AdapterRepository;->createAdapter(Lcom/ironsource/mediationsdk/model/ProviderSettings;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v8

    if-eqz v8, :cond_18

    .line 708
    new-instance v4, Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    iget v9, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mSessionDepth:I

    iget v11, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionTrial:I

    iget-object v12, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionFailedReason:Ljava/lang/String;

    move-object v5, v4

    move-object v7, p0

    move-object v10, p2

    invoke-direct/range {v5 .. v12}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;-><init>(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Lcom/ironsource/mediationsdk/LWSRvManagerListener;Lcom/ironsource/mediationsdk/AbstractAdapter;ILjava/lang/String;ILjava/lang/String;)V

    .line 709
    invoke-virtual {v4, v3}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->setIsLoadCandidate(Z)V

    .line 710
    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    iget-object v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    iget-object v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceDidntAttemptToLoad:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 718
    :cond_85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWaterfall() - could not find matching smash for auction response item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AuctionResponseItem;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 722
    :cond_9f
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->waterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;

    invoke-virtual {p1, v0, p2}, Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;->updateWaterFall(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/String;)V

    .line 723
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->waterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;->areWaterFallsOverMaximum()Z

    move-result p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_d7

    const p1, 0x13da6

    .line 724
    new-array v2, v3, [[Ljava/lang/Object;

    new-array v4, p2, [Ljava/lang/Object;

    const-string v5, "reason"

    aput-object v5, v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "waterfalls hold too many with size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->waterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;->getNumberOfWaterfalls()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    aput-object v4, v2, v0

    invoke-direct {p0, p1, v2}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 728
    :cond_d7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWaterfall() - response waterfall is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 730
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_fa

    const-string p1, "Updated waterfall is empty"

    .line 731
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    :cond_fa
    const/16 p1, 0x51f

    .line 734
    new-array v2, v3, [[Ljava/lang/Object;

    new-array p2, p2, [Ljava/lang/Object;

    const-string v4, "ext1"

    aput-object v4, p2, v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v3

    aput-object p2, v2, v0

    invoke-direct {p0, p1, v2}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    return-void
.end method

.method private updateWaterfallToNonBidding()V
    .registers 5

    .line 668
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->extractNonBidderProvidersFromWaterfall()Ljava/util/List;

    move-result-object v0

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fallback_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->updateWaterfall(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isRewardedVideoAvailable()Z
    .registers 4

    .line 261
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mShouldTrackNetworkState:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    return v1

    .line 265
    :cond_14
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    sget-object v2, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    if-ne v0, v2, :cond_3d

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mIsShowingVideo:Z

    if-eqz v0, :cond_1f

    goto :goto_3d

    .line 270
    :cond_1f
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->waterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;->getCurrentWaterfall()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    .line 271
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->isReadyToShow()Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v0, 0x1

    return v0

    :cond_3d
    :goto_3d
    return v1
.end method

.method public onAuctionFailed(ILjava/lang/String;ILjava/lang/String;J)V
    .registers 13

    const-string v0, "Auction failed | moving to fallback waterfall"

    .line 520
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 522
    iput p3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionTrial:I

    .line 523
    iput-object p4, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionFailedReason:Ljava/lang/String;

    .line 524
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->updateWaterfallToNonBidding()V

    .line 525
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string p4, "duration"

    const-string v0, "errorCode"

    const/16 v1, 0x515

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p3, :cond_39

    .line 526
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

    invoke-direct {p0, v1, p2}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEventWithoutAuctionId(I[[Ljava/lang/Object;)V

    goto :goto_61

    :cond_39
    const/4 p3, 0x3

    .line 528
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

    invoke-direct {p0, v1, p3}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEventWithoutAuctionId(I[[Ljava/lang/Object;)V

    .line 531
    :goto_61
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->loadSmashes()V

    return-void
.end method

.method public onAuctionSuccess(Ljava/util/List;Ljava/lang/String;Lcom/ironsource/mediationsdk/AuctionResponseItem;IJ)V
    .registers 8
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

    .line 507
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 508
    iput-object p3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    .line 510
    iput p4, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionTrial:I

    const-string p3, ""

    .line 511
    iput-object p3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionFailedReason:Ljava/lang/String;

    .line 512
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->updateWaterfall(Ljava/util/List;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 513
    new-array p2, p1, [[Ljava/lang/Object;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    const-string v0, "duration"

    aput-object v0, p3, p4

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    aput-object p5, p3, p1

    aput-object p3, p2, p4

    const/16 p1, 0x516

    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 514
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->loadSmashes()V

    return-void
.end method

.method public onLoadError(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V
    .registers 12

    .line 327
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 329
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadError mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getAuctionId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->waterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_10d

    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    sget-object v3, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_AUCTION_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    if-ne v2, v3, :cond_34

    goto/16 :goto_10d

    .line 338
    :cond_34
    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceFailedToLoad:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {v2, v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    sget-object v3, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_LOADING_SMASHES:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    if-eq v2, v3, :cond_4b

    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    sget-object v3, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    if-ne v2, v3, :cond_f7

    .line 347
    :cond_4b
    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->waterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;->getCurrentWaterfall()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    :cond_57
    :goto_57
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    .line 348
    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getIsLoadCandidate()Z

    move-result v8

    if-eqz v8, :cond_c8

    .line 349
    iget-boolean v8, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAdvancedLoading:Z

    if-eqz v8, :cond_9f

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->isBidder()Z

    move-result v8

    if-eqz v8, :cond_9f

    if-nez v3, :cond_77

    if-eqz v6, :cond_9f

    :cond_77
    if-eqz v3, :cond_7c

    const-string p1, "a non bidder is being loaded"

    goto :goto_7e

    :cond_7c
    const-string p1, "a non bidder was already loaded successfully"

    .line 357
    :goto_7e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Advanced Loading: Won\'t start loading bidder "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " as "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    goto :goto_d7

    .line 361
    :cond_9f
    iget-object v8, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_57

    .line 363
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    iget-boolean v8, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAdvancedLoading:Z

    if-eqz v8, :cond_d7

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->isBidder()Z

    move-result v8

    if-eqz v8, :cond_d7

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->isBidder()Z

    move-result v7

    if-nez v7, :cond_d7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    iget v8, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mMaxSmashesToLoad:I

    if-ge v7, v8, :cond_d7

    :goto_c6
    const/4 v3, 0x1

    goto :goto_57

    .line 377
    :cond_c8
    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->isLoadingInProgress()Z

    move-result v8

    if-eqz v8, :cond_cf

    goto :goto_c6

    .line 379
    :cond_cf
    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->isReadyToShow()Z

    move-result v7

    if-eqz v7, :cond_57

    const/4 v6, 0x1

    goto :goto_57

    .line 384
    :cond_d7
    :goto_d7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_f7

    if-nez v6, :cond_f7

    if-nez v3, :cond_f7

    const-string p1, "onLoadError(): No other available smashes"

    .line 385
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    .line 386
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mIsShowingVideo:Z

    if-nez p1, :cond_ed

    .line 387
    invoke-direct {p0, v5}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->reportAvailabilityIfNeeded(Z)V

    .line 389
    :cond_ed
    sget-object p1, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_NOT_LOADED:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->setState(Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;)V

    .line 390
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mRvLoadTrigger:Lcom/ironsource/mediationsdk/RvLoadTrigger;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RvLoadTrigger;->loadError()V

    .line 393
    :cond_f7
    monitor-exit v1
    :try_end_f8
    .catchall {:try_start_8 .. :try_end_f8} :catchall_16a

    .line 396
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_fc
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    .line 397
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->loadSmash(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V

    goto :goto_fc

    :cond_10c
    return-void

    .line 334
    :cond_10d
    :goto_10d
    :try_start_10d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadError was invoked with auctionId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getAuctionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and the current id is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->waterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    const v0, 0x13da3

    const/4 v2, 0x2

    .line 335
    new-array v3, v2, [[Ljava/lang/Object;

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v6, v5

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object v6, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "reason"

    aput-object v6, v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadError wrong auction ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    aput-object v2, v3, v4

    invoke-virtual {p1, v0, v3}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    .line 336
    monitor-exit v1

    return-void

    :catchall_16a
    move-exception p1

    .line 393
    monitor-exit v1
    :try_end_16c
    .catchall {:try_start_10d .. :try_end_16c} :catchall_16a

    throw p1

    return-void
.end method

.method public onLoadSuccess(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V
    .registers 14

    .line 289
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadSuccess mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getAuctionId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->waterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v1, v2, :cond_118

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    sget-object v2, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_AUCTION_IN_PROGRESS:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    if-ne v1, v2, :cond_30

    goto/16 :goto_118

    .line 298
    :cond_30
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceLoadedSuccessfully:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {v1, v2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    sget-object v2, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_LOADING_SMASHES:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    if-ne v1, v2, :cond_116

    .line 303
    invoke-direct {p0, v5}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->reportAvailabilityIfNeeded(Z)V

    .line 304
    sget-object v1, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->setState(Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;)V

    .line 305
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-wide v6, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionStartTime:J

    sub-long/2addr v1, v6

    const/16 v6, 0x3eb

    .line 306
    new-array v7, v5, [[Ljava/lang/Object;

    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "duration"

    aput-object v9, v8, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v5

    aput-object v8, v7, v3

    invoke-direct {p0, v6, v7}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 308
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mIsAuctionEnabled:Z

    if-eqz v1, :cond_116

    .line 309
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    if-eqz v11, :cond_9f

    .line 312
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceType()I

    move-result v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual {v1, v11, v2, v3}, Lcom/ironsource/mediationsdk/AuctionHandler;->reportLoadSuccess(Lcom/ironsource/mediationsdk/AuctionResponseItem;ILcom/ironsource/mediationsdk/AuctionResponseItem;)V

    .line 313
    iget-object v6, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->waterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;->getCurrentWaterfall()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v8, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceType()I

    move-result v9

    iget-object v10, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    invoke-virtual/range {v6 .. v11}, Lcom/ironsource/mediationsdk/AuctionHandler;->reportAuctionLose(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/concurrent/ConcurrentHashMap;ILcom/ironsource/mediationsdk/AuctionResponseItem;Lcom/ironsource/mediationsdk/AuctionResponseItem;)V

    goto :goto_116

    :cond_9f
    if-eqz p1, :cond_a6

    .line 316
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    goto :goto_a8

    :cond_a6
    const-string v1, "Smash is null"

    .line 317
    :goto_a8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLoadSuccess winner instance "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " missing from waterfall. auctionId: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getAuctionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and the current id is "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->waterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logErrorInternal(Ljava/lang/String;)V

    const p1, 0x13da5

    const/4 v2, 0x3

    .line 318
    new-array v2, v2, [[Ljava/lang/Object;

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v6, v3

    const/16 v7, 0x3f2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    aput-object v6, v2, v3

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "reason"

    aput-object v7, v6, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loaded missing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_LOADING_SMASHES:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    aput-object v6, v2, v5

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "ext1"

    aput-object v7, v6, v3

    aput-object v1, v6, v5

    aput-object v6, v2, v4

    invoke-direct {p0, p1, v2}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 322
    :cond_116
    :goto_116
    monitor-exit v0

    return-void

    .line 294
    :cond_118
    :goto_118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadSuccess was invoked with auctionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getAuctionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and the current id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->waterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;->getCurrentWaterfallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    const v1, 0x13da3

    .line 295
    new-array v2, v4, [[Ljava/lang/Object;

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v6, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    aput-object v6, v2, v3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "reason"

    aput-object v6, v4, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLoadSuccess wrong auction ID "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    aput-object v4, v2, v5

    invoke-virtual {p1, v1, v2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEvent(I[[Ljava/lang/Object;)V

    .line 296
    monitor-exit v0

    return-void

    :catchall_173
    move-exception p1

    .line 322
    monitor-exit v0
    :try_end_175
    .catchall {:try_start_3 .. :try_end_175} :catchall_173

    throw p1
.end method

.method public onLoadTriggered()V
    .registers 3

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadTriggered: RV load was triggered in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logInternal(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 539
    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->loadRewardedVideo(J)V

    return-void
.end method

.method public onNetworkAvailabilityChanged(Z)V
    .registers 6

    .line 945
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mShouldTrackNetworkState:Z

    if-nez v0, :cond_5

    return-void

    .line 949
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

    .line 951
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->shouldNotifyNetworkAvailabilityChanged(Z)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 952
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->reportAvailabilityIfNeeded(Z)V

    :cond_29
    return-void
.end method

.method public onRewardedVideoAdClicked(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 4

    const-string v0, "onRewardedVideoAdClicked"

    .line 494
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Ljava/lang/String;)V

    .line 495
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdClicked(Lcom/ironsource/mediationsdk/model/Placement;)V

    return-void
.end method

.method public onRewardedVideoAdClosed(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V
    .registers 11

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRewardedVideoAdClosed, mediation state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Ljava/lang/String;)V

    .line 447
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdClosed()V

    const/4 v0, 0x0

    .line 448
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mIsShowingVideo:Z

    .line 449
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    sget-object v2, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2d

    const/4 v1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    .line 450
    :goto_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_6a

    .line 453
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->waterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;->getCurrentWaterfall()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3f
    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    .line 454
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->isLoaded()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 455
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    :cond_6a
    const/16 v1, 0x4b3

    .line 461
    new-array v4, v3, [[Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "ext1"

    aput-object v6, v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "otherRVAvailable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_97

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "true|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_99

    :cond_97
    const-string v2, "false"

    :goto_99
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    aput-object v5, v4, v0

    .line 461
    invoke-virtual {p1, v1, v4}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->sendProviderEventWithPlacement(I[[Ljava/lang/Object;)V

    .line 464
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->waterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;->getShowingSmash()Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c2

    .line 465
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->waterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;->setShowingSmash(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V

    .line 467
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    if-eq p1, v1, :cond_c2

    .line 468
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->reportAvailabilityIfNeeded(Z)V

    :cond_c2
    return-void
.end method

.method public onRewardedVideoAdEnded(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V
    .registers 3

    const-string v0, "onRewardedVideoAdEnded"

    .line 482
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Ljava/lang/String;)V

    .line 483
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdEnded()V

    return-void
.end method

.method public onRewardedVideoAdOpened(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V
    .registers 10

    .line 403
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->waterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;->setShowingSmash(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V

    .line 404
    iget v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mSessionDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mSessionDepth:I

    const-string v0, "onRewardedVideoAdOpened"

    .line 405
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Ljava/lang/String;)V

    .line 406
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdOpened()V

    .line 408
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mIsAuctionEnabled:Z

    if-eqz v0, :cond_a6

    .line 409
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallServerData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AuctionResponseItem;

    if-eqz v0, :cond_42

    .line 412
    iget-object v1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mAuctionHandler:Lcom/ironsource/mediationsdk/AuctionHandler;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceType()I

    move-result v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mCurrentPlacement:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/ironsource/mediationsdk/AuctionHandler;->reportImpression(Lcom/ironsource/mediationsdk/AuctionResponseItem;ILcom/ironsource/mediationsdk/AuctionResponseItem;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceShowedSuccessfully:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a6

    :cond_42
    if-eqz p1, :cond_49

    .line 416
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    goto :goto_4b

    :cond_49
    const-string p1, "Smash is null"

    .line 417
    :goto_4b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRewardedVideoAdOpened showing instance "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " missing from waterfall"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logErrorInternal(Ljava/lang/String;)V

    const v0, 0x13da5

    const/4 v2, 0x3

    .line 418
    new-array v2, v2, [[Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "errorCode"

    aput-object v6, v4, v5

    const/16 v6, 0x3f3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    aput-object v4, v2, v5

    new-array v4, v3, [Ljava/lang/Object;

    const-string v6, "reason"

    aput-object v6, v4, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Showing missing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    aput-object v4, v2, v1

    new-array v4, v3, [Ljava/lang/Object;

    const-string v6, "ext1"

    aput-object v6, v4, v5

    aput-object p1, v4, v1

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;)V

    .line 424
    :cond_a6
    :goto_a6
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mRvLoadTrigger:Lcom/ironsource/mediationsdk/RvLoadTrigger;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RvLoadTrigger;->showStart()V

    return-void
.end method

.method public onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 4

    const-string v0, "onRewardedVideoAdRewarded"

    .line 488
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Ljava/lang/String;)V

    .line 489
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/model/Placement;)V

    return-void
.end method

.method public onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V
    .registers 9

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRewardedVideoAdShowFailed error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 430
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mIsShowingVideo:Z

    const/4 v1, 0x2

    .line 432
    new-array v2, v1, [[Ljava/lang/Object;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "errorCode"

    aput-object v4, v3, v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    aput-object v3, v2, v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "reason"

    aput-object v3, v1, v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    aput-object v1, v2, v5

    const/16 v1, 0x459

    invoke-direct {p0, v1, v2}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEventWithPlacement(I[[Ljava/lang/Object;)V

    .line 434
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 435
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mWaterfallPerformance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;->ISAuctionPerformanceFailedToShow:Lcom/ironsource/mediationsdk/AuctionHistory$ISAuctionPerformance;

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    sget-object p2, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    if-eq p1, p2, :cond_5f

    .line 439
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->reportAvailabilityIfNeeded(Z)V

    .line 441
    :cond_5f
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mRvLoadTrigger:Lcom/ironsource/mediationsdk/RvLoadTrigger;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RvLoadTrigger;->showError()V

    return-void
.end method

.method public onRewardedVideoAdStarted(Lcom/ironsource/mediationsdk/LWSProgRvSmash;)V
    .registers 3

    const-string v0, "onRewardedVideoAdStarted"

    .line 476
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logSmashCallback(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Ljava/lang/String;)V

    .line 477
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdStarted()V

    return-void
.end method

.method public shouldTrackNetworkState(Landroid/content/Context;Z)V
    .registers 7

    .line 966
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LWSProgRvManager Should Track Network State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 967
    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mShouldTrackNetworkState:Z

    .line 969
    iget-boolean p2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mShouldTrackNetworkState:Z

    if-eqz p2, :cond_3d

    .line 970
    iget-object p2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    if-nez p2, :cond_2c

    .line 971
    new-instance p2, Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-direct {p2, p1, p0}, Lcom/ironsource/environment/NetworkStateReceiver;-><init>(Landroid/content/Context;Lcom/ironsource/environment/NetworkStateReceiver$NetworkStateReceiverListener;)V

    iput-object p2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    .line 974
    :cond_2c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_4a

    .line 976
    :cond_3d
    iget-object p2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    if-eqz p2, :cond_4a

    .line 977
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public showRewardedVideo(Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 11

    .line 190
    iget-object v0, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x459

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_3c

    :try_start_a
    const-string p1, "showRewardedVideo error: empty default placement"

    .line 194
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logAPIError(Ljava/lang/String;)V

    .line 195
    new-instance v5, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v6, 0x3fd

    invoke-direct {v5, v6, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 197
    new-array v5, v2, [[Ljava/lang/Object;

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "errorCode"

    aput-object v8, v7, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v4

    aput-object v7, v5, v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "reason"

    aput-object v6, v2, v3

    aput-object p1, v2, v4

    aput-object v2, v5, v4

    invoke-direct {p0, v1, v5, v3, v4}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEvent(I[[Ljava/lang/Object;ZZ)V

    .line 198
    monitor-exit v0

    return-void

    .line 200
    :cond_3c
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mCurrentPlacement:Ljava/lang/String;

    .line 201
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showRewardedVideo() placement="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mCurrentPlacement:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logApi(Ljava/lang/String;)V

    const/16 v5, 0x44c

    .line 202
    invoke-direct {p0, v5}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEventWithPlacement(I)V

    .line 204
    iget-boolean v5, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mIsShowingVideo:Z

    if-eqz v5, :cond_93

    const-string p1, "showRewardedVideo error: can\'t show ad while an ad is already showing"

    .line 206
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logAPIError(Ljava/lang/String;)V

    .line 207
    new-instance v5, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v6, 0x3fe

    invoke-direct {v5, v6, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 209
    new-array v5, v2, [[Ljava/lang/Object;

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "errorCode"

    aput-object v8, v7, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v4

    aput-object v7, v5, v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "reason"

    aput-object v6, v2, v3

    aput-object p1, v2, v4

    aput-object v2, v5, v4

    invoke-direct {p0, v1, v5}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEventWithPlacement(I[[Ljava/lang/Object;)V

    .line 210
    monitor-exit v0

    return-void

    .line 213
    :cond_93
    iget-object v5, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mState:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    sget-object v6, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_READY_TO_SHOW:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    if-eq v5, v6, :cond_cb

    const-string p1, "showRewardedVideo error: show called while no ads are available"

    .line 215
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logAPIError(Ljava/lang/String;)V

    .line 216
    new-instance v5, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v6, 0x3ff

    invoke-direct {v5, v6, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 218
    new-array v5, v2, [[Ljava/lang/Object;

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "errorCode"

    aput-object v8, v7, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v4

    aput-object v7, v5, v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "reason"

    aput-object v6, v2, v3

    aput-object p1, v2, v4

    aput-object v2, v5, v4

    invoke-direct {p0, v1, v5}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEventWithPlacement(I[[Ljava/lang/Object;)V

    .line 219
    monitor-exit v0

    return-void

    .line 222
    :cond_cb
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mCurrentPlacement:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isRvPlacementCapped(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_123

    .line 223
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showRewardedVideo error: placement "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mCurrentPlacement:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is capped"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 224
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logAPIError(Ljava/lang/String;)V

    .line 225
    new-instance v5, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v6, 0x20c

    invoke-direct {v5, v6, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 227
    new-array v5, v2, [[Ljava/lang/Object;

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "errorCode"

    aput-object v8, v7, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v4

    aput-object v7, v5, v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "reason"

    aput-object v6, v2, v3

    aput-object p1, v2, v4

    aput-object v2, v5, v4

    invoke-direct {p0, v1, v5}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEventWithPlacement(I[[Ljava/lang/Object;)V

    .line 228
    monitor-exit v0

    return-void

    .line 232
    :cond_123
    iget-object v5, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->waterfallLifeCycleHolder:Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/WaterfallLifeCycleHolder;->getCurrentWaterfall()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ironsource/mediationsdk/LWSProgRvSmash;

    .line 233
    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->isReadyToShow()Z

    move-result v7

    if-eqz v7, :cond_14a

    .line 234
    iput-boolean v4, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mIsShowingVideo:Z

    .line 235
    invoke-virtual {v6, v4}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->reportShowChance(Z)V

    .line 237
    sget-object v5, Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;->RV_STATE_NOT_LOADED:Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;

    invoke-direct {p0, v5}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->setState(Lcom/ironsource/mediationsdk/LWSProgRvManager$RV_MEDIATION_STATE;)V

    goto :goto_14f

    .line 240
    :cond_14a
    invoke-virtual {v6, v3}, Lcom/ironsource/mediationsdk/LWSProgRvSmash;->reportShowChance(Z)V

    goto :goto_12d

    :cond_14e
    const/4 v6, 0x0

    :goto_14f
    if-nez v6, :cond_189

    const-string p1, "showRewardedVideo(): No ads to show"

    .line 245
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->logApi(Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/RVListenerWrapper;

    move-result-object v5

    const-string v6, "Rewarded Video"

    invoke-static {v6}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/RVListenerWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 247
    new-array v5, v2, [[Ljava/lang/Object;

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v6, v3

    const/16 v7, 0x1fd

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object v6, v5, v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "reason"

    aput-object v6, v2, v3

    aput-object p1, v2, v4

    aput-object v2, v5, v4

    invoke-direct {p0, v1, v5}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->sendMediationEventWithPlacement(I[[Ljava/lang/Object;)V

    .line 248
    iget-object p1, p0, Lcom/ironsource/mediationsdk/LWSProgRvManager;->mRvLoadTrigger:Lcom/ironsource/mediationsdk/RvLoadTrigger;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RvLoadTrigger;->showError()V

    .line 249
    monitor-exit v0

    return-void

    .line 251
    :cond_189
    monitor-exit v0
    :try_end_18a
    .catchall {:try_start_a .. :try_end_18a} :catchall_190

    if-eqz v6, :cond_18f

    .line 254
    invoke-direct {p0, v6, p1}, Lcom/ironsource/mediationsdk/LWSProgRvManager;->showVideo(Lcom/ironsource/mediationsdk/LWSProgRvSmash;Lcom/ironsource/mediationsdk/model/Placement;)V

    :cond_18f
    return-void

    :catchall_190
    move-exception p1

    .line 251
    :try_start_191
    monitor-exit v0
    :try_end_192
    .catchall {:try_start_191 .. :try_end_192} :catchall_190

    throw p1

    return-void
.end method
