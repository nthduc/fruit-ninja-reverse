.class Lcom/ironsource/mediationsdk/InterstitialManager;
.super Lcom/ironsource/mediationsdk/AbstractAdUnitManager;
.source "InterstitialManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;
.implements Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;
.implements Lcom/ironsource/mediationsdk/utils/DailyCappingListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCallbackThrottler:Lcom/ironsource/mediationsdk/CallbackThrottler;

.field private mCurrentPlacement:Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

.field private mDidCallLoadInterstitial:Z

.field private mDidFinishToInitInterstitial:Z

.field private mInstanceIdToSmashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/InterstitialSmash;",
            ">;"
        }
    .end annotation
.end field

.field private mInstancesToLoad:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInterstitialListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

.field private mIsCurrentlyShowing:Z

.field private mIsLoadInterstitialInProgress:Z

.field private mLoadStartTime:J

.field private mShouldSendAdReadyEvent:Z


# direct methods
.method constructor <init>()V
    .registers 4

    .line 59
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;-><init>()V

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->TAG:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInstancesToLoad:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInstanceIdToSmashMap:Ljava/util/Map;

    .line 63
    invoke-static {}, Lcom/ironsource/mediationsdk/CallbackThrottler;->getInstance()Lcom/ironsource/mediationsdk/CallbackThrottler;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCallbackThrottler:Lcom/ironsource/mediationsdk/CallbackThrottler;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mShouldSendAdReadyEvent:Z

    .line 65
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mIsLoadInterstitialInProgress:Z

    .line 66
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidCallLoadInterstitial:Z

    .line 67
    new-instance v1, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    const-string v2, "interstitial"

    invoke-direct {v1, v2, p0}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;-><init>(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/DailyCappingListener;)V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    .line 68
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mIsCurrentlyShowing:Z

    return-void
.end method

.method private declared-synchronized changeStateToInitiated()V
    .registers 5

    monitor-enter p0

    .line 627
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 628
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v2, v3, :cond_2b

    .line 629
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v2, v3, :cond_2b

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v2, v3, :cond_7

    .line 631
    :cond_2b
    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_33

    goto :goto_7

    .line 634
    :cond_31
    monitor-exit p0

    return-void

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method private declared-synchronized changeStateToInitiatedForInstanceId(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 615
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 616
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 617
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v2, v3, :cond_35

    .line 618
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v2, v3, :cond_35

    .line 619
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v2, v3, :cond_7

    .line 620
    :cond_35
    sget-object p1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3c

    .line 624
    :cond_3a
    monitor-exit p0

    return-void

    :catchall_3c
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method private completeAdapterShow(Lcom/ironsource/mediationsdk/AbstractSmash;)V
    .registers 3

    .line 540
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->isMediationAvailable()Z

    move-result v0

    if-nez v0, :cond_d

    .line 541
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->startNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 542
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->completeIterationRound()V

    goto :goto_12

    .line 544
    :cond_d
    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    :goto_12
    return-void
.end method

.method private completeIterationRound()V
    .registers 6

    .line 527
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->isIterationRoundComplete()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 528
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x0

    const-string v3, "Reset Iteration"

    invoke-virtual {v0, v1, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 530
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 531
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->EXHAUSTED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v3, v4, :cond_16

    .line 532
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->completeIteration()V

    goto :goto_16

    .line 535
    :cond_2e
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "End of Reset Iteration"

    invoke-virtual {v0, v1, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    :cond_37
    return-void
.end method

.method private isIterationRoundComplete()Z
    .registers 5

    .line 514
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 515
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v2, v3, :cond_3a

    .line 516
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v2, v3, :cond_3a

    .line 517
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v2, v3, :cond_3a

    .line 518
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v2, v3, :cond_3a

    .line 519
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v1, v2, :cond_6

    :cond_3a
    const/4 v0, 0x0

    return v0

    :cond_3c
    const/4 v0, 0x1

    return v0
.end method

.method private declared-synchronized loadAdapterAndSendEvent(Lcom/ironsource/mediationsdk/InterstitialSmash;)V
    .registers 4

    monitor-enter p0

    const/16 v0, 0x7d2

    const/4 v1, 0x0

    .line 609
    :try_start_4
    check-cast v1, [[Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1}, Lcom/ironsource/mediationsdk/InterstitialManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 610
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/InterstitialSmash;->loadInterstitial()V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_e

    .line 611
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private logMediationEvent(I)V
    .registers 3

    const/4 v0, 0x0

    .line 637
    check-cast v0, [[Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->logMediationEvent(I[[Ljava/lang/Object;)V

    return-void
.end method

.method private logMediationEvent(I[[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    .line 641
    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->logMediationEvent(I[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private logMediationEvent(I[[Ljava/lang/Object;Z)V
    .registers 10

    const/4 v0, 0x0

    .line 649
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz p3, :cond_25

    .line 652
    :try_start_7
    iget-object p3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    if-eqz p3, :cond_25

    iget-object p3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_25

    const-string p3, "placement"

    .line 653
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_25

    :catch_23
    move-exception p2

    goto :goto_3c

    :cond_25
    :goto_25
    if-eqz p2, :cond_59

    .line 656
    array-length p3, p2

    const/4 v2, 0x0

    :goto_29
    if-ge v2, p3, :cond_59

    aget-object v3, p2, v2

    .line 657
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_39} :catch_23

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 661
    :goto_3c
    iget-object p3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterstitialManager logMediationEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x3

    invoke-virtual {p3, v0, p2, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 664
    :cond_59
    new-instance p2, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {p2, p1, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 665
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private logMediationEventWithPlacement(I[[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x1

    .line 645
    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->logMediationEvent(I[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;)V
    .registers 4

    const/4 v0, 0x0

    .line 669
    check-cast v0, [[Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    return-void
.end method

.method private logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    .line 673
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;Z)V
    .registers 10

    .line 681
    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractSmash;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p4, :cond_24

    .line 684
    :try_start_6
    iget-object p4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    if-eqz p4, :cond_24

    iget-object p4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    invoke-virtual {p4}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_24

    const-string p4, "placement"

    .line 685
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_24

    :catch_22
    move-exception p3

    goto :goto_3c

    :cond_24
    :goto_24
    if-eqz p3, :cond_59

    .line 689
    array-length p4, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_29
    if-ge v1, p4, :cond_59

    aget-object v2, p3, v1

    .line 690
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_39} :catch_22

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 694
    :goto_3c
    iget-object p4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InterstitialManager logProviderEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x3

    invoke-virtual {p4, v0, p3, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 697
    :cond_59
    new-instance p3, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {p3, p1, p2}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 698
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    return-void
.end method

.method private logProviderEventWithPlacement(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x1

    .line 677
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;Z)V

    return-void
.end method

.method private prepareSDK5()V
    .registers 5

    const/4 v0, 0x0

    .line 738
    :goto_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4a

    .line 739
    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractSmash;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/AbstractSmash;->mAdapterConfigs:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IronSource"

    .line 740
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

    .line 741
    :cond_2b
    :goto_2b
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/AbstractSmash;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/AbstractSmash;->mAdapterConfigs:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractSmash;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/AbstractSmash;->mAdapterConfigs:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/mediationsdk/AdapterRepository;->getAdapter(Lcom/ironsource/mediationsdk/model/ProviderSettings;Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    :cond_4a
    return-void
.end method

.method private varargs smashesCount([Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)I
    .registers 10

    .line 703
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

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

    .line 704
    array-length v4, p1

    move v5, v2

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v4, :cond_26

    aget-object v6, p1, v2

    .line 705
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

.method private declared-synchronized startAdapter(Lcom/ironsource/mediationsdk/InterstitialSmash;)Lcom/ironsource/mediationsdk/AbstractAdapter;
    .registers 8

    monitor-enter p0

    .line 576
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":startAdapter("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/InterstitialSmash;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 578
    invoke-static {}, Lcom/ironsource/mediationsdk/AdapterRepository;->getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;

    move-result-object v0

    iget-object v1, p1, Lcom/ironsource/mediationsdk/InterstitialSmash;->mAdapterConfigs:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    iget-object v2, p1, Lcom/ironsource/mediationsdk/InterstitialSmash;->mAdapterConfigs:Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/AdapterRepository;->getAdapter(Lcom/ironsource/mediationsdk/model/ProviderSettings;Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_5a

    .line 581
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/InterstitialSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is configured in IronSource\'s platform, but the adapter is not integrated"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    invoke-virtual {v0, v2, p1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_58
    .catchall {:try_start_1 .. :try_end_58} :catchall_9c

    .line 582
    monitor-exit p0

    return-object v1

    .line 585
    :cond_5a
    :try_start_5a
    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->setAdapterForSmash(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 586
    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/InterstitialSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 588
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->setCustomParams(Lcom/ironsource/mediationsdk/AbstractSmash;)V
    :try_end_65
    .catchall {:try_start_5a .. :try_end_65} :catchall_9c

    .line 591
    :try_start_65
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mAppKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/ironsource/mediationsdk/InterstitialSmash;->initInterstitial(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_6c} :catch_6e
    .catchall {:try_start_65 .. :try_end_6c} :catchall_9c

    .line 600
    monitor-exit p0

    return-object v0

    :catch_6e
    move-exception v0

    .line 595
    :try_start_6f
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "failed to init adapter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/InterstitialSmash;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "v"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 596
    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_FAILED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V
    :try_end_9a
    .catchall {:try_start_6f .. :try_end_9a} :catchall_9c

    .line 597
    monitor-exit p0

    return-object v1

    :catchall_9c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private startNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 555
    :goto_3
    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_85

    if-nez v1, :cond_85

    .line 556
    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v3, v4, :cond_7a

    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v3, v4, :cond_7a

    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 557
    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v3, v4, :cond_7a

    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v3, v4, :cond_4e

    goto :goto_7a

    .line 562
    :cond_4e
    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v3, v4, :cond_81

    .line 563
    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/InterstitialSmash;

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/InterstitialManager;->startAdapter(Lcom/ironsource/mediationsdk/InterstitialSmash;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v1

    if-nez v1, :cond_81

    .line 566
    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_FAILED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    goto :goto_81

    :cond_7a
    :goto_7a
    add-int/lit8 v2, v2, 0x1

    .line 560
    iget v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmartLoadAmount:I

    if-lt v2, v3, :cond_81

    goto :goto_85

    :cond_81
    :goto_81
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_85
    :goto_85
    return-object v1
.end method


# virtual methods
.method public declared-synchronized initInterstitial(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    monitor-enter p0

    .line 79
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":initInterstitial(appKey: "

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

    .line 80
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const v2, 0x14188

    .line 81
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/InterstitialManager;->logMediationEvent(I)V

    .line 83
    iput-object p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mAppKey:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mUserId:Ljava/lang/String;

    .line 87
    iget-object p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

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

    .line 88
    iget-object v6, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    invoke-virtual {v6, v4}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->shouldSendCapReleasedEvent(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v6

    if-eqz v6, :cond_6f

    const/16 v6, 0xfa

    .line 89
    new-array v7, v3, [[Ljava/lang/Object;

    new-array v5, v5, [Ljava/lang/Object;

    const-string v8, "status"

    aput-object v8, v5, p2

    const-string v8, "false"

    aput-object v8, v5, v3

    aput-object v5, v7, p2

    invoke-direct {p0, v6, v4, v7}, Lcom/ironsource/mediationsdk/InterstitialManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 91
    :cond_6f
    iget-object v5, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    invoke-virtual {v5, v4}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->isCapped(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 92
    sget-object v5, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 97
    :cond_7f
    iget-object p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-ne v2, p1, :cond_89

    .line 98
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidFinishToInitInterstitial:Z

    .line 101
    :cond_89
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->prepareSDK5()V

    const/4 p1, 0x0

    .line 102
    :goto_8d
    iget v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmartLoadAmount:I

    if-ge p1, v2, :cond_9b

    .line 103
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->startNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v2

    if-nez v2, :cond_98

    goto :goto_9b

    :cond_98
    add-int/lit8 p1, p1, 0x1

    goto :goto_8d

    .line 108
    :cond_9b
    :goto_9b
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v6, v0

    const p1, 0x14189

    .line 109
    new-array v0, v3, [[Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "duration"

    aput-object v2, v1, p2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object v1, v0, p2

    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->logMediationEvent(I[[Ljava/lang/Object;)V
    :try_end_bb
    .catchall {:try_start_1 .. :try_end_bb} :catchall_bd

    .line 110
    monitor-exit p0

    return-void

    :catchall_bd
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized isInterstitialReady()Z
    .registers 6

    monitor-enter p0

    .line 280
    :try_start_1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mShouldTrackNetworkState:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_3d

    if-nez v0, :cond_16

    .line 281
    monitor-exit p0

    return v1

    .line 283
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 284
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v3, v4, :cond_1c

    check-cast v2, Lcom/ironsource/mediationsdk/InterstitialSmash;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/InterstitialSmash;->isInterstitialReady()Z

    move-result v2
    :try_end_36
    .catchall {:try_start_16 .. :try_end_36} :catchall_3d

    if-eqz v2, :cond_1c

    const/4 v0, 0x1

    .line 285
    monitor-exit p0

    return v0

    .line 288
    :cond_3b
    monitor-exit p0

    return v1

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method public declared-synchronized loadInterstitial()V
    .registers 11

    monitor-enter p0

    const/16 v0, 0x83e

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 114
    :try_start_7
    iget-boolean v5, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mIsCurrentlyShowing:Z

    if-eqz v5, :cond_24

    const-string v5, "loadInterstitial cannot be invoked while showing an ad"

    .line 116
    iget-object v6, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v6, v7, v5, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 117
    new-instance v6, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v7, 0x40d

    invoke-direct {v6, v7, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->getInstance()Lcom/ironsource/mediationsdk/ISListenerWrapper;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/ISListenerWrapper;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_22} :catch_162
    .catchall {:try_start_7 .. :try_end_22} :catchall_160

    .line 119
    monitor-exit p0

    return-void

    :cond_24
    const/4 v5, 0x0

    .line 122
    :try_start_25
    iput-object v5, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    .line 123
    iget-object v6, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInterstitialListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v6, v5}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setInterstitialPlacement(Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V

    .line 124
    iget-boolean v6, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mIsLoadInterstitialInProgress:Z

    if-nez v6, :cond_155

    iget-object v6, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCallbackThrottler:Lcom/ironsource/mediationsdk/CallbackThrottler;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/CallbackThrottler;->hasPendingInvocation()Z

    move-result v6

    if-eqz v6, :cond_3a

    goto/16 :goto_155

    .line 129
    :cond_3a
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v6

    .line 131
    sget-object v7, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->NOT_INIT:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v6, v7, :cond_51

    .line 132
    iget-object v5, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v7, "init() must be called before loadInterstitial()"

    invoke-virtual {v5, v6, v7, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_4f} :catch_162
    .catchall {:try_start_25 .. :try_end_4f} :catchall_160

    .line 133
    monitor-exit p0

    return-void

    .line 136
    :cond_51
    :try_start_51
    sget-object v7, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    const/16 v8, 0x7d1

    if-ne v6, v7, :cond_8e

    .line 137
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->isInProgressMoreThan15Secs()Z

    move-result v6

    if-eqz v6, :cond_78

    .line 138
    iget-object v5, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v7, "init() had failed"

    invoke-virtual {v5, v6, v7, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 139
    iget-object v5, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCallbackThrottler:Lcom/ironsource/mediationsdk/CallbackThrottler;

    const-string v6, "init() had failed"

    const-string v7, "Interstitial"

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_8c

    .line 141
    :cond_78
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadStartTime:J

    .line 142
    check-cast v5, [[Ljava/lang/Object;

    invoke-direct {p0, v8, v5}, Lcom/ironsource/mediationsdk/InterstitialManager;->logMediationEvent(I[[Ljava/lang/Object;)V

    .line 143
    iput-boolean v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidCallLoadInterstitial:Z

    .line 144
    iput-boolean v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mShouldSendAdReadyEvent:Z
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_8c} :catch_162
    .catchall {:try_start_51 .. :try_end_8c} :catchall_160

    .line 147
    :goto_8c
    monitor-exit p0

    return-void

    .line 150
    :cond_8e
    :try_start_8e
    sget-object v7, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v6, v7, :cond_aa

    .line 151
    iget-object v5, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v7, "init() had failed"

    invoke-virtual {v5, v6, v7, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 152
    iget-object v5, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCallbackThrottler:Lcom/ironsource/mediationsdk/CallbackThrottler;

    const-string v6, "init() had failed"

    const-string v7, "Interstitial"

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_a8} :catch_162
    .catchall {:try_start_8e .. :try_end_a8} :catchall_160

    .line 153
    monitor-exit p0

    return-void

    .line 157
    :cond_aa
    :try_start_aa
    iget-object v6, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-nez v6, :cond_ca

    .line 158
    iget-object v5, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v7, "the server response does not contain interstitial data"

    invoke-virtual {v5, v6, v7, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 159
    iget-object v5, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCallbackThrottler:Lcom/ironsource/mediationsdk/CallbackThrottler;

    const-string v6, "the server response does not contain interstitial data"

    const-string v7, "Interstitial"

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_c8} :catch_162
    .catchall {:try_start_aa .. :try_end_c8} :catchall_160

    .line 160
    monitor-exit p0

    return-void

    .line 163
    :cond_ca
    :try_start_ca
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadStartTime:J

    .line 164
    check-cast v5, [[Ljava/lang/Object;

    invoke-direct {p0, v8, v5}, Lcom/ironsource/mediationsdk/InterstitialManager;->logMediationEvent(I[[Ljava/lang/Object;)V

    .line 165
    iput-boolean v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mShouldSendAdReadyEvent:Z

    .line 167
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->changeStateToInitiated()V

    .line 170
    new-array v5, v4, [Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object v6, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v6, v5, v3

    invoke-direct {p0, v5}, Lcom/ironsource/mediationsdk/InterstitialManager;->smashesCount([Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)I

    move-result v5

    if-nez v5, :cond_124

    .line 171
    iget-boolean v5, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidFinishToInitInterstitial:Z

    if-nez v5, :cond_f3

    .line 173
    iput-boolean v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidCallLoadInterstitial:Z
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_f1} :catch_162
    .catchall {:try_start_ca .. :try_end_f1} :catchall_160

    .line 174
    monitor-exit p0

    return-void

    :cond_f3
    :try_start_f3
    const-string v5, "no ads to load"

    .line 177
    invoke-static {v5}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v5

    .line 178
    iget-object v6, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 180
    iget-object v6, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCallbackThrottler:Lcom/ironsource/mediationsdk/CallbackThrottler;

    invoke-virtual {v6, v5}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 182
    new-array v6, v4, [[Ljava/lang/Object;

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "errorCode"

    aput-object v8, v7, v3

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    aput-object v7, v6, v3

    invoke-direct {p0, v0, v6}, Lcom/ironsource/mediationsdk/InterstitialManager;->logMediationEvent(I[[Ljava/lang/Object;)V

    .line 183
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mShouldSendAdReadyEvent:Z
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_122} :catch_162
    .catchall {:try_start_f3 .. :try_end_122} :catchall_160

    .line 184
    monitor-exit p0

    return-void

    .line 187
    :cond_124
    :try_start_124
    iput-boolean v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidCallLoadInterstitial:Z

    .line 188
    iput-boolean v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mIsLoadInterstitialInProgress:Z

    .line 191
    iget-object v5, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_12f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1ba

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 192
    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v8

    sget-object v9, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v8, v9, :cond_12f

    .line 193
    sget-object v8, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v7, v8}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 194
    check-cast v7, Lcom/ironsource/mediationsdk/InterstitialSmash;

    invoke-direct {p0, v7}, Lcom/ironsource/mediationsdk/InterstitialManager;->loadAdapterAndSendEvent(Lcom/ironsource/mediationsdk/InterstitialSmash;)V

    add-int/lit8 v6, v6, 0x1

    .line 197
    iget v7, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmartLoadAmount:I
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_151} :catch_162
    .catchall {:try_start_124 .. :try_end_151} :catchall_160

    if-lt v6, v7, :cond_12f

    .line 198
    monitor-exit p0

    return-void

    .line 125
    :cond_155
    :goto_155
    :try_start_155
    iget-object v5, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v7, "Load Interstitial is already in progress"

    invoke-virtual {v5, v6, v7, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_15e} :catch_162
    .catchall {:try_start_155 .. :try_end_15e} :catchall_160

    .line 126
    monitor-exit p0

    return-void

    :catchall_160
    move-exception v0

    goto :goto_1bc

    :catch_162
    move-exception v5

    .line 203
    :try_start_163
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadInterstitial exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v6

    .line 205
    iget-object v7, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v8, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 206
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCallbackThrottler:Lcom/ironsource/mediationsdk/CallbackThrottler;

    invoke-virtual {v2, v6}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 207
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mShouldSendAdReadyEvent:Z

    if-eqz v2, :cond_1ba

    .line 208
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mShouldSendAdReadyEvent:Z

    .line 209
    new-array v2, v1, [[Ljava/lang/Object;

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "errorCode"

    aput-object v8, v7, v3

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v4

    aput-object v7, v2, v3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v6, "reason"

    aput-object v6, v1, v3

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    aput-object v1, v2, v4

    invoke-direct {p0, v0, v2}, Lcom/ironsource/mediationsdk/InterstitialManager;->logMediationEvent(I[[Ljava/lang/Object;)V
    :try_end_1ba
    .catchall {:try_start_163 .. :try_end_1ba} :catchall_160

    .line 212
    :cond_1ba
    monitor-exit p0

    return-void

    :goto_1bc
    monitor-exit p0

    throw v0

    return-void
.end method

.method public onDailyCapReleased()V
    .registers 9

    .line 716
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_52

    .line 717
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 718
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v2, v3, :cond_a

    const/16 v2, 0xfa

    const/4 v3, 0x1

    .line 719
    new-array v4, v3, [[Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "status"

    aput-object v7, v5, v6

    const-string v7, "false"

    aput-object v7, v5, v3

    aput-object v5, v4, v6

    invoke-direct {p0, v2, v1, v4}, Lcom/ironsource/mediationsdk/InterstitialManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 720
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->isCappedPerSession()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 721
    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    goto :goto_a

    .line 722
    :cond_40
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->isExhausted()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 723
    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->EXHAUSTED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    goto :goto_a

    .line 725
    :cond_4c
    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    goto :goto_a

    :cond_52
    return-void
.end method

.method public onInitFailed(Ljava/lang/String;)V
    .registers 4

    .line 490
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidCallLoadInterstitial:Z

    if-eqz p1, :cond_16

    .line 491
    iget-object p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCallbackThrottler:Lcom/ironsource/mediationsdk/CallbackThrottler;

    const-string v0, "init() had failed"

    const-string v1, "Interstitial"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    const/4 p1, 0x0

    .line 492
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidCallLoadInterstitial:Z

    .line 493
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mIsLoadInterstitialInProgress:Z

    :cond_16
    return-void
.end method

.method public onInitSuccess(Ljava/util/List;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;Z)V"
        }
    .end annotation

    return-void
.end method

.method public onInterstitialAdClicked(Lcom/ironsource/mediationsdk/InterstitialSmash;)V
    .registers 6

    .line 460
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/InterstitialSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":onInterstitialAdClicked()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 462
    check-cast v0, [[Ljava/lang/Object;

    const/16 v1, 0x7d6

    invoke-direct {p0, v1, p1, v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->logProviderEventWithPlacement(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 464
    iget-object p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInterstitialListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdClicked()V

    return-void
.end method

.method public onInterstitialAdClosed(Lcom/ironsource/mediationsdk/InterstitialSmash;)V
    .registers 9

    .line 402
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/InterstitialSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":onInterstitialAdClosed()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 403
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mIsCurrentlyShowing:Z

    .line 406
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(I)I

    move-result v1

    .line 407
    new-array v4, v3, [[Ljava/lang/Object;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "sessionDepth"

    aput-object v6, v5, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    aput-object v5, v4, v0

    const/16 v0, 0x89c

    invoke-direct {p0, v0, p1, v4}, Lcom/ironsource/mediationsdk/InterstitialManager;->logProviderEventWithPlacement(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 408
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->increaseSessionDepth(I)V

    .line 410
    iget-object p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInterstitialListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdClosed()V

    return-void
.end method

.method public declared-synchronized onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/InterstitialSmash;J)V
    .registers 12

    monitor-enter p0

    .line 359
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/InterstitialSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":onInterstitialAdLoadFailed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/InterstitialSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":onInterstitialAdLoadFailed("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    const/16 v0, 0x898

    const/4 v1, 0x3

    .line 362
    new-array v1, v1, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "errorCode"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    aput-object v4, v1, v6

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "reason"

    aput-object v5, v4, v6

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    aput-object v4, v1, v3

    new-array p1, v2, [Ljava/lang/Object;

    const-string v4, "duration"

    aput-object v4, p1, v6

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p1, v3

    aput-object p1, v1, v2

    invoke-direct {p0, v0, p2, v1}, Lcom/ironsource/mediationsdk/InterstitialManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 364
    sget-object p1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/InterstitialSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 366
    new-array p1, v2, [Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object p2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object p2, p1, v6

    sget-object p2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object p2, p1, v3

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->smashesCount([Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)I

    move-result p1

    .line 367
    iget p2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmartLoadAmount:I
    :try_end_93
    .catchall {:try_start_1 .. :try_end_93} :catchall_100

    if-lt p1, p2, :cond_97

    .line 368
    monitor-exit p0

    return-void

    .line 371
    :cond_97
    :try_start_97
    iget-object p2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_bd

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 372
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object p4

    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne p4, v0, :cond_9d

    .line 373
    sget-object p1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p3, p1}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 374
    check-cast p3, Lcom/ironsource/mediationsdk/InterstitialSmash;

    invoke-direct {p0, p3}, Lcom/ironsource/mediationsdk/InterstitialManager;->loadAdapterAndSendEvent(Lcom/ironsource/mediationsdk/InterstitialSmash;)V
    :try_end_bb
    .catchall {:try_start_97 .. :try_end_bb} :catchall_100

    .line 375
    monitor-exit p0

    return-void

    .line 379
    :cond_bd
    :try_start_bd
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->startNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object p2
    :try_end_c1
    .catchall {:try_start_bd .. :try_end_c1} :catchall_100

    if-eqz p2, :cond_c5

    .line 380
    monitor-exit p0

    return-void

    .line 383
    :cond_c5
    :try_start_c5
    iget-boolean p2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidCallLoadInterstitial:Z

    if-eqz p2, :cond_fe

    new-array p2, v3, [Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object p3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object p3, p2, v6

    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/InterstitialManager;->smashesCount([Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)I

    move-result p2

    add-int/2addr p1, p2

    if-nez p1, :cond_fe

    .line 384
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->completeIterationRound()V

    .line 385
    iput-boolean v6, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mIsLoadInterstitialInProgress:Z

    .line 386
    iget-object p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCallbackThrottler:Lcom/ironsource/mediationsdk/CallbackThrottler;

    new-instance p2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string p3, "No ads to show"

    const/16 p4, 0x1fd

    invoke-direct {p2, p4, p3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    const/16 p1, 0x83e

    .line 387
    new-array p2, v3, [[Ljava/lang/Object;

    new-array p3, v2, [Ljava/lang/Object;

    const-string v0, "errorCode"

    aput-object v0, p3, v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v3

    aput-object p3, p2, v6

    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/InterstitialManager;->logMediationEvent(I[[Ljava/lang/Object;)V
    :try_end_fe
    .catchall {:try_start_c5 .. :try_end_fe} :catchall_100

    .line 389
    :cond_fe
    monitor-exit p0

    return-void

    :catchall_100
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public onInterstitialAdOpened(Lcom/ironsource/mediationsdk/InterstitialSmash;)V
    .registers 6

    .line 393
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/InterstitialSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":onInterstitialAdOpened()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 395
    check-cast v0, [[Ljava/lang/Object;

    const/16 v1, 0x7d5

    invoke-direct {p0, v1, p1, v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->logProviderEventWithPlacement(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 397
    iget-object p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInterstitialListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdOpened()V

    return-void
.end method

.method public declared-synchronized onInterstitialAdReady(Lcom/ironsource/mediationsdk/InterstitialSmash;J)V
    .registers 11

    monitor-enter p0

    .line 342
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/InterstitialSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":onInterstitialAdReady()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/16 v0, 0x7d3

    .line 344
    new-array v1, v3, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "duration"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v4, v3

    aput-object v4, v1, v6

    invoke-direct {p0, v0, p1, v1}, Lcom/ironsource/mediationsdk/InterstitialManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 346
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    iget-wide v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadStartTime:J

    sub-long/2addr p2, v0

    .line 347
    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 348
    iput-boolean v6, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mIsLoadInterstitialInProgress:Z

    .line 350
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mShouldSendAdReadyEvent:Z

    if-eqz p1, :cond_68

    .line 351
    iput-boolean v6, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mShouldSendAdReadyEvent:Z

    .line 352
    iget-object p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInterstitialListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdReady()V

    const/16 p1, 0x7d4

    .line 353
    new-array v0, v3, [[Ljava/lang/Object;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "duration"

    aput-object v2, v1, v6

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, v3

    aput-object v1, v0, v6

    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->logMediationEvent(I[[Ljava/lang/Object;)V
    :try_end_68
    .catchall {:try_start_1 .. :try_end_68} :catchall_6a

    .line 355
    :cond_68
    monitor-exit p0

    return-void

    :catchall_6a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/InterstitialSmash;)V
    .registers 8

    .line 441
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/InterstitialSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":onInterstitialAdShowFailed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 442
    new-array v0, v3, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "errorCode"

    aput-object v4, v1, v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    aput-object v1, v0, v2

    const/16 v1, 0x89b

    invoke-direct {p0, v1, p2, v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->logProviderEventWithPlacement(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 443
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mIsCurrentlyShowing:Z

    .line 444
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/InterstitialManager;->completeAdapterShow(Lcom/ironsource/mediationsdk/AbstractSmash;)V

    .line 446
    iget-object p2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 447
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v0, v1, :cond_4b

    .line 448
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidCallLoadInterstitial:Z

    .line 449
    iget-object p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    if-eqz p1, :cond_6a

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    goto :goto_6c

    :cond_6a
    const-string p1, ""

    .line 450
    :goto_6c
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->showInterstitial(Ljava/lang/String;)V

    return-void

    .line 455
    :cond_70
    iget-object p2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInterstitialListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public onInterstitialAdShowSucceeded(Lcom/ironsource/mediationsdk/InterstitialSmash;)V
    .registers 8

    .line 416
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/InterstitialSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":onInterstitialAdShowSucceeded()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 418
    check-cast v0, [[Ljava/lang/Object;

    const/16 v1, 0x89a

    invoke-direct {p0, v1, p1, v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->logProviderEventWithPlacement(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 422
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_2c
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 423
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v4

    sget-object v5, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v4, v5, :cond_2c

    .line 425
    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/InterstitialManager;->completeAdapterShow(Lcom/ironsource/mediationsdk/AbstractSmash;)V

    const/4 v1, 0x1

    goto :goto_2c

    :cond_45
    if-nez v1, :cond_62

    .line 429
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/InterstitialSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v0, v1, :cond_5f

    .line 430
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/InterstitialSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->EXHAUSTED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v0, v1, :cond_5f

    .line 431
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/InterstitialSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object p1

    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne p1, v0, :cond_62

    .line 432
    :cond_5f
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->completeIterationRound()V

    .line 435
    :cond_62
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->changeStateToInitiated()V

    .line 436
    iget-object p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInterstitialListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowSucceeded()V

    return-void
.end method

.method public onInterstitialAdVisible(Lcom/ironsource/mediationsdk/InterstitialSmash;)V
    .registers 5

    .line 469
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/InterstitialSmash;->getInstanceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":onInterstitialAdVisible()"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    .line 469
    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method public declared-synchronized onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/InterstitialSmash;)V
    .registers 11

    monitor-enter p0

    .line 308
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/InterstitialSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":onInterstitialInitFailed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/16 v0, 0x89e

    .line 309
    new-array v1, v3, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "reason"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    aput-object v4, v1, v6

    invoke-direct {p0, v0, p2, v1}, Lcom/ironsource/mediationsdk/InterstitialManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 311
    new-array v0, v3, [Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_FAILED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v1, v0, v6

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->smashesCount([Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)I

    move-result v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    const/16 v4, 0x83e

    if-lt v0, v1, :cond_97

    .line 312
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Smart Loading - initialization failed - no adapters are initiated and no more left to init, error: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 313
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidCallLoadInterstitial:Z

    if-eqz v0, :cond_93

    .line 314
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCallbackThrottler:Lcom/ironsource/mediationsdk/CallbackThrottler;

    const-string v1, "no ads to show"

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 315
    new-array v0, v3, [[Ljava/lang/Object;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "errorCode"

    aput-object v2, v1, v6

    const/16 v2, 0x1fe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object v1, v0, v6

    invoke-direct {p0, v4, v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->logMediationEvent(I[[Ljava/lang/Object;)V

    .line 316
    iput-boolean v6, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mShouldSendAdReadyEvent:Z

    .line 320
    :cond_93
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidFinishToInitInterstitial:Z

    goto/16 :goto_119

    .line 322
    :cond_97
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->startNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v0

    if-nez v0, :cond_e9

    .line 323
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidCallLoadInterstitial:Z

    if-eqz v0, :cond_e9

    const/4 v0, 0x5

    .line 324
    new-array v0, v0, [Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_FAILED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_SESSION:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v1, v0, v2

    const/4 v1, 0x3

    sget-object v5, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v5, v0, v1

    const/4 v1, 0x4

    sget-object v5, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->EXHAUSTED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v5, v0, v1

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->smashesCount([Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)I

    move-result v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 325
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_e9

    .line 327
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCallbackThrottler:Lcom/ironsource/mediationsdk/CallbackThrottler;

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string v5, "No ads to show"

    const/16 v7, 0x1fd

    invoke-direct {v1, v7, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 328
    new-array v0, v3, [[Ljava/lang/Object;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "errorCode"

    aput-object v2, v1, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object v1, v0, v6

    invoke-direct {p0, v4, v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->logMediationEvent(I[[Ljava/lang/Object;)V

    .line 329
    iput-boolean v6, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mShouldSendAdReadyEvent:Z

    .line 333
    :cond_e9
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->completeIterationRound()V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_ec} :catch_ef
    .catchall {:try_start_1 .. :try_end_ec} :catchall_ed

    goto :goto_119

    :catchall_ed
    move-exception p1

    goto :goto_11b

    :catch_ef
    move-exception v0

    .line 336
    :try_start_f0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInterstitialInitFailed(error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", provider:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/InterstitialSmash;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_119
    .catchall {:try_start_f0 .. :try_end_119} :catchall_ed

    .line 338
    :goto_119
    monitor-exit p0

    return-void

    :goto_11b
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onInterstitialInitSuccess(Lcom/ironsource/mediationsdk/InterstitialSmash;)V
    .registers 6

    monitor-enter p0

    .line 295
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/InterstitialSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " :onInterstitialInitSuccess()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    const/16 v0, 0x89d

    .line 296
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;)V

    .line 297
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidFinishToInitInterstitial:Z

    .line 299
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidCallLoadInterstitial:Z

    if-eqz v0, :cond_45

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    const/4 v1, 0x0

    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v2, v0, v1

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->smashesCount([Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)I

    move-result v0

    iget v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmartLoadAmount:I

    if-ge v0, v1, :cond_45

    .line 300
    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 301
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->loadAdapterAndSendEvent(Lcom/ironsource/mediationsdk/InterstitialSmash;)V
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_47

    .line 303
    :cond_45
    monitor-exit p0

    return-void

    :catchall_47
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onStillInProgressAfter15Secs()V
    .registers 8

    .line 499
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidCallLoadInterstitial:Z

    if-eqz v0, :cond_37

    const-string v0, "init() had failed"

    const-string v1, "Interstitial"

    .line 500
    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 501
    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCallbackThrottler:Lcom/ironsource/mediationsdk/CallbackThrottler;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/CallbackThrottler;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    const/4 v1, 0x0

    .line 502
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidCallLoadInterstitial:Z

    .line 503
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mIsLoadInterstitialInProgress:Z

    .line 504
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mShouldSendAdReadyEvent:Z

    if-eqz v2, :cond_37

    const/16 v2, 0x83e

    const/4 v3, 0x1

    .line 505
    new-array v4, v3, [[Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "errorCode"

    aput-object v6, v5, v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    aput-object v5, v4, v1

    invoke-direct {p0, v2, v4}, Lcom/ironsource/mediationsdk/InterstitialManager;->logMediationEvent(I[[Ljava/lang/Object;)V

    .line 506
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mShouldSendAdReadyEvent:Z

    :cond_37
    return-void
.end method

.method setCurrentPlacement(Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V
    .registers 3

    .line 604
    iput-object p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    .line 605
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInterstitialListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setInterstitialPlacement(Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V

    return-void
.end method

.method public setDelayLoadFailureNotificationInSeconds(I)V
    .registers 3

    .line 733
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCallbackThrottler:Lcom/ironsource/mediationsdk/CallbackThrottler;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/CallbackThrottler;->setDelayLoadFailureNotificationInSeconds(I)V

    return-void
.end method

.method public setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V
    .registers 3

    .line 74
    iput-object p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInterstitialListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    .line 75
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCallbackThrottler:Lcom/ironsource/mediationsdk/CallbackThrottler;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/CallbackThrottler;->setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    return-void
.end method

.method shouldTrackNetworkState(Landroid/content/Context;Z)V
    .registers 6

    .line 477
    iget-object p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Should Track Network State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 478
    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mShouldTrackNetworkState:Z

    return-void
.end method

.method public showInterstitial(Ljava/lang/String;)V
    .registers 8

    .line 216
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mIsCurrentlyShowing:Z

    const/4 v0, 0x3

    if-eqz p1, :cond_1b

    const-string p1, "showInterstitial error: can\'t show ad while an ad is already showing"

    .line 218
    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, p1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 219
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInterstitialListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x40c

    invoke-direct {v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 225
    :cond_1b
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidCallLoadInterstitial:Z

    const-string v1, "Interstitial"

    if-nez p1, :cond_34

    const-string p1, "showInterstitial failed - You need to load interstitial before showing it"

    .line 227
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, p1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 228
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInterstitialListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-static {v1, p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildShowFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 233
    :cond_34
    iget-boolean p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mShouldTrackNetworkState:Z

    if-eqz p1, :cond_59

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_59

    .line 235
    iget-object p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "showInterstitial error: can\'t show ad when there\'s no internet connection"

    invoke-virtual {p1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 236
    iget-object p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInterstitialListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoInternetConnectionShowFailError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    :cond_59
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 240
    :goto_5b
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_ec

    .line 241
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 242
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v3, v4, :cond_e8

    .line 243
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->incrementShowCounter(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V

    .line 244
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getInstance()Lcom/ironsource/mediationsdk/utils/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isPlacementCapped(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    const/4 v3, 0x0

    if-eq v0, v1, :cond_9b

    const/16 v0, 0x960

    .line 245
    move-object v1, v3

    check-cast v1, [[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/InterstitialManager;->logMediationEventWithPlacement(I[[Ljava/lang/Object;)V

    :cond_9b
    const/16 v0, 0x899

    .line 248
    check-cast v3, [[Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v3}, Lcom/ironsource/mediationsdk/InterstitialManager;->logProviderEventWithPlacement(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 250
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mIsCurrentlyShowing:Z

    .line 251
    move-object v1, v2

    check-cast v1, Lcom/ironsource/mediationsdk/InterstitialSmash;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/InterstitialSmash;->showInterstitial()V

    .line 253
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->isCappedPerSession()Z

    move-result v1

    if-eqz v1, :cond_b6

    const/16 v1, 0x961

    .line 254
    invoke-direct {p0, v1, v2}, Lcom/ironsource/mediationsdk/InterstitialManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;)V

    .line 257
    :cond_b6
    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->increaseShowCounter(Lcom/ironsource/mediationsdk/AbstractSmash;)V

    .line 258
    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDailyCappingManager:Lcom/ironsource/mediationsdk/utils/DailyCappingManager;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/utils/DailyCappingManager;->isCapped(Lcom/ironsource/mediationsdk/AbstractSmash;)Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 259
    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->CAPPED_PER_DAY:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    const/16 v1, 0xfa

    .line 260
    new-array v3, v0, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "status"

    aput-object v5, v4, p1

    const-string v5, "true"

    aput-object v5, v4, v0

    aput-object v4, v3, p1

    invoke-direct {p0, v1, v2, v3}, Lcom/ironsource/mediationsdk/InterstitialManager;->logProviderEvent(ILcom/ironsource/mediationsdk/AbstractSmash;[[Ljava/lang/Object;)V

    .line 263
    :cond_dc
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidCallLoadInterstitial:Z

    .line 265
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->isMediationAvailable()Z

    move-result p1

    if-nez p1, :cond_e7

    .line 266
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->startNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    :cond_e7
    return-void

    :cond_e8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5b

    .line 273
    :cond_ec
    iget-object p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInterstitialListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v0, "showInterstitial failed - No adapters ready to show"

    invoke-static {v1, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildShowFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method
