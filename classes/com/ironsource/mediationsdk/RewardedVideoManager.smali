.class Lcom/ironsource/mediationsdk/RewardedVideoManager;
.super Lcom/ironsource/mediationsdk/AbstractAdUnitManager;
.source "RewardedVideoManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;
.implements Lcom/ironsource/environment/NetworkStateReceiver$NetworkStateReceiverListener;
.implements Lcom/ironsource/mediationsdk/utils/DailyCappingListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

.field private mIsCurrentlyShowing:Z

.field private mIsUltraEventsEnabled:Z

.field private mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

.field private mLoadStartTime:J

.field private mManualLoadInterval:I

.field private mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

.field private mPauseSmartLoadDueToNetworkUnavailability:Z

.field private mShouldSendMediationLoadSuccessEvent:Z

.field private mStatesToIgnore:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;",
            ">;"
        }
    .end annotation
.end field

.field private mTimer:Ljava/util/Timer;


# direct methods
.method constructor <init>()V
    .registers 4

    .line 63
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;-><init>()V

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mTimer:Ljava/util/Timer;

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mPauseSmartLoadDueToNetworkUnavailability:Z

    .line 66
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsUltraEventsEnabled:Z

    .line 67
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsCurrentlyShowing:Z

    .line 68
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mShouldSendMediationLoadSuccessEvent:Z

    .line 69
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoadStartTime:J

    const/4 v1, 0x4

    .line 71
    new-array v1, v1, [Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_FAILED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v2, v1, v0

    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->EXHAUSTED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mStatesToIgnore:Ljava/util/List;

    .line 76
    new-instance v0, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    const-string v1, "rewarded_video"

    invoke-direct {v0, v1, p0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;-><init>(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/DailyCappingListener;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/RewardedVideoManager;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->loadRewardedVideo()V

    return-void
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/RewardedVideoManager;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->scheduleFetchTimer()V

    return-void
.end method

.method private declared-synchronized completeAdapterCap()V
    .registers 5

    monitor-enter p0

    .line 797
    :try_start_1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_37

    if-eqz v0, :cond_9

    .line 798
    monitor-exit p0

    return-void

    :cond_9
    const/4 v0, 0x3

    .line 801
    :try_start_a
    new-array v0, v0, [Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v3, v0, v1

    const/4 v1, 0x2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v3, v0, v1

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->smashesCount([Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)I

    move-result v0

    .line 803
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 804
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->completeIterationRound()V
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_37

    .line 805
    monitor-exit p0

    return-void

    .line 807
    :cond_2c
    :try_start_2c
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 808
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->notifyAvailabilityChange()V
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_37

    .line 810
    :cond_35
    monitor-exit p0

    return-void

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized completeIterationRound()V
    .registers 7

    monitor-enter p0

    .line 813
    :try_start_1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isIterationRoundComplete()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 814
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Reset Iteration"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 818
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 819
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v4

    sget-object v5, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->EXHAUSTED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v4, v5, :cond_2f

    .line 820
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->completeIteration()V

    .line 822
    :cond_2f
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v2, v4, :cond_18

    const/4 v1, 0x1

    goto :goto_18

    .line 826
    :cond_39
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "End of Reset Iteration"

    invoke-virtual {v0, v2, v4, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 828
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 829
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAvailabilityChanged(Z)V
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_55

    .line 832
    :cond_53
    monitor-exit p0

    return-void

    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method private getCurrentPlacementName()Ljava/lang/String;
    .registers 2

    .line 944
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    .line 948
    :cond_7
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized hasAvailableSmash()Z
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 742
    :try_start_2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 743
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_1f

    if-ne v2, v3, :cond_8

    const/4 v0, 0x1

    .line 749
    :cond_1d
    monitor-exit p0

    return v0

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method private declared-synchronized isAllAdaptersInactive()Z
    .registers 7

    monitor-enter p0

    .line 713
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 714
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v4

    sget-object v5, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_FAILED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v4, v5, :cond_3d

    .line 715
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v4

    sget-object v5, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v4, v5, :cond_3d

    .line 716
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v4

    sget-object v5, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v4, v5, :cond_3d

    .line 717
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v4

    sget-object v5, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v4, v5, :cond_3d

    .line 718
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->EXHAUSTED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v3, v4, :cond_9

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 722
    :cond_40
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_4b

    if-ne v0, v2, :cond_49

    const/4 v1, 0x1

    :cond_49
    monitor-exit p0

    return v1

    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method private declared-synchronized isAvailableAdaptersToLoad()Z
    .registers 5

    monitor-enter p0

    .line 727
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 728
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v2, v3, :cond_3b

    .line 729
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v2, v3, :cond_3b

    .line 730
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v2, v3, :cond_3b

    .line 731
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v2, v3, :cond_3b

    .line 732
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_41

    if-ne v1, v2, :cond_7

    :cond_3b
    const/4 v0, 0x1

    .line 733
    monitor-exit p0

    return v0

    :cond_3e
    const/4 v0, 0x0

    .line 736
    monitor-exit p0

    return v0

    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method private declared-synchronized isBackFillAvailable()Z
    .registers 2

    monitor-enter p0

    .line 753
    :try_start_1
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getBackfillSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 754
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getBackfillSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->isRewardedVideoAvailable()Z

    move-result v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_16

    monitor-exit p0

    return v0

    :cond_13
    const/4 v0, 0x0

    .line 756
    monitor-exit p0

    return v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isIterationRoundComplete()Z
    .registers 5

    monitor-enter p0

    .line 835
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 836
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v2, v3, :cond_2b

    .line 837
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v2, v3, :cond_2b

    .line 838
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_31

    if-ne v1, v2, :cond_7

    :cond_2b
    const/4 v0, 0x0

    .line 839
    monitor-exit p0

    return v0

    :cond_2e
    const/4 v0, 0x1

    .line 842
    monitor-exit p0

    return v0

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method private loadNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 580
    :goto_3
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_64

    if-nez v1, :cond_64

    .line 581
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v3, v4, :cond_5a

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v3, v4, :cond_2e

    goto :goto_5a

    .line 586
    :cond_2e
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v3, v4, :cond_61

    .line 587
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->startAdapter(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v1

    if-nez v1, :cond_61

    .line 590
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_FAILED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    goto :goto_61

    :cond_5a
    :goto_5a
    add-int/lit8 v2, v2, 0x1

    .line 584
    iget v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmartLoadAmount:I

    if-lt v2, v3, :cond_61

    goto :goto_64

    :cond_61
    :goto_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_64
    :goto_64
    return-object v1
.end method

.method private declared-synchronized loadRewardedVideo()V
    .registers 8

    monitor-enter p0

    .line 651
    :try_start_1
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    if-nez v0, :cond_15

    goto/16 :goto_9b

    .line 654
    :cond_15
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_99

    const/16 v0, 0x66

    .line 655
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logMediationEvent(I)V

    const/16 v0, 0x3e8

    .line 656
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logMediationEvent(I)V

    const/4 v0, 0x1

    .line 657
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mShouldSendMediationLoadSuccessEvent:Z

    .line 658
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_30
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_99

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 659
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_9d

    if-ne v3, v4, :cond_30

    .line 661
    :try_start_44
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fetch from timer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":reload smash"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/16 v3, 0x3e9

    const/4 v4, 0x0

    .line 662
    check-cast v4, [[Ljava/lang/Object;

    invoke-direct {p0, v3, v2, v4}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 663
    move-object v3, v2

    check-cast v3, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->fetchRewardedVideo()V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_73} :catch_74
    .catchall {:try_start_44 .. :try_end_73} :catchall_9d

    goto :goto_30

    :catch_74
    move-exception v3

    .line 666
    :try_start_75
    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Failed to call fetchVideo(), "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_98
    .catchall {:try_start_75 .. :try_end_98} :catchall_9d

    goto :goto_30

    .line 671
    :cond_99
    monitor-exit p0

    return-void

    .line 652
    :cond_9b
    :goto_9b
    monitor-exit p0

    return-void

    :catchall_9d
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method private logMediationEvent(I)V
    .registers 3

    const/4 v0, 0x0

    .line 847
    check-cast v0, [[Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logMediationEvent(I[[Ljava/lang/Object;)V

    return-void
.end method

.method private logMediationEvent(I[[Ljava/lang/Object;)V
    .registers 10

    const/4 v0, 0x0

    .line 851
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz p2, :cond_3a

    .line 855
    :try_start_7
    array-length v2, p2

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_3a

    aget-object v4, p2, v3

    .line 856
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_19} :catch_1c

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :catch_1c
    move-exception p2

    .line 860
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RewardedVideoManager logMediationEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x3

    invoke-virtual {v0, v2, p2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 863
    :cond_3a
    new-instance p2, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {p2, p1, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 864
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V
    .registers 10

    .line 868
    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractSmash;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p3, :cond_3a

    .line 872
    :try_start_6
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_3a

    aget-object v3, p3, v2

    .line 873
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {p2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_1c

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :catch_1c
    move-exception p3

    .line 877
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RewardedVideoManager logProviderEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 880
    :cond_3a
    new-instance p3, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {p3, p1, p2}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 881
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private declared-synchronized notifyAvailabilityChange()V
    .registers 3

    monitor-enter p0

    .line 773
    :try_start_1
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getBackfillSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mBackFillInitStarted:Z

    if-nez v0, :cond_26

    .line 775
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mBackFillInitStarted:Z

    .line 776
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getBackfillSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->startAdapter(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v0

    if-nez v0, :cond_49

    .line 780
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_49

    .line 783
    :cond_26
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isBackFillAvailable()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 785
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 786
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_49

    .line 790
    :cond_3e
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAvailabilityChanged(Z)V
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_4b

    .line 792
    :cond_49
    :goto_49
    monitor-exit p0

    return-void

    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private prepareSDK5()V
    .registers 5

    const/4 v0, 0x0

    .line 934
    :goto_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4a

    .line 935
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractSmash;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/AbstractSmash;->mAdapterConfigs:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IronSource"

    .line 936
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v2, "SupersonicAds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_2b

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 937
    :cond_2b
    :goto_2b
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/AbstractSmash;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/AbstractSmash;->mAdapterConfigs:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractSmash;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/AbstractSmash;->mAdapterConfigs:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/mediationsdk/AdapterRepository;->getAdapter(Lcom/ironsource/mediationsdk/model/ProviderSettings;Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    :cond_4a
    return-void
.end method

.method private reportFalseImpressionsOnHigherPriority(II)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_32

    .line 495
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 496
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mStatesToIgnore:Ljava/util/List;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 497
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getRequestUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0, p2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->reportImpression(Ljava/lang/String;ZI)V

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_32
    return-void
.end method

.method private declared-synchronized reportImpression(Ljava/lang/String;ZI)V
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, ""
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_56

    .line 512
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 515
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&sdkVersion="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-static {v0, p2, p3}, Lcom/ironsource/mediationsdk/server/Server;->callAsyncRequestURL(Ljava/lang/String;ZI)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_2d} :catch_2e
    .catchall {:try_start_3 .. :try_end_2d} :catchall_56

    goto :goto_54

    :catch_2e
    move-exception p1

    .line 519
    :try_start_2f
    iget-object p3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NETWORK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportImpression:(providerURL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", hit:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v1, p2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_54
    .catchall {:try_start_2f .. :try_end_54} :catchall_56

    .line 523
    :goto_54
    monitor-exit p0

    return-void

    :catchall_56
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private scheduleFetchTimer()V
    .registers 5

    .line 631
    iget v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mManualLoadInterval:I

    if-gtz v0, :cond_f

    .line 632
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x1

    const-string v3, "load interval is not set, ignoring"

    invoke-virtual {v0, v1, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    .line 636
    :cond_f
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_16

    .line 637
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 639
    :cond_16
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mTimer:Ljava/util/Timer;

    .line 640
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/ironsource/mediationsdk/RewardedVideoManager$1;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager$1;-><init>(Lcom/ironsource/mediationsdk/RewardedVideoManager;)V

    iget v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mManualLoadInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private sendMediationLoadEvents()V
    .registers 7

    .line 897
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isRewardedVideoAvailable()Z

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-eqz v0, :cond_26

    .line 898
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logMediationEvent(I)V

    const/16 v0, 0x3eb

    .line 899
    new-array v1, v2, [[Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "duration"

    aput-object v5, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    aput-object v3, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logMediationEvent(I[[Ljava/lang/Object;)V

    .line 900
    iput-boolean v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mShouldSendMediationLoadSuccessEvent:Z

    return-void

    .line 904
    :cond_26
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isAvailableAdaptersToLoad()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 905
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logMediationEvent(I)V

    .line 906
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mShouldSendMediationLoadSuccessEvent:Z

    .line 907
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoadStartTime:J

    :cond_3c
    return-void
.end method

.method private sendShowChanceEvents(Lcom/ironsource/mediationsdk/AbstractSmash;ILjava/lang/String;)V
    .registers 14

    const/4 v0, 0x2

    .line 761
    new-array v1, v0, [[Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "placement"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v5, 0x1

    aput-object p3, v2, v5

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/Object;

    const-string v6, "status"

    aput-object v6, v2, v4

    const-string v7, "true"

    aput-object v7, v2, v5

    aput-object v2, v1, v5

    const/16 v2, 0x4b9

    invoke-direct {p0, v2, p1, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 763
    :goto_21
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_55

    if-ge p1, p2, :cond_55

    .line 764
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 765
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v7

    sget-object v8, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v7, v8, :cond_52

    .line 766
    new-array v7, v0, [[Ljava/lang/Object;

    new-array v8, v0, [Ljava/lang/Object;

    aput-object v3, v8, v4

    aput-object p3, v8, v5

    aput-object v8, v7, v4

    new-array v8, v0, [Ljava/lang/Object;

    aput-object v6, v8, v4

    const-string v9, "false"

    aput-object v9, v8, v5

    aput-object v8, v7, v5

    invoke-direct {p0, v2, v1, v7}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    :cond_52
    add-int/lit8 p1, p1, 0x1

    goto :goto_21

    :cond_55
    return-void
.end method

.method private declared-synchronized shouldNotifyAvailabilityChanged(Z)Z
    .registers 5

    monitor-enter p0

    .line 680
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_26

    .line 682
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->scheduleFetchTimer()V

    if-eqz p1, :cond_13

    .line 686
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    goto :goto_55

    .line 690
    :cond_13
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isBackFillAvailable()Z

    move-result p1

    if-nez p1, :cond_54

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isAllAdaptersInactive()Z

    move-result p1

    if-eqz p1, :cond_54

    .line 691
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    goto :goto_55

    :cond_26
    if-eqz p1, :cond_37

    .line 697
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_37

    .line 698
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    goto :goto_55

    :cond_37
    if-nez p1, :cond_54

    .line 703
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_54

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->hasAvailableSmash()Z

    move-result p1

    if-nez p1, :cond_54

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isBackFillAvailable()Z

    move-result p1

    if-nez p1, :cond_54

    .line 704
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_57

    goto :goto_55

    :cond_54
    const/4 v2, 0x0

    .line 708
    :goto_55
    monitor-exit p0

    return v2

    :catchall_57
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private shouldNotifyNetworkAvailabilityChanged(Z)Z
    .registers 5

    .line 469
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-eqz p1, :cond_1e

    .line 472
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->hasAvailableSmash()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 473
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    goto :goto_30

    :cond_1e
    if-nez p1, :cond_2f

    .line 475
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 476
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    return v0
.end method

.method private declared-synchronized showAdapter(Lcom/ironsource/mediationsdk/AbstractSmash;I)V
    .registers 10

    monitor-enter p0

    .line 598
    :try_start_1
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->incrementShowCounter(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)V

    .line 599
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isRvPlacementCapped(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_38

    const/16 v0, 0x578

    .line 600
    new-array v4, v3, [[Ljava/lang/Object;

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "placement"

    aput-object v6, v5, v2

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    aput-object v5, v4, v2

    invoke-direct {p0, v0, v4}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logMediationEvent(I[[Ljava/lang/Object;)V

    .line 603
    :cond_38
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->increaseShowCounter(Lcom/ironsource/mediationsdk/AbstractSmash;)V

    .line 605
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    if-eqz v0, :cond_66

    .line 607
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsUltraEventsEnabled:Z

    if-eqz v0, :cond_5e

    .line 609
    move-object v0, p1

    check-cast v0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementId()I

    move-result v4

    invoke-direct {p0, v0, v3, v4}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->reportImpression(Ljava/lang/String;ZI)V

    .line 611
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementId()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->reportFalseImpressionsOnHigherPriority(II)V

    .line 613
    :cond_5e
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->sendShowChanceEvents(Lcom/ironsource/mediationsdk/AbstractSmash;ILjava/lang/String;)V

    goto :goto_70

    .line 615
    :cond_66
    iget-object p2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "mCurrentPlacement is null"

    const/4 v5, 0x3

    invoke-virtual {p2, v0, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :goto_70
    const/16 p2, 0x4b1

    .line 618
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    if-eqz v0, :cond_87

    new-array v0, v3, [[Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "placement"

    aput-object v4, v1, v2

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    aput-object v1, v0, v2

    goto :goto_8a

    :cond_87
    const/4 v0, 0x0

    check-cast v0, [[Ljava/lang/Object;

    :goto_8a
    invoke-direct {p0, p2, p1, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 619
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsCurrentlyShowing:Z

    .line 622
    move-object p2, p1

    check-cast p2, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(I)I

    move-result v0

    iput v0, p2, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mSessionDepth:I

    .line 623
    check-cast p1, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->showRewardedVideo()V
    :try_end_a1
    .catchall {:try_start_1 .. :try_end_a1} :catchall_a3

    .line 624
    monitor-exit p0

    return-void

    :catchall_a3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private varargs smashesCount([Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)I
    .registers 10

    .line 886
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 887
    array-length v4, p1

    move v5, v2

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v4, :cond_26

    aget-object v6, p1, v2

    .line 888
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v7

    if-ne v7, v6, :cond_23

    add-int/lit8 v5, v5, 0x1

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_26
    move v2, v5

    goto :goto_8

    :cond_28
    return v2
.end method

.method private declared-synchronized startAdapter(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)Lcom/ironsource/mediationsdk/AbstractAdapter;
    .registers 8

    monitor-enter p0

    .line 548
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":startAdapter("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 550
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v0

    iget-object v1, p1, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mAdapterConfigs:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    iget-object v2, p1, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mAdapterConfigs:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/AdapterRepository;->getAdapter(Lcom/ironsource/mediationsdk/model/ProviderSettings;Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_5a

    .line 553
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is configured in IronSource\'s platform, but the adapter is not integrated"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    invoke-virtual {v0, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_58
    .catchall {:try_start_1 .. :try_end_58} :catchall_a4

    .line 554
    monitor-exit p0

    return-object v1

    .line 557
    :cond_5a
    :try_start_5a
    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setAdapterForSmash(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 558
    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 559
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setCustomParams(Lcom/ironsource/mediationsdk/AbstractSmash;)V

    const/16 v2, 0x3e9

    .line 561
    move-object v3, v1

    check-cast v3, [[Ljava/lang/Object;

    invoke-direct {p0, v2, p1, v3}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V
    :try_end_6d
    .catchall {:try_start_5a .. :try_end_6d} :catchall_a4

    .line 563
    :try_start_6d
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAppKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->initRewardedVideo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_74} :catch_76
    .catchall {:try_start_6d .. :try_end_74} :catchall_a4

    .line 572
    monitor-exit p0

    return-object v0

    :catch_76
    move-exception v0

    .line 567
    :try_start_77
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "failed to init adapter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "v"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 568
    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_FAILED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V
    :try_end_a2
    .catchall {:try_start_77 .. :try_end_a2} :catchall_a4

    .line 569
    monitor-exit p0

    return-object v1

    :catchall_a4
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected declared-synchronized disablePremiumForCurrentSession()V
    .registers 4

    monitor-enter p0

    .line 534
    :try_start_1
    invoke-super {p0}, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->disablePremiumForCurrentSession()V

    .line 536
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 537
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getPremiumSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 538
    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 539
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 543
    :cond_28
    monitor-exit p0

    return-void

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method public declared-synchronized initRewardedVideo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    monitor-enter p0

    .line 86
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":initRewardedVideo(appKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 87
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const v2, 0x13da0

    .line 88
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logMediationEvent(I)V

    .line 90
    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAppKey:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mUserId:Ljava/lang/String;

    .line 94
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v2, 0x0

    :cond_47
    :goto_47
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_7f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 95
    iget-object v6, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    invoke-virtual {v6, v4}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->shouldSendCapReleasedEvent(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v6

    if-eqz v6, :cond_6f

    const/16 v6, 0x96

    .line 96
    new-array v7, v3, [[Ljava/lang/Object;

    new-array v5, v5, [Ljava/lang/Object;

    const-string v8, "status"

    aput-object v8, v5, p2

    const-string v8, "false"

    aput-object v8, v5, v3

    aput-object v5, v7, p2

    invoke-direct {p0, v6, v4, v7}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 98
    :cond_6f
    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    invoke-virtual {v5, v4}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->isCapped(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 99
    sget-object v5, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 104
    :cond_7f
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-ne v2, p1, :cond_8e

    .line 105
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAvailabilityChanged(Z)V
    :try_end_8c
    .catchall {:try_start_1 .. :try_end_8c} :catchall_e1

    .line 106
    monitor-exit p0

    return-void

    :cond_8e
    const/16 p1, 0x3e8

    .line 109
    :try_start_90
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logMediationEvent(I)V

    .line 110
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setRvPlacement(Ljava/lang/String;)V

    .line 111
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mShouldSendMediationLoadSuccessEvent:Z

    .line 112
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoadStartTime:J

    .line 114
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v6, v0

    const p1, 0x13da1

    .line 115
    new-array v0, v3, [[Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "duration"

    aput-object v2, v1, p2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object v1, v0, p2

    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logMediationEvent(I[[Ljava/lang/Object;)V

    .line 117
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->prepareSDK5()V

    .line 118
    :goto_c9
    iget p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmartLoadAmount:I

    if-ge p2, p1, :cond_df

    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_df

    .line 119
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object p1
    :try_end_d9
    .catchall {:try_start_90 .. :try_end_d9} :catchall_e1

    if-nez p1, :cond_dc

    goto :goto_df

    :cond_dc
    add-int/lit8 p2, p2, 0x1

    goto :goto_c9

    .line 123
    :cond_df
    :goto_df
    monitor-exit p0

    return-void

    :catchall_e1
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized isRewardedVideoAvailable()Z
    .registers 6

    monitor-enter p0

    .line 198
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":isRewardedVideoAvailable()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 200
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mShouldTrackNetworkState:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_55

    if-nez v0, :cond_31

    .line 201
    monitor-exit p0

    return v1

    .line 204
    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 205
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->isMediationAvailable()Z

    move-result v4

    if-eqz v4, :cond_37

    check-cast v2, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->isRewardedVideoAvailable()Z

    move-result v2
    :try_end_4f
    .catchall {:try_start_31 .. :try_end_4f} :catchall_55

    if-eqz v2, :cond_37

    .line 206
    monitor-exit p0

    return v3

    .line 210
    :cond_53
    monitor-exit p0

    return v1

    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method public onDailyCapReleased()V
    .registers 10

    .line 914
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 915
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v5

    sget-object v6, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v5, v6, :cond_8

    const/16 v5, 0x96

    .line 916
    new-array v6, v4, [[Ljava/lang/Object;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "status"

    aput-object v8, v7, v1

    const-string v8, "false"

    aput-object v8, v7, v4

    aput-object v7, v6, v1

    invoke-direct {p0, v5, v3, v6}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 917
    sget-object v5, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v3, v5}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 918
    move-object v5, v3

    check-cast v5, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->isRewardedVideoAvailable()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->isMediationAvailable()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 919
    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    const/4 v2, 0x1

    goto :goto_8

    :cond_4c
    if-eqz v2, :cond_59

    .line 926
    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 927
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v4}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAvailabilityChanged(Z)V

    :cond_59
    return-void
.end method

.method public onNetworkAvailabilityChanged(Z)V
    .registers 6

    .line 441
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mShouldTrackNetworkState:Z

    if-eqz v0, :cond_2c

    .line 442
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network Availability Changed To: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 444
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyNetworkAvailabilityChanged(Z)Z

    move-result v0

    if-eqz v0, :cond_2c

    xor-int/lit8 v0, p1, 0x1

    .line 445
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mPauseSmartLoadDueToNetworkUnavailability:Z

    .line 446
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAvailabilityChanged(Z)V

    :cond_2c
    return-void
.end method

.method public onRewardedVideoAdClicked(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    .registers 9

    .line 412
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":onRewardedVideoAdClicked()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 414
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    if-nez v0, :cond_37

    .line 415
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getCurrentServerResponse()Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    .line 418
    :cond_37
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    if-nez v0, :cond_46

    .line 419
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v1, 0x3

    const-string v2, "mCurrentPlacement is null"

    invoke-virtual {p1, v0, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void

    :cond_46
    const/16 v0, 0x3ee

    const/4 v1, 0x2

    .line 423
    new-array v2, v1, [[Ljava/lang/Object;

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "placement"

    aput-object v6, v4, v5

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    aput-object v4, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "sessionDepth"

    aput-object v4, v1, v5

    iget v4, p1, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mSessionDepth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    aput-object v1, v2, v3

    invoke-direct {p0, v0, p1, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 425
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdClicked(Lcom/ironsource/mediationsdk/model/Placement;)V

    return-void
.end method

.method public onRewardedVideoAdClosed(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    .registers 12

    .line 238
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":onRewardedVideoAdClosed()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsCurrentlyShowing:Z

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    :try_start_25
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2b
    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 244
    move-object v5, v4

    check-cast v5, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->isRewardedVideoAvailable()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 245
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_58} :catch_59

    goto :goto_2b

    .line 249
    :catch_59
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v5, "Failed to check RV availability"

    invoke-virtual {v2, v4, v5, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :cond_62
    const/16 v2, 0x4b3

    const/4 v4, 0x3

    .line 252
    new-array v4, v4, [[Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "placement"

    aput-object v7, v6, v0

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    aput-object v6, v4, v0

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "ext1"

    aput-object v7, v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "otherRVAvailable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_9e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "true|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a0

    :cond_9e
    const-string v1, "false"

    :goto_a0
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    aput-object v6, v4, v3

    new-array v1, v5, [Ljava/lang/Object;

    const-string v6, "sessionDepth"

    aput-object v6, v1, v0

    iget v6, p1, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mSessionDepth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v3

    aput-object v1, v4, v5

    invoke-direct {p0, v2, p1, v4}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 253
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->increaseSessionDepth(I)V

    .line 255
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->isCappedPerSession()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v4, 0x3e9

    if-nez v1, :cond_dc

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->isCapped(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v1

    if-nez v1, :cond_dc

    .line 256
    move-object v1, v2

    check-cast v1, [[Ljava/lang/Object;

    invoke-direct {p0, v4, p1, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 259
    :cond_dc
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->sendMediationLoadEvents()V

    .line 260
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdClosed()V

    .line 262
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_ea
    :goto_ea
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_183

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 263
    iget-object v6, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fetch on ad closed, iterating on: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/AbstractSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", Status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 264
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v6

    sget-object v7, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v6, v7, :cond_ea

    .line 267
    :try_start_126
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/AbstractSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ea

    .line 268
    iget-object v6, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/AbstractSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":reload smash"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 269
    move-object v6, v5

    check-cast v6, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->fetchRewardedVideo()V

    .line 270
    move-object v6, v2

    check-cast v6, [[Ljava/lang/Object;

    invoke-direct {p0, v4, v5, v6}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V
    :try_end_15c
    .catch Ljava/lang/Throwable; {:try_start_126 .. :try_end_15c} :catch_15d

    goto :goto_ea

    :catch_15d
    move-exception v6

    .line 276
    iget-object v7, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v8, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/AbstractSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Failed to call fetchVideo(), "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v8, v5, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto/16 :goto_ea

    :cond_183
    return-void
.end method

.method public onRewardedVideoAdEnded(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    .registers 8

    .line 349
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":onRewardedVideoAdEnded()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 v0, 0x2

    .line 351
    new-array v1, v0, [[Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "placement"

    aput-object v5, v2, v4

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "sessionDepth"

    aput-object v2, v0, v4

    iget v2, p1, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mSessionDepth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    aput-object v0, v1, v3

    const/16 v0, 0x4b5

    invoke-direct {p0, v0, p1, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 354
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdEnded()V

    return-void
.end method

.method public onRewardedVideoAdOpened(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    .registers 8

    .line 230
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":onRewardedVideoAdOpened()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 v0, 0x2

    .line 231
    new-array v1, v0, [[Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "placement"

    aput-object v5, v2, v4

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "sessionDepth"

    aput-object v2, v0, v4

    iget v2, p1, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mSessionDepth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    aput-object v0, v1, v3

    const/16 v0, 0x3ed

    invoke-direct {p0, v0, p1, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 233
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdOpened()V

    return-void
.end method

.method public onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    .registers 9

    const-string v0, "mCurrentPlacement is null"

    .line 359
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":onRewardedVideoAdRewarded()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 361
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    if-nez v1, :cond_39

    .line 362
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

    iput-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    .line 365
    :cond_39
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractSmash;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x3

    :try_start_3e
    const-string v3, "sessionDepth"

    .line 368
    iget v4, p1, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mSessionDepth:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 370
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    if-eqz v3, :cond_69

    const-string v3, "placement"

    .line 371
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "rewardName"

    .line 372
    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "rewardAmount"

    .line 373
    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardAmount()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_75

    .line 375
    :cond_69
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v0, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_70
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_70} :catch_71

    goto :goto_75

    :catch_71
    move-exception v3

    .line 378
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 381
    :goto_75
    new-instance v3, Lcom/ironsource/eventsmodule/EventData;

    const/16 v4, 0x3f2

    invoke-direct {v3, v4, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 383
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAppKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_104

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ironsource/eventsmodule/EventData;->getTimeStamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAppKey:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 386
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getTransId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "transId"

    .line 388
    invoke-virtual {v3, v1, p1}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 390
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDynamicUserId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_cd

    .line 391
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDynamicUserId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "dynamicUserId"

    invoke-virtual {v3, v1, p1}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 393
    :cond_cd
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRvServerParams()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_104

    .line 395
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_df
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_104

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 396
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "custom_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_df

    .line 401
    :cond_104
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 403
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    if-eqz p1, :cond_115

    .line 404
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/model/Placement;)V

    goto :goto_11c

    .line 406
    :cond_115
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {p1, v1, v0, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :goto_11c
    return-void
.end method

.method public onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    .registers 11

    .line 217
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":onRewardedVideoAdShowFailed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 220
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsCurrentlyShowing:Z

    if-eqz p2, :cond_2d

    .line 221
    iget v1, p2, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mSessionDepth:I

    goto :goto_35

    :cond_2d
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(I)I

    move-result v1

    :goto_35
    const/16 v2, 0x4b2

    const/4 v4, 0x4

    .line 222
    new-array v4, v4, [[Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "placement"

    aput-object v7, v6, v0

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    aput-object v6, v4, v0

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "errorCode"

    aput-object v7, v6, v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    aput-object v6, v4, v3

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "reason"

    aput-object v7, v6, v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    aput-object v6, v4, v5

    const/4 v6, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string v7, "sessionDepth"

    aput-object v7, v5, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    aput-object v5, v4, v6

    invoke-direct {p0, v2, p2, v4}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 224
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->sendMediationLoadEvents()V

    .line 225
    iget-object p2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public onRewardedVideoAdStarted(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    .registers 8

    .line 340
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":onRewardedVideoAdStarted()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 v0, 0x2

    .line 343
    new-array v1, v0, [[Ljava/lang/Object;

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "placement"

    aput-object v5, v2, v4

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "sessionDepth"

    aput-object v2, v0, v4

    iget v2, p1, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mSessionDepth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    aput-object v0, v1, v3

    const/16 v0, 0x4b4

    invoke-direct {p0, v0, p1, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 344
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdStarted()V

    return-void
.end method

.method public onRewardedVideoAdVisible(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    .registers 9

    .line 430
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":onRewardedVideoAdVisible()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 431
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    if-eqz v0, :cond_49

    const/16 v0, 0x4b6

    const/4 v1, 0x2

    .line 432
    new-array v2, v1, [[Ljava/lang/Object;

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "placement"

    aput-object v6, v4, v5

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getCurrentPlacementName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    aput-object v4, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "sessionDepth"

    aput-object v4, v1, v5

    iget v4, p1, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mSessionDepth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    aput-object v1, v2, v3

    invoke-direct {p0, v0, p1, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    goto :goto_53

    .line 434
    :cond_49
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v1, 0x3

    const-string v2, "mCurrentPlacement is null"

    invoke-virtual {p1, v0, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :goto_53
    return-void
.end method

.method public declared-synchronized onRewardedVideoAvailabilityChanged(ZLcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    .registers 11

    monitor-enter p0

    .line 286
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": onRewardedVideoAvailabilityChanged(available:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 288
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mPauseSmartLoadDueToNetworkUnavailability:Z
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_11d

    if-eqz v0, :cond_2c

    .line 289
    monitor-exit p0

    return-void

    :cond_2c
    const/4 v0, 0x0

    if-eqz p1, :cond_57

    .line 292
    :try_start_2f
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mShouldSendMediationLoadSuccessEvent:Z

    if-eqz v1, :cond_57

    .line 293
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mShouldSendMediationLoadSuccessEvent:Z

    .line 294
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-wide v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoadStartTime:J

    sub-long/2addr v1, v4

    const/16 v4, 0x3eb

    .line 295
    new-array v5, v3, [[Ljava/lang/Object;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "duration"

    aput-object v7, v6, v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v3

    aput-object v6, v5, v0

    invoke-direct {p0, v4, v5}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logMediationEvent(I[[Ljava/lang/Object;)V
    :try_end_57
    .catchall {:try_start_2f .. :try_end_57} :catchall_11d

    .line 300
    :cond_57
    :try_start_57
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getBackfillSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 301
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 302
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAvailabilityChanged(Z)V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_72} :catch_f1
    .catchall {:try_start_57 .. :try_end_72} :catchall_11d

    .line 304
    :cond_72
    monitor-exit p0

    return-void

    .line 307
    :cond_74
    :try_start_74
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getPremiumSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 308
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is a premium adapter, canShowPremium: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->canShowPremium()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 309
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->canShowPremium()Z

    move-result v1

    if-nez v1, :cond_bf

    .line 310
    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p2, v1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 311
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 312
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAvailabilityChanged(Z)V
    :try_end_bd
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_bd} :catch_f1
    .catchall {:try_start_74 .. :try_end_bd} :catchall_11d

    .line 314
    :cond_bd
    monitor-exit p0

    return-void

    .line 318
    :cond_bf
    :try_start_bf
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->isMediationAvailable()Z

    move-result v1

    if-eqz v1, :cond_11b

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    invoke-virtual {v1, p2}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->isCapped(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v1

    if-nez v1, :cond_11b

    if-eqz p1, :cond_e1

    .line 320
    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 321
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLastMediationAvailabilityState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_11b

    .line 324
    :cond_e1
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 325
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->notifyAvailabilityChange()V

    .line 327
    :cond_ea
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 328
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->completeIterationRound()V
    :try_end_f0
    .catch Ljava/lang/Throwable; {:try_start_bf .. :try_end_f0} :catch_f1
    .catchall {:try_start_bf .. :try_end_f0} :catchall_11d

    goto :goto_11b

    :catch_f1
    move-exception v0

    .line 333
    :try_start_f2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRewardedVideoAvailabilityChanged(available:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", provider:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11b
    .catchall {:try_start_f2 .. :try_end_11b} :catchall_11d

    .line 336
    :cond_11b
    :goto_11b
    monitor-exit p0

    return-void

    :catchall_11d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setCurrentPlacement(Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 3

    .line 528
    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    .line 529
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setRvPlacement(Ljava/lang/String;)V

    return-void
.end method

.method setIsUltraEventsEnabled(Z)V
    .registers 2

    .line 486
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsUltraEventsEnabled:Z

    return-void
.end method

.method setManualLoadInterval(I)V
    .registers 2

    .line 627
    iput p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mManualLoadInterval:I

    return-void
.end method

.method public setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    return-void
.end method

.method shouldTrackNetworkState(Landroid/content/Context;Z)V
    .registers 7

    .line 452
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Should Track Network State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 454
    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mShouldTrackNetworkState:Z

    .line 456
    iget-boolean p2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mShouldTrackNetworkState:Z

    if-eqz p2, :cond_40

    .line 457
    iget-object p2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    if-nez p2, :cond_2f

    .line 458
    new-instance p2, Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-direct {p2, p1, p0}, Lcom/ironsource/environment/NetworkStateReceiver;-><init>(Landroid/content/Context;Lcom/ironsource/environment/NetworkStateReceiver$NetworkStateReceiverListener;)V

    iput-object p2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    .line 459
    :cond_2f
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_4d

    .line 461
    :cond_40
    iget-object p2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    if-eqz p2, :cond_4d

    .line 462
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_4d
    :goto_4d
    return-void
.end method

.method public declared-synchronized showRewardedVideo(Ljava/lang/String;)V
    .registers 12

    monitor-enter p0

    .line 126
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":showRewardedVideo(placementName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 127
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setRvPlacement(Ljava/lang/String;)V

    const/16 v0, 0x44c

    .line 129
    new-array v1, v3, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "placement"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    aput-object p1, v4, v3

    aput-object v4, v1, v6

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logMediationEvent(I[[Ljava/lang/Object;)V

    .line 131
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsCurrentlyShowing:Z

    const/4 v0, 0x3

    if-eqz p1, :cond_58

    const-string p1, "showRewardedVideo error: can\'t show ad while an ad is already showing"

    .line 133
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, p1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 134
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x3fe

    invoke-direct {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 135
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_56
    .catchall {:try_start_1 .. :try_end_56} :catchall_19f

    .line 136
    monitor-exit p0

    return-void

    .line 141
    :cond_58
    :try_start_58
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mShouldTrackNetworkState:Z

    if-eqz p1, :cond_80

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_80

    const-string p1, "showRewardedVideo error: can\'t show ad when there\'s no internet connection"

    .line 143
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, p1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 144
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v0, "Rewarded Video"

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoInternetConnectionShowFailError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_7e
    .catchall {:try_start_58 .. :try_end_7e} :catchall_19f

    .line 145
    monitor-exit p0

    return-void

    :cond_80
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 151
    :goto_83
    :try_start_83
    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_175

    .line 152
    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 153
    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showRewardedVideo, iterating on: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", Status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 154
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v5

    sget-object v7, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v5, v7, :cond_153

    .line 155
    move-object v5, v4

    check-cast v5, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->isRewardedVideoAvailable()Z

    move-result v5

    if-eqz v5, :cond_129

    .line 156
    invoke-direct {p0, v4, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->showAdapter(Lcom/ironsource/mediationsdk/AbstractSmash;I)V

    .line 159
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCanShowPremium:Z

    if-eqz p1, :cond_e0

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getPremiumSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e0

    .line 160
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->disablePremiumForCurrentSession()V

    .line 163
    :cond_e0
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->isCappedPerSession()Z

    move-result p1

    if-eqz p1, :cond_f7

    .line 164
    sget-object p1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v4, p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    const/16 p1, 0x579

    const/4 v0, 0x0

    .line 165
    check-cast v0, [[Ljava/lang/Object;

    invoke-direct {p0, p1, v4, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 166
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->completeAdapterCap()V

    goto :goto_127

    .line 167
    :cond_f7
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    invoke-virtual {p1, v4}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->isCapped(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result p1

    if-eqz p1, :cond_11b

    .line 168
    sget-object p1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v4, p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    const/16 p1, 0x96

    .line 169
    new-array v0, v3, [[Ljava/lang/Object;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "status"

    aput-object v2, v1, v6

    const-string v2, "true"

    aput-object v2, v1, v3

    aput-object v1, v0, v6

    invoke-direct {p0, p1, v4, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 170
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->completeAdapterCap()V

    goto :goto_127

    .line 171
    :cond_11b
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->isExhausted()Z

    move-result p1

    if-eqz p1, :cond_127

    .line 172
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 173
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->completeIterationRound()V
    :try_end_127
    .catchall {:try_start_83 .. :try_end_127} :catchall_19f

    .line 176
    :cond_127
    :goto_127
    monitor-exit p0

    return-void

    .line 179
    :cond_129
    :try_start_129
    move-object v5, v4

    check-cast v5, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-virtual {p0, v6, v5}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->onRewardedVideoAvailabilityChanged(ZLcom/ironsource/mediationsdk/RewardedVideoSmash;)V

    .line 180
    new-instance v5, Ljava/lang/Exception;

    const-string v7, "FailedToShowVideoException"

    invoke-direct {v5, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 181
    iget-object v7, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v8, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Failed to show video"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v8, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_171

    .line 183
    :cond_153
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v5

    sget-object v7, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v5, v7, :cond_16f

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v5

    sget-object v7, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v5, v7, :cond_164

    goto :goto_16f

    .line 185
    :cond_164
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v4

    sget-object v5, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v4, v5, :cond_171

    add-int/lit8 v1, v1, 0x1

    goto :goto_171

    :cond_16f
    :goto_16f
    add-int/lit8 v0, v0, 0x1

    :cond_171
    :goto_171
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_83

    .line 190
    :cond_175
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isBackFillAvailable()Z

    move-result p1

    if-eqz p1, :cond_189

    .line 191
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getBackfillSmash()Lcom/ironsource/mediationsdk/AbstractSmash;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->showAdapter(Lcom/ironsource/mediationsdk/AbstractSmash;I)V

    goto :goto_19d

    :cond_189
    add-int/2addr v0, v1

    .line 192
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-ne v0, p1, :cond_19d

    .line 193
    iget-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v0, "Rewarded Video"

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_19d
    .catchall {:try_start_129 .. :try_end_19d} :catchall_19f

    .line 195
    :cond_19d
    :goto_19d
    monitor-exit p0

    return-void

    :catchall_19f
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method
